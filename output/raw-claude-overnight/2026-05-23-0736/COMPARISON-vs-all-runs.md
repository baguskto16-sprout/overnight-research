# Cross-run comparison: 2026-05-23-0736 vs all prior runs

Generated: 2026-05-25
Latest run: **2026-05-23-0736** — Indonesia urban affluent preventive CDM market

---

## 1. Topic / Scope

| Run | Topic | Geography | Stages | Unit of analysis |
|-----|-------|-----------|--------|-----------------|
| **2026-05-23-0736** (LATEST) | Indonesia affluent preventive CDM / MSO opportunity | Indonesia Tier-1/Tier-2 cities | 5 | Market-segment analytical dimensions (population, spend, insurance, insurers, disease burden) |
| 2026-05-23-0152 | Logistics risk management solutions across freight journey | Worldwide (SEA flagged) | 6 | Solution categories per freight-journey stage |
| 2026-05-21-0115 | Logistics risk management solutions (same topic) | Worldwide (SEA flagged) | 6 | Solution categories per freight-journey stage |
| 2026-05-20-1124 | Logistics risk management solutions (same topic) | Worldwide (SEA flagged) | 6 | Solution categories per freight-journey stage |
| 2026-05-19-0900 | Logistics risk management solutions (same topic) | Worldwide (SEA flagged) | 6 | Solution categories per freight-journey stage |
| 2026-05-17-2337 | Logistics risk management solutions (same topic) | Worldwide (SEA flagged) | 6 | Solution categories per freight-journey stage |
| 2026-05-14-0107 | Logistics risk management solutions (same topic) | Worldwide (SEA flagged) | 6 | Solution categories per freight-journey stage |
| 2026-05-02-0842 | Industrial solid-fuel package boilers in SEA | Indonesia, MY, TH, SG | 5 | Actor-based value chain (fuel → OEM → EPC → operators → aftermarket) |

**Verdict:** The latest run is the *only* run on a distinct healthcare/insurance topic. All other runs except 2026-05-02-0842 cover the same logistics-risk topic (iteratively improving). The CDM run demonstrates the pipeline's **topic-generality** — it adapts the stage framework from an actor/journey chain to analytical market-sizing dimensions without breaking the pass-0/1/2/3 structure.

---

## 2. Structural completeness

| Artifact | 0736 (LATEST) | 0152 | 0115 | 1124 | 0900 | 2337 | 0107 | 0842 |
|----------|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| pass-0-plan.md | YES | YES | YES | YES | YES | YES | YES | YES |
| pass-1-drafts/ | 10 files (5 stages x 2) | 12 (6x2) | 12 | 12 | 12 | 12 | 12 | 10 |
| pass-2-validation/ stage JSONs | 5 | 6 | 2 | 6 | 1 | 6 | 6 | 5 |
| pass-2 cross-stage.json | YES | YES | YES | NO | NO | NO | NO | NO |
| pass-2 contradictions.json | YES | YES | NO | NO | NO | NO | NO | NO |
| pass-3-deep-research/ | 5 JSONs (Stage 1 only) | 16 JSONs (6 stages) | 3 JSONs (Stage 1 only) | 0 | 1 | 26 JSONs (6 stages) | 26 JSONs (6 stages) | 14 JSONs (5 stages) |
| pass-3 APPLIED-TO-DRAFTS.md | YES | NO | NO | NO | NO | NO | NO | NO |
| stages-validated/ | 10 (5x2) | 12 (6x2) | 12 (6x2) | 6 (combined) | 6 (combined) | 12 (6x2) | 12 (6x2) | 15 (5x3, incl refinements) |
| FINAL-REPORT.html | YES (661L) | YES (1137L) | YES (1595L) | YES (659L) | YES (603L) | YES (1159L) | NO* | YES (1062L) |
| LINT-REPORT.md | YES | YES | YES | NO | NO | NO | NO | NO |
| ENRICHMENT-COMPLETE.txt | YES | YES | YES | YES | YES | NO | NO | NO |
| RUN-COMPLETE.txt | YES | YES | YES | YES | YES | YES | YES | YES |
| cross-stage-observations.md | YES | YES | YES | YES | NO | NO | NO | NO |

