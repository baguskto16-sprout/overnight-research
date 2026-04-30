# Usage

## First time on a new Mac

```bash
# Clone repo
gh repo clone Wright-Partners/overnight-research
cd overnight-research

# One-time setup (verifies deps, pulls reference templates from sister WP repos)
./scripts/setup.sh
```

`setup.sh` checks: claude CLI, gh CLI auth, jq, curl, markitdown. Then clones `26-idea-imicc-datacenters`, `zz-design-template-2026`, `zz-skills` (shallow) and extracts reference files into `.claude/refs/`.

If anything fails, setup stops and tells you what to install.

## Smoke test (always do this first on a new Mac)

```bash
./scripts/smoke-test.sh interactive
```

Runs narrow-scope input (`input/smoke-test-package-boilers.txt`) — 1 sector, 1 country, 1 hypothesis. Stage 1 vertical slice only.

Expected: 20–30 minutes, $5–15 in tokens. Outputs to `output/raw-claude-overnight/[timestamp]/`.

After completion:

```bash
./scripts/verify.sh
```

Outputs benchmark report: pass/fail per check, citation density, source diversity, confidence breakdown, gate decision.

If verify reports PASS or PASS WITH WARNINGS, skill works on your machine. Proceed to full overnight runs.

If FAIL, fix issues before full run (review log, identify which step failed).

## Full overnight run

```bash
# Headless mode (recommended — fire and forget)
./scripts/run-headless.sh ./input/package-boilers.txt

# Or interactive
./scripts/run.sh ./input/package-boilers.txt
```

Headless backgrounds the process and logs to `run-YYYYMMDD-HHMM.log`. Tail the log to monitor:

```bash
tail -f run-*.log
```

Expected: 2–4 hours, $30–80 in tokens. After completion, run verify:

```bash
./scripts/verify.sh
```

## Running on a different topic

1. Copy the template:

```bash
cp input/_input-template-blank.txt input/your-topic.txt
```

2. Fill in fields. Required:
   - Topic
   - Hypothesis
   - Scope (in/out)
   - Geography (in/out)
   - Working hypotheses for pain points (2–5)

3. Run:

```bash
./scripts/run-headless.sh ./input/your-topic.txt
```

The skill is domain and geography agnostic. As long as the input has the required fields, it'll run. If anything is fuzzy, the skill writes `BLOCKED.md` and stops at Step 1 — fix the input and re-run.

## Resource controls

Resource caps prevent runaway cost:

| Cap | Default | How to override |
|---|---|---|
| WebSearch per stage | 50 | Edit `.claude/skills/overnight-research/SKILL.md` |
| WebFetch per stage | 30 | Edit skill spec |
| Deep-research calls per stage | 5 | Edit skill spec |
| Total runtime | 4 hours | `--max-runtime` arg |
| Token cost | unlimited | `--max-cost USD` arg |

Pass arguments via the input file's optional `## Run config` section, or via the wrapper scripts.

## Cache management

```bash
# View cache stats
./.claude/cache/cache-stats.sh

# Clear cache (forces fresh fetches on next run)
rm -rf .claude/cache/sources/*
echo "{}" > .claude/cache/sources/index.json
```

Cache TTL is 30 days. Override per-run:

```bash
CACHE_TTL_DAYS=7 ./scripts/run-headless.sh ./input/your-topic.txt
```

Cache is gitignored — never committed. Each Mac builds its own cache locally.

## Reading run outputs

Each run produces a timestamped folder: `output/raw-claude-overnight/YYYY-MM-DD-HHmm/`

Open in this order:

1. **`raw-claude-summary-<topic>.md`** first — gives you the gate decision, working hypothesis verdicts, confidence breakdown, top validation questions
2. **`raw-claude-pain-points-by-stage-<topic>.md`** — the heavy artifact, structured per IMI by-stage.md
3. **`raw-claude-value-chain-<topic>.md`** — value chain mapping
4. **Checkpoint subfolder** — for audit trail of how the skill made decisions
   - `pass-0-plan.md` — initial stage plan
   - `pass-1-drafts/` — per-stage drafts before validation
   - `pass-2-validation/` — source-validator outputs per stage
   - `pass-3-deep-research/` — deep-research outcomes per weak claim
   - `stages-validated/` — final per-stage versions

If you see `BLOCKED.md` or `ABORTED.md`, the skill stopped early. Read it, fix the underlying issue, re-run.

## Reading the gate decision

| Gate | Meaning | Action |
|---|---|---|
| **Ship as-is** | ≤30% Low confidence claims. Output is research-grade. | Compare to IMI references for structural fit, then ship to partner / next step. |
| **Ship with flag** | 30–70% Low confidence. Output usable but has weak spots. | Review confidence breakdown in summary. Decide if weak spots block partner review. |
| **Re-run recommended** | >70% Low confidence. Output is structurally weak. | Read `re-run-recommended.md`, refine input file (add scope, narrow hypothesis), re-run. |

The gate is honest. It will say "Re-run" when output is genuinely weak — even if that's frustrating. Don't override it; trust the signal.

## Comparing output to IMI reference

```bash
# Open both side-by-side
code .claude/refs/imi-pain-points-template.md output/raw-claude-overnight/*/raw-claude-pain-points-by-stage-*.md
```

Look for structural match:
- Same heading hierarchy (Stage / Pain point / Description / Cost / Frequency / Sources / Root Causes)
- Similar citation density (8-15 unique URLs per pain point)
- Hypothesis tagging present (`[ASSUMED-N]` for assumed claims)
- Real URLs in source list

If structurally similar, output is shippable. If not, identify the structural gap and either iterate the skill spec or refine the input.

## Multiple topics

You can run multiple topics in parallel as long as they're in separate folders or you use distinct input files. Each run gets a unique timestamped output folder, so they don't collide.

```bash
# Topic A
./scripts/run-headless.sh ./input/topic-a.txt

# Topic B (in parallel — be careful with rate limits and total cost)
./scripts/run-headless.sh ./input/topic-b.txt
```

Both will share the cache, which is a benefit if topics overlap (e.g., both need IEA data).

## Updating the skill

If the skill spec is updated upstream:

```bash
git pull
./scripts/setup.sh   # re-pulls refs in case those changed too
```

No re-deploy needed — skill files in `.claude/skills/` are read on each invocation.
