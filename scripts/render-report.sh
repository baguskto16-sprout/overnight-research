#!/usr/bin/env bash
# render-report.sh — Render a Wright-branded final HTML report from an existing
# overnight-research run, without re-executing the whole pipeline.
#
# Usage:
#   ./scripts/render-report.sh                # auto-pick most recent complete run
#   ./scripts/render-report.sh <run-id>       # specific run, e.g. 2026-05-02-0842
#
# Output: FINAL-REPORT.html inside the run directory. Open in a browser, then
# ⌘P → Save as PDF.
#
# Requires the wright-brand skill installed at ~/.claude/skills/wright-brand-skill/.
# If missing, this script will fail with instructions.

set -euo pipefail

# Load environment (non-interactive SSH doesn't source ~/.zshrc).
export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh" >/dev/null 2>&1 || true
  NODE_BIN=$(ls -d "$NVM_DIR"/versions/node/*/bin 2>/dev/null | sort -V | tail -1)
  [ -n "$NODE_BIN" ] && export PATH="$NODE_BIN:$PATH"
fi
for n in /opt/homebrew/Cellar/node@22/*/bin /opt/homebrew/Cellar/node/*/bin; do
  [ -x "$n/node" ] && export PATH="$n:$PATH" && break
done

# Unlock keychain so claude can read its OAuth token.
_unlock_keychain() {
  local kc="$HOME/Library/Keychains/login.keychain-db"
  local pass="${KEYCHAIN_PASSWORD:-}"
  [ -z "$pass" ] && [ -r "$HOME/.keychain-pass" ] && pass="$(cat "$HOME/.keychain-pass")"
  if [ -n "$pass" ]; then
    security unlock-keychain -p "$pass" "$kc" 2>/dev/null \
      || echo "⚠ keychain unlock failed — claude OAuth read may fail" >&2
  fi
}
_unlock_keychain

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

# Pre-flight: wright-brand skill must be installed on this host
WRIGHT_SKILL="$HOME/.claude/skills/wright-brand-skill"
if [ ! -d "$WRIGHT_SKILL" ]; then
  echo "ERROR: wright-brand skill not installed at $WRIGHT_SKILL"
  echo "       Install it before running render-report.sh."
  exit 1
fi

# Resolve run-id
RUN_ID="${1:-}"
SCRATCH_DIR="$REPO_DIR/output/raw-claude-overnight"

if [ -z "$RUN_ID" ]; then
  # Prefer most recent run with RUN-COMPLETE.txt; fall back to most recent dir.
  for run in $(ls -td "$SCRATCH_DIR"/*/ 2>/dev/null); do
    if [ -f "${run%/}/RUN-COMPLETE.txt" ]; then
      RUN_ID="$(basename "${run%/}")"
      break
    fi
  done
  if [ -z "$RUN_ID" ]; then
    RUN_ID="$(basename "$(ls -td "$SCRATCH_DIR"/*/ 2>/dev/null | head -1)")"
  fi
fi

RUN_DIR="$SCRATCH_DIR/$RUN_ID"
[ ! -d "$RUN_DIR" ] && { echo "ERROR: Run not found: $RUN_DIR"; exit 1; }

OUTPUT_HTML="$RUN_DIR/FINAL-REPORT.html"
LOG="$REPO_DIR/render-$(date +%Y%m%d-%H%M).log"

echo "═══════════════════════════════════════════════════════════════"
echo "  Render Wright-branded final report"
echo "═══════════════════════════════════════════════════════════════"
echo "Run ID:    $RUN_ID"
echo "Run dir:   $RUN_DIR"
echo "Output:    $OUTPUT_HTML"
echo "Skill:     $WRIGHT_SKILL"
echo "Log:       $LOG"
echo ""

PROMPT="Render a Wright-branded final HTML report from the overnight-research run at $RUN_DIR.

Invoke the wright-brand skill (at $WRIGHT_SKILL) to load Wright Partners' brand tokens, A4 print typography, and component library — specifically the 'Documents (HTML → PDF for opportunity reports, LP updates, fund docs)' section.

Read the run's data:
- $RUN_DIR/pass-0-plan.md (stage roster, topic, geography)
- $RUN_DIR/pass-3-deep-research/* (validated body content)
- $RUN_DIR/stages-validated/* (confidence-tagged claims, citations)
- $RUN_DIR/checkpoint.json (metadata)
- $RUN_DIR/re-run-recommended.md if present (gate flag)

Produce a single self-contained HTML file at $OUTPUT_HTML following the page structure from wright-brand-skill: Cover → Executive summary → Framework (value chain) → Body sections (per stage) → Prioritization → Sources (paginate after 12 rows) → Closing.

Rules:
- Single file, inline CSS, no external JS
- Embed the wordmark from $WRIGHT_SKILL/assets/wright-wordmark-on-light.png as base64 data URI
- Poppins via Google Fonts CDN, fallback 'Inter', system-ui
- @page { size: A4; margin: 0 } and .page { width: 210mm; height: 296mm; padding: 18mm 20mm 16mm }
- White background. Red #CC102E as accent only. No dark anchor pages.
- Every claim keeps its footnote → URL; sources page lists every unique URL from stages-validated.

Do not modify any other files. When done, print only the absolute path of the written HTML."

# Run claude headless, foreground, with full output to log
caffeinate -i claude --print --dangerously-skip-permissions "$PROMPT" 2>&1 | tee "$LOG"

if [ -f "$OUTPUT_HTML" ]; then
  echo ""
  echo "✓ Rendered: $OUTPUT_HTML"
  echo "  Open in browser, then ⌘P → Save as PDF."
else
  echo ""
  echo "✗ FINAL-REPORT.html not found at expected path."
  echo "  Check log: $LOG"
  exit 2
fi
