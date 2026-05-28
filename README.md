# overnight-research

Wright Partners' overnight research agent. Drop a hypothesis brief into `input/`, merge to `main`, and the next night at **23:00 SGT** the alphabot machine runs a full vertical-slice value-chain + pain-points pipeline end-to-end. Results land in `output/`, a completion email goes to the team, and a nightly digest summarises the run.

Built for Wright Partners venture-design engagements. Quality target: structurally matches IMI Climate Control's `22-pain-points/by-stage.md` reference.

---

## Two ways to use this

| Path | When to use | What you do | When results arrive |
|---|---|---|---|
| **A. Nightly auto-pipeline** (default) | Standard team workflow — most topics | Drop input file into `input/`, push/merge to `main` | Next morning after 23:00 SGT trigger; email lands in your inbox |
| **B. Manual local run** | Iterating on the pipeline itself, smoke-testing a new agent, or you can't wait until tonight | Clone repo locally, run `./scripts/run-unattended.sh` | 2–4 hours later on your own machine |

Path A is what 95% of team usage looks like. Path B is for engineering on the pipeline.

---

## Path A — Nightly auto-pipeline (everyday workflow)

### 1. Write a hypothesis input

Copy the template:

```bash
cp input/_input-template-blank.txt input/$(date +%Y-%m-%d)-your-topic-slug.md
```

Fill in the five required sections: **Topic**, **Hypothesis**, **Scope** (In/Out), **Geography** (In/Out), **Working hypotheses for pain points**. A healthcheck script rejects files missing any required section.

The template has an optional YAML frontmatter block at the top — uncomment lines you need:

```yaml
---
# Per-topic email routing (added to config/recipients.txt, then de-duplicated)
# owner: alice@wright.partners
# extra_recipients:
#   - bob@wright.partners
#   - carol@wright.partners

# Discovery flags
# skip: true         # never auto-pick this topic
# rerun: true        # force re-run even if already researched
---
```

Existing files **without** frontmatter still work — the block is purely optional metadata.

See `input/2026-05-23-indonesia-affluent-preventive-cdm-market.md` for a complete worked example, or [docs/hypothesis-design.md](docs/hypothesis-design.md) for guidance on writing sharp hypotheses.

### 2. Get the file onto `main`

```bash
git checkout -b add-<your-topic-slug>
git add input/<your-file>.md
git commit -m "Add <your-topic> hypothesis input"
git push origin add-<your-topic-slug>
# Open a PR → review → merge to main
```

Or commit directly to `main` if you have access.

### 3. Wait for the 23:00 SGT run

At 23:00 SGT, alphabot's launchd trigger fires `scripts/auto-overnight.sh`. It:

1. Pulls latest `main` from origin.
2. Discovers unresearched topics in `input/` (skips files already researched, plus any flagged `skip: true`).
3. For each topic in the queue, runs the full vertical-slice pipeline.
4. Commits results to the active working branch and pushes.
5. Sends a per-topic completion email to recipients in `config/recipients.txt` + frontmatter `owner` + `extra_recipients`.
6. Sends a nightly digest email summarising all runs that night.

Cap is 12 hours per night. Topics that don't fit get `DEFERRED (cap): ...` in the digest and roll over.

### 4. Read the email + check the output

Per-topic completion email contains:

- Topic slug, gate decision (`ship` / `ship-with-flag` / `re-run-recommended`), % Low confidence claims.
- Headline findings (first 3 bullets from the run summary).
- Links to input file, run directory, `FINAL-REPORT.html`, and an htmlpreview.github.io render.

Browse the run directory on GitHub for full artifacts. See **Output structure** below.

### 5. Adjust recipients if needed

| You want | Edit |
|---|---|
| One person always receives everything | Append to `config/recipients.txt` |
| One person receives this one topic | `owner:` in that input file's frontmatter |
| A group receives this one topic | `extra_recipients:` list in that input file's frontmatter |
| Stop a topic from running again | Add `skip: true` to its frontmatter, or delete the file |
| Re-run an already-completed topic | Add `rerun: true` to its frontmatter |

Per-topic recipient lists are **added** to `config/recipients.txt`, not substituted — global recipients always get the email.

For the nightly scheduler internals, see [docs/auto-overnight.md](docs/auto-overnight.md).

---

## Path B — Manual local run (advanced)

When you need to iterate on the pipeline itself, smoke-test a new agent, or can't wait for tonight's trigger:

