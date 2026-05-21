# Plan — Stage roster
Run ID: 2026-05-17-2337
Mode: sandbox
Input: ./input/logistics-risk-mgmt-worldwide.txt
Topic slug: logistics-risk-mgmt-worldwide
Output dir: ./output/raw-claude-overnight/2026-05-17-2337/
Date executed: 2026-05-17

## Prior-run context

A complete prior run exists at `./output/raw-claude-overnight/2026-05-14-0107/` (ship-with-flag, 6 stages, 568 claims, 53.2% Low confidence in final corpus). Recent commits to this repo (`270be6d`) tightened source-quality rules — vendor's own marketing/PR sites are now auto-Low even when cited multiply; added `[NEEDS-ATTENDED-FETCH]` tagging for blocked content. This re-run should produce **lower High-confidence ratios than the prior run** because vendor marketing gets demoted; that is the intended behavior.

The prior run is used as a **prior** for stage roster (validated) and for known weak claims (so deep-research can re-attempt with stronger sources or confirm scarcity). Agents are told what prior run found so they don't re-trace exact same searches; they are explicitly instructed to find *new* primary sources (10-K / S-1 / regulator filings / multilateral agency PDFs) where prior run leaned on trade press or vendor sites.

## Output mode

- **sandbox** (no engagement repo detected at CWD)
- Artifacts → `./output/raw-claude-overnight/2026-05-17-2337/raw-claude-*.md`
- Audit trail → same folder under `pass-1-drafts/`, `pass-2-validation/`, `pass-3-deep-research/`, `stages-validated/`

## Stages (6, validated by prior run)

1. **Vendor procurement & counterparty risk** — onboarding/qualification of carriers, compliance & beneficial ownership, fraud detection at the small-transporter tier. Tests WH1.
2. **TMS, dispatch & freight orchestration** — shipper/3PL transportation management systems, freight-procurement marketplaces, automated tendering. Covers the "decide-and-tender" step.
3. **Fleet & driver management / telematics** — carrier-side ELD, driver-behavior scoring, fleet maintenance, dashcams, AI safety. Tests WH3 partially (point-deployed IoT).
4. **In-transit visibility & cargo IoT** — RTTVPs (project44, FourKites, Shippeo, Wakeo) + cargo-level IoT (Tive, Sensitech, Roambee, Controlant, Hanhaa). Tests WH2 and WH3.
5. **Security, escort & physical protection** — convoy/escort services, secure parking, GPS-enabled locks, theft prevention/recovery. Tests WH4 partially (response speed).
6. **Cargo insurance, claims & incident response** — cargo insurers, parametric players (Loadsure, Breeze, Parsyl, Cover Genius, Marsh), claims platforms, incident-coordination tools. Tests WH4 and WH5.

## Working-hypothesis test plan

- **WH1 — Vendor-procurement blind spots**: Stage 1 will look for evidence on how shippers/3PLs onboard sub-carriers, what tools verify operator legitimacy / insurance / safety record at the small-transporter tier (US: FMCSA Carrier411, MyCarrierPackets, Highway, Carrier Assure; Europe: Transporeon, TIMOCOM; SEA: thin or absent).
- **WH2 — Visibility breaks at handoff**: Stage 4 will look for documented data-quality decay across subcontracting layers; ELD/track-and-trace coverage data from FreightWaves / SONAR / Gartner.
- **WH3 — Cargo IoT point-deployed, not journey-deployed**: Stages 3 + 4 will look for evidence of single-party deployment (shipper-only, insurer-only, 3PL-only) versus shared-deployment architectures.
- **WH4 — Incident response reactive and slow**: Stages 5 + 6 will look for documented response-time gaps between detection and recovery action (TT Club / BSI cargo theft reports, ATRI, Verisk).
- **WH5 — Insurance pricing disconnected from journey data**: Stage 6 will look for evidence on parametric/dynamic pricing adoption (Loadsure, Parsyl, Cover Genius product specs and revenue mix; Tokio Marine HCC, AGCS public statements; Lloyd's syndicate filings).

## Gate / quality bar

- Per-stage validation by `source-validator` before moving to next stage.
- Stage 1 is tracer bullet — if it produces <2 pain points with <3 RCs each or <8 unique primary sources, abort and write `ABORTED.md`.
- Final cross-stage pass on full corpus.
- Resource budget: per-stage caps in skill (50 WebSearch, 30 WebFetch, 5 deep-research). Sub-agent invocations per stage capped at 6.

## Source-quality reminder (tightened v2)

- Vendor's own marketing site / pages / vendor-curated press releases are NEVER primary for claims about that vendor — auto-Low even if cited multiply.
- For paywalled or blocked content (Gartner Magic Quadrant, Armstrong & Associates, certain consultancy reports), tag the URL `[NEEDS-ATTENDED-FETCH]` so attended-mode passes can re-fetch with Playwright.
- Source priority remains: gov statistics → multilateral → regulators → consultancy authored PDFs → audited filings → industry associations → academic → standards bodies → named interviews → trade press (last resort).

## Output structure mirrors Cremer raw-claude pattern

- `raw-claude-value-chain-logistics-risk-mgmt-worldwide.md` — 6 stages, each with: actors, market sizing, named players (worldwide + SEA presence), preliminary pain points
- `raw-claude-pain-points-logistics-risk-mgmt-worldwide.md` — per-stage pain points (2–4 each), with cost, frequency, evidenced/assumed, 3–5 root causes per PP, ~8–15 citations per PP
- `raw-claude-summary-logistics-risk-mgmt-worldwide.md` — gate decision, stages tracer-fired vs aborted, source diversity, top findings, top questions for field validation
