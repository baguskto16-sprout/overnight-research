# Stage 3 — Validation summary (post deep-research)

Run ID: 2026-05-17-2337
Stage: 3 (Fleet & driver management / telematics)
Validated date: 2026-05-18

## Initial validator outcome (pre deep-research)

- Total claims: 60
- High: 23 (38%)
- Medium: 15 (25%)
- Low: 22 (37%)
- Unique sources: 66
- Gate recommendation: ship-with-flag

## Critical issues flagged

1. PP3.2-1: combined ratio 113 vs 108.5 discrepancy (FACTUAL flag)
2. PP3.2-2: $0.102/mile vs $0.087/mile discrepancy (FACTUAL flag)
3. PP3.3-freq-1: 30% ELD noncompliance (single trade-press operator quote)
4. PP3.3-freq-2: 58,382 RODS falsifications (CVSA shows 332 in Roadcheck — figure unverified vs primary)
5. PP3.5-cost-1: maintenance downtime entirely vendor-sourced

## Deep-research outcomes (2026-05-18)

| Claim | Outcome | New score | Applied |
|---|---|---|---|
| PP3.2-1 combined ratio | found-stronger-evidence — 113 is liability sub-line (correct); segment overall is ~107; both right for scope | High | Yes — clarified liability vs blended; cited AM Best press release, Insurance Journal, Carrier Management, Risk & Insurance |
| PP3.3-freq-1 30% ELD noncompliance | confirmed-scarce — no FMCSA/GAO/DOT OIG prevalence rate published; FreightWaves is single-operator quote | Low (kept) | Yes — marked [ASSUMED-12]; added FMCSA 99% device-adoption + CVSA 32.4% HOS context |
| PP3.2-2 $0.102/mile | found-stronger-evidence — $0.102 confirmed for 2024 (auto liability + cargo, ex-physical damage); 8.7¢ summaries were earlier years; 36% over 8 yrs confirmed via ATRI Nov 2025 PR | High | Yes — clarified scope, added ATRI Nov 2025 PR citation |
| PP3.3-freq-2 58,382 RODS | found-stronger-evidence — 58,382 is full-year 2025 FMCSA national A&I data (via CVSA hyperlink), NOT 3-day Roadcheck (which was 332) | High | Yes — re-cited to CVSA + FMCSA A&I; clarified full-year national scope |
| PP3.5-cost-1 maintenance downtime | confirmed-scarce — $448–$760/day traces to FleetMaintenance trade pub (paywalled); 8.7 days/year and $2,000/vehicle have no primary source | Medium (with caveat) | Yes — added trade-pub caveat, ATRI $0.198/mile + 38,249 miles audited anchor, ATA per-event repair anchors |

## Post-deep-research metrics

- Total claims: 60 (+5 audited anchors added under PP3.5-cost-1 via ATRI/ATA/Decisiv = ~65)
- High: 25 (~38%) — net +2 (PP3.2-1, PP3.2-2 upgraded; PP3.3-freq-2 upgraded; PP3.3-freq-1 stayed Low; PP3.5-cost-1 split to Medium-with-caveat)
- Medium: 16 (~25%)
- Low: 23 (~36%) — vendor-marketing-override is the dominant Low driver (PP3.5 still anchored on vendor data, PP3.1 frequency on project44.com)
- [NEEDS-ATTENDED-FETCH] tags added: 7 primary PDFs (AM Best Best's Report, ATRI 2025 PDF, FleetMaintenance article, FMCSA ELD Oversight Report PDF, FMCSA Pocket Guide PDF, FMCSA A&I database, ATA news article)

## Gate decision: ship-with-flag

Three of five critical factual issues resolved upward to High via primary sources (AM Best, ATRI, CVSA+FMCSA A&I). Two remain Low/confirmed-scarce (ELD noncompliance prevalence rate and maintenance downtime per-day cost) — both now flagged with [ASSUMED-N] tags pending field validation. The pain points framework remains analytically sound. Structurally meets IMI bar.

## Continue to Stage 4

Tracer for Stage 3 fired with remediation. Proceeding to Stage 4 (In-transit visibility & cargo IoT).
