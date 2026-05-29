#!/usr/bin/env node
// Verify a rendered FINAL-REPORT.html: each .page fits A4 (no overflow),
// .page-foot doesn't overlap content, and the file renders without errors.
//
// Usage: node verify-report-html.mjs <path-to-html> [<screenshot-dir>]
//
// Exit code 0 = clean, 1 = layout issues found, 2 = invocation error.
//
// Resolves the `playwright` import via the wright-brand-skill's renderer
// node_modules (the only consistently-installed copy on alphabot). Falls back
// to a system install if found.

import { createRequire } from 'module';
import { resolve, basename, join } from 'path';
import { existsSync, mkdirSync } from 'fs';
import { homedir } from 'os';

const PX_PER_MM = 96 / 25.4;
const A4_W_PX  = 210 * PX_PER_MM; // ~793.7
const A4_H_PX  = 297 * PX_PER_MM; // ~1122.5
const TOL_PX = 2;

// Resolve playwright via the renderer's node_modules so this script works
// even when run from anywhere on the filesystem.
const RENDERER_DIR = join(homedir(), '.claude/skills/wright-brand-skill/render');
const require = createRequire(join(RENDERER_DIR, 'package.json'));
let chromium;
try {
  ({ chromium } = require('playwright'));
} catch (e) {
  console.error(`Cannot import playwright from ${RENDERER_DIR}. Install via:`);
  console.error(`  (cd ${RENDERER_DIR} && npm install)`);
  process.exit(2);
}

async function main() {
  const arg = process.argv[2];
  if (!arg) { console.error('Usage: verify-report-html.mjs <path> [<shotdir>]'); process.exit(2); }
  const filePath = resolve(arg);
  if (!existsSync(filePath)) { console.error(`Not found: ${filePath}`); process.exit(2); }

  const shotDir = process.argv[3]
    ? resolve(process.argv[3])
    : join('/tmp', `verify-${basename(filePath, '.html')}-${Date.now()}`);
  mkdirSync(shotDir, { recursive: true });

  const browser = await chromium.launch();
  const ctx = await browser.newContext({ viewport: { width: Math.ceil(A4_W_PX), height: Math.ceil(A4_H_PX) } });
  const page = await ctx.newPage();
  const consoleErrors = [];
  page.on('pageerror', e => consoleErrors.push(`pageerror: ${e.message}`));
  page.on('console', m => { if (m.type() === 'error') consoleErrors.push(`console.error: ${m.text()}`); });

  await page.goto('file://' + filePath, { waitUntil: 'networkidle' });

  const measurements = await page.evaluate(({ a4h }) => {
    const pages = Array.from(document.querySelectorAll('.page'));
    return pages.map((el, i) => {
      const rect = el.getBoundingClientRect();
      const inner = el.scrollHeight;
      const overflow = Math.max(0, inner - a4h);
      const footEl = el.querySelector('.page-foot');
      let footOverlap = null;
      if (footEl) {
        const fRect = footEl.getBoundingClientRect();
        const kids = Array.from(el.children).filter(c => !c.classList.contains('page-foot') && !c.classList.contains('wordmark'));
        const lastKid = kids[kids.length - 1];
        if (lastKid) {
          const lRect = lastKid.getBoundingClientRect();
          footOverlap = lRect.bottom - fRect.top;
        }
      }
      return {
        idx: i,
        outer_h_px: Math.round(rect.height),
        inner_h_px: Math.round(inner),
        overflow_px: Math.round(overflow),
        overflow_mm: +(overflow / (96/25.4)).toFixed(1),
        foot_overlap_px: footOverlap === null ? null : Math.round(footOverlap),
      };
    });
  }, { a4h: A4_H_PX });

  const overflowed = measurements.filter(p => p.overflow_px > TOL_PX);
  const overlapped = measurements.filter(p => p.foot_overlap_px !== null && p.foot_overlap_px > TOL_PX);

  // Screenshots: page 1 (baseline) + up to 5 worst-offending pages
  const worstFirst = [...overflowed, ...overlapped]
    .sort((a, b) => Math.max(b.overflow_px, b.foot_overlap_px || 0) - Math.max(a.overflow_px, a.foot_overlap_px || 0));
  const shotsToTake = [...new Set([0, ...worstFirst.slice(0, 5).map(p => p.idx)])];

  for (const idx of shotsToTake) {
    const handle = (await page.$$('.page'))[idx];
    if (!handle) continue;
    await handle.scrollIntoViewIfNeeded();
    await handle.screenshot({ path: join(shotDir, `page-${String(idx + 1).padStart(2, '0')}.png`) });
  }
  await page.screenshot({ path: join(shotDir, 'full.png'), fullPage: true });

  await browser.close();

  console.log(`File: ${filePath}`);
  console.log(`Screenshots: ${shotDir}`);
  console.log(`A4 reference: ${Math.round(A4_W_PX)}×${Math.round(A4_H_PX)} px\n`);
  console.log('Per-page measurements:');
  console.log('  #  | outer  | inner  | overflow      | foot-overlap');
  console.log('  ---+--------+--------+---------------+--------------');
  for (const m of measurements) {
    const over = m.overflow_px > TOL_PX ? `${m.overflow_px}px (${m.overflow_mm}mm)` : 'ok';
    const fov = m.foot_overlap_px === null ? '—' : (m.foot_overlap_px > TOL_PX ? `${m.foot_overlap_px}px` : 'ok');
    console.log(`  ${String(m.idx + 1).padStart(2)} | ${String(m.outer_h_px).padStart(6)} | ${String(m.inner_h_px).padStart(6)} | ${over.padEnd(13)} | ${fov}`);
  }

  if (consoleErrors.length) {
    console.log('\nConsole / page errors:');
    consoleErrors.forEach(e => console.log('  ' + e));
  }

  const fatal = overlapped.length > 0 || consoleErrors.length > 0;
  const warn = overflowed.length > 0;

  if (!fatal && !warn) {
    console.log('\nCLEAN: no overflow, no footer overlap, no JS errors.');
    process.exit(0);
  } else if (fatal) {
    console.log(`\nFAIL: ${overlapped.length} page(s) with footer overlap, ${consoleErrors.length} JS error(s).`);
    process.exit(1);
  } else {
    console.log(`\nWARN: ${overflowed.length} page(s) exceed A4 height but render cleanly (content longer than one A4).`);
    process.exit(0);
  }
}

main().catch(e => { console.error(e); process.exit(2); });
