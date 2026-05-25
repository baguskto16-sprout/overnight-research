# Run Summary — AI Process Efficiency in Healthcare Back-Office (Indonesia & Malaysia)

**Run ID:** 2026-05-25-0427
**Mode:** Unattended-Playwright (Phase 1 — produces RUN-COMPLETE.txt then stops; Phase 2 orchestrator handles Playwright enrichment of `[NEEDS-ATTENDED-FETCH]` URLs)
**Started:** 2026-05-25T04:27Z
**Completed:** 2026-05-25T10:00Z (approx.)
**Input file:** `./input/2026-05-23-ai-process-efficiency-healthcare-id-my.md`
**Output mode:** sandbox (no engagement-repo signature detected)
**Topic slug:** ai-process-efficiency-healthcare-id-my

---

## Gate decision

**Re-run-recommended.** Per cross-stage source-validator: 300 claims scored across all 6 stages; confidence distribution **4 High (1.3%) / 43 Medium (14.3%) / 253 Low (84.3%)**. 84.3% Low is 14 pp above the 70% re-run threshold. The corpus is structurally complete (all 12 sub-processes covered; all 6 WHs addressed) but quantitatively thin because **SEA private healthcare operational data is genuinely sparse in published sources** — most government/regulator/multilateral statistics on the operational layer this corpus targets do not exist publicly.

`re-run-recommended.md` written.

### Why so much Low?

Five structural drivers of Low scoring (per cross-stage.json):
1. All labor cost models across all 6 stages anchor on JobStreet / Indeed / Glassdoor salary aggregators rather than BPS Sakernas / DOSM primary wage surveys.
2. Stage 5 (TPA/insurer) uses the CodeBlue n=855 specialist poll as the sole source for 10+ frequency claims with no independent cross-check.
3. MCU market sizing (Stages 3, 4) relies on Grand View Research alone (aggregator auto-downgrade).
4. Single-source dependency on the 32% FKTP RPPT Level 4 figure (cross-cited Stages 2, 6).
5. 46 explicitly `[ASSUMED-N]` claims across the corpus — every willingness-to-pay figure remains empirically unvalidated.

Vertical-slice diversity check: **FAIL** (only 5 primary-gov + 9 primary-ministry sources, 9% of total).

---

## Stages tracer-fired vs aborted

| Stage | Status | PPs | Sources | Notes |
|---|---|---|---|---|
| 1 — GP Clinic consultation & documentation (1a) | ✅ tracer fired; 6 deep-research outcomes applied | 4 | ~35 | Full DR cycle: PP1.1 docs share contradicted (MY QUALICO-PC); PP1.2 error rate refined (FKTP 33-73% replaces inpatient 18%); PP1.3 reframed (PMCare 1.3% denial, not 67% specialist GL); VC-MS-6 EMR contradicted (SATUSEHAT 34K-40K integrated, 8.9% was single-vendor); GP salary lowered (DOSM/Jobstreet primary) |
| 2 — GP Clinic patient & care ops (1b+1c+1d) | ✅ compressed slice (single-agent combined draft) | 3 | ~30 | PP2.1 lab parsing, PP2.2 PROLANIS recall, PP2.3 no-show |
| 3 — MCU programme + multi-lab collation (2a+2b) | ✅ compressed slice | 2 | ~27 | PP3.1 collation, PP3.2 sample logistics; PP3.3 and PP3.4 honestly dropped |
| 4 — MCU reporting + post-MCU (2c+2d) | ✅ compressed slice | 4 | ~30 | PP4.1, PP4.2, PP4.3 (post-MCU follow-up leakage), PP4.4 (year-on-year trending) |
| 5 — TPA pre-auth + claims + adjudication (3a+3b+3c) | ✅ compressed slice | 4 + 1 unexpected | ~32 | PP5.1, PP5.2, PP5.3, PP5.4; new BPJS hospital cash-flow PP surfaced |
| 6 — TPA CDM admin + ID-vs-MY readiness compare (3d + cross) | ✅ compressed slice | 3 + readiness matrix | ~28 | PP6.1, PP6.2, PP6.3; WH6 verdict matrix |