```bash
# 1. One-time setup (deps + WP reference templates)
./scripts/setup.sh

# 2. Smoke test (~20–30 min, ~$5–15) — verify pipeline works on your machine
./scripts/smoke-test.sh interactive
./scripts/verify.sh

# 3. Full overnight run on your input (~2–4 hours, ~$30–80)
./scripts/run-unattended.sh ./input/your-topic.md
```

`run-unattended.sh` runs in a detached tmux session named `overnight-unattended`. It runs in two phases:

1. **Phase 1 — main run.** Same WebFetch-only pipeline as `run-headless.sh`. Auto-resumes on usage-limit hits by parsing the reset clock and sleeping.
2. **Phase 2 — Playwright enrichment.** After Phase 1 writes `RUN-COMPLETE.txt`, automatically re-fetches every `[NEEDS-ATTENDED-FETCH]` URL via the Playwright MCP (headless Chrome). Successful fetches are auto-merged into the canonical `raw-claude-*.md` files (originals backed up to `.bak`); failures are re-tagged `[CONFIRMED-INACCESSIBLE]`. `FINAL-REPORT.html` is re-rendered if claims changed.

Both phases auto-resume on usage limits. Cap is 36h total.

| Script | Auto-resume on limit | Playwright | Use case |
|---|---|---|---|
| `run-unattended.sh` | ✅ both phases | ✅ headless, lazy | Default — fire and walk away |
| `auto-overnight.sh` | ✅ (calls run-unattended) | ✅ | Used by the 23:00 SGT scheduler; loops over the input queue |
| `watchdog-run.sh` | ✅ | ❌ | Legacy unattended, no enrichment |
| `run-headless.sh` | ❌ (10 retries only) | ❌ | Lower-level building block |
| `run-attended.sh` | ❌ | ✅ TUI + human | Captcha-heavy follow-ups |

**Under the hood:**

- `tmux new-session -d -s overnight-unattended` — gives claude its own pty so it doesn't get `SIGTTOU` when the parent shell exits. macOS replacement for the `setsid` approach used on Linux.
- `caffeinate -i claude --print --dangerously-skip-permissions` — keeps Mac awake during work; `--print` enables non-interactive mode; `--dangerously-skip-permissions` auto-approves all tool calls including MCP.
- Phase 2 enriches lazily: it only touches URLs the main pass tagged `[NEEDS-ATTENDED-FETCH]` (~5–15 typically), bounding cost.
- **Phase 2 is tool-locked** — invoked with `--disallowed-tools "Write NotebookEdit"` so claude is mechanically prevented from regenerating the canonical `raw-claude-*.md` files. Auto-merge happens via `Edit` hunks only; the `.bak` backups are preserved.
- Captcha / MFA / aggressive anti-bot pages defeat headless Playwright. Those URLs are re-tagged `[CONFIRMED-INACCESSIBLE]` (honest) — no fabrication, no retry loop. Estimated lift: 25–35% of `[NEEDS-ATTENDED-FETCH]` URLs become primary citations.

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

### Auditability & quality gates (Tier 1, added 2026-05-23)

Four cross-cutting checks so every run produces an auditable trail:

1. **Tool-lock on Phase 2** — destructive operations physically blocked during enrichment.
2. **Verbatim quotes for High-tier claims** — `pass-2-validation/stage-N.json` carries an `evidence_quotes` array per High claim with the actual source string (≤500 chars), URL, section pointer, and fetch method. Sourced from the cache helper at `.claude/cache/sources/`, no fabrication. Canonical artifacts stay paraphrased (matches IMI convention).
3. **Contradiction-finder sub-agent** — invoked once after the final cross-stage source-validator pass. Scans for same-metric/different-value, actor-status, deep-research-not-applied, and geography-mismatch contradictions. Output: `pass-2-validation/contradictions.json`. High-severity findings surface in the run summary.
4. **Output lint gates** (`scripts/lint-output.sh`) — invoked after each phase. Writes `LINT-REPORT.md` covering: footnote/source-list bijection, citation density per pain point, unique-domain diversity, `[ASSUMED-N]` sequence + "to validate" follow-up ratio, FINAL-REPORT.html wordmark, `[NEEDS-ATTENDED-FETCH]` tag well-formedness, post-Phase-2 backup-pair byte-delta invariant (<20% sanity check that Phase 2 patched rather than rewrote). Warn-and-continue: failures recorded but never block the pipeline.

### Confidence & validity (Tier 2, added 2026-05-25)

Tier 1 surfaces quality issues. Tier 2 makes the pipeline **act** on them:

