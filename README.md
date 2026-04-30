# overnight-research

Multi-agent skill for unattended overnight research. Produces WP-grade value-chain + pain-points artifacts from a hypothesis input file.

Built for Wright Partners venture-design engagements. Quality target: structurally matches IMI Climate Control's `22-pain-points/by-stage.md` reference.

---

## What this does

Reads a hypothesis input file, runs a vertical-slice research pipeline through 4 specialist agents across 5 quality passes, writes 3 (or 4) artifact files plus checkpoint history. Designed to run unattended overnight while you sleep.

Single command, two outcomes:

```bash
./scripts/run-headless.sh ./input/your-topic.txt    # fire and walk away
./scripts/verify.sh                                  # next morning, check quality
```

**Under the hood:** `run-headless.sh` wraps the call as:

```bash
caffeinate -i nohup claude --print --dangerously-skip-permissions \
  "Run the overnight-research skill on $INPUT" > run.log 2>&1 &
```

- `caffeinate -i` keeps Mac awake while claude is running
- `nohup` lets the process survive terminal close
- `--print` enables non-interactive mode
- `--dangerously-skip-permissions` auto-approves all tool calls (required for unattended; skill is sandboxed to `./output/` — see `docs/TROUBLESHOOTING.md` if concerned)
- `&` backgrounds the process so you can close iTerm

---

## Quick start

```bash
# 1. One-time setup (installs deps, pulls reference templates)
./scripts/setup.sh

# 2. Smoke test (20-30 min, ~$5-15) — verify skill works on your machine
./scripts/smoke-test.sh interactive

# 3. Verify smoke test output
./scripts/verify.sh

# 4. Full overnight run (2-4 hours, ~$30-80) — once smoke test passes
./scripts/run-headless.sh ./input/package-boilers.txt
```

---

## Architecture

```
overnight-research (orchestrator skill)
│
├── Pass 0–1: Load refs + validate input  ← THE skill (sharp input = quality output)
│
├── For each value chain stage (vertical slice):
│   ├── value-chain-mapper        (specialist agent)
│   ├── pain-point-researcher     (specialist agent)
│   ├── source-validator          (independent scoring per stage)
│   ├── deep-research × N         (per weak claim, finds primary sources)
│   └── Compare to IMI reference
│
└── Final pass: cross-stage validation, gate decision, write outputs
```

**Why vertical slicing?** Stage 1 acts as tracer bullet. If it fails or produces noise, abort early — saves cost on bad runs. If it passes, you know the path works before investing in Stages 2–6.

**Anti-pattern (do not):** drafting all stages first, then validating all, then deep-researching all. That's horizontal slicing — produces shape without substance.

See [docs/ARCHITECTURE.md](docs/ARCHITECTURE.md) for full design rationale.

---

## Folder structure

```
overnight-research/
├── README.md                          # this file
├── .claude/
│   ├── skills/overnight-research/
│   │   └── SKILL.md                   # orchestrator (entry point)
│   ├── agents/
│   │   ├── value-chain-mapper.md      # maps single value chain stage
│   │   ├── pain-point-researcher.md   # finds pain points + root causes
│   │   ├── source-validator.md        # independent confidence scoring
│   │   └── deep-research.md           # targeted re-search of weak claims
│   ├── cache/
│   │   ├── fetch-with-cache.sh        # filesystem cache wrapper
│   │   ├── cache-stats.sh             # cache statistics
│   │   └── sources/                   # cached fetched sources (gitignored)
│   └── refs/                          # WP reference templates (gitignored, loaded by setup.sh)
├── input/
│   ├── package-boilers.txt            # working example (full scope)
│   ├── smoke-test-package-boilers.txt # narrow scope for benchmarking
│   └── _input-template-blank.txt      # blank template for new topics
├── scripts/
│   ├── setup.sh                       # one-time setup
│   ├── run.sh                         # interactive run on any input
│   ├── run-headless.sh                # headless overnight on any input
│   ├── smoke-test.sh                  # 20-30 min benchmark run
│   └── verify.sh                      # post-run quality check
├── docs/
│   ├── ARCHITECTURE.md                # multi-agent design rationale
│   ├── USAGE.md                       # detailed usage guide
│   ├── QUALITY-BAR.md                 # what to check in outputs
│   └── TROUBLESHOOTING.md             # common issues
├── examples/                          # past run outputs (anonymized)
└── output/                            # run outputs (gitignored)
```

---

## Prerequisites

- macOS or Linux
- Claude Code CLI (`brew install --cask claude-code`)
- GitHub CLI authenticated (`brew install gh && gh auth login`) — needed for `setup.sh` to pull WP reference templates
- `jq` (`brew install jq`) — required for cache layer
- `markitdown` (`pip install markitdown --user`) — required for PDF source processing
- WebSearch + WebFetch enabled in Claude Code permissions

