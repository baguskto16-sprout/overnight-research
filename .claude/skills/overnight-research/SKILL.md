---
name: overnight-research
description: "Run unattended overnight research producing WP-grade value-chain + pain-points artifacts via vertical-slice multi-agent pipeline. Use when running unattended overnight research, generating Run 1 artifact pack from a hypothesis input, producing raw-claude-* outputs, testing a venture-design hypothesis against a value chain, or when user says 'run overnight research' / 'generate artifact pack' / 'research this topic overnight'."
argument-hint: "Path to hypothesis input file (e.g. ./input/topic.txt). Optional: --max-cost USD --max-runtime MINUTES"
---

# Overnight Research — Orchestrator

Coordinates 4 specialist agents through vertical stage slices to produce WP-grade research artifacts unattended overnight. Quality target: structurally matches `~/.claude/refs/imi-pain-points-template.md` (~32 KB, ~12 citations per pain point, 3-5 root causes per pain point).

## Mode

**Unattended overnight.** You will not pause for human input. You will not ask clarifying questions. You will resolve ambiguity by tagging claims `[ASSUMED-N]: <claim> — to validate: <specific question>` and continuing. The user is asleep.

## What this skill does

Reads a hypothesis input file. For each value chain stage, runs a complete vertical slice (research → validate → deep-research weak claims → compare to IMI). Writes structured artifacts. Stops.

## Step 0–1 are the skill — disproportionate effort here

> **Step 0 (load references) and Step 1 (validate input) are this skill.** Everything else is mechanical execution. Sharp input + IMI reference loaded = quality output. Mushy input + missing refs = wasted overnight run.

If `.claude/refs/imi-pain-points-template.md` is missing OR input file scope is fuzzy, **stop and write `BLOCKED.md`** explaining why. Do not proceed to fabricate a plan.

## Architecture — vertical slicing, not horizontal

```
For each stage in plan:
  Stage[N] vertical slice:
    a. Invoke value-chain-mapper for Stage[N]
    b. Invoke pain-point-researcher for Stage[N]
    c. Invoke source-validator on Stage[N] only
    d. Invoke deep-research per weak claim in Stage[N]
    e. Compare Stage[N] to IMI reference Stage[N]
    f. If sparse, re-invoke specialists with tighter prompt
    g. Stage[N] complete and validated → write to checkpoint
  Move to Stage[N+1] only after Stage[N] is validated end-to-end

After all stages:
  Final pass: cross-stage compare, global gate, write outputs
```

**Why vertical:** Each stage is a tracer bullet. If Stage 1 produces noise, you catch it after Stage 1 (~20 min in), not after Stage 6 (~3 hours in). Each stage's findings inform the next. Output is real research, not template-shaped speculation.

**Anti-pattern (DO NOT):** Drafting all stages first, then validating all, then deep-researching all. That is horizontal slicing. Tests written in bulk test imagined behavior. Same problem with research drafted in bulk — you produce shape without substance.

## Procedure

### Step 0 — Load references

Check `.claude/refs/` for pre-loaded files. If present, load into your context:

- `.claude/refs/imi-value-chain-template.md` — value chain quality target
- `.claude/refs/imi-pain-points-template.md` — pain points quality target  
- `.claude/refs/wp-conventions.md` — firm tone, citation, USD discipline
- `.claude/refs/wp-value-chain-mapping-skill.md` — manual-mode equivalent
- `.claude/refs/wp-pain-point-analysis-skill.md` — manual-mode equivalent

If `.claude/refs/imi-pain-points-template.md` is missing: **stop**, write `BLOCKED.md` explaining what's missing and how to fix (run setup-refs.sh). Do not proceed without IMI reference loaded.

### Step 0.5 — Detect output mode (engagement-repo-aware)

Determine where to write artifacts. Two modes:

**Engagement repo mode** — outputs land directly in stage folders following Cremer's `raw-claude-*.md` convention (e.g. `26-design-cremer-biomass/11-value-chain/raw-claude-coconut-biomass-indonesia.md`).

**Sandbox mode** — outputs land in `./output/raw-claude-overnight/[run-id]/` (capability tests, hypothesis exploration without engagement).

**Detection logic** (run from current working directory):

