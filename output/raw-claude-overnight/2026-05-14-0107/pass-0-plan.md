# Plan — Stage roster

Run ID: 2026-05-14-0107
Input: ./input/logistics-risk-mgmt-worldwide.txt
Output mode: sandbox (no engagement repo detected)
Working directory: /Users/alphabot/Downloads/Work/overnight-research-repo
Artifact destinations:
  - Value chain → ./output/raw-claude-overnight/2026-05-14-0107/raw-claude-value-chain-logistics-risk-mgmt-worldwide.md
  - Pain points → ./output/raw-claude-overnight/2026-05-14-0107/raw-claude-pain-points-logistics-risk-mgmt-worldwide.md
  - Summary → ./output/raw-claude-overnight/2026-05-14-0107/raw-claude-summary-logistics-risk-mgmt-worldwide.md

## Unit of analysis adaptation

The input file explicitly states: *"The unit of analysis is the solution (software, hardware, service, or hybrid), not the carrier."* This is a **solution-landscape scan**, not an actor value chain in the IMI sense.

To preserve the IMI stage-by-stage structure while honoring the solution-centric framing, each "stage" below maps to a **solution category cluster aligned to a freight-journey stage**. The value-chain-mapper invocation per stage produces: category boundaries, sub-categories, representative vendors, business models, market size estimates, SEA presence. The pain-point-researcher invocation per stage produces: structural gaps/blind spots in that solution category, multi-component cost, root causes — tested against the 5 working hypotheses.

## Stages

1. **Vendor procurement & counterparty risk** — TMS-procurement modules, vendor-onboarding / compliance / KYC tools, carrier-vetting platforms (Carrier Assure, Highway, MyCarrierPortal, RMIS, Descartes MacroPoint Capacity, Highway). *Why this stage:* WH1 (vendor-procurement blind spots) lives here.

2. **TMS, dispatch & freight orchestration** — TMS suites (SAP TM, Oracle TMS, Manhattan, Blue Yonder, MercuryGate, Alpega, Transporeon, e2open, Descartes), freight-procurement marketplaces with risk features (Convoy [defunct], Uber Freight, Loadsmart, Sennder, Trucker Path). *Why:* Where booking/handoff risk is created; foundation for WH2.

3. **Fleet & driver management / telematics** — Telematics + ELD + driver safety (Samsara, Motive, Geotab, Verizon Connect, Lytx, Netradyne, Trimble Transportation, Webfleet, Zonar). *Why:* The carrier-side data source that risk solutions plug into; WH3 calibration anchor.

4. **In-transit visibility & cargo IoT** — RTTVPs / control towers (project44, FourKites [Lineage], Shippeo, Wakeo, Sixfold [Transporeon], Tive, Overhaul, Roambee) + cargo IoT (Tive, Sensitech, Controlant, Roambee, Hanhaa, Berlinger, Logmore, Globe Tracker, ORBCOMM). *Why:* WH2 + WH3 are tested here.

5. **Security, escort & physical protection** — Cargo-security services and tech (Overhaul, CargoNet [Verisk], TT Club, BSI Supply Chain, ASIS, secure-parking networks — TruckParkingClub, SecurSpace; convoy/escort providers in LATAM/MENA — Brink's, G4S, Prosegur). *Why:* Often overlooked; theft loss rates highest in LATAM and SEA; bridges to incident response.

6. **Cargo insurance, claims & incident response** — Cargo insurance & InsurTech (Loadsure, Breeze, Parsyl, Marsh, Cover Genius, Vesttoo [defunct], Munich Re Digital Partners), parametric cargo (Parsyl, Skyline Partners, Arbol), claims platforms (Loadsure, FreightSafe, Insureon), incident-response coordination (Overhaul incidents, CargoNet incidents). *Why:* WH4 + WH5 land here; closes the journey loop.

## Working hypothesis test plan

- **WH1: Vendor-procurement blind spots** — tested in Stage 1. Look for: penetration of carrier-vetting platforms at small-carrier tier; what data they verify vs miss; KYB/beneficial-ownership gaps.
- **WH2: In-transit visibility breaks at handoff** — tested in Stage 4 primarily, Stage 2 secondarily. Look for: published RTTVP data on subcontracted-load coverage; carrier-API integration rates; multi-leg visibility limitations documented by FourKites/p44/Shippeo.
- **WH3: Cargo IoT is point-deployed, not journey-deployed** — tested in Stage 4. Look for: who deploys sensors (shipper/insurer/3PL); shared-data architectures vs siloed; sensor reuse across legs.
- **WH4: Incident response is reactive and slow** — tested in Stage 5 and Stage 6. Look for: time-from-incident-to-coordination metrics; whether RTTVP alerting feeds into security response.
- **WH5: Premium/claims pricing disconnected from journey data** — tested in Stage 6. Look for: parametric adoption rates; usage-based cargo insurance; per-shipment dynamic pricing examples.

## Special instructions per stage

For each surveyed solution, sub-agents must capture: **what it does · primary user · business model · pros · cons · SEA presence**. This is non-negotiable — the downstream consumer (TM + ID&E venture pitch via WP) reads visuals built off this per-solution data.

For each stage, also produce an explicit **journey-stage coverage map** indicating which of the 6 freight-journey stages each solution covers.

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference. Tracer bullet = Stage 1.

## Budget

- WebSearch per stage: 50
- WebFetch per stage: 30
- Deep-research calls per stage: 5
- Total runtime cap: 4 hours
- Sub-agent invocations per stage: 6

## Resume

Fresh run. No prior checkpoint found.
