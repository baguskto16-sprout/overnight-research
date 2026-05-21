# Run summary — Industrial solid-fuel package boilers, Southeast Asia

Run ID: 2026-05-02-0842
Started: 2026-05-02 08:42 UTC
Resumed: 2026-05-03 14:05 UTC (after session-end interruption mid-Stage 3 DR)
Finalized: 2026-05-18 (final-pass compilation only — all per-stage work was complete at checkpoint)
Mode: sandbox (capability test, not engagement)
Input: `./input/package-boilers.txt`

## Gate decision

**SHIP WITH FLAG.**

| Pass | High | Medium | Low | Low % | Gate |
|---|---|---|---|---|---|
| Pre-deep-research, full corpus (463 claims) | 30 | 101 | 332 | **71.7 %** | rerun_recommended threshold |
| Post-deep-research, full corpus | 36 | 132 | 295 | **63.7 %** | **ship_with_flag** band |

Deep research executed 13 calls against a 25-call budget (52 % utilization), lifting 14 anchor claims and reducing corpus Low share by 8.0 percentage points. The corpus crosses from the rerun band into ship_with_flag entirely on DR-anchored evidence (METI primary sourcing, EPPO Thailand stats, MPOB / WITS / Comtrade unit values, US DOE + UNIDO + IRENA lifecycle triangulation, US EPA equipment cost, PUPR LPJK 2024 certification registry).

## Stage outcomes

| Stage | Verdict | Pre-DR Low % | Post-DR Low % | DR calls | DR efficiency |
|---|---|---|---|---|---|
| 1 — Fuel Suppliers | SHIP WITH FLAG | 75.3 % | 61.8 % | 5 | High — METI lift cascades through Japan export-pull narrative |
| 2 — Boiler OEMs | SHIP WITH FLAG | 77.4 % | 67.9 % | 3 | Medium — coalbiomassboiler.com remained sole source for 10+ claims; not displaced |
| 3 — EPC / Installation & Commissioning | SHIP WITH FLAG | 74.2 % | 69.9 % | 2 | Low — only 2 anchors lifted; 14 ASSUMED tags remain |
| 4 — Industrial End Users / Operators | SHIP WITH FLAG | 63.7 % | 57.8 % | 2 | High — lifecycle cost breakdown corrected with cascade across 11 citations; sugar mill count contradicted |
| 5 — Aftermarket Service & Compliance | SHIP WITH FLAG | 69.5 % | 62.1 % | 2 | Medium — EPA retrofit cost anchor strong; lead-time anchor uncorroborated |

No stage tracer-aborted. All 5 stages completed their vertical-slice validation cycle. Stage 4 is the best-evidenced stage with the corpus's strongest novel finding (PP4.5 water-treatment efficiency gap, three independent primary-academic anchors).

## Eight flags accompanying this corpus

| ID | Severity | Flag |
|---|---|---|
| F1 | HIGH | `coalbiomassboiler.com` vendor blog is the sole quantitative anchor for O&M cost %s (Stages 2, 3), APC equipment costs and several emission-compliance cost claims that DR did not displace. Auto-Low override applies. |
| F2 | HIGH | `beta.co.id` / Lautan Air Indonesia downtime cost (RM 228,000–630,000 / hr ≈ $50K–$170K / day at 2024 CPO) is a single vendor marketing blog and the primary severity anchor across PP4.2, PP4.5, PP5.1, PP5.3, PP5.4. Commercial-interest conflict (Lautan Air sells water treatment). Requires MPOB / JOPR primary source substitution. |
| F3 | HIGH | Stage 4 value-chain artifact still shows 69 Indonesia sugar mills; correct figure is **59** per Kemenperin 2023. Bottom-up install-base estimate (ASSUMED-1) and Stage 5 O&M market size must be regenerated downstream. Correction is captured in the consolidated value-chain file header and in `stage-4-refinements.md` but was not merged into the stage artifact. |
| F4 | MEDIUM | Certification-rate cross-stage inconsistency: Stage 4 cites **7.4 %** (World Bank 2018); Stage 3 DR establishes **4.86 %** (LPJK Dec 2024). Synthesis must adopt 4.86 % as the current figure and disclose 7.4 % only as historical baseline; SKK construction certification does not cover Kemnaker K3 boiler welder scope. |
| F5 | MEDIUM | ~65–75 ASSUMED-N tagged claims across the corpus have zero source backing; concentrated in mobilization costs, contract economics, and operator behavioral claims. ~14–16 % of total corpus. Require field-interview validation before evidential use. |
| F6 | MEDIUM | All market-sizing figures (TAM / SAM) are anchored on secondary market-research firms (GrandView, TechSci, Inkwood, DataBridge) or APAC aggregates. No primary government statistics confirm any country-level boiler market size. Carry explicit Low-confidence disclosure. |
| F7 | LOW | EPC LD rate (0.5 % / week) is a private-sector market convention, **not** a FIDIC or statutory standard. Indonesia public-sector projects use 0.1 % / day capped at ~5 % (Perpres 16 / 2018). Stage 3 refinements apply; synthesis must not revert to "industry standard" framing. |
| F8 | LOW | Cross-validation opportunity: National Board of Boiler and Pressure Vessel Inspectors (Stage 5 VC5-act3-1) independently confirms the 1/8 inch = 20–25 % efficiency-loss figure used in Stage 4 PP4.5. Surface this in synthesis. |