```bash
# Check for engagement repo signature
if [ -d "./11-value-chain" ] && [ -d "./12-pain-points" ]; then
  MODE="engagement-design"
  VALUE_CHAIN_DIR="11-value-chain"
  PAIN_POINTS_DIR="12-pain-points"
  SCRATCHPAD_DIR="90-scratchpad"
elif [ -d "./21-value-chain" ] && [ -d "./22-pain-points" ] && [ -d "./11-stock-take" ]; then
  MODE="engagement-ideation"
  VALUE_CHAIN_DIR="21-value-chain"
  PAIN_POINTS_DIR="22-pain-points"
  SCRATCHPAD_DIR="90-scratchpad"
else
  MODE="sandbox"
  VALUE_CHAIN_DIR="output/raw-claude-overnight/${RUN_ID}"
  PAIN_POINTS_DIR="output/raw-claude-overnight/${RUN_ID}"
  SCRATCHPAD_DIR="output/raw-claude-overnight/${RUN_ID}"
fi
```

**Log the detected mode and resolved paths in pass-0-plan.md** so user knows where outputs will land. Example:

```
Output mode: engagement-design (detected 11-value-chain/, 12-pain-points/)
Working directory: /Users/x/dev/26-design-cremer-biomass
Artifact destinations:
  - Value chain → 11-value-chain/raw-claude-value-chain-package-boilers.md
  - Pain points → 12-pain-points/raw-claude-pain-points-package-boilers.md
  - Summary + checkpoints → 90-scratchpad/raw-claude-overnight/2026-04-30-2200/
```

**Safety check before proceeding** (engagement modes only): if a target file already exists at the destination, append `-v2` or `-[run-id]` to filename to avoid overwriting. NEVER overwrite an existing `raw-claude-*.md` file in a stage folder — that would destroy a previous run's curated work.

If `.claude/cache/sources/` exists: enable source caching (see Step 5 detail).

### Step 1 — Validate input file (rigorous)

Read the input file. Required fields:

- Topic
- Hypothesis  
- Scope (in/out)
- Geography (in/out)
- Working hypotheses for pain points (2–5 candidates)

Check each. **Be aggressive about input validation. Refuse to proceed without crystal-clear scope.**

If any field is missing or vague, **STOP** and write `BLOCKED.md`:
```
INPUT BLOCKED — cannot run overnight research

Missing/fuzzy fields:
- [field]: [what's wrong, what would fix it]

Resolve and re-run. Do not run skill against fuzzy input — output will be noise.
```

Do NOT fill in defaults silently. Do NOT proceed with `[ASSUMED]` tags on input scope itself. The skill only resolves ambiguity DURING research, not in the input definition.

### Step 2 — Plan stages (write checkpoint, log)

Decide which 4–7 actors to map. Write `pass-0-plan.md` to output folder:

```markdown
# Plan — Stage roster
Run ID: [YYYY-MM-DD-HHmm]

Stages:
1. [Actor name] — [why this actor matters for the topic]
2. [Actor name] — [why]
...

Working hypothesis test plan:
- WH1: [hypothesis from input] — research will look for: [evidence type]
- WH2: ...

Gate: stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference Stage[N].
```

Log this to stdout so user tailing the log can see plan early.

### Step 3 — Execute Stage 1 vertical slice (the tracer bullet)

This is the tracer bullet. If this fails or produces low-quality output, **abort and report**. Do not proceed to scale.

For Stage 1:

**3a. Invoke value-chain-mapper**

Use the Agent tool with `subagent_type=value-chain-mapper`. Pass:
- Stage definition + topic context + geography
- Path to IMI reference (`.claude/refs/imi-value-chain-template.md`)
- Path to wp-conventions
- Cache dir (`.claude/cache/sources/` if exists)

Receive: structured stage section. Save to `pass-1-drafts/stage-1-value-chain.md`.

**3b. Invoke pain-point-researcher**

Pass:
- Stage 1 actor profile (from 3a)
- Working hypotheses from input
- Path to IMI pain-points reference
- Cache dir

Receive: 2–5 structured pain points. Save to `pass-1-drafts/stage-1-pain-points.md`.

**3c. Invoke source-validator on Stage 1 only**

Pass: the two Stage 1 drafts.
Receive: per-claim scores + list of weak claims for this stage only.
Save to `pass-2-validation/stage-1.json`.

**3d. Invoke deep-research per weak claim**