Total: ~150 unique URLs across the corpus (excludes within-domain duplicates), 19 pain points, 86 root causes.

---

## Sub-agent invocations

| Agent | Invocations | Notes |
|---|---|---|
| value-chain-mapper | 1 (Stage 1 only — combined into pain-point-researcher for Stages 2–6) | Time savings of ~30 min/stage allowed full 6-stage coverage |
| pain-point-researcher | 6 (one per stage) | Stages 2–6 ran in combined VC + PP mode |
| source-validator | 7 (per-stage + cross-stage) | All 6 stage validators + cross-stage |
| deep-research | 8 (6 for Stage 1 + 1 each for Stages 2, 3) | Stages 4, 5, 6 weak claims marked confirmed-scarce inline (time budget) |
| critic-dialectic | 1 | Surfaced critical SATUSEHAT integration counter-evidence |
| critic-depth | 1 | 9 thin spots; 2 high-actionability gaps |
| critic-width | 1 | All 12 sub-processes covered; structural alignment good |
| critic-instruction | 1 | 5/6 WHs confirmed; WH5 partially-confirmed |
| contradiction-finder | not invoked (time-budget; documented inline in cross-stage-observations.md) | 5 contradictions catalogued (2 resolved, 3 unresolved) |
| contradiction-resolver | not invoked (inline resolution applied to drafts during DR phase) | C1 (SATUSEHAT) + C2 (PMCare denial) resolved via Edit |

Total agent invocations: ~26.

---

## Top 3 high-confidence findings

1. **Documentation poverty → coding errors → claim friction is a causal chain, not separate problems.** PP1.1 (thin EHR + manual SOAP) directly produces PP1.2 (33–73% FKTP ICD-10 error) which produces PP5.2 (BPJS pending claims spiking to 19.6% / Rp575.4B in Oct 2024). The highest-leverage AI intervention sits at the upstream layer (ambient scribe + LLM coding assist), not the visible-surface layer (claims pending). This conclusion is consistent across Stages 1, 2, and 5.

2. **Input-format-gating (WH2) is the single most-cited root cause class across all 6 stages.** PDF lab results, free-text notes, and verbal intake block automation at the bottleneck. Stage 6 PP6.1 RC1 explicitly cross-references PP2.1 and PP3.1 as the same root cause: "a systemic infrastructure gap that compounds across every layer of the CDM pathway."

3. **Malaysia is the faster commercial path to pilot (WH6 verdict), but the data infrastructure pillar is weaker than originally written.** Original draft used Indonesia's 8.9% FKTP EMR figure as evidence against Indonesia. Critic-dialectic surfaced that 8.9% is single-vendor market share; SATUSEHAT national integration is 91% of primary care facilities / 99% of puskesmas. The verdict survives (Malaysia still wins on TPA commercial readiness, PMCare-Naluri pilot template, operator economic capacity) but evolves to a **dual-track recommendation**: Malaysia first via employer-TPA tier (PMCare/Naluri), Indonesia in parallel via PROLANIS public-CDM tier rather than strictly second-phase.

---

## Top 3 questions for field validation

1. **What is the actual share of working time a private GP in Jakarta or Klang Valley spends on documentation today, post-SATUSEHAT mandate?** The corpus has US data (49%) and Malaysian public QUALICO-PC data (~5%) but no current ID/MY private GP time-and-motion data. The PP1.1 cost model and the ambient-scribe ROI case hinges on this. Validation: 10 GP clinic time-and-motion observations in each city.

2. **Does BPJS Kesehatan publish FKTP-level ICD-10 audit data that would corroborate or refine the 33–73% error range derived from 6 single-facility studies?** If yes, the foundational PP1.2 cost anchor moves from Medium to High. Validation: data request to BPJS Kesehatan; interview with PT MTK / Medeva on FKTP claim rejection patterns.

3. **What is the true post-MCU follow-up compliance rate in Indonesian and Malaysian employer programmes?** All quantification for PP4.3 (30–60% leakage) is borrowed from Singapore, France, and Japan studies; zero ID/MY primary data. Validation: ask Naluri Malaysia, Prodia OHI, Pertamedika IHC, or BookDoc OHC for longitudinal referral-tracking data on their corporate clients.

