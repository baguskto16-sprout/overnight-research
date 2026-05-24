# Plan — Stage roster

Run ID: 2026-05-23-0736
Topic: Indonesia urban affluent + upper-middle population as the addressable market for a GP-anchored, asset-light MSO delivering structured preventive care and CDM (diabetes, hypertension, high cholesterol)
Geography: Indonesia Tier-1 and Tier-2 cities (in); rural Indonesia + other SEA (out)
Output mode: sandbox
Working directory: /Users/alphabot/Downloads/Work/overnight-research-repo
Artifact destinations:
  - Value chain → output/raw-claude-overnight/2026-05-23-0736/raw-claude-value-chain-indonesia-affluent-preventive-cdm-market.md
  - Pain points → output/raw-claude-overnight/2026-05-23-0736/raw-claude-pain-points-indonesia-affluent-preventive-cdm-market.md
  - Summary + checkpoints → output/raw-claude-overnight/2026-05-23-0736/

## Stage interpretation

This input is a market-sizing / segment characterization brief, not an actor-based value chain. Each "stage" is an analytical dimension needed to test the 5 working hypotheses. The value-chain artifact will read as a market-segment map (population, spend, insurance, insurer activity, disease burden); the pain-points artifact will identify where the affluent CDM/preventive opportunity is blocked.

## Stages

1. **Population sizing — Indonesia urban affluent + upper-middle in Tier-1/Tier-2 cities** — establishes the headline addressable population. Tests WH1 ("large enough in absolute terms").
2. **Healthcare spending behavior by income segment** — category breakdown: OOP consultations, MCU, pharma, preventive/wellness, CDM-related. Tests WH1 + WH2 (spend conversion).
3. **Private health insurance — penetration & plan composition** — employer vs individual split, inpatient vs outpatient coverage. Tests WH3 + WH4 (insurance coverage gap, employer access route).
4. **Top insurers — structured preventive/CDM programmes** — AXA Mandiri, Prudential, Manulife, Allianz, Cigna activity. Tests WH5 (partnership opening).
5. **Chronic disease burden & undiagnosed rate** — diabetes/HTN/dyslipidemia prevalence in Indonesia, undiagnosed rate, addressable medical demand in affluent cohort. Sets the medical opportunity sizing that anchors the MSO thesis.

## Working hypothesis test plan

- **WH1** ("affluent segment large enough in absolute terms but under-served by structured preventive/CDM") — research at Stages 1 + 2 will look for: top-decile / 2nd-3rd-decile household counts in Tier-1/Tier-2 metros; observed preventive/CDM spend per household; share of preventive/CDM captured by integrated providers vs episodic hospital visits.
- **WH2** ("preventive/CDM spending becomes discretionary at upper-middle threshold") — Stages 2 + 3 will look for: income-threshold studies of OOP healthcare spend; share of household OOP on preventive vs curative across deciles; whether income or employer insurance is the stronger predictor of preventive uptake.
- **WH3** ("private insurance is dominantly inpatient-oriented") — Stage 3 will look for: OJK private health insurance line-of-business breakdown; standard plan benefits across top 5 insurers (inpatient vs outpatient vs preventive vs CDM); evidence of pharma + chronic medication coverage caps.
- **WH4** ("employer-provided insurance is dominant access route for upper-middle") — Stage 3 will look for: group vs individual private health insurance premium split; employer plan penetration by industry; OECD/World Bank evidence on employer-sponsored health benefits in Indonesia.
- **WH5** ("major insurers piloting structured preventive/CDM programmes but fragmented") — Stage 4 will look for: named programmes from AXA Mandiri, Prudential (Pulse), Manulife (MOVE), Allianz, Cigna; partnership announcements; published outcomes/enrolment numbers.

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference Stage[N] (≥2 pain points per stage, ≥3 root causes per pain point, ≥5 citations per pain point, ≥8 unique sources per stage).

## Stop condition

Unattended-Playwright mode. After RUN-COMPLETE.txt is written, STOP. Phase 2 Playwright enrichment is a separate orchestrator pass.
