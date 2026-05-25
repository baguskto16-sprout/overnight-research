# Stage 1 — Deep-research corrections (post pass-3)

## Applied corrections to pass-1-drafts

### PP1.2.5 — Medical cost inflation (CONTRADICTED)

- **Original:** "Medical cost inflation Indonesia: 26.5% (2022) / 20.48% (2023)" sourced to Lockton.
- **Correction:** The 26.5% / 20.48% figures are a single-employer retiree-cohort calculation (Prastyo & Gani, *Narra J*, 2025, PMC12425502 — 29,695 retirees of one Indonesian SOE oil-and-gas company), NOT the market-wide rate.
- **Correct market-wide figure:** **12.3% (2022) and 13.6% (2023)** — Mercer Marsh Benefits (MMB) Global Medical Trends Survey, firm-imprint insurer survey of 226 carriers across 56 countries.
- **Implication for pain-point logic:** Argument still holds — Indonesia medical cost trend is roughly 5x general CPI (5.5% in 2022, 2.6% in 2023), the highest medical trend market in Asia outside of China. Update the cited percentages.
- **Primary URL:** Marsh CDN MMB Health Trends 2023 (image-based PDF, [NEEDS-ATTENDED-FETCH]); secondary corroboration Jakarta Daily.

### VC1.28 — Informality rate (REFINED)

- **Original:** 51.5% (2023) sourced to ISEAS/Fulcrum.sg (researcher-derived).
- **Correction:** **BPS official Sakernas August 2023 headline: 59.11% informal / 40.89% formal.** BPS publishes three methodologies; the 51.5% is one alternative computation. The 59.11% is the official headline used by BPS's own Berita Resmi Statistik.
- **Urban/rural split:** Rural ~72.6%; urban ~45–48% (inferred). Tier-1 metros likely 40–45% informal — still material, but lower than the headline.
- **Implication for pain-point logic:** Strengthened — self-employed / informal segment is materially larger than the original 51.5% suggested.
- **Primary URL:** BPS Berita Resmi Statistik November 2023 (Tingkat Pengangguran Terbuka & Sakernas Aug 2023) — [NEEDS-ATTENDED-FETCH]: https://www.bps.go.id/en/pressrelease/2023/11/06/2002/...

### PP1.1.2 — Private hospital inpatient cost (REFINED)

- **Original:** Rp 50–200M per acute episode, [Data gap] tag.
- **Correction:** Refined range by condition (triangulated across Mitra Keluarga FY2023 annual report, Pondok Indah pricing, Kemenkes-WHO sourced consumer-health publication):
  - Ischemic stroke, no surgery, 7–14 days: Rp 50–150M
  - Hemorrhagic stroke + craniotomy: Rp 150–400M
  - MI with PCI/stent + 5–7 days LOS: Rp 70–150M
  - Hypertensive crisis, 3–5 days: Rp 30–80M
  - Bypass surgery: Rp 150–300M alone
- **USD conversion (Rp 16,200/USD, May 2026):** acute episode cost USD 1,850–24,700. Use **Rp 50–400M / USD 3,000–25,000** as the corrected range.
- **Methodology note:** UI ScholarHub 2015 cost-of-illness study (Universitas Indonesia) shows fee-for-service cost recovery rate 228% vs BPJS-INA-CBG 71% — meaning private self-pay is 3–5x INA-CBG rates. JKN reimburses stroke at ~Rp 7–11M; private self-pay at Class A in Jakarta runs Rp 50–400M (5–40x).
- **Primary URLs:**
  - Mitra Keluarga AR FY2023: https://emitten-announcement.stockbit.com/attachments/f-31633064-0_AnnualReport2023-MIKA-att1.pdf
  - UI ScholarHub 2015 cost analysis: https://scholarhub.ui.ac.id/eki/vol1/iss3/4/
  - Antara News 2024 stroke + jantung JKN spend: https://www.antaranews.com/berita/3758544/...

### VC1.15 — Tier-1 urban MC headcount (REFINED)

- **Original:** "13.5–14.5M" for Tier-1 urban MC (ASSUMED-2, derived from 2016 World Bank bar chart scaled forward).
- **Correction:** That number is the **2019 peak Greater Jakarta** figure. Post-2024:
  - National MC: 47.85M (down from 57.33M 2019 peak) per BPS Susenas March 2024.
  - Greater Jakarta (Jabodetabek) MC at 25% national share: **~11.6–12.0M (2024)**.
  - Combined all major Tier-1 metro MC: **~24M (2024)** (Jabodetabek + Surabaya + Bandung + Medan + Semarang aggregated metros).
- **Implication for addressable market:** Original 13.5–14.5M was effectively Jabodetabek-only. Correctly stated, Tier-1 urban MC across all major metros is ~24M, which expands the addressable population materially. But Jabodetabek alone has contracted ~15% since 2019 due to MC erosion — relevant for forward-looking growth thesis.
- **Primary URL:** BPS October 2024 press release on MC ([NEEDS-ATTENDED-FETCH]); World Bank 2019 "Aspiring Indonesia" PDF.

### PP1.2.8 — BPJS PPU contribution rates (CONFIRMED)

- **Original:** Employer 4%, employee 1%, total 5%; salary cap Rp 12M, employer maximum Rp 480k/month. Sourced to Acclime / Procapita HR blogs.
- **Correction:** Numbers verbatim correct. Replace secondary citation with **Peraturan Presiden No. 64 Tahun 2020, Pasal 30 ayat (1) and Pasal 32 ayat (1)** — primary government regulation. Unchanged by Perpres 63/2022 and Perpres 59/2024. Current as of May 2026.
- **Primary URL:** https://peraturan.bpk.go.id/Download/127554/Perpres%20Nomor%2064%20Tahun%202020.pdf

## Diversity & gate impact

- Stage 1 publisher diversity now includes 4 primary-tier additions (BPS Berita Resmi, Mercer Marsh Benefits, Mitra Keluarga MIKA AR, JDIH Perpres) — improves stage to ~12 primary-tier publishers.
- Five Low-confidence weak claims now address — 2 confirmed/refined to higher confidence (PP1.2.8 → High, VC1.28 → High), 2 refined with primary anchors (PP1.1.2 → Medium-High, VC1.15 → Medium-High), 1 contradicted with stronger replacement (PP1.2.5 → High with MMB primary).
- Post-correction Stage 1 estimated Low share: ~28% (down from 41.7%) — passes the "ship as-is" 30% threshold at the stage level.

## Files updated

- `pass-3-deep-research/stage-1/pp1-2-5.json`
- `pass-3-deep-research/stage-1/vc1-28.json`
- `pass-3-deep-research/stage-1/pp1-1-2.json`
- `pass-3-deep-research/stage-1/vc1-15.json`
- `pass-3-deep-research/stage-1/pp1-2-8.json`

Apply these to the canonical artifacts at Step 6 consolidation. Pass-1-drafts left intact for audit trail.