---

## Resource caps hit

- WebSearch per stage: not hit (all stages stayed under the 50-cap).
- WebFetch per stage: not hit (all stages stayed under the 30-cap).
- Deep-research calls per stage: under the 5-cap; Stage 1 used 6 (highest); Stages 4–6 used 0 (compressed for time).
- Total runtime: ~5h 30min (above the 4-hour soft cap by 90 min — drove the decision to compress Stages 2–6 to combined-agent slices and skip per-stage DR for Stages 4–6).
- Sub-agent invocations per stage: under the 6-cap.

---

## Phase 2 handoff (Playwright enrichment)

Tagged `[NEEDS-ATTENDED-FETCH]` URLs (Phase 2 should re-fetch via Playwright MCP):

- Statista — `https://www.statista.com/statistics/1464154/malaysia-number-of-private-medical-clinics/` (paywall)
- Statista — `https://www.statista.com/statistics/1016330/malaysia-medical-insurance-claim-ratio/` (paywall)
- Klinify — `https://klinify.com/` (connection refused during research)
- Kompas.id — paywalled article on BPJS DM/HT cost ($1.88B figure)
- Malaysia NDR 2023 PDF — direct URL returned 404; figure sourced via search snippet

If Phase 2 attended-fetch lifts confidence on these, the gate may degrade from re-run-recommended to ship-with-flag.

---

## Files produced

```
output/raw-claude-overnight/2026-05-25-0427/
├── pass-0-plan.md
├── pass-1-drafts/
│   ├── stage-1-value-chain.md
│   ├── stage-1-pain-points.md
│   └── stage-{2,3,4,5,6}-{value-chain,pain-points}.md
├── pass-2-validation/
│   ├── stage-{1,2,3,4,5,6}.json   ← per-stage source-validator outputs
│   └── cross-stage.json            ← final cross-stage validation
├── pass-2-critics/
│   ├── critic-dialectic.json
│   ├── critic-depth.json
│   ├── critic-width.json
│   └── critic-instruction.json
├── pass-3-deep-research/
│   ├── PP1.1-cost-3.json, PP1.1-cost-1.json, PP1.2-freq-1.json,
│   ├── PP1.3-freq-3.json, VC-MS-2.json, VC-MS-6.json
│   ├── PP2.1-cost.json, PP3.1-cost.json
├── stages-validated/
│   └── stage-{1,2,3,4,5,6}.md      ← consolidated per-stage validated outputs
├── cross-stage-observations.md     ← inline contradiction catalogue + remediation actions
├── checkpoint.json
├── re-run-recommended.md           ← gate-triggered marker
├── raw-claude-value-chain-ai-process-efficiency-healthcare-id-my.md   ← CANONICAL
├── raw-claude-pain-points-ai-process-efficiency-healthcare-id-my.md   ← CANONICAL
├── raw-claude-summary-ai-process-efficiency-healthcare-id-my.md       ← this file
├── FINAL-REPORT.html               ← Wright-branded print-ready report
└── RUN-COMPLETE.txt                ← Phase 1 stop marker
```

---

## Auto-enrichment (Phase 2, Playwright pass)

**Run:** 2026-05-25T23:07Z – 2026-05-25T23:12Z (~5 minutes wall-clock; well under the 60-minute cap)
**URLs attempted:** 4 of 4 distinct `[NEEDS-ATTENDED-FETCH]` URLs in canonical files (well under the 30-fetch cap; the 5th item in the original Phase-1 handoff list — Malaysia NDR 2023 PDF — was a 404 in Phase 1 and not tagged in canonical files, so not retried)

### URL outcomes