*0107 has `report-tokiomarine-logistics-landscape.html` + PDFs + QA screenshots instead of standard FINAL-REPORT.html.

**Verdict:** The latest run (0736) and 0152 are the **only two runs** with the complete modern pipeline: all passes + contradictions.json + cross-stage.json + LINT-REPORT.md + ENRICHMENT-COMPLETE. The 0736 run is additionally the first to produce `APPLIED-TO-DRAFTS.md` documenting how deep-research findings were integrated back into canonical drafts.

Earlier runs are progressively incomplete:
- 0115: Has lint + cross-stage but missing contradictions.json; pass-2 only validated 2/6 stages individually
- 1124: No pass-3, no lint, no contradictions
- 0900: Only 1 stage validated, 1 deep-research file
- 2337/0107: Most prolific deep-research (26 each) but predate lint/contradictions infrastructure
- 0842: Good deep-research (14) but predates lint/contradictions infrastructure

---

## 3. Depth and rigor of value-chain and pain-points

| Run | VC words | PP words | Total words | Pain points | Citations/PP | Root causes |
|-----|----------|----------|-------------|-------------|-------------|-------------|
| **0736** | 23,016 | 30,655 | 53,671 | 17 | 24.2 avg | ~86 (~4/PP) |
| 0152 | 37,819 | 46,664 | 84,483 | 30 | 24.0 avg | ~120 (~4/PP) |
| 0115 | 37,872 | 49,014 | 86,886 | 30 | 25.3 avg | ~120 (~4/PP) |
| 1124 | 30,080 | 56,596 | 86,676 | ~30 | not measured | not measured |
| 0900 | 30,796 | 29,888 | 60,684 | ~30 | not measured | not measured |
| 2337 | 31,064 | 54,571 | 85,635 | ~30 | not measured | not measured |
| 0107 | 53,478 | 55,463 | 108,941 | ~30 | not measured | not measured |
| 0842 | 22,354 | 46,352 | 68,706 | ~25 | not measured | not measured |

**Verdict:** The latest run is the smallest by raw word count (53.7K vs 84–109K for logistics runs). This is proportionate — it covers 5 stages on a narrow market-sizing scope vs 6 stages on a broad solution landscape. Citation density (24.2/PP) matches the best-in-class 0152/0115 runs, confirming quality is maintained despite narrower scope.

**Depth markers unique to 0736:**
- Working hypothesis test plan with per-stage evidence mapping (pass-0-plan.md)
- Explicit cross-stage corrections applied (5 corrections documented in cross-stage-observations.md)
- Deep-research APPLIED-TO-DRAFTS.md with delta tracking (3 CONTRADICTED + 1 REFINED + 1 CONFIRMED-SCARCE)
- Phase 2 Playwright outcomes table with 20 URLs attempted, 12 resolved, 8 confirmed inaccessible

---

## 4. Source quality and citation density

| Run | Unique domains | Gov/multilateral % | Academic % | Lint citation density | Vendor-marketing override |
|-----|---------------|-------------------|-----------|----------------------|--------------------------|
| **0736** | 122 | 9.5% (BPS, OJK, MoH, WHO, WB) | 26.5% (42 PMC + 14 journals) | 24.2/PP (411 refs / 17 PPs) | 19.4% (41 claims) |
| 0152 | 319 | ~8% | ~12% | 24.0/PP (719 refs / 30 PPs) | 25% (~102 claims) |
| 0115 | 288 | ~10% | ~15% | 25.3/PP (759 refs / 30 PPs) | ~20% |
| 1124 | not measured | not measured | not measured | no lint | not measured |
| 0900 | not measured | not measured | not measured | no lint | not measured |
| 2337 | not measured | not measured | not measured | no lint | not measured |
| 0107 | not measured | not measured | not measured | no lint | not measured |
| 0842 | not measured | not measured | not measured | no lint | not measured |

