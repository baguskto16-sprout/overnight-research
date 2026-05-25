# Stage 3 — Deep-research corrections (post pass-3)

## Applied corrections

### PP3.4.2 — Group health market (CONTRADICTED)

- **Original:** USD 910–945M (Mordor aggregator).
- **Correction:**
  - AAUI Q4 2024 (general insurance, mostly group): **Rp 11.82T / ~USD 743M (+77.2% YoY)**
  - AAJI 2024 group-health portion of total Rp 24.18T claims, estimated GWP at 71.2% LR: **~Rp 12.5T / ~USD 785M**
  - **Combined group health (AAUI + AAJI estimate): ~Rp 24.3T / USD 1,528M** (~2x the Mordor figure)
- **Implication:** Group health is the *dominant* line of Indonesia's commercial health insurance, not the secondary line. The MSO's addressable funding pool via employer plans is materially larger than originally stated.
- **Group:individual split correction:** Original 63:37 (group:individual) appears INVERTED. AAJI group health claims ~37% of total AAJI health claims; individual ~63%. AAUI is predominantly group. Net: group GWP and individual GWP are roughly comparable.
- **Primary sources:** AAUI Q4 2024 PDF https://aaui.or.id/wp-content/uploads/2025/10/analisa-Q4-24-web-ver.pdf; AAJI 2024 full-year statement https://aaji.or.id/NewsEvent/industri-asuransi-jiwa-2024--tumbuh-positif,-kian-kokoh-melindungi-masyarakat.

### VC3.7 / PP3.3.6 — GlobalData PA&H forecast (BROKEN-FORECAST)

- **Original:** GlobalData 2025 Rp 38.6T → 2029 Rp ~52T.
- **Correction:** Forecast is definitively BROKEN. Its 2025 base is already below 2024 actual.
  - OJK 2024 actual (primary): **Rp 40.19T** with 31.34M policies (ANTARA, June 2025 OJK DPR testimony).
  - OJK time series: 2021 Rp 19.17T → 2022 Rp 22.09T → 2023 Rp 26.26T → 2024 Rp 40.19T (+53% YoY).
  - OJK Roadmap Asuransi 2023–2027: no sector-level PA&H target published; only aggregate insurance density Rp 2.4M/capita and penetration 3.2% by 2027.
- **Recommendation:** Drop GlobalData. Anchor canonical artifact to OJK 2024 actual and use 15–20% CAGR as `[AUTHOR EXTRAPOLATION]` yielding ~Rp 46–48T (2025) → ~Rp 81–99T (2029).
- **Primary sources:** OJK via ANTARA June 2025; OJK Roadmap 2023–2027 PDF (via markitdown).

## Skipped low-priority

- PP3.1.1 (OOP CDM Rp 8–20M/year MCU vendor pricing) — partly addressed by Stage 2 deep-research on CDM annual cost (Rp 6–20M/yr with bottom-up build).
- VC3.13 (Mandiri Inhealth 35% group health market share) — not load-bearing; leave tagged [ASSUMED].
- PP3.3.7 (Prudential POJK 36/2025 endorsement) — not load-bearing for commercial case.

## Diversity & gate impact

- Stage 3 publisher diversity already passed (28+ publishers). Added: AAUI Q4 2024 PDF as new primary-tier.
- Post-correction Stage 3 estimated Low share: ~28% (down from 34.4%) — passes "ship as-is" threshold.

## Files updated

- `pass-3-deep-research/stage-3/pp3-4-2.json`
- `pass-3-deep-research/stage-3/vc3-7.json`
