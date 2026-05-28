# Plan — Stage roster
Run ID: 2026-05-26-0159
Topic: AI Process Efficiency in Healthcare Back-Office (Indonesia & Malaysia, Deep Process Edition)
Geography: Indonesia (Tier-1/2 cities) and Malaysia (Klang Valley, Penang, Johor Bahru)
Mode: sandbox (no engagement repo detected)
Output directory: ./output/raw-claude-overnight/2026-05-26-0159/
Run mode: unattended-Playwright — stop at RUN-COMPLETE.txt; Phase 2 Playwright enrichment handled by separate orchestrator pass.

## Stages

1. **GP clinic operations** — primary-care touchpoint where most consultation, lab, recall, and scheduling work happens. Covers sub-steps 1a (consultation & clinical documentation), 1b (lab result management), 1c (CDM patient recall & chronic-care follow-up), 1d (appointment scheduling & no-show management). Highest volume layer; structured + unstructured input mix.

2. **Corporate Health & MCU administration** — employer-channel layer where MCU programmes generate the highest reporting/collation volume. Covers sub-steps 2a (MCU programme setup & scheduling), 2b (MCU execution & results collation across fragmented labs), 2c (MCU report generation, medical sign-off & delivery), 2d (post-MCU follow-up & programme coordination). Known manual-heavy stage per WH3.

3. **Insurance & TPA claims operations** — payer layer where rules-based but manually executed processes drive rejection rates and staff cost. Covers sub-steps 3a (benefit verification & pre-auth), 3b (claims submission & completeness/resubmission), 3c (claims adjudication: eligibility, medical review, duplicate detection, fraud flagging, payment), 3d (CDM & preventive programme administration). Known rules-engine surface per WH4.

4. **Cross-layer cost & failure concentration** — synthesis stage. Decomposes the 12 sub-steps from Stages 1–3 into a unified table (owner, time per transaction, volume, automation level, error/drop-off mode, data format, AI capability target) and identifies the ~6–8 sub-steps where cost concentrates per WH1. Computes manual-cost baselines for: representative GP clinic (300-patient panel), mid-size MCU programme (1,000 employees/year), mid-size TPA book (50,000 covered lives).

5. **Indonesia vs Malaysia readiness comparison** — market-comparison stage. Compares EHR/data infrastructure, regulatory posture (PDP Law ID, PDPA MY, MOH e-claim mandates), TPA/insurer digitisation maturity, GP operator receptivity. Identifies faster-path-to-pilot per layer per WH6.

6. **AI capability → sub-step mapping** — output stage. For each high-burden sub-step from Stage 4, maps the specific AI capability (LLM, OCR, ambient voice, classification, predictive model) that addresses it, with conservative/base/upside benchmarks (time reduction, error reduction, cost per transaction) drawn from SEA pilots where available and global benchmarks with stated assumptions otherwise. Validates WH2 (input-data format gates feasibility).

## Working hypothesis test plan

- **WH1 — Cost and failure concentrate in a few high-volume, low-judgment sub-steps per layer.** Research will look for: per-sub-step time-per-transaction data, error rates, drop-off rates, and cost-per-transaction baselines across all 12 sub-steps. Stages 1–3 produce the raw data; Stage 4 produces the concentration finding.
- **WH2 — Automation feasibility is gated by input-data format, not process importance.** Research will look for: format taxonomy per sub-step (structured EHR field / PDF / free text / verbal), and AI-capability-to-format mapping. Stages 1–3 capture data format per sub-step; Stage 6 validates against capability fit.
- **WH3 — MCU report generation and results collation are manual-heavy and fragmented.** Research will look for: template format (Word/PDF), lab-of-origin count, sign-off cycle time, person-hours per MCU report. Stage 2 produces this.
- **WH4 — Claims pre-auth and adjudication are rules-based yet manually executed.** Research will look for: rejection rate per first submission, resubmission cycle length, FTE per 1,000 claims, current adjudication tooling. Stage 3 produces this.
- **WH5 — CDM recall and follow-up leak patients across every layer.** Research will look for: overdue-identification cadence, recall response rate, cross-party coordination friction. Stages 1, 2, 3 each capture their share of CDM coordination; Stage 4 synthesizes the leakage path.
- **WH6 — ID and MY diverge sharply on readiness.** Research will look for: EHR penetration, BPJS/PERKESO digitisation, MOH-driven mandates (SATUSEHAT in ID, MyHEALTH in MY), TPA portal maturity. Stage 5 produces this.

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference Stage[N]:
- ≥2 pain points per stage
- ≥3 root causes per pain point
- ≥5 citations per pain point (target 8–15)
- ≥8 unique URLs per stage

Tracer-bullet decision after Stage 1: if catastrophically thin, abort.

## Resource budgets

- WebSearch per stage: 50
- WebFetch per stage: 30
- Deep-research calls per stage: 5
- Total runtime: 4 hours
- Sub-agent invocations per stage: 6

## Mode notes

This is **unattended-Playwright mode**:
- Sub-agents may tag URLs that returned empty/blocked from WebFetch with `[NEEDS-ATTENDED-FETCH]` so a later orchestrator pass can re-fetch via Playwright MCP.
- This orchestrator stops at `RUN-COMPLETE.txt`. Phase 2 Playwright enrichment is a separate pass.
