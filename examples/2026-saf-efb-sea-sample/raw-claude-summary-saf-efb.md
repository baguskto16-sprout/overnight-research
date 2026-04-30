# Run Summary: SAF from EFB — Indonesia (sample)

> **EXAMPLE / SAMPLE OUTPUT — illustrative format only, not field-validated research. Do not cite.**

**Run ID:** 2026-04-30-sample
**Run date:** 2026-04-30
**Topic:** SAF production from EFB palm waste, Indonesia (HEFA + ATJ pathways)
**Geography:** Indonesia (primary), Malaysia (secondary)
**Input file:** `./input/saf-from-efb.txt` (illustrative path)
**Mode:** Sandbox sample

---

## Run Statistics

- **Start time:** 2026-04-30 14:00 UTC+7
- **Stages mapped:** 2 (sample scope; full run would map 4–7)
- **Pain points documented:** 3
- **Total unique sources cited:** 13
- **Working hypotheses tested:** 3 of 3
- **Sub-agent invocations:** 6 (value-chain-mapper × 2, pain-point-researcher × 2, source-validator × 2 per-stage + 1 final)

---

## Working Hypothesis Test Results

| # | Hypothesis | Verdict | Strength |
|---|-----------|---------|----------|
| WH1 | EFB feedstock logistics cost is the binding constraint | **Partially evidenced** | Moderate — biomass logistics share documented; EFB-specific share needs field validation |
| WH2 | EFB quality variability blocks SAF refiner adoption | **Evidenced** | Strong — multiple academic + industry sources confirm moisture / contamination challenges |
| WH3 | Indonesian financing gap delays SAF facility investment | **Partially evidenced** | Moderate — capex barriers documented; specific financing constraints need stakeholder interviews |

---

## Top 3 High-Confidence Findings

1. **EFB total volume in Indonesia is well-documented (~29-43M tonnes/year wet basis).** Government and academic sources align on this number. Available primary research includes BPS Indonesia, IEEE Xplore, and Wiley peer-reviewed sources.

2. **Singapore SAF mandate from 2026 is a confirmed demand-side driver.** CAAS (Civil Aviation Authority of Singapore) has published official policy targeting 1% blending from 2026 scaling to 3-5%. This creates a multi-year demand pull for SEA-sourced SAF feedstock.

3. **Global SAF capacity gap is real and growing.** IEA confirms 2024 production at ~1.5M tonnes vs IEA/ICAO 2030 demand projection of 17-24M tonnes — a 12-16x scale-up requirement that creates structural opportunity for new feedstock and refining capacity in producer regions like Indonesia.

---

## Top 5 Questions for Human Field Validation

### Q1: What % of EFB volume meets SAF refiner specs without costly upgrading?

**Desktop answer:** Inferred at 10-20% based on utilization gaps and quality literature. No direct measurement found. Critical for accurate market sizing.

**Remaining gap:** Interview 3+ palm oil major sustainability leads on what % of their EFB stream meets SAF refiner specs (moisture, contamination, lignin content). Interview SAF refiner QA leads on actual rejection rates.

**Source pointers:** PT SUEK, POSCO Agri, Sime Darby Plantation, IOI Corporation sustainability teams.

---

### Q2: What is the actual logistics cost share for EFB specifically (vs PKS proxy)?

**Desktop answer:** Used 30-50% logistics share from PKS market analysis as proxy. EFB-specific number not surfaced in desktop research.

**Remaining gap:** Interview EFB aggregator (PT SUEK or PT Pacific Indomas) for actual cost breakdown per delivered ton of EFB-derived feedstock. Cross-validate with 2 additional aggregators.

**Source pointers:** PT SUEK operations team, Indonesian Materials & Aggregation Association (INA-Mas).

---

### Q3: Is Indonesia's financing gap or feedstock supply the binding constraint on SAF facility investment?

**Desktop answer:** Both are documented as concerns; not clear which is more limiting. Indonesian Sovereign Wealth Fund (INA) has SAF investment thesis but specifics not public.

**Remaining gap:** Interview Pertamina + Indonesian Sovereign Wealth Fund (INA) on SAF investment thesis. Also interview international SAF technology licensors (UOP, LanzaJet) on perceived barriers in SEA market.

**Source pointers:** Pertamina sustainability leadership, INA project finance team, Honeywell UOP SEA rep, LanzaJet business development.

---

### Q4: What is the actual EFB shipment rejection rate at SAF refiners?

**Desktop answer:** Estimated 5-15% based on industry conversation but not directly measured.

**Remaining gap:** Interview SAF refiner QA leads (Neste, Pertamina, World Energy) on actual rejection rate from SEA EFB-derived feedstock. Also useful: review any published SAF refiner annual reports for feedstock quality stats.

**Source pointers:** Neste palm policy team, Pertamina Cilacap refinery, World Energy Paramount facility QA.

---

### Q5: Is documentation overhead (CORSIA + ISCC + RED III) a separate venture opportunity?

