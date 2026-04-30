# Quality bar

The skill targets WP-grade research output structurally matching IMI Climate Control's `22-pain-points/by-stage.md` (~32 KB, 8-15 citations per pain point, 3-5 root causes per pain point).

## Manual checklist after a run

After `verify.sh` automated checks, do a manual scan for:

### Format

- [ ] All three artifact files exist (value-chain, pain-points, summary)
- [ ] `RUN-COMPLETE.txt` present
- [ ] No `BLOCKED.md` or `ABORTED.md` (unless input was intentionally fuzzy for testing)
- [ ] Summary file has all sections: Run Statistics, Working Hypothesis Test Results, Top 5 Questions, Top 3 Findings, Top 3 Pain Points, Caveats, Self-Validation Result, Per-Actor Confidence Table, Output Files

### Citation discipline

- [ ] Every numerical claim has numbered footnote `(N)`
- [ ] Footnotes resolve to real URLs (click and verify a few)
- [ ] No invented URLs or paraphrased references
- [ ] Per pain point: 8-15 unique citations (matches IMI density)
- [ ] At least one PDF source processed via markitdown (look for `(PDF, processed via markitdown)` tag)
- [ ] Mix of source types (not all trade press)

### Structural fidelity to IMI

Open `.claude/refs/imi-pain-points-template.md` side-by-side with output. Check:

- [ ] Same heading hierarchy (Stage N → Pain point N.X → Description / Who bears it / Estimated cost / Willingness to pay / Frequency / Evidenced or assumed / Root Causes)
- [ ] Estimated cost is multi-component (not single bullet)
- [ ] Each pain point has 3-5 root causes
- [ ] Each root cause is a declarative structural sentence (not symptom restatement)
- [ ] Root causes have inline citations OR `[ASSUMED-N]` tag with specific validation question

### Hypothesis discipline

- [ ] Working hypotheses from input each have explicit verdict (Evidenced / Partially evidenced / Not corroborated)
- [ ] Verdicts are honest — at least one should be "Partially" or "Not corroborated" (suspicious if every hypothesis confirmed perfectly)
- [ ] New pain points surfaced beyond original hypotheses, in own subsection
- [ ] Every assumed claim has unique `[ASSUMED-N]` tag
- [ ] Validation questions are specific enough to ask in field interview (not generic)

### Source quality

- [ ] No single-trade-source operating cost figures (override should have flagged these Low)
- [ ] No APAC market sizes presented as country-specific without `Geography mismatch` flag
- [ ] Government statistics agencies cited where available (BPS, MIDA, NSO, ASEAN Centre for Energy)
- [ ] Multilateral sources cited (IEA, IRENA, World Bank, OECD)
- [ ] Academic peer-reviewed sources cited
- [ ] Trade press is supplementary, not primary

### Confidence scoring

- [ ] Self-validation section in summary
- [ ] % High confidence ≥25% (target: 25-40%)
- [ ] % Low confidence ≤30% (target: 10-20%)
- [ ] Per-actor confidence table present
- [ ] Gate decision matches the percentages (≤30% Low = ship-as-is, etc.)

### WP firm style

- [ ] American English spelling
- [ ] All figures in USD (other currencies converted with notation)
- [ ] No emojis
- [ ] No bullet point lists where prose is expected
- [ ] No filler / preamble / "summary of what I just did" paragraphs (per `wp-conventions.md`)

## Common quality failures

### "Output is too thin"

Signs: pain points have only 2-3 citations each, missing root causes, sparse market sizing.

Fix: input scope likely too narrow OR hypothesis too vague. Refine input file. Re-run.

### "Output is template-shaped speculation"

Signs: every pain point perfectly confirms input hypothesis, root causes are vague generalizations, sources are mostly trade press.

Fix: the skill shipped before learning from real research. Indicates horizontal slicing crept in (running all stages before validating). v3 vertical slicing should prevent this — if it happens, file a bug.

### "Wrong language used"

Signs: terminology doesn't match `wp-conventions.md`, sub-agent uses generic vocabulary instead of WP terminology.

Fix: ensure `.claude/refs/wp-conventions.md` was loaded at Step 0 (check log). If missing, run `./scripts/setup.sh` to reload refs.

### "Cost ran way over budget"

Signs: token cost >$100 for full overnight run.

Fix: probably hit a search loop where the skill kept re-fetching same sources. Check cache-stats.sh — if cache empty after run, cache helper failed (jq missing? path issue?). Fix cache, re-run.

### "Output looks great but Toi pushes back on a specific claim"

Common reaction. The skill flags every assumed claim with `[ASSUMED-N]: to validate <specific question>`. When Toi questions a specific claim, look up its tag — the validation question tells you exactly what field interview would resolve it.

This is a feature, not a bug. The skill is honest about what's evidenced vs assumed. Toi's pushback should land on either (a) we need to do that field interview, or (b) we missed a primary source — re-research.

## Quality progression over time

First few runs on new topics: expect 30-40% Low confidence (typical for desktop pass without primary research).

After a few runs accumulating cache: cache hit rate grows, source diversity grows, % High confidence climbs.

After WP team starts feeding interview transcripts back into refs: skill can pull real interview quotes, % High confidence climbs further.

Long-term target: <15% Low confidence, >40% High confidence, structural match to IMI on first pass without remediation.