For each weak claim flagged in 3c, invoke deep-research agent.
Save outcomes to `pass-3-deep-research/stage-1/[claim-id].json`.
Apply outcomes to Stage 1 drafts.

**3e. Structural compare Stage 1 to IMI Stage 1**

Read `.claude/refs/imi-pain-points-template.md` Stage 1 section. Compare:

| Dimension | IMI | Stage 1 draft | Action |
|---|---|---|---|
| Pain points | 2–4 | N | If <2, re-invoke pain-point-researcher with broader prompt |
| RCs per PP | 3–5 | min/max | If any PP <3, re-invoke researcher |
| Citations per PP | 8–15 | min/max | If any PP <5, invoke deep-research with "find more sources" |
| Distinct unique sources | varies | N | If <8 unique URLs across stage, flag as data gap |

For any failed check: re-invoke the appropriate sub-agent with explicit "minimum N" constraint. Don't skip remediation.

**3f. Tracer bullet decision point**

After 3e, decide:

- **Stage 1 passed all checks** → proceed to Stage 2 (the path works)
- **Stage 1 partially passed** → proceed but flag in run summary as "Stage 1 had remediation rounds"
- **Stage 1 catastrophically thin** (e.g., couldn't find 3 quantified metrics, couldn't write 2 pain points) → **abort run**, write `ABORTED.md` explaining why, write what was produced for the user to inspect. Do not waste tokens on Stages 2–6 if Stage 1 is broken.

Save Stage 1 final to `stages-validated/stage-1.md` and log "Stage 1 tracer fired. Proceeding to Stage 2."

### Step 4 — Execute Stages 2 through N

Same vertical slice pattern as Step 3, but:

- **Read Stage 1's findings before starting Stage 2.** Sub-agents should be told what was already found in earlier stages (e.g., "PT SUEK is the largest fuel supplier in Indonesia — already covered in Stage 1, you can reference but don't re-document").
- **Track cumulative cost.** If you hit `--max-cost` or `--max-runtime`, finalize whatever stages are validated and write outputs. Mark unfinished stages explicitly.
- **Reference back, don't duplicate.** Cross-stage observations get a `cross-stage-observations.md` file, not repeated text per stage.

After each stage, update checkpoint with status.

### Step 5 — Cross-stage compare and final pass

After all planned stages are validated:

**5a. Cross-stage source-validator pass**

Invoke source-validator one more time on the FULL compiled draft (all stages). Catches:
- Same source counted differently across stages
- Cross-stage claims that are inconsistent
- Total citation diversity (should be 40–60 unique URLs)

**5b. Apply gate logic globally**

| % Low confidence (full corpus) | Gate |
|---|---|
| ≤30% | Ship as-is |
| 30–70% | Ship with flag |
| >70% | Re-run recommended (write `re-run-recommended.md`) |

**5c. Generate run summary**

Same as before but include vertical-slice metrics:
- Stages tracer-fired vs aborted
- Per-stage runtime
- Per-stage source diversity
- Whether each stage triggered remediation

### Step 6 — Write final output files (mode-aware)

Use the paths resolved in Step 0.5. Two patterns:

**Engagement repo mode** (when running inside `26-design-*` or `26-idea-*` repo):

```
[engagement-repo]/
├── [VALUE_CHAIN_DIR]/                              # 11- or 21- depending on template
│   └── raw-claude-value-chain-[topic-slug].md      ← canonical artifact, in stage folder
├── [PAIN_POINTS_DIR]/                              # 12- or 22- depending on template
│   └── raw-claude-pain-points-[topic-slug].md      ← canonical artifact, in stage folder
└── 90-scratchpad/raw-claude-overnight/[run-id]/
    ├── raw-claude-summary-[topic-slug].md          # run summary
    ├── pass-0-plan.md
    ├── pass-1-drafts/
    ├── pass-2-validation/
    ├── pass-3-deep-research/
    ├── stages-validated/
    ├── checkpoint.json
    ├── re-run-recommended.md                       # only if gate triggered
    └── RUN-COMPLETE.txt
```

**Sandbox mode** (when running outside engagement repo, e.g. capability test):

```
./output/raw-claude-overnight/[run-id]/
├── raw-claude-value-chain-[topic-slug].md
├── raw-claude-pain-points-[topic-slug].md
├── raw-claude-summary-[topic-slug].md
├── pass-0-plan.md
├── pass-1-drafts/
├── pass-2-validation/
├── pass-3-deep-research/
├── stages-validated/
├── checkpoint.json
├── re-run-recommended.md                           # only if gate triggered
└── RUN-COMPLETE.txt
```

