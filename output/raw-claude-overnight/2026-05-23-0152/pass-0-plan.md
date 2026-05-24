# Plan — Stage roster

Run ID: 2026-05-23-0152
Input file: ./input/logistics-risk-mgmt-worldwide.txt
Topic slug: logistics-risk-mgmt-worldwide
Mode: sandbox (no engagement repo signatures detected at CWD root — no `11-value-chain/` or `21-value-chain/`)

## Output paths

- Value chain → `./output/raw-claude-overnight/2026-05-23-0152/raw-claude-value-chain-logistics-risk-mgmt-worldwide.md`
- Pain points → `./output/raw-claude-overnight/2026-05-23-0152/raw-claude-pain-points-logistics-risk-mgmt-worldwide.md`
- Summary    → `./output/raw-claude-overnight/2026-05-23-0152/raw-claude-summary-logistics-risk-mgmt-worldwide.md`
- Audit trail → `./output/raw-claude-overnight/2026-05-23-0152/`
- Branded HTML → `./output/raw-claude-overnight/2026-05-23-0152/FINAL-REPORT.html`

## Input validation

- Topic: clear ✓ — risk-management *solutions* (not carriers) across the freight journey
- Hypothesis: clear ✓ — fragmented risk stack; integrated risk-layer opportunity; visibility breaks at tier-3 sub-carrier
- Scope in/out: explicit + comprehensive ✓ — solution categories enumerated; digital + non-digital both in scope; manual workarounds treated as first-class
- Geography: explicit ✓ — worldwide scan with SEA flagged as venture's target deployment market
- Working hypotheses: 5 candidates with specific evidence directions ✓
- Topic slug provided: `logistics-risk-mgmt-worldwide` ✓

No blockers. Proceeding.

## Stages (6) — mirrors freight-journey decomposition in input topic

The input topic enumerates the stages directly: "vendor procurement, dispatch, in-transit monitoring, multi-leg handoffs, delivery, and incident response." Stage roster mirrors this 1:1 because the working hypotheses (WH1–WH5) align to specific journey stages. Each stage is treated as a *solution category*, not a carrier — the unit of analysis is the tool/service.

1. **Stage 1 — Pre-dispatch: Vendor procurement & onboarding.** Where shippers/3PLs vet sub-carriers (KYC, insurance proof, safety record, beneficial ownership). Tests WH1 (vendor blind spots). Key solution archetypes: Highway, Carrier411, MyCarrierPortal, RMIS, Descartes MacroPoint Capacity, manual reference-check workflows, freight-broker compliance.
2. **Stage 2 — Dispatch: Freight procurement & tendering.** TMS, freight-procurement, broker marketplaces with risk features. Solution archetypes: Oracle OTM, SAP TM, Blue Yonder, MercuryGate, e2open, Manhattan Associates, Coyote, Convoy/Uber Freight (where they expose risk).
3. **Stage 3 — In-transit: Visibility & monitoring.** RTTVPs + IoT cargo sensors. Tests WH2 + WH3. Solution archetypes: project44, FourKites, Shippeo, Wakeo, Tive, Sensitech, Roambee, Controlant, Hanhaa, Geotab, Samsara, Motive.
4. **Stage 4 — Multi-leg handoffs: Subcontractor chain integration & control towers.** Where 3PLs subcontract and visibility/data quality collapses. Tests WH2 hand-off failure mode at depth. Solution archetypes: Maersk NeoNav, K+N KN Control Tower, DHL MyDHLi, Blume Global, Transporeon, IBM Sterling Supply Chain Insights, Project44 Movement.
5. **Stage 5 — Delivery: POD, last-leg verification & security.** ePOD, escort/convoy services, marine surveyors at port. Solution archetypes: Onfleet, Bringg, Beans.ai, ePOD modules of TMS, Sealock/G4S/Securitas physical convoys, Indonesia SKB / similar regional escort schemes.
6. **Stage 6 — Post-incident: Claims, insurance & recovery.** Cargo insurance, parametric, claims SaaS, theft recovery. Tests WH4 + WH5. Solution archetypes: Loadsure, Breeze, Parsyl, Marsh, Cover Genius, Nirvana, At-Bay, Marsh Sentrisk, CargoNet, TT Club, Trackonomy.

## Working hypothesis test plan

| WH | Hypothesis | Research will look for |
|---|---|---|
| WH1 | Vendor-procurement blind spots at small-transporter tier | KYC/onboarding tool penetration data, beneficial-ownership/insurance verification adoption, fraud/identity-theft statistics in carrier registration |
| WH2 | Visibility breaks at sub-carrier handoff | RTTVP coverage metrics; named cases of visibility degradation post-handoff; carrier API integration rates among tier-2/3 fleets |
| WH3 | Cargo IoT is point-deployed | Sensor deployment per-shipment vs per-lane; cross-party data sharing language in IoT vendor materials; insurer–shipper data-pooling pilots |
| WH4 | Incident response is slow + manual | Cited mean-time-to-respond for cargo theft; claims-cycle time; coordination workflow descriptions |
| WH5 | Risk pricing disconnected from real journey data | Parametric / dynamic-pricing adoption stats; insurer–telematics integration cases; per-shipment underwriting evidence |

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference. Aggregate gate at the end:
- ≤30% low confidence → ship
- 30–70% → ship with flag
- >70% → re-run recommended

## Phase 2 handoff

Per user instruction: this run STOPS after writing `RUN-COMPLETE.txt`. A separate Phase 2 orchestrator handles Playwright enrichment for any `[NEEDS-ATTENDED-FETCH]` URLs. Sub-agents should tag blocked sources with `[NEEDS-ATTENDED-FETCH]: <url>` inline so Phase 2 can pick them up.

## Source caching

`.claude/cache/sources/` is populated from prior runs on this topic. Sub-agents prefer `.claude/cache/fetch-with-cache.sh <url>` when available; otherwise raw WebFetch. Cache hits expected to be substantial since prior runs covered the same topic.
