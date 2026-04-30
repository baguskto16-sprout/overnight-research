# Architecture

## Multi-agent orchestration

This skill follows the partner-review pattern from WP's `zz-skills/shared-agents/` (commercial-partner, product-partner, compliance, hr) but applied to research production rather than review.

```
overnight-research (orchestrator skill — entry point)
│
├── .claude/skills/overnight-research/SKILL.md
│
└── invokes via Agent tool:
    ├── value-chain-mapper      — per stage value chain
    ├── pain-point-researcher   — per stage pain points
    ├── source-validator        — independent confidence scoring
    └── deep-research           — targeted re-search per weak claim
```

All sub-agents have `disable-model-invocation: true` — they're invoked only by the orchestrator, never auto-triggered by user input.

### Why multi-agent vs single skill

- **Specialist focus** — each agent has narrower context and tighter prompt = deeper output
- **Independent validation** — source-validator didn't write the claims, scores honestly
- **Iteration becomes possible** — orchestrator can re-invoke specific agents on weak spots only
- **Cleaner failure handling** — if one agent fails, others continue

## Vertical slicing (the big idea)

The skill processes one value chain stage at a time, end-to-end, before starting the next.

```
For Stage[N]:
  1. value-chain-mapper      → produces stage profile
  2. pain-point-researcher   → produces 2-5 pain points using profile
  3. source-validator        → scores Stage[N] claims independently
  4. deep-research × M       → finds primary sources for weak claims
  5. structural compare      → does Stage[N] match IMI structure?
  → Stage[N] complete and validated. Move to Stage[N+1].
```

**This is opposite of horizontal slicing** (drafting all stages → validating all → deep-researching all). Horizontal feels efficient but produces template-shaped speculation. Vertical produces real research because each stage's findings inform the next.

Inspired by Matt Pocock's TDD skill: *"Vertical slices via tracer bullets. One test → one implementation → repeat. Each test responds to what you learned from the previous cycle."*

### Tracer bullet behavior

Stage 1 is the tracer. After Stage 1 completes:

- **All checks pass** → proceed to Stage 2 (path validated)
- **Partial pass** → proceed but flag remediation rounds in summary
- **Catastrophic fail** (couldn't find 3 metrics, couldn't write 2 pain points) → **abort run**, write `ABORTED.md`, save what was produced for inspection

Aborting after Stage 1 (~20 min in) is better than aborting after Stage 6 (~3 hours in). Saves cost on bad runs.

## Source priority enforcement

The skill enforces a strict 8-tier source hierarchy. Sub-agents prefer higher tiers; trade press is last resort.

| Tier | Source type | Examples |
|---|---|---|
| 1 | Government statistics | BPS Indonesia, MIDA Malaysia, NSO Thailand, ASEAN Centre for Energy |
| 2 | Multilateral | IEA, IRENA, World Bank, OECD, ADB, ASEAN Secretariat |
| 3 | Ministry / regulator | Ministry of Industry, Ministry of Energy, DIW, DEDE |
| 4 | Industry association | MPOB, sector chambers of commerce |
| 5 | Audited research firm | McKinsey, BCG, Bain, IBIS World, Bloomberg NEF (published) |
| 6 | Peer-reviewed academic | journals, arXiv, ResearchGate |
| 7 | Standards body | ASHRAE, ISO, IEC |
| 8 | Trade press | Bioenergy International, etc. — last resort |

source-validator applies override rules:

- Single trade-source for cost figures = Low confidence regardless
- Multiple URLs from same publication = 1 source for scoring
- APAC-as-proxy for country-specific need = capped at Medium with `Geography mismatch` flag
- Sources tracing to same primary report = 1 source

## PDF source unlocking