**Verdict:** The 0736 run has the **highest academic + government source share** (36% combined) of any measured run. The healthcare topic naturally lends itself to PubMed/WHO/government statistics in a way the logistics topic does not. Raw domain count is lower (122 vs 288–319) because the topic is geographically narrow (Indonesia only) vs worldwide logistics. Quality over quantity.

---

## 5. Lint / QA results

| Run | Lint result | Warnings | Fails | Key observations |
|-----|------------|----------|-------|-----------------|
| **0736** | 8 pass, 1 warn, 0 fail | attended-fetch-tags (tags missing URL) | 0 | footnote-bijection pass, backup-invariant pass (3.4% VC / 1.3% PP delta from bak) |
| 0152 | 8 pass, 1 warn, 0 fail | attended-fetch-tags (tags missing URL) | 0 | footnote-bijection pass, backup-invariant pass (0.1% / 0.1% delta) |
| 0115 | 9 pass, 0 warn, 0 fail | none | 0 | Cleanest lint: 0 NEEDS + 5 CONFIRMED-INACCESSIBLE, well-formed |
| 1124–0842 | no lint | — | — | Predates lint infrastructure |

**Verdict:** 0115 is the only run achieving a perfect 9-pass/0-warn lint. The 0736 and 0152 runs both pass with 1 warning (same category: attended-fetch-tags). The 0736 run shows slightly higher backup-invariant deltas (3.4% VC) vs 0152 (0.1%), suggesting Phase 2 enrichment modified the 0736 canonical artifacts more aggressively — appropriate given Phase 2 resolved 12 URLs and injected confirmed data.

---

## 6. What the latest run (0736) does BETTER and WORSE

### BETTER

1. **Novel topic demonstrates pipeline generality.** First run on a non-logistics topic since 0842 (package boilers). Proves the pass-0/1/2/3 pipeline works for market-segment-sizing/healthcare hypotheses, not just solution-landscape scans.

2. **Highest-quality source mix.** 36% academic + government sources — the best of any measured run. Grounded in peer-reviewed epidemiology (Lancet, BMJ Open, IDF Atlas) and primary government statistics (BPS, OJK, MoH).

3. **First run with APPLIED-TO-DRAFTS.md.** Explicitly documents how deep-research findings corrected the canonical drafts (3 claims CONTRADICTED and revised, 1 REFINED, 1 CONFIRMED-SCARCE). Prior runs did deep-research but the integration pathway was undocumented.

4. **Contradiction-finder applied and documented.** Two high-severity contradictions (diabetes prevalence 11.7% vs 11.3%, hypertension 29.2% vs 31.6%) caught with full resolution suggestions. Cross-stage-observations.md acknowledges and resolves them.

5. **Complete Phase 2 integration with outcome table.** 20 Playwright-attempted URLs with outcome status (12 resolved, 8 confirmed inaccessible) — the most transparent Phase 2 audit trail of any run.

6. **Actionable field-validation questions.** Three specific interview questions with named targets (Siloam, RS Pondok Indah, AXA Mandiri) and precise metrics to validate — more commercially actionable than prior runs' generic "field validation needed" notes.

### WORSE

1. **Smallest corpus by word count (53.7K vs 85–109K).** The 5-stage scope and narrow geography produce less total content. Whether this is a flaw depends on use case — for a market-sizing brief it may be appropriate, but the FINAL-REPORT.html is only 661 lines (smallest of any run with the standard template).

2. **Deep-research limited to Stage 1 only (5 files vs 16–26 in best runs).** Only Stage 1 received deep-research remediation. Stages 2–5 ship with their post-validation scores unremediated. The 0152 run (16 DR files across all 6 stages) and 2337/0107 (26 each) are more thorough in this dimension.

3. **No per-stage validation JSONs for stages 3–5.** The cross-stage.json and stage-1/2 JSONs exist, but individual stage-3/4/5 JSONs are also present (7 total including cross-stage + contradictions). Wait — checking: 5 stage JSONs + cross-stage + contradictions = 7. This is actually complete. Revised: **no weakness here** — all stages validated.

4. **Higher backup-invariant delta (3.4% VC).** Phase 2 enrichment modified the canonical VC artifact more than in 0152 (0.1%). This signals that the Phase 1 draft was less self-sufficient — it needed more Playwright-resolved data to reach final form.