**Desktop answer:** Yes, plausibly. Surfaced as new pain point not in original hypothesis. Documentation chain costs and lead times are meaningful (6-12 months added to facility commissioning).

**Remaining gap:** Interview 2 Indonesian palm sustainability consultants (e.g. Daemeter, PT Pelangi) on documentation cost as % of total SAF feedstock cost. Identify whether existing players already address this or if there's a "certification-as-a-service" white space.

**Source pointers:** Daemeter (Indonesian palm sustainability consultancy), PT Pelangi, Topsoe sustainability team.

---

## Top 3 Pain Points by Structural Severity

1. **Feedstock-to-refiner scale mismatch (Pain point 2.1).** Aggregators ~100K t/y vs refiners ~1M+ t/y. Most structurally severe because it requires either consolidation (5-10 year horizon) or new business model (feedstock pooling, cooperative aggregation) — neither happening today.

2. **EFB quality variability (Pain point 1.2).** Affects every shipment, every aggregator-refiner relationship. Compounds with feedstock supply uncertainty (Pain point 1.1) — together they make refiners hesitant to commit to Indonesian feedstock at scale.

3. **Logistics cost in dispersed mill geography (Pain point 1.1).** Margin-compressing for aggregators, opportunity for shared logistics platform if one emerges.

---

## Caveats

1. **Sample run, narrow scope.** Only 2 actor stages mapped (vs 4-7 in full run). Aggregator-refiner stage covered; missing palm millers (upstream), SAF blenders, airline buyers, regulators — all relevant for complete picture.

2. **Several PKS-as-proxy estimates.** Logistics cost data uses Palm Kernel Shell market analysis as EFB proxy. EFB-specific data sparse in public sources.

3. **`[ASSUMED-N]` count: 10 across this sample.** Each represents a specific question for field validation. In a production run with 5+ interviews, expected to resolve at least 6-8 of these.

4. **No primary EFB pricing data.** Sample relies on PKS pricing as proxy. Direct EFB market pricing from MPOB or Indonesian palm board would tighten estimates.

5. **No interview data.** Desktop pass only. All references to interview-based questions are placeholders.

---

## Self-Validation Result

- Total claims scored: 22
- High confidence: 5 (22.7%)
- Medium confidence: 12 (54.5%)
- Low confidence: 5 (22.7%) — includes claims tagged `[ASSUMED-N]`

**Gate decision:** Ship as-is

**Reasoning:** Low confidence is below 30% threshold and concentrated in `[ASSUMED-N]` tags that explicitly require field validation rather than weak desktop sources. The structural analysis (value chain stages, pain point root causes, working hypothesis verdicts) is well-evidenced. Cost and quantitative claims that ARE in the artifact are well-cited. The sample's narrow scope means total source diversity (13 sources) is below IMI density target (40-60); a full run with 4-7 stages would naturally hit IMI source diversity.

**Per-stage confidence:**

| Stage | High | Medium | Low | Total |
|---|---|---|---|---|
| Stage 1: EFB Aggregators | 2 | 6 | 2 | 10 |
| Stage 2: SAF Refiners | 3 | 6 | 1 | 10 |
| Cross-stage | 0 | 0 | 2 | 2 |
| **Total** | **5** | **12** | **5** | **22** |

---

## Recommended Next Steps for Human Reviewer

1. **Validate top 3 questions Q1-Q3** before any deeper investment thesis work. These resolve the binding constraints (feedstock scale + financing).

2. **Run full overnight on this topic** if sample is structurally aligned with what you need. Full run would map 4-7 stages (palm millers, EFB aggregators, SAF refiners, airline buyers, regulators) and produce ~10-12 pain points with full IMI density.

3. **Compare to IMI Climate Control's `22-pain-points/by-stage.md`** for structural fidelity. Sample is narrower but should structurally match.

4. **If documentation overhead (Q5) confirms as opportunity**, consider it as separate venture concept worth exploring in `23-solution-concepts/` stage of any future Cremer-style engagement.

5. **Cross-reference with active Cremer biomass engagement.** EFB is in scope there for biogas + pellets. SAF pathway is adjacent and may inform Cremer thesis.

---

## Output Files (this sample)

| File | Description | Size |
|------|-------------|------|
| `raw-claude-value-chain-saf-efb.md` | 2-stage value chain, IMI format | ~6 KB |
| `raw-claude-pain-points-saf-efb.md` | 3 pain points with root causes | ~12 KB |
| `raw-claude-summary-saf-efb.md` | This file | ~4 KB |

Total sample: ~22 KB. Full run would be ~60-90 KB with 4-7 stages and 8-15 pain points.

---

## Reference comparison

Compare this sample structure to:
- `Wright-Partners/26-idea-imicc-datacenters/22-pain-points/by-stage.md` — quality target
- `Wright-Partners/26-design-cremer-biomass/11-value-chain/raw-claude-coconut-biomass-indonesia.md` — convention reference

Sample matches IMI structure (heading hierarchy, multi-component cost, declarative root causes, source list per section, `[ASSUMED-N]` tagging).
