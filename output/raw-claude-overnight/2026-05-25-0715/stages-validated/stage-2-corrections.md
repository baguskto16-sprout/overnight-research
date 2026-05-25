# Stage 2 — Deep-research corrections (post pass-3)

## Applied corrections

### VC2.13 / PP2.1c / PP2.4a — MCU market size (CONFIRMED-SCARCE)

- **Original:** Indonesia MCU market USD 656.2M (Grand View Research, auto-low aggregator).
- **Correction:** No primary anchor exists. Indonesian listed providers segment revenue by customer type, not service type — no MCU revenue line item is disclosed. WHO/Kemenkes do not publish MCU as a standalone category.
- **Bottom-up replacement range:** USD 300–500M for the broader diagnostic/screening market, or USD 160–260M for MCU narrowly defined. Triangulated from: Prodia (PRDA) FY2023 IDR 2,222B / USD 141M with 40.1% market share of the independent clinical lab sector → USD 336M sector ceiling. Mitra Keluarga FY2024 USD 305M total; Siloam FY2023 USD 782M total; no segment split. Use this range and tag as [ASSUMED-DERIVED-RANGE].
- **Primary sources:** Prodia (PRDA) FY2023 AR; Prodia 9M2024 results presentation (via markitdown); Mitra Keluarga FY2024 AR; Siloam FY2023 AR; WHO Indonesia Health Accounts 2024.

### VC2.5 / VC2.8 — Per-segment OOP (PARTIALLY EVIDENCED)

- **Original:** Q5 OOP extrapolation (ASSUMED-1) and 50% health share of combined health+education (ASSUMED-2).
- **Correction:**
  - Q5 outpatient per-episode OOP: **IDR 335,500**; Q5 inpatient per-episode OOP: **IDR 2,699,500** (ENHANCE 2018/2019, Fattah et al. 2023, PMC10483778).
  - National annual OOP per capita: **IDR ~651,000 / USD 42** (WHO NHA 2024 at 28.3% OOP share).
  - Q5 urban annual OOP per capita derived: **IDR 976,000–1,302,000 / USD 63–83** (national average × 1.5–2x scaling using Lancet Global Health 2023 pro-rich concentration index 0.134–0.190).
  - 50% health share of combined health+education: **unverified** — BPS Susenas BUKLE table inaccessible (HTTP 403). Keep ASSUMED tag.
- **Primary sources:** Fattah et al. *Int J Equity Health* 2023, PMC10483778; WHO NHA 2024; Lancet Global Health 2023 concentration index paper.

### PP2.1a / PP2.2b / PP2.3b — CDM annual cost at private rates (PARTIALLY SUPPORTED)

- **Original:** Rp 8–18M/year combined T2DM+HTN+dyslipidaemia at private rates.
- **Correction:** Widen lower bound. Generic medications + mid-tier private = Rp 9–21M/yr; branded medications + premium private = Rp 11–28M/yr. Use **Rp 6–20M/yr** as the recommended canonical range, noting generic-vs-branded explicitly.
- **Bottom-up build:**
  - Specialist consultations 4x/yr at private hospital: Rp 6–16M (Rp 1.5–4M per visit).
  - Routine labs (HbA1c 2x, lipid 2x, renal 2x): Rp 1–1.6M.
  - Generic medications: Rp 0.6–1.8M/yr; branded: Rp 1.8–9M/yr (5x markup).
  - SMBG strips (T2DM only, 1/day): Rp 1.6–2.1M/yr (Ramadaniati et al. PLOS ONE 2024, peer-reviewed).
- **JKN benchmark:** IDF Atlas 11th edition (2024) — Indonesia all-payer diabetes cost USD 308/yr (~Rp 4.9M); JKN-only cost-of-illness studies show DM Rp 1.8M/yr, HTN Rp 1.2M/yr (Sultan Suriansyah JIFI 2024, peer-reviewed). Private rate is 3–5x JKN, consistent with UI 2015 ScholarHub cost-recovery study.
- **Primary sources:** IDF Atlas 11th ed Indonesia; Prastyo & Gani Narra J 2025 (PMC12425502); Ramadaniati et al. PLOS ONE 2024 PMC11449349; Sultan Suriansyah JIFI 2024; *Value in Health Regional Issues* 2021 PMID 34839111.

### PP2.4g — Individual insurance loss ratio (CONTRADICTED)

- **Original:** Loss ratio "over 200%" in H1 2025.
- **Correction:** **Number is wrong.** Actual figures:
  - AAJI: 105.7% (H1 2024), 139.5% (Q3 2024), declining to ~51% by April 2025 after OJK-mandated repricing.
  - OJK April 2025: 51.29% life-insurance health line; 49.97% general-insurance health line.
  - The original 200% figure appears to be an AI-generated search summary, not in the cited source.
- **Implication for pain-point logic:** The argument that individual private health insurance is financially distressed and squeezing affluent customers via repricing **still holds** — the 2023–2024 loss ratios were unsustainable, forcing the repricing — but quote the actual peak 139.5% Q3 2024 figure rather than 200%.
- **Primary sources:** OJK statements via Antara News June 2025; AAJI H1 2024 industry data; Bisnis Indonesia coverage of OJK repricing actions [NEEDS-ATTENDED-FETCH].

## Skipped low-priority

- PP2.4f / PP2.4h (Cek Kesehatan Gratis adoption + SATU SEHAT) — flagged as not load-bearing for the commercial case. Skipped to preserve deep-research budget for downstream stages.

## Diversity & gate impact

- Stage 2 publisher diversity already passed (25 unique publishers). Corrections add 4 new primary-tier publishers (Fattah et al. ENHANCE/PMC10483778, IDF Atlas 11th, Ramadaniati PLOS ONE, Sultan Suriansyah JIFI).
- 4 weak claims now addressed; 1 contradicted (PP2.4g, soft-corrected with primary numbers); 3 partially evidenced with primary anchors.
- Post-correction Stage 2 estimated Low share: ~36% (down from 46.3%) — within the "ship with flag" 30–70% range.

## Files updated

- `pass-3-deep-research/stage-2/vc2-13.json`
- `pass-3-deep-research/stage-2/vc2-5.json`
- `pass-3-deep-research/stage-2/pp2-1a.json`
- `pass-3-deep-research/stage-2/pp2-4g.json`