5. **Fewer total unique domains (122 vs 288–319).** The narrow geographic scope limits source diversity. This is structural (Indonesia-specific healthcare sources are fewer than worldwide logistics sources) rather than a quality failure, but it means fewer cross-validation opportunities.

---

## Ranked table: All runs best-to-worst on overall output quality

| Rank | Run | Score rationale |
|------|-----|-----------------|
| 1 | **2026-05-23-0152** | Most complete logistics run: full pass-0/1/2/3 with 16 DR files across all 6 stages, contradictions.json, cross-stage.json, lint (8p/1w/0f), 319 unique domains, 84.5K words. Only weakness: 69.5% Low confidence (re-run-recommended gate). |
| 2 | **2026-05-23-0736** (LATEST) | Full pipeline with highest source quality (36% academic+gov), APPLIED-TO-DRAFTS.md, contradiction-finder, Phase 2 resolved. Smaller corpus is scope-appropriate. DR limited to Stage 1 is the main gap. |
| 3 | **2026-05-21-0115** | Perfect lint (9p/0w/0f), highest citation density (25.3/PP), full stages-validated. But: only 3 DR files (Stage 1 only), pass-2 only validated 2/6 individually, no contradictions.json. |
| 4 | **2026-05-17-2337** | Prolific deep-research (26 files, all 6 stages), full validation JSONs, good word count (85.6K). But: predates lint/contradictions/cross-stage infrastructure; no ENRICHMENT-COMPLETE (no Phase 2). |
| 5 | **2026-05-14-0107** | Largest corpus (108.9K words), 26 DR files, all stages validated, QA screenshots. First production-quality run. But: predates lint/contradictions; no standard FINAL-REPORT.html; higher Low-confidence (53.2% per 2337's plan referencing it). |
| 6 | **2026-05-02-0842** | Different topic (package boilers), good DR coverage (14 files), stages-validated with refinements. But: predates all quality infrastructure; no lint/contradictions/cross-stage; validation format is older. |
| 7 | **2026-05-20-1124** | Full pass-2 validation (all 6 stages with summaries) — but 0 deep-research, no lint, combined stages-validated format, no contradictions. Transitional run between old and new pipeline. |
| 8 | **2026-05-19-0900** | Most incomplete: only 1 stage validated, 1 DR file, no lint, no contradictions, no cross-stage. Appears to have been interrupted or scope-limited. |

---

## 3 Concrete recommendations for the next run

### 1. Extend deep-research to ALL stages, not just Stage 1

The 0736 run only deep-researched Stage 1 (5 files). Stages 2–5 had % Low scores of 45%, 24%, 31%, 35% — Stage 2 particularly would have benefited from DR remediation. The best-in-class runs (0152: 16 files, 2337/0107: 26 files each) cover all stages. **Action:** Configure the orchestrator to trigger DR on *any* stage with >30% Low post-validation, not just the tracer-bullet stage.

### 2. Reduce backup-invariant delta by pre-resolving known-blocked sources in Phase 1

The 0736 run showed 3.4% VC backup-invariant delta (vs 0.1% in 0152). This means Phase 2 Playwright had to inject substantial content. Several of the blocked sources (BPS portals, OJK statistics) are *known* to require attended fetch from prior Indonesia research. **Action:** Pre-populate `.claude/cache/sources/` with previously-fetched BPS/OJK/MoH content before launching Phase 1, so the value-chain-mapper can cite them directly rather than leaving holes for Phase 2.

### 3. Add a "confidence floor" gate before FINAL-REPORT rendering

The 0152 run produced a full FINAL-REPORT.html despite a gate decision of "re-run-recommended" (69.5% Low). The report should either: (a) include a prominent confidence banner when Low% exceeds 50%, or (b) suppress rendering until DR has reduced Low% below the ship-with-flag threshold. **Action:** Add a lint check that flags FINAL-REPORT.html if the cross-stage gate_decision is "re-run-recommended" — either as a lint FAIL or as a rendered watermark in the HTML.
