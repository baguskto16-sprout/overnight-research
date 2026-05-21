# Plan — Stage roster

Run ID: 2026-05-19-0900
Topic: Risk-management solutions across the logistics journey (worldwide scan)
Topic slug: logistics-risk-mgmt-worldwide
Input file: ./input/logistics-risk-mgmt-worldwide.txt
Geography: Worldwide, SEA flagged as target deployment market for Tokio Marine + ID&E venture
Mode: sandbox
Output directory: /Users/alphabot/Downloads/Work/overnight-research-repo/output/raw-claude-overnight/2026-05-19-0900/

## Output mode and resolved paths

- Mode: sandbox (no engagement repo signature in pwd)
- Working directory: /Users/alphabot/Downloads/Work/overnight-research-repo
- Artifact destinations:
  - Value chain → `output/raw-claude-overnight/2026-05-19-0900/raw-claude-value-chain-logistics-risk-mgmt-worldwide.md`
  - Pain points → `output/raw-claude-overnight/2026-05-19-0900/raw-claude-pain-points-logistics-risk-mgmt-worldwide.md`
  - Summary → `output/raw-claude-overnight/2026-05-19-0900/raw-claude-summary-logistics-risk-mgmt-worldwide.md`
  - HTML report → `output/raw-claude-overnight/2026-05-19-0900/FINAL-REPORT.html`

## Stage roster — journey-stage framing

Because the unit of analysis is the *solution* (not the carrier or shipper actor), the value chain here is the **freight risk journey**. Each stage is a journey phase, and within each stage we map the solution categories and named vendors operating to mitigate risk at that phase.

1. **Stage 1 — Vendor procurement & sub-carrier onboarding** — Counterparty-risk tools: 3PL/sub-carrier vetting, KYC, insurance verification, beneficial-ownership checks, freight-fraud detection. This is the *tracer bullet*: if this stage produces noise, abort. Solution categories: vendor-onboarding platforms (Highway, Carrier Assure, RMIS, Descartes MyCarrierPortal, Truckstop's Risk Factors, RXO Connect, Highway), TMS procurement modules, freight-fraud / identity-proofing services.

2. **Stage 2 — Dispatch, freight tendering & TMS** — Load tendering, freight matching, rate management, contract management. TMS / freight procurement platforms (E2open, Oracle TMS, Blue Yonder TMS, SAP TM, Manhattan Active TM, Descartes, MercuryGate, Alpega, Transporeon, Convoy [defunct], Uber Freight, Loadsmart). Risk angle = how each platform exposes / fails to expose risk signals at load-tender time.

3. **Stage 3 — In-transit visibility & telematics** — Real-time visibility platforms (project44, FourKites, Shippeo, Wakeo, Transporeon Visibility, Sixfold, Tive, Roambee), telematics & fleet management (Samsara, Motive, Geotab, Verizon Connect, Webfleet, Trimble), IoT cargo sensors (Tive, Sensitech, Roambee, Controlant, Hanhaa, BeeBryte, ParkourSC).

4. **Stage 4 — Multi-leg handoffs & chain-of-custody** — Where most visibility breaks: chain-of-custody systems, multi-carrier coordination, broker-tier integration. Solutions: control-tower platforms (E2open Control Tower, Blue Yonder Luminate, Infor Nexus, One Network Enterprises), broker-tier integrations (project44 Movement, FourKites Network), blockchain / chain-of-custody (TradeLens [defunct], dexFreight, ShipChain, GSBN). This is the structural gap the venture is targeting.

5. **Stage 5 — Delivery, POD & driver safety** — Electronic POD, driver safety (in-cab AI cameras, ELD), exception alerting at destination. Solutions: ePOD modules (most TMS), driver-safety platforms (Samsara, Lytx, Motive, Netradyne, Nauto, Greenroad, SmartDrive), ELD-only (KeepTruckin pre-Motive, Garmin, Verizon Connect). SEA-specific: Indonesia / Thailand / Vietnam local players.

6. **Stage 6 — Incident response, claims & insurance** — Cargo insurance platforms, claims management, parametric insurance, security / convoy services. Solutions: Loadsure, Breeze, Parsyl, Cover Genius, Marsh's CargoNet (no longer publishes recovery data publicly), TT Club, BSI SCREEN, CargoNet, Verisk (Cargonet acquired by Verisk in 2014), Overhaul (security & monitoring), CalAmp (security telematics), security/escort/convoy services (Garda, G4S, secure-tractor services in LATAM).

## Working hypothesis test plan

The skill tests these five hypotheses from the input:

- **WH1: Vendor-procurement blind spots** — researched in Stage 1. Look for: market size of vendor-vetting tools, what they verify, gaps at the small-transporter tier, named platforms.
- **WH2: In-transit visibility breaks at the handoff** — researched in Stages 3 and 4. Look for: RTTVP coverage rates published by Gartner / project44 / FourKites, integration-rate stats on subcontractor tier.
- **WH3: Cargo IoT is point-deployed, not journey-deployed** — researched in Stage 3 and 4. Look for: number of IoT units shipped, who buys them, data-sharing patterns.
- **WH4: Incident response is reactive and slow** — researched in Stage 6. Look for: average claims cycle time, average incident-detection-to-response time (TT Club / BSI / NCSR reports), what gap exists between detection and recovery.
- **WH5: Risk and insurance pricing disconnected from real journey data** — researched in Stage 6. Look for: parametric cargo insurance volumes, dynamic-pricing pilots, adoption stats outside specialty cargo.

## Per-stage capture requirement

For each surveyed solution in each stage, the value-chain-mapper must capture:
- What it does
- Primary user (shipper / 3PL / carrier / insurer)
- Business model (SaaS seat, per-shipment, hardware + subscription, commission, brokered)
- Pros / cons
- SEA presence (yes / partner / no / unknown — with named SEA offices, resellers, customers if any)

## Gate

Stage-by-stage validation against IMI reference (value chain + pain points). Move to Stage[N+1] only after Stage[N] passes structural compare. Tracer bullet abort if Stage 1 is catastrophically thin.

## Resource budget

| Resource | Cap | Behavior at cap |
|---|---|---|
| WebSearch per stage | 50 | Move to next stage |
| WebFetch per stage | 30 | Move to next stage |
| Deep-research calls per stage | 5 | Stop deep-research for this stage |
| Sub-agent invocations per stage | 6 | Stop remediation, accept current draft |
| Total runtime | 4 hours | Force final pass |

## Downstream consumer

Tokio Marine + ID&E venture pitch *competitive landscape* section, produced by Wright Partners. Output prioritizes:
- Crisp per-solution write-ups (what / who / model / pros / cons / SEA presence)
- Explicit map of which journey stages each solution covers (a coverage matrix)
- Whitespace analysis — which stage × use-case cells are under-served, especially in SEA
