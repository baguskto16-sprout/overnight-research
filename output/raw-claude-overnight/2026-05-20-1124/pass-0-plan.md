# Plan — Stage roster
Run ID: 2026-05-20-1124
Topic: Logistics risk-management solutions across the freight journey (worldwide scan)
Input: ./input/logistics-risk-mgmt-worldwide.txt
Mode: sandbox (no engagement repo signature)
Output directory: ./output/raw-claude-overnight/2026-05-20-1124/

## Unit of analysis
Solutions (software, hardware, service, hybrid) — not carriers. Each stage maps the **solution categories** that address risk at that journey leg, plus named example solutions worldwide with SEA-presence flag.

## Value chain stages (journey-based)

1. **Pre-dispatch — vendor procurement & onboarding** — counterparty risk: vendor vetting, KYC, insurance verification, beneficial ownership, safety record. Solution categories: vendor-management & compliance SaaS, fleet KYC, carrier-onboarding platforms.

2. **Dispatch — freight procurement & tendering** — TMS, freight procurement platforms, freight-matching marketplaces (only where they expose risk features). Risk lens: vendor selection at the load level, rate transparency, contractual liability scoping.

3. **In-transit — visibility & monitoring** — real-time transportation visibility platforms (RTTVPs), telematics, IoT cargo sensors (GPS, temperature, shock, door, fuel). Highest density of named players globally.

4. **Multi-leg handoffs — subcontractor chain integration & control towers** — where signal collapses when 3PLs subcontract to small carriers. Control towers, multi-party orchestration, integration layers.

5. **Delivery — POD, last-leg verification & security** — digital POD, security/convoy/escort services, driver safety & ELD, anti-theft hardware.

6. **Post-incident — claims, insurance & recovery** — cargo insurance platforms, parametric insurance, claims-management software, incident-response & recovery tools, risk-pricing loops back to telematics.

## Working hypothesis test plan

- **WH1 (vendor blind spots)** — will be tested in Stage 1. Look for: tools that vet small transporters / owner-operators; coverage gap below the top-3PL tier.
- **WH2 (visibility breaks at handoff)** — will be tested in Stages 3 + 4. Look for: RTTVP coverage data, integration-rate claims, signal-quality drops below the 3PL.
- **WH3 (IoT point-deployed not journey-deployed)** — will be tested in Stage 3. Look for: who buys the sensor, who sees the data, whether data is shared across parties.
- **WH4 (incident response is reactive and slow)** — will be tested in Stage 6. Look for: time-to-detect, time-to-coordinate, time-to-payout metrics.
- **WH5 (risk pricing disconnected from journey data)** — will be tested in Stage 6 + cross-stage. Look for: parametric pricing penetration, dynamic-premium adoption, telematics-to-underwriting loops.

## Cross-stage observations

Will be captured in `cross-stage-observations.md` after all stages complete:
- SEA presence map (which categories have meaningful SEA footprint; which don't)
- Whitespace map (gaps where no global solution covers a need at the SEA-relevant tier)
- Patterns in business model (SaaS vs hardware+SaaS vs per-shipment vs commission)

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference Stage[N]. Stage 1 is the tracer bullet — abort if catastrophically thin.

## Resource budget
- WebSearch ≤50/stage; WebFetch ≤30/stage; deep-research ≤5/stage; ≤6 sub-agent invocations/stage
- Total runtime cap: 4 hours
- Per-stage runtime soft cap: 35 min

## Mode note
Unattended-Playwright. After RUN-COMPLETE.txt, this orchestrator stops. Phase 2 (Playwright enrichment) is a separate pass run by a separate orchestrator. URLs that return empty/blocked from WebFetch are tagged `[NEEDS-ATTENDED-FETCH]: <url>` inline so Phase 2 can re-fetch.
