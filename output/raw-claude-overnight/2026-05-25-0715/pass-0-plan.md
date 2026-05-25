# Plan — Stage roster

Run ID: 2026-05-25-0715
Mode: sandbox
Output directory: ./output/raw-claude-overnight/2026-05-25-0715/
Started: 2026-05-25T07:15Z
Input file: ./input/2026-05-23-indonesia-affluent-preventive-cdm-market.md

Topic: Indonesia urban affluent / upper-middle population sizing and healthcare spend as the addressable market for an asset-light, GP-anchored MSO delivering preventive care + chronic disease management (CDM) — funded via OOP, private insurance, or employer programmes.

Geography: Indonesia Tier-1 and Tier-2 cities (in); rural and other SEA (out).

## Stages

The "value chain" here is the funding-and-delivery chain that determines whether a private-pay preventive/CDM MSO is commercially viable. Stages are organised from upstream (who has the money) to downstream (who already serves them), with payors and substitutes in between.

1. **Affluent / upper-middle population sizing** — top decile, 2nd–3rd deciles, 4th–5th deciles in Indonesia Tier-1/Tier-2 cities. Absolute counts, growth rates, urban-rural split. Why: hypothesis stands or falls on whether the addressable headcount is materially large in absolute terms.

2. **Healthcare spend by income segment** — OOP consultations, MCU/screening, pharmaceuticals, preventive/wellness, CDM-related. Aspirational-vs-discretionary threshold. Why: tests WH2 (income threshold for discretionary preventive spend).

3. **Private health insurance penetration & coverage** — OJK / AAJI statistics, segment-by-segment penetration, individual vs employer split, inpatient vs outpatient/preventive/CDM coverage gap. Why: tests WH3 (inpatient-bias of standard plans) and WH4 (employer-led access).

4. **Major insurer products & preventive/CDM programmes** — AXA Mandiri, Prudential, Manulife, Allianz, Cigna, Sequis, Great Eastern. Standard plan inclusions, named preventive/CDM pilots, GP/clinic partnerships. Why: tests WH5 (insurers piloting but execution fragmented).

5. **Existing preventive/CDM delivery landscape** — private hospital outpatient services (Siloam, Mayapada, Hermina, RS Pondok Indah, Mitra Keluarga), GP-clinic chains (Kimia Farma, Klinik Pratama), screening/diagnostics (Prodia, Bio Medika), digital-health (Halodoc, Alodokter), existing CDM startups (Riliv, Naluri, Klinik Pintar). Why: tests WH1 (private hospitals capture episodic but no one owns longitudinal).

6. **Employer-provided health benefits market** — top employers' health-benefit spend, fully-insured vs self-funded, wellness programme adoption (e.g. Astra, Telkom, GoTo, BCA, Pertamina, multinationals). Why: tests WH4 (employer-provided is dominant access route for upper-middle).

## Working hypothesis test plan

- **WH1** Affluent segment under-served by structured preventive/CDM offerings — research will look for: existing longitudinal-care providers vs episodic providers; market-share by category; structured CDM programme reach by income segment. Tested primarily in Stage 5, secondarily Stage 4.
- **WH2** Preventive/CDM spending becomes discretionary at upper-middle income — research will look for: per-capita healthcare spend curves by decile, qualitative behavioural surveys, expat / private-clinic interviews. Tested primarily in Stage 2.
- **WH3** Private insurance is inpatient-oriented — research will look for: plan-level documentation of standard products from top-5 insurers, OOP share of outpatient spend, AAJI / OJK statistics on claims by service category. Tested primarily in Stage 3 and Stage 4.
- **WH4** Employer insurance dominates access for upper-middle — research will look for: AAJI group-health vs individual statistics; AON / Willis Towers Watson Indonesia benefits surveys. Tested primarily in Stage 3 and Stage 6.
- **WH5** Insurers piloting preventive/CDM but execution fragmented — research will look for: named insurer pilots, partnership announcements, programme launches with reach metrics. Tested primarily in Stage 4.

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference Stage[N]. Tracer-bullet decision after Stage 1: if Stage 1 catastrophically thin (cannot find 3 quantified BPS / World Bank metrics or 2 documented pain points), abort.

## Resource budget

- Total runtime cap: 4 hours wall-clock
- Per-stage caps: 50 WebSearch / 30 WebFetch / 5 deep-research calls / 6 sub-agent invocations
- Source diversity target: 40–60 unique URLs across full corpus
- Citation density target: 8–15 per pain point

## Output destinations

- `raw-claude-value-chain-indonesia-affluent-preventive-cdm.md` — canonical value-chain artifact (Stages 1–6, actors/sizing/players)
- `raw-claude-pain-points-indonesia-affluent-preventive-cdm.md` — canonical pain-points artifact
- `raw-claude-summary-indonesia-affluent-preventive-cdm.md` — run summary
- `FINAL-REPORT.html` — Wright-branded print-ready report
- All pass artifacts, checkpoint.json, RUN-COMPLETE.txt
