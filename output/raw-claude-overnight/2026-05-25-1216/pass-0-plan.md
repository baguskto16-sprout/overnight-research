# Plan — Stage roster

Run ID: 2026-05-25-1216
Mode: sandbox (Phase 1 of unattended-Playwright; Phase 2 enrichment runs separately)
Output directory: ./output/raw-claude-overnight/2026-05-25-1216/
Started: 2026-05-25T12:16Z
Input file: ./input/2026-05-24-indonesia-corporate-cdm-cost-burden.md

Topic: Cost burden — claims, complications, productivity loss — of undetected and unmanaged chronic metabolic disease (diabetes, hypertension, hypercholesterolemia) in urban Indonesian corporate workforces (500+ HC); structure of the employer health benefits and MCU market that would need to absorb structured screening and CDM as a paid service.

Geography: Indonesia Tier-1 / Tier-2 cities (in); rural Indonesia and other SEA (out).

Output mode: sandbox (no engagement-design or engagement-ideation signature in cwd; ./11-value-chain or ./21-value-chain not present).

## Stages

The "value chain" here is the *demand-and-funding chain* for corporate metabolic-disease screening + CDM. Stages run from "who pays and bears the cost" (employer, then payor) → "who currently holds and obscures the data" (TPA, insurer) → "who currently detects (or misses) the condition" (MCU/diagnostics) → "who could deliver longitudinal CDM" (GP/occ-health) → "what the cost actually is" (cost-of-illness literature, both Indonesia-native and internationally transferable). Six stages.

1. **Indonesian corporate employers (500+ HC)** — Tier-1/Tier-2 city private-sector employers outside BPJS Prolanis. Headcount, sectoral mix, benefits-spend per capita, fully-insured vs. self-funded, MCU procurement patterns. Why: the buyer in the hypothesis. Tests WH1, WH4, WH5.

2. **Third-Party Administrators (TPAs)** — AdMedika, Owlexa Healthcare, Meditap (and any others materially serving 500+ HC mid-tier and corporate). Network scale, fee model, claims-data flow, reporting cadence/granularity to employers, condition-level vs. category-level views. Why: the intermediary that touches every claim and either surfaces or hides the metabolic cost burden. Tests WH1, WH4.

3. **Group health insurers (corporate channel)** — top players in Indonesia commercial group health: AXA Mandiri, Allianz Life, Prudential, Manulife, Sequis, Cigna, Great Eastern; plus Astra Life and homegrown players. Group-health share of total written premium (AAJI), product structure for SME/corporate, preventive-care inclusions, MCU bundling. Why: sets MCU panel scope and incentive structure. Tests WH2, WH3, WH4, WH5.

4. **MCU / clinical diagnostic providers** — Prodia, Kimia Farma Diagnostika, Bio Medika, Pramita, Parahita; hospital-based MCU centres (Siloam, Mayapada, Mitra Keluarga, RS Pondok Indah, Pertamedika IHC, Hermina). Standard MCU panel composition, HbA1c inclusion rate, per-employee MCU price points, incremental cost of metabolic add-ons. Why: detection layer; the gateway where undiagnosed disease could be — but often isn't — surfaced. Tests WH2, WH5.

5. **GP-anchored / occupational-health clinic operators** — corporate on-site clinics (Pertamedika IHC, KMI Klinik, Halodoc Klinik, OneClinic, Klinik Pintar, GoCare/SOS Medika International, IMS); digital-first GP players with corporate offering (Halodoc, Alodokter, Good Doctor). Capacity to deliver longitudinal CDM, current employer contracts, fee-for-service vs. capitation, MSO-like structures. Why: the channel through which an asset-light MSO would actually deliver CDM. Tests structural feasibility of the hypothesis's delivery layer.

6. **Metabolic-disease cost-of-illness — Indonesia + transferable international literature** — IDF Diabetes Atlas (Indonesia chapter), Riskesdas 2018/2023, BPJS Prolanis cost studies, ADA "Economic Costs of Diabetes" series, Asian Diabetes Foundation cost studies, JKN/BPJS catastrophic-illness reports, Mercer Marsh Benefits / WTW Indonesia health-benefits surveys, Bain/Roland Berger Indonesia health reports. Annual claims cost per diabetic vs. non-diabetic / managed vs. unmanaged; complication cost; productivity loss (absenteeism, presenteeism); undiagnosed rates. Why: supplies the cost numbers that turn the cohort prevalence into an actual burden estimate. Tests WH3 directly; supplies inputs that all other WH's depend on.