## Resource utilization

| Resource | Budget | Used | Notes |
|---|---|---|---|
| Sub-agent invocations (value-chain-mapper) | 5 | 5 | One per stage |
| Sub-agent invocations (pain-point-researcher) | 5 | 5 | One per stage |
| Sub-agent invocations (source-validator per stage) | 5 | 5 | One per stage |
| Sub-agent invocations (source-validator cross-stage) | 1 | 1 | Final pass |
| Sub-agent invocations (deep-research) | 25 (5 × 5) | 13 | 52 % utilization |
| Unique sources cited pre-dedup (sum across stages) | — | 262 | 60 + 48 + 42 + 51 + 61 |
| Estimated unique sources post-dedup | — | ~180–200 | After cross-stage publisher-family coalescing |
| Primary-category share of unique sources | target 40 %+ | ~22–25 % | Below target — corpus relies structurally on secondary sources |

## Top three high-confidence findings

1. **Japan METI has officially discontinued FIT/FIP support for new ≥10 MW biomass power projects from FY2026** (March 21, 2025 announcement). Demand cliff for Vietnam wood-pellet exporters and Indonesia/Malaysia PKS suppliers in new-build plants. Legacy 20-year contracts continue for ~5–15 year runway. Sub-10 MW FIT rate unchanged at ¥24 / kWh. Sources: METI primary press release; Argus Media; USDA GAIN Japan Biomass 2023. *Commercial implication: structural-zero growth in new Japanese large-scale biomass export demand; growth must come from domestic SEA co-firing and small-scale.*

2. **Feedwater quality is routinely out-of-spec across Malaysian palm oil mill boilers** — confirmed across three independent academic studies (UTM Perak / 37 mills / 1,427 DOSH data points; USM Perak BFW study; AIP Conference Proceedings 2023). Multiple parameters (pH, hardness, silica, iron, phosphate) fall outside ASME BPV Section I limits. Scale-induced efficiency losses 10–28 %. *Commercial implication: managed water-treatment-as-a-service gap is real, academically confirmed, and not reflected in any market-sizing data reviewed.*

3. **Indonesia's labor-inspector-to-enterprise ratio is 1:57,000 — approximately 3× below the ILO recommended 1:20,000** (ILO factsheet + Kemnaker OSH Profile 2022). Kelas I certified boiler operator pool was 4,068 nationally in 2017 (most recent Kemnaker enumeration). Against ~5,000–8,000 installed boilers in Indonesia, structural operator shortage is independently confirmed by two primary sources. *Commercial implication: remote-certified-operator deployment is the recurring-revenue enabler for an aftermarket entrant.*

## Top three questions for field validation