Many primary academic and government sources are PDF. Standard WebFetch fails on PDFs. The skill uses [markitdown](https://github.com/microsoft/markitdown) to convert PDFs to markdown:

```bash
markitdown <pdf-url> > /tmp/source-<hash>.md
```

Citations from PDF sources are tagged `(PDF, processed via markitdown)` in artifact source lists. This unlocks ARPA-E reports, IEA detailed PDFs, ASEAN Centre for Energy publications, peer-reviewed academic papers, government statistical bulletins, World Bank reports — primary sources that were previously inaccessible.

## Filesystem source cache

```
.claude/cache/sources/
├── index.json              # url -> {filename, fetched_at, ext}
└── <hash>.<ext>            # cached content (markdown for PDFs, html otherwise)
```

Default TTL: 30 days. Override via `CACHE_TTL_DAYS` env var.

`fetch-with-cache.sh` checks cache before fetching. If hit and fresh, returns cached content. If miss or stale, fetches via curl (and markitdown for PDFs) and stores.

Cache benefit:
- **First run on a topic:** zero (cache empty)
- **Subsequent runs on similar topics:** 30-50% cache hit rate, reducing cost and runtime

`cache-stats.sh` reports cache size, age distribution, total entries.

## Quality gate

After all stages validated, source-validator runs once more on the full corpus and applies gate logic:

| % Low confidence | Gate decision |
|---|---|
| ≤30% | Ship as-is |
| 30–70% | Ship with flag (`**FLAG: review confidence breakdown**` in summary) |
| >70% | Re-run recommended (write `re-run-recommended.md`, mark artifacts `[DRAFT]`) |

Anti-gaming protection: source-validator is told explicitly NOT to inflate scores to pass gate, NOT to deflate to be defensive. Honest scores let the orchestrator do targeted deep-research.

## Reference templates

Loaded once at Step 0 from `.claude/refs/`:

- `imi-value-chain-template.md` — IMI Climate Control value chain (10 KB)
- `imi-pain-points-template.md` — IMI Climate Control pain points (32 KB)
- `wp-conventions.md` — WP firm tone, citation, USD discipline
- `wp-value-chain-mapping-skill.md` — manual-mode equivalent
- `wp-pain-point-analysis-skill.md` — manual-mode equivalent

Sub-agents read these as their structural and style targets. **Without them loaded, output structure may not match IMI** — flagged in run summary.

## Sub-agent details

### value-chain-mapper
Per-stage value chain output. Activities, revenue model, cost drivers, market size table with cross-validated sources, named players by region, preliminary pain points list. Returns one Stage[N] section.

### pain-point-researcher
Per-stage pain points output. 2-5 pain points with multi-component cost, willingness to pay (or honest blank), frequency, evidenced/assumed URL list, 3-5 declarative root causes per pain point. Hypothesis discipline: tags `[ASSUMED-N]` for sequential extraction.

### source-validator
Independent confidence scorer. Reads draft artifacts, scores every numbered claim per rubric + override rules, identifies weak claims, recommends gate decision. Two contexts: per-stage (during vertical slice) and final (cross-stage corpus).

### deep-research
Per-claim deep dive. Given a Low-confidence claim, searches 5-10 priority sources, returns one of three outcomes: (a) found stronger evidence, (b) confirmed scarce (claim should be widened/marked Assumed/dropped), (c) found contradicting evidence.

## Inspirations and prior art

- **Wright Partners' shared-agents pattern** (commercial-partner, product-partner, compliance, hr) — partner-review with focused functional perspective. Same structure, applied to research production rather than review.
- **Matt Pocock's tdd skill** — vertical slicing via tracer bullets. Avoids horizontal anti-pattern.
- **Matt Pocock's diagnose skill** — "Phase X is the skill" callout. Identifies meta-leverage step (for us: Step 0-1 input + reference loading).
- **Wright Partners' raw-claude-* convention** (e.g., `26-design-cremer-biomass/11-value-chain/raw-claude-coconut-biomass-indonesia.md`) — naming pattern for unattended Claude research output.

## What this skill is not

- Not a deck generator. Output is research feedstock; use `slides-md` + `slides-pptx` skills to roll up.
- Not BD prospecting. No contact lists or LinkedIn names. Out of scope.
- Not a replacement for field interviews. Output explicitly tags `Assumed: to validate` claims that need human-conducted research.
- Not a financial modeling tool. That's a separate skill family.
