# Plan — Stage roster

Run ID: 2026-05-25-0427
Input file: ./input/2026-05-23-ai-process-efficiency-healthcare-id-my.md
Topic slug: ai-process-efficiency-healthcare-id-my
Mode: sandbox
Working directory: /Users/alphabot/Downloads/Work/overnight-research-repo
Started: 2026-05-25T04:27Z

## Output mode detection
- No engagement repo signature (no 11-value-chain/, no 21-value-chain/).
- Mode: **sandbox**.
- Artifact destinations: `./output/raw-claude-overnight/2026-05-25-0427/`

## Topic (verbatim from input)
Sub-step-level mapping of the manual, rules-based, data-intensive back-office processes that run private preventive and CDM care across three operational layers in Indonesia and Malaysia — GP clinic operations, corporate health/MCU administration, and insurance/TPA claims — assessed for where cost and failure concentrate and which specific AI capability (LLM, OCR, ambient voice, classification, predictive model) would address each high-burden sub-step.

## Geography
- In: Indonesia (Jakarta, Surabaya, Bandung, Medan + other Tier-1/Tier-2) and Malaysia (Klang Valley, Penang, Johor Bahru).
- Out: rural ID/MY, public health system, other SEA markets.

## Stages — 6 vertical slices, each a tracer

The natural unit of analysis from the input is **sub-process** (1a–1d, 2a–2d, 3a–3d). We map at sub-process granularity, grouped into 6 stages to keep each stage at IMI-comparable density (2–4 pain points, 3–5 RCs each, 8–15 citations per PP).

1. **GP Clinic — Consultation & Clinical Documentation (sub-process 1a)** — pre/during/post-consult: intake, history retrieval, benefit verification, vitals capture, note-taking, SOAP generation, ICD-10 coding, prescription, referral, EHR filing. Highest per-visit ambient-voice + LLM target.
2. **GP Clinic — Patient & Care Operations (sub-processes 1b + 1c + 1d)** — lab results management, CDM patient recall & chronic-care follow-up, appointment scheduling & no-show. Volume-driven coordination layer.
3. **MCU — Programme execution & multi-lab results collation (sub-processes 2a + 2b)** — corporate MCU setup, scheduling, on-site execution, results consolidation from fragmented labs. Front-half of MCU pipeline.
4. **MCU — Reporting, sign-off & post-MCU coordination (sub-processes 2c + 2d)** — individual report generation, doctor sign-off, employer population summary, abnormal-result routing, attendance tracking, CDM enrolment.
5. **Insurance / TPA — Pre-auth, claims submission, adjudication (sub-processes 3a + 3b + 3c)** — benefit verification & pre-auth, claims submission + completeness/resubmission loop, eligibility + medical review + duplicate/fraud flagging + payment calc.
6. **Insurance / TPA — CDM/preventive programme admin + ID-vs-MY readiness compare (sub-process 3d + cross-cutting)** — enrolment, ongoing monitoring, intervention triggers, employer reporting, renewal. Plus the ID-vs-MY readiness compare across all three layers (EHR/data, regulatory posture, TPA/insurer digitisation, GP receptivity, faster path to pilot).

## Working hypothesis test plan

- **WH1** (cost concentrates in few sub-steps per layer) → tested in PP cost anchors across each layer; we expect each stage to surface 2–3 PPs that dominate cost/error rate.
- **WH2** (automation feasibility is gated by input format) → tested by tagging each PP's input data format (structured EHR / PDF / free text / verbal) and mapping to AI capability (LLM/OCR/ambient/classification/predictive).
- **WH3** (MCU report generation + results collation are manual-heavy & fragmented) → tested directly in Stages 3 and 4.
- **WH4** (claims pre-auth & adjudication are rules-based yet manual) → tested directly in Stage 5.
- **WH5** (CDM recall leaks across all layers) → tested across Stages 2, 4, 6 (clinic recall, post-MCU follow-up, TPA CDM admin).
- **WH6** (ID vs MY diverge sharply on readiness) → tested in Stage 6 cross-cutting compare.

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference (2–4 PPs, 3–5 RCs/PP, 8–15 citations/PP, ≥8 unique URLs/stage).

## Resource budget

| Resource | Cap |
|---|---|
| WebSearch per stage | 50 |
| WebFetch per stage | 30 |
| Deep-research calls per stage | 5 |
| Total runtime | 4 hours |
| Sub-agent invocations per stage | 6 |

## Mode
- Unattended-Playwright mode: run produces RUN-COMPLETE.txt, then STOPs. Phase 2 orchestrator pass handles Playwright enrichment.

## Standards
- USD figures (convert IDR/MYR with rate stated).
- Real URLs only; PDF via markitdown.
- Tag `[NEEDS-ATTENDED-FETCH]: <url>` when WebFetch is blocked/empty so Phase 2 can re-fetch via Playwright MCP.
- American English. WP conventions for citation footnoting.