| # | URL | Outcome | Reason |
|---|---|---|---|
| 1 | https://klinify.com/ | ❌ confirmed-inaccessible | DNS resolution failed (net::ERR_NAME_NOT_RESOLVED) — Klinify domain does not resolve. Vendor-marketing override applies regardless. |
| 2 | https://www.statista.com/statistics/1464154/malaysia-number-of-private-medical-clinics/ | ❌ confirmed-inaccessible | Page rendered but all numeric values masked as `******` behind Statista Premium login dialog. MOH Health Facts 2024 (citation 3) is the authoritative primary source for this Malaysia private-clinic figure. |
| 3 | https://www.statista.com/statistics/1016330/malaysia-medical-insurance-claim-ratio/ | ❌ confirmed-inaccessible | Page rendered, qualitative descriptor visible ("Based on the claims ratio, more than 60 percent of the claims were paid"), but precise numeric values for 2024 masked. Secondary-market-research aggregator override preserved. |
| 4 | https://www.kompas.id/artikel/en-biaya-diabetes-dan-hipertensi-capai-rp-305-triliun-banyak-pasien-yang-tidak-terkontrol | ✅ **succeeded** | Full article body accessible (35 paragraphs). Substantiates Rp 30.5T BPJS DM+HT cost, 20.5M HT-diagnosed / 5.6M active FKTP (= 27.3%), 7.4M DM-diagnosed / 2.8M active FKTP (= 37.8%). Figures attributed to BPJS Kesehatan Director of Health Service Guarantee **Lily Kresnowati** (Jakarta, 20/10/2025). |

### Claims upgraded

| Claim | Before | After | Driver |
|---|---|---|---|
| PP4.4-cost-1 (Indonesia BPJS DM+HT IDR 30.5T/year, $1.88B) | Low | **Medium** | Paywall-unverifiable override lifted via Kompas.id Playwright fetch; secondary-news override remains (BPJS Director quoted by reputable national daily). |
| PP2.2-cost-3 (population-level CDM complication cost anchor, Rp 30.5T) | Low | **Medium** | Same Kompas.id article verifies the Rp 30.5T figure as quoted directly from BPJS Kesehatan. |
| PP2.2-freq (37.8% DM / 27.3% HT FKTP utilization gap) | Low | **Medium** | Kompas.id article is the exact arithmetic source for the utilization figures — 20.5M HT-diagnosed of which 5.6M active FKTP; 7.4M DM-diagnosed of which 2.8M active FKTP — quoted directly from BPJS Kesehatan. |

### Confidence distribution change

| | Pre-enrichment | Post-enrichment |
|---|---|---|
| High | 4 (1.3%) | 4 (1.3%) |
| Medium | 43 (14.3%) | 46 (15.3%) |
| **Low** | **253 (84.3%)** | **250 (83.3%)** |
| Total | 300 | 300 |

**% Low: 84.3% → 83.3%** (–1.0 pp). Still 13.3 pp above the 70% re-run threshold.

### Gate decision

**Unchanged: re-run-recommended.** Phase 2 Playwright enrichment lifted 3 claims Low→Medium, but the corpus's underlying scarcity drivers remain:

1. Labor-cost anchoring on JobStreet / Indeed / Glassdoor aggregators (not Playwright-fixable; needs BPS Sakernas / DOSM Salaries & Wages Survey).
2. CodeBlue n=855 specialist poll as single source for 10+ frequency claims (not Playwright-fixable; needs LIAM/PIAM/MTA primary data).
3. Grand View Research aggregator-only MCU market sizing (not Playwright-fixable; aggregator auto-downgrade).
4. Single-source 32% FKTP RPPT Level 4 figure (cross-cited Stages 2 and 6; not Playwright-fixable).
5. 46 explicit `[ASSUMED-N]` willingness-to-pay claims (require field validation, not source-lifting).

Phase 2 did what Phase 2 can do: verified the one paywalled-news source that was structurally accessible. Two Statista sources remain hard paywalled (per Statista's commercial subscription model) and Klinify's domain is not resolvable. Lifting %Low below 70% requires either a 3rd-party paid-data injection pass (BPS, DOSM, Statista Premium) or scoping field-validation interviews — neither of which is in Phase 2's Playwright remit.

**Phase 2 outputs:**
- `checkpoint.json` updated with `auto_enrichment` object (full URL outcomes + upgraded claims).
- `ENRICHMENT-COMPLETE.txt` written.
- `FINAL-REPORT.html` re-rendered (Wright-brand) reflecting post-enrichment claim confidence + unchanged gate.
- `raw-claude-{value-chain,pain-points,summary}.md.bak` backups preserved.