Vertical-slice gate: complete Stage 1 fully (mapper → researcher → validator → deep-research → IMI-compare) before starting Stage 2. Tracer-bullet abort if Stage 1 cannot produce ≥3 quantified metrics on employer headcount/benefits spend or ≥2 structured pain points.

## Working hypothesis test plan

- **WH1 — Employers cannot see the metabolic cost burden in their claims data.** Research will look for: TPA reporting structures, condition-level vs. category-level claim views, HR/benefits manager survey commentary. Tested primarily in Stage 2 (TPAs) and Stage 1 (employer-side experience).

- **WH2 — Standard MCU panels exclude / under-include HbA1c and lipid panels.** Research will look for: published MCU panel templates from Prodia / Kimia Farma / Bio Medika / hospital MCU brochures; insurer-bundled MCU specs; surveys of standard inclusions; incremental price of HbA1c add-on. Tested primarily in Stage 4 (MCU providers) and Stage 3 (insurer bundling).

- **WH3 — Productivity loss (absenteeism + presenteeism) is the largest unmeasured cost component, exceeding direct claims cost.** Research will look for: WHO / IDF / ADA studies decomposing direct vs. indirect costs of diabetes / hypertension; Indonesia-specific absenteeism/presenteeism studies; SMERU / LPEM costs; WTW productivity surveys. Tested primarily in Stage 6 (literature) and Stage 1 (employer reporting practices).

- **WH4 — TPA incentives are misaligned with prevention.** Research will look for: TPA fee structures (per-claim vs. PMPM), case studies of prevention partnerships, public statements on value-based vs. fee-for-service approaches. Tested primarily in Stage 2 (TPAs) and Stage 3 (insurer purchase patterns).

- **WH5 — Incremental cost of adding metabolic screening to MCU is small relative to surfaced burden, but procurement decisions sit with HR/admin teams that price MCU as a line item, not against avoided claims.** Research will look for: list price of HbA1c, lipid panel, fasting glucose add-ons; per-employee MCU price tiers; HR/admin purchasing-decision frameworks. Tested across Stage 4 (MCU pricing) and Stage 1 (employer purchase decision-makers).

## Gate

Stage-by-stage validation. Move to Stage[N+1] only after Stage[N] passes structural compare to IMI reference Stage[N] (≥2 pain points, ≥3 RCs each, ≥5 citations each). Tracer-bullet decision after Stage 1: if Stage 1 cannot produce ≥3 quantified employer-side metrics (e.g. # of formal-sector employers >500 HC, mean per-employee benefit spend, MCU adoption rate) or ≥2 structured pain points, abort and write ABORTED.md.

Final gate: % Low-confidence claims across full corpus drives ship-as-is / ship-with-flag / re-run-recommended decision per skill threshold table; auto-degraded by contradiction-resolver outcomes.

## Resource budget

- Total runtime cap: 4 hours wall-clock for Phase 1 (Playwright enrichment is separate Phase 2)
- Per-stage caps: 50 WebSearch / 30 WebFetch / 5 deep-research calls / 6 sub-agent invocations
- Source diversity target: 40–60 unique URLs across full corpus
- Citation density target: 8–15 per pain point

## Output destinations (sandbox mode)

- `raw-claude-value-chain-indonesia-corporate-cdm-cost-burden.md` — canonical value-chain artifact (Stages 1–6, actors/sizing/players)
- `raw-claude-pain-points-indonesia-corporate-cdm-cost-burden.md` — canonical pain-points artifact (per-stage pain points + root causes)
- `raw-claude-summary-indonesia-corporate-cdm-cost-burden.md` — run summary including gate decision
- `FINAL-REPORT.html` — Wright-branded print-ready report
- pass-0-plan.md (this file), checkpoint.json, pass-1-drafts/, pass-2-validation/, pass-3-deep-research/, stages-validated/, pass-2-critics/, RUN-COMPLETE.txt

## Phase 1 / Phase 2 split

This run is Phase 1 of an unattended-Playwright pipeline. Phase 1 completes the standard overnight-research vertical-slice flow and produces RUN-COMPLETE.txt. A separate Phase 2 orchestrator pass will pick up [NEEDS-ATTENDED-FETCH] tags and re-fetch via Playwright MCP. Phase 1 STOPS at Step 8 after RUN-COMPLETE.txt.