5. **Contradiction-resolution pass** (`.claude/agents/contradiction-resolver.md`) — for each high-severity contradiction, fetches primary sources (via `deep-research`, which routes through academic APIs first for clinical/macro claims) and applies the resolution via `Edit` to `stages-validated/*.md`. Writes `pass-2-validation/contradictions-resolved.json`. **Gate auto-degrade**: if any high-severity contradiction remains unresolved, the gate degrades one tier (ship → ship-with-flag → re-run-recommended). Honest signal — no hard block.
6. **Per-PP primary-source floor lint** — every pain point must carry ≥1 Tier-1 citation (government / multilateral / regulator / audited filing / peer-reviewed academic / industry standards). Pass at ≥80% of PPs, warn at 60–79%, warn-fail below 60%. Per-PP detail in `LINT-REPORT.md`.
7. **Four adversarial critics in parallel** (`critic-dialectic`, `critic-depth`, `critic-width`, `critic-instruction`) — each asks a different question (counter-evidence, thin spots, topical gaps, working-hypothesis coverage). Top-3 actionable gaps per critic feed back into `deep-research` for gap-fill (12 calls budget, 30-min cap).
8. **Academic-API priority for clinical/market claims** — `scripts/academic-search.sh` wraps OpenAlex + Semantic Scholar + PubMed. `deep-research` triggers it before WebSearch when the claim matches `prevalence|incidence|mortality|market size|CAGR|adoption rate` or disease keywords. Returns DOI-anchored canonical papers; cites as `https://doi.org/<DOI>` — naturally Tier-1.
9. **Vertical-slice deviation tracking** — when the skill consolidates stages instead of per-stage vertical-slicing, the orchestrator MUST write `pass-0-deviations.md` listing which stages had reduced validation and why.

---

## Folder structure

```
overnight-research/
├── README.md                          # this file
├── .claude/
│   ├── skills/overnight-research/SKILL.md  # orchestrator entry point
│   ├── agents/                        # specialist agents
│   │   ├── value-chain-mapper.md
│   │   ├── pain-point-researcher.md
│   │   ├── source-validator.md
│   │   ├── deep-research.md
│   │   ├── contradiction-resolver.md  # Tier 2
│   │   └── critic-*.md                # Tier 2 adversarial critics
│   ├── cache/
│   │   ├── fetch-with-cache.sh        # filesystem cache wrapper
│   │   ├── cache-stats.sh
│   │   └── sources/                   # cached fetched sources (gitignored)
│   └── refs/                          # WP reference templates (gitignored, loaded by setup.sh)
├── input/
│   ├── _input-template-blank.txt      # template — includes frontmatter block
│   ├── 2026-05-23-*.md                # worked examples
│   └── ...
├── config/
│   ├── recipients.txt                 # auto-overnight global recipient list
│   ├── auto-overnight.env             # Resend API key + sender config (gitignored, mode 600)
│   └── auto-overnight.env.example     # template for env file
├── scripts/
│   ├── auto-overnight.sh              # nightly orchestrator (called by launchd)
│   ├── discover-topics.sh             # scans input/ for unresearched topics
│   ├── send-email.sh                  # Resend email helper
│   ├── post-run-commit.sh             # commits + pushes after each per-topic run
│   ├── run-unattended.sh              # Phase 1 + Phase 2 per-topic runner
│   ├── run-headless.sh                # lower-level run primitive
│   ├── watchdog-run.sh                # legacy unattended runner
│   ├── lint-output.sh                 # output lint gates
│   ├── academic-search.sh             # OpenAlex/Semantic Scholar/PubMed wrapper
│   ├── healthcheck.sh                 # input file validation
│   ├── setup.sh                       # one-time local setup
│   ├── smoke-test.sh                  # 20–30 min benchmark run
│   └── verify.sh                      # post-run quality check
├── docs/
│   ├── auto-overnight.md              # nightly scheduler internals
│   ├── ARCHITECTURE.md                # multi-agent design rationale
│   ├── USAGE.md                       # detailed manual-run usage
│   ├── QUALITY-BAR.md                 # what to check in outputs
│   ├── TROUBLESHOOTING.md             # common issues
│   ├── attended-mode.md               # captcha follow-ups
│   ├── hypothesis-design.md           # how to write sharp inputs
│   └── SKILLS-FAMILY.md               # long-term roadmap
├── examples/                          # past run outputs (anonymized)
├── logs/                              # auto-overnight logs (alphabot only, gitignored)
└── output/                            # run outputs — committed to git for audit trail
```

---

## Prerequisites

For Path A (nightly auto-pipeline), nothing — alphabot is already set up. You just edit `input/` files via git.

For Path B (manual local runs):

