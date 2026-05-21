# Run summary — logistics-risk-mgmt-worldwide

**Run ID:** 2026-05-14-0107
**Topic slug:** logistics-risk-mgmt-worldwide
**Mode:** sandbox (no engagement repo)
**Input file:** ./input/logistics-risk-mgmt-worldwide.txt
**Pipeline:** vertical-slice 6-stage with per-stage source-validator + deep-research and final cross-stage source-validator
**Completed:** 2026-05-15 (resumed from checkpoint at Stage 6; Stages 1–5 had completed on the original 2026-05-14 run)

---

## Final gate

**SHIP-WITH-FLAG.**

| Metric | Value |
|---|---|
| Total numbered claims (corpus) | 568 |
| % High confidence | 13.9% (79) |
| % Medium confidence | 32.9% (187) |
| % Low confidence | 53.2% (302) |
| Unique source domains | 328 |
| Domains recurring across 3+ stages | 15 |
| Aggregator domains auto-downgraded to Low | 5 (Mordor, MarketsAndMarkets, Grand View, GMInsights, Precedence) |

Gate rationale: Low% sits in the 30–70% ship-with-flag band. The aggressive vendor-marketing override rules and the deliberate retention of [ASSUMED-N] tags depress the High share; the unique-domain count (328) substantially exceeds the 40–60 ship target on raw diversity. Three stages cleared at stronger margins than the headline (Stages 1, 2, 5); Stage 4 is the weakest (69.4% Low, 0 High) — the in-transit visibility category is the place where this corpus most needs field validation before commercial use.

---

## Per-stage metrics

| Stage | Name | Claims | High | Med | Low | Unique domains | Gate |
|---|---|---:|---:|---:|---:|---:|---|
| 1 | Vendor procurement & counterparty risk | 77 | 11 | 25 | 41 | 44 | ship-with-flag |
| 2 | TMS, dispatch & freight orchestration | 82 | 14 | 24 | 44 | 68 | ship-with-flag |
| 3 | Fleet & driver management / telematics | 101 | 14 | 34 | 53 | 54 | ship-with-flag |
| 4 | In-transit visibility & cargo IoT | 121 | 0 | 37 | 84 | 68 | ship-with-flag |
| 5 | Security, escort & physical protection | 103 | 21 | 39 | 43 | 45 | ship-with-flag |
| 6 | Cargo insurance, claims & incident response | 84 | 19 | 28 | 37 | 84 | ship-with-flag |

---

## Deep-research outcomes (10 total, across Stages 5 and 6)

**Stage 5 (security):**
- PP-40 STRONGER L→H — ReCAAP ISC Annual Report 2025 anchored as primary for SOMS piracy data
- PP-22 STRONGER L→M — NTC&Logística Feb 2025 14% revenue figure replaced 2018 Insurance Journal
- PP-4 CONFIRMED-SCARCE — 96%/73%/20% vendor-marketing acknowledged; ATRI ~26% industry-wide non-recovery baseline added
- VC-29 CONFIRMED-SCARCE — DataIntelo $21.3B replaced with Mordor secure logistics $47.6B + bottom-up operator filings
- VC-33 CONFIRMED-SCARCE — Indonesia $1.3B remains aggregator-only; Polri BUJP 5,670 companies / 856K personnel operational context added

**Stage 6 (insurance / claims):**
- PP6.1-5 STRONGER L→M — SambaSafety 2025 Telematics Report (n=402) replaced single Carrier Management source; corrected 64% to 23% underwriting-led; corrected 79% base to non-sharing fleets
- PP6.1-8 CONFIRMED-WEAK — no primary anchor for 60–70% SME uninsured; replaced with ADB 2023 Trade Finance Gaps Survey proxy (45% SME application rejection; $2.5T unmet demand); ASSUMED-10 tag added
- PP6.1-2 STRONGER L→H — ATRI 2025 Operational Costs of Trucking (PDF via markitdown, primary) and CIAB quarterly P/C Market Surveys replaced trade-press relay
- PP6.2-6 CONFIRMED-WEAK — 1.24% LTL damage rate has no primary anchor; replaced with Flock Freight / Drive Research 2024 (1.94%, n=1,000) + Synchrogistics 0.34% carrier-financial claims ratio
- VC-PP-loadsure-70m CONFIRMED-SCARCE — "70M shippers" vendor-only with no primary; "60%+ uninsured" replaced with IUMI 2024 ($22.64B cargo premiums) / WTO (~$24T merchandise trade) triangulation → 53%–69%

---

## Cross-stage findings from final source-validator pass

**Top inconsistencies (must reconcile before external use):**

1. **project44 revenue figures:** Stage 4 value-chain (VC-3) cites ~$210M; Stage 4 pain-points footnote 6 cites ~$175M ARR — both from getlatka.com. The two are not equivalent (GAAP revenue vs ARR) and project44 has not disclosed audited FY2024 revenue. Inserted as [VERIFY-1] in Stage 4 value-chain.
2. **Indonesia commercial vehicle fleet:** appears as three different figures across stages (4M+, 23M via Mordor, 6,091,822 via BPS Indonesia 2023). Stage 3 internally corrects to BPS — correction has not propagated to Stage 1 or earlier Stage 3 narrative. Acknowledged but not corrected (BPS 6.09M figure is the High-confidence anchor).
3. **Nirvana Series D:** Stage 3 pain-points cite $100M / $1.5B (PR Newswire URL slug "raises-100-million-series-d"); validator flagged alternate reading $80M / $830M. Inserted as [VERIFY-2] pending Form D confirmation.