Run `./scripts/setup.sh` to verify all of these and pull reference templates in one go.

---

## Writing an input file

A hypothesis input file is the single source of truth for a research run. Required fields:

```markdown
## Topic
[1-2 sentences — what you're researching, with scale and type]

## Hypothesis
[2-4 sentences — who experiences pain, what kind, why now]

## Scope
In: [...]
Out: [...]

## Geography
In: [...]
Out: [...]

## Working hypotheses for pain points
2-5 candidate pains the system should test against literature.

1. **Pain 1** — reasoning
2. **Pain 2** — reasoning
```

See `input/package-boilers.txt` for a complete example, or copy `input/_input-template-blank.txt` and fill in.

The skill will **stop and write `BLOCKED.md`** if input is fuzzy or missing fields. Sharp input = quality output. Mushy input = noise.

---

## Output structure

After a run completes, find outputs in `output/raw-claude-overnight/[YYYY-MM-DD-HHmm]/`:

| File | What's in it | Approx size |
|---|---|---|
| `raw-claude-value-chain-[topic].md` | 4-7 actor stages mapped, market sizes, players, preliminary pains | 15-25 KB |
| `raw-claude-pain-points-by-stage-[topic].md` | 8-15 pain points with multi-component costs, citations, 3-5 root causes each | 40-60 KB |
| `raw-claude-summary-[topic].md` | Run report, working hypothesis verdicts, top validation questions, gate decision | 5 KB |
| `RUN-COMPLETE.txt` | Single-line marker for completion | <1 KB |
| `re-run-recommended.md` | (Only if gate triggered) what to refine before re-run | varies |
| `BLOCKED.md` | (Only if input was fuzzy) what's missing | varies |
| `ABORTED.md` | (Only if Stage 1 tracer failed) what went wrong | varies |

Plus checkpoint subfolder with per-pass artifacts for audit trail.

---

## Quality bar to check

After a run, check the pain-points file for:

- [ ] Every numerical claim has numbered footnote `(N)` resolving to real URL
- [ ] Each pain point has 3-5 root causes (declarative structural sentences)
- [ ] Unevidenced root causes tagged `[ASSUMED-N]: <claim> — to validate: <specific question>`
- [ ] 8-15 unique citations per pain point (matches IMI density)
- [ ] At least one PDF source processed via markitdown
- [ ] Market sizing has confidence flag + `Geography mismatch` flag if APAC-as-proxy
- [ ] All figures in USD
- [ ] American English spelling
- [ ] No single-trade-source operating cost figures
- [ ] Stages with <3 metrics flagged `Data gap` (not padded)

`./scripts/verify.sh` automates most of these checks.

See [docs/QUALITY-BAR.md](docs/QUALITY-BAR.md) for full details.

---

## Cost expectations

| Mode | Runtime | Token cost |
|---|---|---|
| Smoke test (1 stage, narrow input) | 20-30 min | $5-15 |
| Full overnight (4-7 stages, full input) | 2-4 hours | $30-80 |
| Per topic | varies | depends on stages mapped |

Resource budget controls in the orchestrator prevent runaway. See [docs/USAGE.md](docs/USAGE.md) for `--max-cost` and `--max-runtime` overrides.

Source caching reduces cost on subsequent runs covering similar topics (30-50% cache hit rate after a few runs).

---

## Failure modes

The skill has three "stop and report" modes that don't waste tokens:

1. **`BLOCKED.md`** — input file fuzzy or missing required fields. Skill stops at Step 1.
2. **`ABORTED.md`** — Stage 1 tracer bullet failed (couldn't find 3 metrics, couldn't write 2 pain points). Skill stops before Stage 2 starts.
3. **`re-run-recommended.md`** — output produced but >70% of claims are Low confidence. Skill writes outputs marked `[DRAFT]` and recommends refinement.

These are features. They tell you the skill can't honestly produce quality output without input changes.

---

## Reference templates

The skill compares its output against IMI Climate Control's reference files (real WP engagement output):

- `Wright-Partners/26-idea-imicc-datacenters/21-value-chain/value-chain-data-center.md`
- `Wright-Partners/26-idea-imicc-datacenters/22-pain-points/by-stage.md`

`scripts/setup.sh` pulls these into `.claude/refs/` via `gh repo clone`. They are gitignored from this repo because they contain WP-confidential engagement detail.

---

## Customizing

Want to use this for a different topic? Three options:

1. **Same skill, new input** — write `input/your-topic.txt` following the template, run `./scripts/run-headless.sh ./input/your-topic.txt`. Skill is domain and geography agnostic.

