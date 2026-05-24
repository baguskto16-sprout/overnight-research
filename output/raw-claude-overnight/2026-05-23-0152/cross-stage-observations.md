# Cross-stage observations

Run ID: 2026-05-23-0152
Topic: Risk-management solutions across the logistics journey (worldwide)

## Convergent findings across stages

1. **Carrier-identity verification is the dominant driver of fraud risk** — Stage 1 (vendor onboarding) and Stage 2 (dispatch) both anchor on the same evidence (FMCSA's April 2025 identity-verification rollout; the SCOTUS *Montgomery v. Caribe* May 2026 ruling stripping FAAAA preemption for negligent-hiring claims; Verisk CargoNet 2024 = $454.9M / +27% YoY / strategic theft now ~40% of cargo crime). The risk surface for this vector spans both pre-dispatch (vetting) and at-dispatch (broker-to-sub-carrier handoff).

2. **WH2 (visibility breaks at handoff) is structurally confirmed at three depths** — Stage 3 (RTTVP/IoT layer: 45% of organizations have <50% shipment visibility per Tive 2024), Stage 4 (3PL control-tower layer: only 22% of large shippers report "highly effective" control towers; McKinsey verbatim $65-95B blind-handoff waste in US mid- and last-mile per Jan 2024 paper), and Stage 5 (delivery layer: physical handoffs in archipelagic SEA / informal-receiver markets). The same break mechanic recurs across three different solution categories.

3. **WH3 (IoT point-deployed) is now structurally separable from WH2** — Stage 3 demonstrated that IoT and RTTVPs are sold by separate vendor ecosystems with no required integration; Stage 4 demonstrated that 3PL platforms own the data (Vesttoo / lock-in / no portability clauses). The combined effect: even when sensors exist on a shipment, the data does not flow across the chain to the insurer or the next sub-carrier.

4. **WH4 (slow incident response) and WH5 (pricing disconnected from journey data) are joined at the hip** — Stage 6 evidenced that traditional FNOL-to-payout is 18-30 days (or 6-12 months for contested claims), but the deeper finding is that the *forensic carrier-identity verification phase* (a wholly new investigation type driven by the 1,475% strategic-theft rise from 2022-2024) was not part of the claims architecture designed for physical theft.

5. **SEA whitespace is the consistent finding across all 6 stages** — every stage independently noted that the venture's target geography (Singapore, Indonesia, Thailand, Malaysia) has either: no regulatory floor (no ELD mandate in any SEA country); no government statistical indicator (Berg Insight is the only specialist primary research; no BPS/DOSM/NSO/GSO fleet telematics statistic); structurally fragmented carrier tier (Vietnam ~5 trucks/company per WB 2019; Thailand 91.2% small hauliers per Krungsri/DLT); and no SEA-specific solution at the named-vendor tier for the core whitespace functions (vendor verification, parametric cargo, control tower).

## Cross-stage source reuse (top recurring anchors)

| Source | Tier | Used in stages |
|---|---|---|
| Verisk CargoNet 2024 + 2025 Annual Reports + Newsroom | 3 | 1, 2, 4, 5, 6 |
| TT Club / BSI Cargo Theft Report 2024 (April 2025) | 6 (primary association) | 1, 2, 3, 5, 6 |
| World Bank LPI 2023 | 2 | 1, 3, 5 |
| FBI IC3 PSA260430 (Apr 30, 2026) | 1 | 1, 5, 6 |
| McKinsey "Digitizing mid- and last-mile logistics handovers" (Jan 2024) | 4 | 3, 4 |
| FMCSA SAFER Web / Identity Verification (April 2025) | 1 | 1, 2 |
| TAPA EMEA / FCS 2024 IIS | 6 | 2, 4, 5 |
| Bappenas / Kemenko Perekonomian (Indonesia logistics 2022) | 2 | 1, 2 |
| Berg Insight Fleet Management SEA 1st/2nd Ed | 3 | 3, 4 |
| NESDC Thailand Logistics Report 2024 | 3 (ministry) | 4 |

These are the spine of the corpus. 10 sources cited across multiple stages = the strongest anchors in the run.

## Reconciled contradictions

The contradiction-finder pass surfaced 8 findings. The two of substance:

- **Indonesia logistics cost as % of GDP**: 23% (Stage 1, Bappenas 2022/2023 combined) and 24% (Stage 2, World Bank 2013 with 2011 data) are both correct for their measurement years. Both stages were refined to lead with primary sources (Bappenas, WB) and harmonized to the unified framing "~23-24% of GDP" with structural persistence noted.
- **Vesttoo fraud loss**: harmonized to ~$3.4B (court-verified per US Bankruptcy Court District of Delaware Case 23-11160), correcting Stage 6 value-chain ($2.8B+, which was the CCB-specific portion) and Stage 6 pain-points ($4B, which was an early pre-investigation media estimate). $4.8B is total creditor claims (includes consequential damages).

The remaining 6 contradictions are Class C (DR verdicts not annotated back to validation JSONs) — the canonical artifacts in `stages-validated/` are correct; the per-stage validation JSONs are slightly behind. This does not affect deliverable quality.

## Persisting data gaps (post-DR)

1. **DG-1 — LTL freight damage rate**: No primary Tier 1-4 source publishes the industry-wide LTL claim incidence rate. Flock Freight commissioned studies (1.24%, $5.1-$6.3M annual) exist but are vendor-adjacent. Tagged [ASSUMED-N].
2. **DG-2 — SEA / LatAm armed escort cost**: No audited pricing benchmark. Trade press cites $300-$2,000/hour but no insurer or association publishes a structured cost benchmark. Tagged [ASSUMED-N].
3. **DG-3 — Routing-guide failure rate**: ~70% of FTL contracts go unused traces to Amazon Freight newsroom (competitor brokerage). No primary academic / consultancy source publishes this specific metric.
4. **DG-4 — WH5 specific percentages**: 12% claim-ratio improvement / 25% IoT penetration on high-value shipments / 23% parametric adoption — all MarketGrowthReports-only. Dropped from canonical artifact; WH5 evidence restructured around structural framing.
5. **DG-5 — Marine surveyor mobilization time in secondary SEA markets**: Structurally argued but the cost quantum is assumed. Requires direct interview with regional adjuster firm (McLarens, Sedgwick, Crawford Asia).
6. **DG-6 — Sub-market sizing for vendor onboarding platforms**: No Tier 1-4 source sizes this niche. Anchored to Gartner SCM $33.4B (parent market) + Descartes MyCarrierPortal $24M acquisition (transaction-based scale anchor).
7. **DG-7 — Tokio Marine SEA cargo book size & claims-cycle time**: Not publicly disclosed. Direct ask to Tokio Marine APAC.

All gaps are tagged with [ASSUMED-N] markers in the canonical artifacts and carry specific field-validation questions. None are blockers for the venture pitch — they are scoped follow-ups for the field-research phase.