- macOS or Linux
- Claude Code CLI (`brew install --cask claude-code`)
- GitHub CLI authenticated (`brew install gh && gh auth login`)
- `jq` (`brew install jq`) — required for cache layer
- `markitdown` (`pip install markitdown --user`) — required for PDF source processing
- WebSearch + WebFetch enabled in Claude Code permissions

Run `./scripts/setup.sh` to verify all of these and pull reference templates.

---

## Writing a hypothesis input file

A hypothesis input is the **single source of truth** for a research run. Required structure:

```markdown
---
# (Optional) frontmatter — uncomment what you need
# owner: alice@wright.partners
# extra_recipients:
#   - bob@wright.partners
# skip: true
# rerun: true
---

# Hypothesis input — [your topic name]

## Topic
[1–2 sentences — what you're researching, with scale and type]

## Hypothesis
[2–4 sentences — who experiences the pain, what kind, why now]

## Scope
In: [...]
Out: [...]

## Geography
In: [...]
Out: [...]

## Working hypotheses for pain points
2–5 candidate pains the system should test against literature.

1. **Pain 1** — reasoning
2. **Pain 2** — reasoning
```

The skill will **stop and write `BLOCKED.md`** if the input is fuzzy or missing fields. Sharp input = quality output. Mushy input = noise.

See [docs/hypothesis-design.md](docs/hypothesis-design.md) for guidance, or copy a working example from `input/`.

---

## Output structure

After a run completes, find outputs in `output/raw-claude-overnight/[YYYY-MM-DD-HHmm]/`:

| File | What's in it | Approx size |
|---|---|---|
| `FINAL-REPORT.html` | Rendered Wright Partners-branded research report | varies |
| `raw-claude-value-chain-[topic].md` | 4–7 actor stages mapped, market sizes, players, preliminary pains | 15–25 KB |
| `raw-claude-pain-points-[topic].md` | 8–15 pain points with multi-component costs, citations, 3–5 root causes each | 40–60 KB |
| `raw-claude-summary-[topic].md` | Run report, working hypothesis verdicts, top validation questions, gate decision | ~5 KB |
| `LINT-REPORT.md` | Output lint gate results (citation density, source diversity, etc.) | ~3 KB |
| `RUN-COMPLETE.txt` | Single-line marker for completion | <1 KB |
| `ENRICHMENT-COMPLETE.txt` | Phase 2 Playwright enrichment marker | <1 KB |
| `checkpoint.json` | Pipeline state + input file pointer + gate decision | ~2 KB |
| `cross-stage-observations.md` | Cross-stage source-validator output | ~10 KB |
| `pass-0-plan.md` | Initial planning artifact | ~5 KB |
| `pass-1-drafts/stage-N-*.md` | Per-stage value-chain and pain-points first drafts | varies |
| `pass-2-validation/stage-N.json` | Per-stage source-validator confidence scores + verbatim quotes | varies |
| `pass-2-validation/contradictions.json` | Contradiction-finder output | varies |
| `pass-3-deep-research/*.json` | Per-claim primary-source re-research | varies |
| `stages-validated/*.md` | Final claim-resolved per-stage outputs | varies |
| `re-run-recommended.md` | (Only if gate triggered) what to refine before re-run | varies |
| `BLOCKED.md` | (Only if input was fuzzy) what's missing | varies |
| `ABORTED.md` | (Only if Stage 1 tracer failed) what went wrong | varies |

---

## Quality bar to check

After a run, check the pain-points file for:

- [ ] Every numerical claim has a numbered footnote `(N)` resolving to a real URL
- [ ] Each pain point has 3–5 root causes (declarative structural sentences)
- [ ] Unevidenced root causes tagged `[ASSUMED-N]: <claim> — to validate: <specific question>`
- [ ] 8–15 unique citations per pain point (matches IMI density)
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
| Smoke test (1 stage, narrow input) | 20–30 min | $5–15 |
| Full overnight (4–7 stages, full input) | 2–4 hours | $30–80 |
| Per topic | varies | depends on stages mapped |

Resource budget controls in the orchestrator prevent runaway. See [docs/USAGE.md](docs/USAGE.md) for `--max-cost` and `--max-runtime` overrides.

Source caching reduces cost on subsequent runs covering similar topics (30–50% cache hit rate after a few runs).

---

## Failure modes

The skill has three "stop and report" modes that don't waste tokens:

1. **`BLOCKED.md`** — input file fuzzy or missing required fields. Skill stops at Step 1.
2. **`ABORTED.md`** — Stage 1 tracer bullet failed (couldn't find 3 metrics, couldn't write 2 pain points). Skill stops before Stage 2 starts.
3. **`re-run-recommended.md`** — output produced but >70% of claims are Low confidence. Skill writes outputs marked `[DRAFT]` and recommends refinement.