2. **Tune the agents** — edit `.claude/agents/*.md` to adjust how value-chain-mapper or pain-point-researcher behaves. Common tweaks: source priority order, citation density target, structural format.

3. **New related skill** — copy this repo as a starting point. Examples of natural extensions:
   - `overnight-buyer-validation` — extends to named companies + buyer ICPs (research, not BD prospecting)
   - `overnight-financial-model` — auto-generates financial model first draft
   - `overnight-competitive-landscape` — deep competitor analysis

See [docs/CUSTOMIZING.md](docs/CUSTOMIZING.md) for details.

---

## Versioning

This is v3 (vertical-slice multi-agent edition).

- v1: single skill, sequential procedure
- v2: multi-agent, horizontal passes (drafted all stages → validated all → deep-researched all)
- v3: multi-agent, vertical slicing (Stage 1 end-to-end before Stage 2) + markitdown PDF support + filesystem cache + engagement-repo-aware output paths

See git history for evolution.

---

## Skills family vision (long-term roadmap)

This repo is the first of a planned family of overnight-research skills. Each skill follows the same pattern (multi-agent + vertical slicing + reference templates + IMI-grade output) but addresses a different stage of the venture-design lifecycle:

| Repo | Status | What it does |
|---|---|---|
| `Wright-Partners/overnight-research` | ✅ This repo (v3) | Run 1 — value chain + pain points by stage. Foundation for everything downstream. |
| `Wright-Partners/overnight-buyer-validation` | 🔮 Future | Run 2 — extends value chain into named companies, identifies buyer ICPs, generates LinkedIn Sales Navigator search specs (for compliant manual or Clay-MCP execution). |
| `Wright-Partners/overnight-financial-model` | 🔮 Future | Auto-drafts financial model first pass from Run 1 + Run 2 outputs (TAM/SAM, unit economics, revenue model scenarios). |
| `Wright-Partners/overnight-pitch-prep` | 🔮 Future | Turns research artifacts into deck-ready content via `slides-md` + `slides-pptx` integration. |

Each future skill will reuse the same agent library where applicable (value-chain-mapper, source-validator, deep-research) and add specialists where new (e.g. `buyer-icp-profiler`, `financial-modeler`, `pitch-narrative-writer`).

### Why split into separate repos vs single monorepo?

- **Independent versioning per skill** — overnight-buyer-validation can iterate without affecting overnight-research
- **Cleaner scope** — each repo has one clear purpose, one quality target, one set of reference templates
- **Optional dependencies** — engagement teams can pull only the skills they need (e.g. an idea-stage repo might not need `overnight-financial-model` yet)
- **Skill family discoverability** — when teams browse `gh repo list Wright-Partners | grep overnight`, they see the full pipeline laid out

### Why NOT just one giant skill?

- **Vertical slice anti-pattern at the family level** — building all 4 skills before validating any one would be horizontal slicing. Same anti-pattern Matt Pocock warns against in TDD.
- **Toi's first ETA** — Run 1 only. Build that, ship it, iterate on real feedback before scoping Run 2-4.
- **Unknowns in Run 2-4** — buyer validation needs Clay/Apollo MCP integration that may not exist yet. Financial modeling needs TAM/SAM frameworks that depend on Run 1's value chain. Don't pre-build dependencies on uncertain choices.

### Migration path

After overnight-research v3 ships and gets Toi feedback:

1. **If feedback is positive on output quality** → start building `overnight-buyer-validation` (Run 2 capability). Reuse this repo's value-chain-mapper + source-validator agents. Add new agents for buyer ICP profiling and search spec generation.

2. **Once 2 skills exist** → consider whether agents should move to a shared `Wright-Partners/overnight-shared-agents` submodule that both skills pull. (Premature for 1-skill repo.)

3. **Each skill ships with its own examples folder** — past run outputs (anonymized) for regression testing and "this is what good looks like" documentation.

### LinkedIn / contact list scope (deliberate)

This repo (`overnight-research`) explicitly does NOT cover Run 2's "50 LinkedIn names" bullet. Reasons:

- LinkedIn scraping via browser automation (Playwright, undetected-chromedriver) violates LinkedIn ToS, risks account bans, and is brittle.
- WP already uses Clay (referenced in `wright-partner-talent-screener` skill) which has compliant API access via licensed data partnerships.
- The right architecture: `overnight-buyer-validation` produces a Sales Navigator search spec (research artifact). Human or Clay-MCP executes the search compliantly.

See [docs/SKILLS-FAMILY.md](docs/SKILLS-FAMILY.md) for detailed roadmap.

---

## License

Internal Wright Partners use. Not for external distribution without partner approval.

---

## Maintainer

Bagus + WP team. Issues / changes: PR against `main`.
