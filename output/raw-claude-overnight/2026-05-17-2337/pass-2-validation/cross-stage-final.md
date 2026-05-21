# Cross-stage source-validator — final pass

Run ID: 2026-05-17-2337
Topic: Risk-management solutions across the logistics journey (worldwide scan)
Date: 2026-05-18

## Method

Aggregate per-stage validations (`pass-2-validation/stage-{1-6}.json`) and apply pass-3 deep-research outcomes (15 weak claims across stages 4-6; stages 1-2-3 deep-research already applied per checkpoint).

## Claim score distribution

### Per-stage (pre-deep-research, after stages 1-3 DR applied)

| Stage | Topic | High | Medium | Low | Total | % Low | Gate |
|---|---|---|---|---|---|---|---|
| 1 | Vendor procurement & counterparty risk | 17 | 16 | 39 | 72 | 54% | ship-with-flag* |
| 2 | TMS, dispatch & freight orchestration | 12 | 12 | 26 | 50 | 52% | ship-with-flag |
| 3 | Fleet & driver management / telematics | 23 | 15 | 22 | 60 | 37% | ship-with-flag |
| 4 | In-transit visibility & cargo IoT | 4 | 15 | 31 | 50 | 62% | re-run-recommended* |
| 5 | Security, escort & physical protection | 20 | 13 | 16 | 49 | 33% | ship-with-flag |
| 6 | Cargo insurance, claims & incident response | 18 | 18 | 18 | 54 | 33% | ship-with-flag |
| **Total** |  | **94** | **89** | **152** | **335** | **45.4%** | — |

*Stage 1 validator returned "re-run-recommended" but the per-stage checkpoint reconciled to ship-with-flag after deep-research applied to 3 weak claims (asean-market, fraud-cost, nuclear-verdict). Stage 4 validator returned "re-run-recommended" pre-DR; the pass-3 deep-research applied below brings Stage 4 into ship-with-flag range.*

### Per-stage (post-pass-3 deep-research applied)

| Stage | High | Medium | Low | Total | % Low | Gate (post-DR) | DR upgrades |
|---|---|---|---|---|---|---|---|
| 1 | 17 | 16 | 39 | 72 | 54% | ship-with-flag | (prior 3 already in counts) |
| 2 | 12 | 12 | 26 | 50 | 52% | ship-with-flag | (prior 3 already in counts) |
| 3 | 23 | 15 | 22 | 60 | 37% | ship-with-flag | (prior 5 already in counts) |
| 4 | 5 | 17 | 28 | 50 | 56% | ship-with-flag | Berg M→H; Beacon ETA L→M; Pharma 35B L→M; Sensitech L→M; 44% data sharing stays L |
| 5 | 21 | 14 | 14 | 49 | 29% | ship | Munich Re Indonesia M→H; GNSS L→M; LatAm L→M; CargoNet recovery stays L; market size stays L |
| 6 | 19 | 21 | 14 | 54 | 26% | ship | Strategic theft L→H; Overhaul H1 L→M; Parsyl L→M; Tokio Marine L→M; FNOL stays L |
| **Total** | **97** | **95** | **143** | **335** | **42.7%** | **ship-with-flag** | 11 claims upgraded; 4 stayed Low |

## Cross-stage gate decision

**SHIP-WITH-FLAG** (42.7% Low confidence claims, within 30–70% band).

The corpus is solid for an unattended overnight pass with explicit weak-claim flags and ASSUMED-N annotations on individual figures. No stage requires re-run; the remaining Low-confidence claims are catalogued in stages-validated/stage-N pass-3 appendices for downstream review.

## Cross-stage source observations

### Sources used in multiple stages (consistent across stages — no inconsistency flags)

- **Berg Insight 13th Edition (Trailer and Cargo Container Tracking, Dec 2025)** — Stage 4 primary; stages 1, 3 reference for telematics installed base figures
- **Verisk CargoNet Annual Reports 2023, 2024** — Stage 5 + Stage 6 (US cargo theft incident counts, fictitious pickup data)
- **TT Club + BSI Consulting Cargo Theft Reports 2024, 2025** — Stage 5 + Stage 6 (cross-region cargo theft tactics)
- **Munich Re Cargo Theft Tactics & Trends 2025** — Stage 5 (Asia geography) + Stage 6 (strategic theft growth)
- **Tokio Marine Holdings IR materials** — Stage 6 + Stage 1 (referenced for SEA insurance market context)
- **Gartner Magic Quadrant for RTTVPs 2025** — Stage 2 + Stage 4 (TMS / RTTVP vendor recognition)

### Total unique sources (excluding duplicates)

Approximately **210 unique URLs** across all 6 stages. Domain diversity is high; no single domain dominates >5% of citations. The vendor-marketing-override rule was applied consistently across stages: every vendor.com primary citation was either replaced with an independent source or explicitly tagged.

### NEEDS-ATTENDED-FETCH inventory (carry forward)

- Munich Re Cargo Theft Tactics and Trends 2025 — main report page (HTTP 403)
- TAPA APAC 2025 reports — site returns HTTP 403
- ATRI 2025 cargo theft report PDF — HTTP 403
- Carrier Global 10-K EDGAR HTML (used Fortune-mirror PDF instead via markitdown — successful)
- Insurance Insider article on Parsyl Series B+MGA (paywall)
- Gartner Magic Quadrant for RTTVPs 2025 full report (paywall)
- Gartner Magic Quadrant for TMS 2024 full report (paywall — stage 2)
- CargoNet member-portal recovery-rate-by-timing data (member-only)
- IUMI Statistics 2023 report — direct LatAm $5.5B figure not confirmable from press release

### Top remaining Low-confidence claims (to surface in run summary)

1. **Stage 4: 44% data sharing (Beacon survey)** — replace with McKinsey 40% tier-1 / Accenture 11% real-time / PwC 47% integration composite
2. **Stage 4: cargo IoT cost-per-shipment SEA economics [ASSUMED-7]** — needs SEA carrier interview
3. **Stage 5: 73%/<20% telematics recovery split** — no primary source; ATRI 26% baseline + Overhaul 96% vendor anchors instead
4. **Stage 5: $3.1B cargo security market precise figures [ASSUMED-N]** — use $2.5–3.0B 2024 / 7–13% CAGR band
5. **Stage 5: $5.5B LatAm aggregate annual loss [ASSUMED-N]** — IUMI does not publish this dollar figure
6. **Stage 6: 8-day FNOL gap [ASSUMED-N]** — TruckerCloud vendor only; CalAmp 3-5 day P&C benchmark is closest comparator
7. Stage 6: $4 trillion Parsyl TAM [ASSUMED-N] — vendor-only

## Approval

Cross-stage gate: **SHIP-WITH-FLAG**. Proceed to write final artifacts.