**Filename convention** matches Cremer pattern (`raw-claude-coconut-biomass-indonesia.md`): `raw-claude-[topic-slug]-[geography-or-detail].md` if relevant. For our orchestrator, use:

- `raw-claude-value-chain-[topic-slug].md`
- `raw-claude-pain-points-[topic-slug].md`
- `raw-claude-summary-[topic-slug].md`

Where `[topic-slug]` is derived from the input file's Topic field, lowercased and hyphenated.

### Step 7 — Generate stage drop summary (engagement mode only)

If running in engagement mode, output a final stage drop summary at `90-scratchpad/raw-claude-overnight/[run-id]/STAGE-DROP-SUMMARY.md`:

```markdown
# Stage drop summary — [topic-slug]

Run ID: [run-id]
Mode: engagement-design | engagement-ideation
Timestamp: [ISO timestamp]

## Files written to engagement stage folders

| Destination | File | Purpose | Action for curator |
|---|---|---|---|
| `[VALUE_CHAIN_DIR]/` | `raw-claude-value-chain-[topic].md` | Value chain mapping | Review, then either curate into `actors.md` / `market-sizing.md` / `example-companies.md` template files, OR keep as-is |
| `[PAIN_POINTS_DIR]/` | `raw-claude-pain-points-[topic].md` | Pain points + root causes | Review, then curate into `by-stage.md` / `prioritisation.md`, OR keep as-is |

## Files in scratchpad (audit trail, not for client)

- `raw-claude-summary-[topic].md` — run report
- `pass-0-plan.md` through `pass-3-deep-research/` — full audit trail

## What to do next

1. Open both `raw-claude-*.md` files in the stage folders. Review for accuracy.
2. The `raw-claude-` prefix signals "unattended Claude output, review before treating as canonical." Curators should verify before sharing externally.
3. If output is good: curate (move/rename to template files like `actors.md`, `by-stage.md`) OR keep `raw-claude-*` prefix for transparency.
4. If output is weak: read summary file's gate decision. May need to refine input and re-run.
5. Do NOT delete the scratchpad audit trail until you're certain about the output.
```

### Step 8 — Stop

Output a final chat message:
- Output mode (engagement or sandbox)
- All resolved output paths (so user knows exactly where files landed)
- Gate decision
- Stages tracer-fired vs aborted
- Total runtime, agents invoked, sources cited
- Top 3 high-confidence findings
- Top 3 questions for field validation

For engagement mode, explicitly call out:
> *"Wrote 2 raw-claude-*.md artifacts to stage folders. Wrote audit trail to 90-scratchpad/raw-claude-overnight/[run-id]/. Review the artifacts before treating as canonical."*

Do not iterate. Do not auto-rerun. Skill stops here.

## Standards (apply across all sub-agents)

- American English
- USD figures (convert if source uses local currency, note both)
- Real URLs only — never invent or paraphrase
- No invented interview quotes — use `[Interview placeholder: ask Y at company Z]`
- Match IMI reference structure exactly
- Citation: every claim has numbered footnote → URL list at section bottom
- Hypothesis tagging: `[ASSUMED-N]: <claim> — to validate: <specific question>` (sequential N for grep)
- Source priority: government statistics → multilateral → ministry → industry association → audited research firm → academic → standards body → trade press (last resort)

## PDF processing — markitdown

Many primary academic and government sources are PDF. WebFetch on PDF URLs typically fails or returns binary garbage. Use markitdown:

```bash
# Pre-check (sub-agents do this once at start)
which markitdown || pip install markitdown --quiet --user

# Fetch PDF and convert to markdown
markitdown <pdf-url> > /tmp/source-<hash>.md
# Or for local PDF:
markitdown /path/to/file.pdf > /tmp/source-<hash>.md
```

Sub-agents should:
1. When a candidate source is PDF (URL ends in `.pdf`, or HEAD returns content-type `application/pdf`)
2. Run markitdown to convert to markdown
3. Read the markdown content
4. Cite the original PDF URL in the artifact (not the local conversion path)
5. Tag the citation `(PDF, processed via markitdown)` in source list at bottom