1. **Water-treatment program penetration.** What fraction of palm oil mill and small industrial boiler customers in Indonesia and Malaysia have a formal water-treatment monitoring program versus reactive treatment or commodity chemical purchases? *Interview target: PT Kurita Indonesia commercial director; Nalco Water Malaysia country manager; Lautan Air Indonesia technical director.*
2. **Customer-experienced spare-parts lead time.** Actual order-to-on-site times for tube bundles, refractory tiles, grate bars from Chinese / Indian OEMs into Indonesia / Malaysia, including ocean freight + customs. The Stage 5 DR estimate of 10–20 weeks (vs the original 6–12-week vendor-blog figure) is analytically grounded but not field-validated. *Interview target: Mechmar Services Malaysia procurement; PT Atmindo Indonesia spares team; PTPN / FELDA procurement.*
3. **Malaysia SSI 2025 access for small operators.** Does the 60-month Certificate of Fitness pathway materially help sub-25 t/h boiler operators in practice, or is the risk-based-inspection-team threshold de-facto inaccessible? *Interview target: DOSH Malaysia Pressure Vessels and Boilers unit; TÜV Rheinland Malaysia AIA team; Boilermech or ENCO Systems compliance manager.*

## Cross-stage observations

- **`coalbiomassboiler.com` is the single biggest source-quality risk in the corpus.** It is the sole quantitative anchor for ~10+ claims across Stages 2, 3, 4, 5 — including all biomass O&M cost percentages, APC equipment cost ranges, and some lifecycle items that DR partially displaced. Future iterations must not re-add it as anchor; treat as illustrative only.
- **`beta.co.id` / Lautan Air Indonesia downtime cost propagates across 4 pain points across 2 stages**, all traceable to a single vendor blog from the firm that sells the water-treatment solution. Commercial-interest conflict is structural. Primary-source substitution (MPOB JOPR mill-throughput data + sector CPO price) is the path to repair.
- **Self-generated biomass operators are a different economic animal than purchased-fuel operators.** Lifecycle cost share for fuel collapses to 5–20 % at palm oil and sugar mills versus 65–80 % (up to 90 %) at coal-fired textile / F&B / ceramics. This sector split must be applied wherever lifecycle cost is referenced; it materially changes which pain points dominate for which operator class.
- **Regulatory primary sourcing is strong; market sizing is structurally weak.** Indonesia PermenLHK, Malaysia Environmental Quality Regulations, Thailand PCD Notification, Japan METI FIT discontinuation, Indonesia NEK Phase 2 are all primary-anchored. Country-level boiler market size — by contrast — has no primary statistics anywhere in the corpus.
- **Vertical-slicing kept stage-level error visible.** Stage 1's tracer-bullet validation surfaced the METI FIT issue early, redirecting Stage 1 DR budget to that anchor before propagation. Had stages been drafted horizontally, the FIT halt would have been one paragraph in a much longer artifact and far less likely to have been caught in re-research.

## Deliverables in this output folder

```
output/raw-claude-overnight/2026-05-02-0842/
├── pass-0-plan.md                                  # Initial plan
├── pass-1-drafts/                                  # First-pass per-stage drafts
├── pass-2-validation/                              # Per-stage + cross-stage validator output
│   ├── stage-1.json ... stage-5.json
│   └── cross-stage-final.json
├── pass-3-deep-research/                           # 13 DR call results, JSON
├── stages-validated/                               # Per-stage artifacts (drafts + refinements)
├── raw-claude-value-chain-package-boilers.md       # Combined value chain (this artifact)
├── raw-claude-pain-points-package-boilers.md       # Combined pain points (this artifact)
├── raw-claude-summary-package-boilers.md           # This file
├── FINAL-REPORT.html                               # Wright-branded print-ready report (if rendered)
├── checkpoint.json                                 # Final state
└── RUN-COMPLETE.txt                                # Completion marker
```

## Notes on interruption + resume

The original run started 2026-05-02 08:42 UTC and was interrupted mid-Stage 3 (session-end). It was resumed 2026-05-03 14:05 UTC and completed all 5 stages + cross-stage validation by 15:33 UTC. The final compilation pass (this summary + combined artifacts + Wright HTML render) was deferred and completed in a third session on 2026-05-18. No re-research was performed during the final compilation pass; the corpus content is as of 2026-05-03.