These are features. They tell you the skill can't honestly produce quality output without input changes.

---

## Auto-pipeline infrastructure (operator notes)

Lives on alphabot. Most team members never touch this — it just runs.

| Component | Path |
|---|---|
| Working directory | `/Users/alphabot/Work/overnight-research-repo` |
| launchd plist | `~/Library/LaunchAgents/co.sprout.overnight-research.plist` (Hour=23, Minute=0) |
| Orchestrator | `scripts/auto-overnight.sh` |
| Discovery | `scripts/discover-topics.sh` |
| Healthcheck | `scripts/healthcheck.sh` |
| Email | `scripts/send-email.sh` (Resend) |
| Global recipients | `config/recipients.txt` |
| Resend API key + sender | `config/auto-overnight.env` (mode 600, gitignored) |
| Logs | `logs/auto-overnight-YYYYMMDD-HHMM.log`, `logs/auto-overnight-digest-YYYYMMDD.txt`, `logs/launchd/{stdout,stderr}.log` |

Manual operations:

```bash
# Fire the nightly run NOW (e.g. after env edits) — uses authenticated tmux session
launchctl start co.sprout.overnight-research

# Inspect schedule
launchctl list | grep sprout

# Reload after plist edits
launchctl unload ~/Library/LaunchAgents/co.sprout.overnight-research.plist
launchctl load   ~/Library/LaunchAgents/co.sprout.overnight-research.plist

# Peek at tonight's queue without running
./scripts/discover-topics.sh

# Manually run the whole orchestrator (same as launchd will at 23:00)
./scripts/auto-overnight.sh

# Send a test email through Resend
./scripts/send-email.sh --self-test
```

See [docs/auto-overnight.md](docs/auto-overnight.md) for full operator details and troubleshooting.

---

## Reference templates

The skill compares its output against IMI Climate Control's reference files (real Wright Partners engagement output):

- `Wright-Partners/26-idea-imicc-datacenters/21-value-chain/value-chain-data-center.md`
- `Wright-Partners/26-idea-imicc-datacenters/22-pain-points/by-stage.md`

`scripts/setup.sh` pulls these into `.claude/refs/` via `gh repo clone`. They are gitignored from this repo because they contain WP-confidential engagement detail.

---

## Branch model

| Branch | Purpose |
|---|---|
| `main` | Canonical default. Inputs land here. The auto-pipeline pulls from here at 23:00 SGT. |
| `improve-confidence-tier2`, `improve-auditability-tier1`, `improve-source-quality-and-watchdog` | Feature branches for pipeline improvements. The auto-pipeline currently operates on whichever branch alphabot has checked out — usually `improve-confidence-tier2`. |

To get a new input researched, merge it to `main`. The orchestrator pulls `main`, then operates on the active working branch — the merge propagates via the active branch's tracking of `main` (Git's normal merge flow).

---

## Customizing

Want to use this for a different topic? Three options:

1. **Same skill, new input** — write `input/your-topic.md` following the template. Skill is domain and geography agnostic.
2. **Tune the agents** — edit `.claude/agents/*.md` to adjust how `value-chain-mapper` or `pain-point-researcher` behaves. Common tweaks: source priority order, citation density target, structural format.
3. **New related skill** — copy this repo as a starting point. Examples of natural extensions:
   - `overnight-buyer-validation` — extends to named companies + buyer ICPs (research, not BD prospecting)
   - `overnight-financial-model` — auto-generates financial model first draft
   - `overnight-competitive-landscape` — deep competitor analysis

See [docs/SKILLS-FAMILY.md](docs/SKILLS-FAMILY.md) for the long-term roadmap.

---

## Versioning

This is v3 (vertical-slice multi-agent edition) + auto-pipeline.

- v1: single skill, sequential procedure
- v2: multi-agent, horizontal passes
- v3: multi-agent, vertical slicing + markitdown PDF support + filesystem cache + engagement-repo-aware output paths
- v3 + Tier 1 (2026-05-23): auditability gates — tool-locked Phase 2, verbatim quotes, contradiction-finder, output lint
- v3 + Tier 2 (2026-05-25): act on quality signals — contradiction-resolution, primary-source floor, four critics, academic-API priority
- v3 + auto-pipeline (2026-05-28): nightly scheduler, Resend email, frontmatter recipient routing

See git history for evolution.

---

## License

Internal Wright Partners use. Not for external distribution without partner approval.

---

## Maintenance

PRs against `main`. Issues / changes via this repo's GitHub.