This unlocks: ARPA-E reports, IEA detailed PDFs, ASEAN Centre for Energy publications, academic papers, government statistical bulletins, World Bank reports.

## Source caching

If `.claude/cache/sources/` exists, use it. Filesystem-based cache:

```
.claude/cache/sources/
├── index.json     # url -> {filename, fetched_at, content_type, hash}
└── <hash>.<ext>   # cached content
```

**Before WebFetch** of any URL:

```bash
# 1. Hash the URL
HASH=$(echo -n "$URL" | shasum -a 256 | cut -d' ' -f1 | head -c 16)

# 2. Check index
CACHED=$(jq -r ".\"$URL\".filename // empty" .claude/cache/sources/index.json 2>/dev/null)
FETCHED_AT=$(jq -r ".\"$URL\".fetched_at // empty" .claude/cache/sources/index.json 2>/dev/null)

# 3. If cached and < 30 days old, read cached file
if [ -n "$CACHED" ] && [ -f ".claude/cache/sources/$CACHED" ]; then
  AGE_DAYS=$(( ($(date +%s) - $(date -j -f "%Y-%m-%dT%H:%M:%S" "$FETCHED_AT" +%s 2>/dev/null || echo 0)) / 86400 ))
  if [ "$AGE_DAYS" -lt 30 ]; then
    cat ".claude/cache/sources/$CACHED"
    # Cache hit — no fetch needed
  fi
fi

# 4. Otherwise fetch + cache
# (helper script .claude/cache/fetch-with-cache.sh handles this)
```

Sub-agents prefer `.claude/cache/fetch-with-cache.sh <url>` over raw WebFetch when the cache helper exists. If cache helper missing, fall back to direct WebFetch.

**Cache benefit:** Empty on first run (no benefit). On subsequent runs covering similar topics, 30–50% of WebFetch calls become cache hits, reducing cost and runtime.

## Resource budget enforcement

Apply these soft caps. If hit, force-finalize with what's done.

| Resource | Cap | Behavior at cap |
|---|---|---|
| WebSearch per stage | 50 | Move to next stage |
| WebFetch per stage | 30 | Move to next stage |
| Deep-research calls per stage | 5 | Stop deep-research for this stage |
| Total runtime | 4 hours | Force final pass |
| Token cost (if `--max-cost` provided) | argument | Force final pass |
| Sub-agent invocations per stage | 6 | Stop remediation, accept current draft |

If a cap is hit, document in run summary as `Resource cap hit at Stage[N] — output may be incomplete in [specific area]`.

## Failure modes — DO NOT do these

- **DO NOT pause for human input.** This is unattended.
- **DO NOT skip the tracer bullet.** Stage 1 must complete fully before Stage 2 begins. If you batch-draft all stages first, you will produce noise.
- **DO NOT proceed past Step 1 if input scope is fuzzy.** Write BLOCKED.md and stop.
- **DO NOT proceed past Step 0 if IMI reference is missing.** Write BLOCKED.md and stop.
- **DO NOT invent sources or URLs.** If you can't find a source, the claim becomes `[ASSUMED-N]` or gets dropped.
- **DO NOT treat multiple URLs from one publication as multiple sources.** coalbiomassboiler.com cited 5 times = 1 source.
- **DO NOT present APAC market sizes as country-specific** without `Geography mismatch` flag.
- **DO NOT pad thin stages with generic statements.** Use `Data gap` flag with specific role to interview.
- **DO NOT score self-validation to make gate look good.** If 50% of claims are Low confidence, that's the report.
- **DO NOT auto-rerun** when gate says re-run. Human decision.
- **DO NOT iterate after Step 7.** Skill produces one orchestrated run and stops.

## Sub-agents invoked

- `value-chain-mapper` — per stage value chain
- `pain-point-researcher` — per stage pain points
- `source-validator` — per stage + final cross-stage
- `deep-research` — per weak claim

All defined in `.claude/agents/`. All have `disable-model-invocation: true` — invoke explicitly via Agent tool.

## Notes

- Geography-agnostic. Input file states geography.
- Domain-agnostic. No assumed sector.
- Not deck output. Research feedstock.
- Not BD prospecting. No contact lists.

For detailed output structures, scoring rubric, and override rules, see:
- `REFERENCE.md` (output structure specs)
- `QUALITY-BAR.md` (scoring + overrides)
- `AGENTS.md` (when/why to invoke each)
