# Plan — Stage roster
Run ID: 2026-05-02-0842
Topic: Industrial use of solid-fuel package boilers in Southeast Asia
Geography: Indonesia, Malaysia, Thailand, Singapore (primary); Vietnam, Philippines (secondary if data is readily available)
Mode: sandbox (no engagement repo signature in CWD)
Output base: /Users/alphabot/overnight-research/output/raw-claude-overnight/2026-05-02-0842/

## Stages

1. **Fuel Suppliers** — coal traders, biomass aggregators, agri-residue suppliers (rice husk, EFB, bagasse, wood chips, pellets). Where the cost-volatility hypothesis (WH1, WH5) lands first.
2. **Boiler OEMs / Package Boiler Manufacturers** — the firms that design, fabricate, and ship solid-fuel package boilers (~0.5–25 t/h). Reliability hypothesis (WH2) sits with their warranty/aftermarket exposure.
3. **EPC / Installation & Commissioning Contractors** — local installers, balance-of-plant integrators, civil works, fuel storage, ash handling, stack/ESP integration. Often the first point where field-quality compromises seed reliability problems.
4. **Industrial End Users / Operators** — textile mills, F&B factories, palm oil mills, rubber processors, paper & pulp mills, small-scale chem/pharma plants. Primary pain locus for all five working hypotheses.
5. **Aftermarket Service & Compliance Providers** — O&M contractors, spare parts, water treatment, ash handling, emissions retrofits (ESP, scrubbers, baghouses), certification/training. WH3 and WH4 (regulation, skilled operators) primarily live here.

D&E Consultancies stage is intentionally not separated — for sub-25 t/h package boilers, design is largely bundled by the OEM or local EPC. If literature reveals a distinct consultancy stage, surface as cross-stage observation.

## Working hypothesis test plan

- **WH1 — High fuel cost** — research will look for: SEA coal price series (Newcastle / ICI ICI-3 / ICI-4 referenced in industrial procurement), biomass pellet/EFB/rice husk price series, share of fuel in operator opex, % volatility 2020–2026.
- **WH2 — Reliability problems** — research will look for: published downtime statistics (planned + unplanned), ash handling failure modes, fuel feed and grate failures, OEM warranty / parts replacement frequency, MTBF data if available.
- **WH3 — Emissions compliance burden** — research will look for: Indonesia MoEF and Thailand Pollution Control Department PM/SOx/NOx limit revisions, retrofit costs, share of boilers requiring new abatement, enforcement intensity.
- **WH4 — Skilled operator scarcity** — research will look for: licensing regimes (Indonesia Operator K3 / OK3, Thailand DOEB, Malaysia DOSH boilerman certification), reported shortages, wage trends.
- **WH5 — Fuel quality variability** — research will look for: documented moisture/CV/contaminant ranges in SEA biomass feedstock, downstream operational impacts (slagging, fouling, derating), specifications gap.

## Quality gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference (2–4 PPs per stage, 3–5 RCs per PP, 8–15 citations per PP, 8+ unique URLs per stage).

## Sub-agent invocations expected

- value-chain-mapper × 5 (one per stage)
- pain-point-researcher × 5 (one per stage)
- source-validator × 5 stage validators + 1 final cross-stage validator
- deep-research × N (per weak claim per stage; budget cap 5/stage)

## Resource budget

- WebSearch: ≤50 per stage
- WebFetch: ≤30 per stage
- Deep-research: ≤5 per stage
- Sub-agent invocations per stage: ≤6
- Total runtime cap: 4 hours

## Outputs

- raw-claude-value-chain-package-boilers.md
- raw-claude-pain-points-package-boilers.md
- raw-claude-summary-package-boilers.md
- pass-0-plan.md, pass-1-drafts/, pass-2-validation/, pass-3-deep-research/, stages-validated/, checkpoint.json, RUN-COMPLETE.txt