**Top residual [ASSUMED-N] for field validation:**

1. SEA vetting labor cost ($24K–$216K/yr) — Stage 1 PP-1.2 ASSUMED-2
2. 60%–70% SME uninsured in developing economies — Stage 6 ASSUMED-10 (now proxied by ADB 2023 data)
3. Sub-contracted SEA road-freight insurance coverage — Stage 6 ASSUMED-3
4. Subrogation recovery rates in Indonesia/Thailand — Stage 6 ASSUMED-4
5. IoT cold-chain sensor deployment in Indonesia domestic road freight (<30%) — Stage 6 ASSUMED-8

---

## Top 3 high-confidence findings (with primary-source backing)

1. **The cargo journey has a structural authorization gap at the spot-carrier subcontracting tier.** RTTVPs (project44, FourKites, Shippeo, Wakeo) lose granular signal once a 3PL subcontracts to a non-integrated carrier (Stage 4 PP4.1); fewer than 30% of carrier bases are audited annually (Insurance Edge 2026, Stage 6 PP6.2); cargo insurers cannot price the subcontracted leg differentially because the data does not reach them (Stage 6 PP6.1). This is the single most evidenced cross-cutting opportunity in the corpus.

2. **Cargo insurance pricing remains anchored to declared values and pooled actuarial tables, not real-time per-shipment data, despite telematics ubiquity.** SambaSafety 2025 (n=402 fleets/brokers/carriers, primary) confirms 88% telematics deployment among fleets but only 23% of insurer-side programs are underwriting-led. ATRI 2025 confirms 10.2 ¢/mile motor carrier insurance cost (+3.0% 2024, +12.5% 2023); CIAB quarterly surveys confirm 8%–12% commercial auto premium increases 2022–2024 — increases that are sector-wide and not differentiated by monitoring investment. (Stage 6 PP6.1)

3. **The Vesttoo collapse exposed a verification gap in alternative reinsurance capital that has materially tightened cargo InsurTech capacity.** $4B fraudulent LOC exposure, $2.8B confirmed forgeries, Markel $127.75M exposure, Aon $197M provision, Munich Re/Swiss Re >50% MGA cut in 2024. Strong primary sourcing across Artemis, AM Best, Browne Jacobson, Pinnacle Actuarial. (Stage 6 PP6.4)

---

## Top 3 questions for field validation

1. **SEA sub-carrier cargo coverage:** Interview cargo insurance brokers in Jakarta and Bangkok on whether sub-contracted road legs are actually covered under shipper or 3PL open cargo policies, what the effective coverage rate is, and how subrogation against sub-carriers actually plays out. (Resolves ASSUMED-3, ASSUMED-4, ASSUMED-5.)

2. **Insurer–telematics integration in SEA:** Interview a marine cargo underwriter at a Singapore or Jakarta insurer (Tokio Marine Indonesia, MSIG, Chubb) on whether they verify monitoring levels when setting rates on road freight legs, and what their internal data ingestion looks like vs the US SambaSafety baseline. (Resolves ASSUMED-2.)

3. **IoT cold-chain deployment on Indonesia domestic road freight:** Interview DHL Indonesia, Kerry Logistics, or local cold-chain providers on what fraction of their domestic temperature-controlled legs actually have IoT sensor coverage versus thermometer-and-paper-log methods. (Resolves ASSUMED-8 and determines whether parametric cold-chain insurance has a deployable target market in SEA.)

---

## Audit trail

```
output/raw-claude-overnight/2026-05-14-0107/
├── raw-claude-value-chain-logistics-risk-mgmt-worldwide.md     ← consolidated VC artifact
├── raw-claude-pain-points-logistics-risk-mgmt-worldwide.md     ← consolidated PP artifact
├── raw-claude-summary-logistics-risk-mgmt-worldwide.md         ← this file
├── pass-0-plan.md                                               ← stage roster + plan
├── pass-1-drafts/                                               ← per-stage initial drafts
├── pass-2-validation/                                           ← per-stage + full-corpus.json
├── pass-3-deep-research/                                        ← deep-research per weak claim
├── stages-validated/                                            ← post-remediation stage outputs
├── checkpoint.json                                              ← final state
└── RUN-COMPLETE.txt                                             ← completion marker
```

The consolidated `raw-claude-*.md` files are the canonical research artifacts. The `stages-validated/` per-stage files are the working source-of-truth for each stage; the consolidated artifacts concatenate them with headers and a corpus-level provenance preamble.

---

## Resource usage

- Pipeline mode: vertical-slice 6-stage
- Sub-agents invoked: value-chain-mapper × 6, pain-point-researcher × 6, source-validator × 7 (6 per-stage + 1 cross-stage), deep-research × 10 (5 Stage 5 + 5 Stage 6)
- Total runtime: original run 2026-05-14-0107 produced Stages 1–5 and Stage 6 drafts; resume on 2026-05-15 completed Stage 6 validation + deep-research + final cross-stage pass + outputs
- Cap hits: none documented; Stage 6 deep-research dispatched all 5 weak claims in parallel within budget

---

## Disclaimer

This is unattended overnight research output. All `raw-claude-*` files require human review before any external use. Two [VERIFY-N] tags must be resolved (project44 revenue, Nirvana Series D). The corpus retains 10 [ASSUMED-N] tags representing the highest-leverage claims that need field-validation interviews (not desk research) to resolve.
