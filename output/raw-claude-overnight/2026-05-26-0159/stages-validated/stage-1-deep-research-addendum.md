# Stage 1 — Deep-research addendum (source upgrades)

This addendum supersedes Low-tier citations in the original Stage 1 drafts where deep-research located primary sources. Apply when curating the canonical artifact.

## Upgrade 1 — NHMS 2023 NCD prevalence (VC9, PP1.2 / PP1.3 anchor data)

- **Old citation:** CodeBlue news article (trade press, secondary)
- **New primary citation:** IPH/IKU NHMS 2023 Fact Sheet, document ID MOH/S/IKU/229.24(PT) — `https://iku.nih.gov.my/images/nhms2023/fact-sheet-nhms-2023.pdf`
- **Corroborating:** Scientific Reports / PMC12264187 (peer-reviewed companion paper)
- **Verified figures (Malaysia adults, NHMS 2023):**
  - Diabetes mellitus: 15.6% prevalence; 5.9% undiagnosed
  - Hypertension: 29.2% prevalence; 11.9% undiagnosed
  - Hypercholesterolaemia: 33.3% prevalence; 18.1% undiagnosed
  - Only 34.6% of adults had a medical check-up in the past year; only 57.2% had any NCD screening
- **Confidence upgrade:** Low → High
- **Verdict:** CONFIRMED — draft figures exactly match the primary source.

## Upgrade 2 — BPJS Kesehatan FKTP capitation tariff (VC8)

- **Old citation:** eclinic.id blog (single secondary post)
- **New primary citation:** Kemenkes official site — `https://kemkes.go.id/id/ini-dia-standar-tarif-baru-pelayanan-jkn` + BPK regulatory database `https://peraturan.bpk.go.id/Details/275518/permenkes-no-3-tahun-2023` (latter tagged `[NEEDS-ATTENDED-FETCH]` — Cloudflare-blocked)
- **Permenkes No. 3 Tahun 2023, effective 9 January 2023** — first capitation increase since 2016
- **Verified capitation per-member-per-month:**
  - Puskesmas: Rp 3,600–9,000 (USD 0.23–0.56)
  - Klinik Pratama / RS Kelas D Pratama: Rp 9,000–16,000 (USD 0.56–1.00) ← primary target for our scope
  - Praktik Mandiri Dokter: Rp 8,300–15,000 (USD 0.52–0.94)
  - Dokter Gigi: Rp 3,000–4,000 (USD 0.19–0.25)
  - Bands tier on doctor-to-patient ratio + dentist availability
- **Confidence upgrade:** Low → High
- **Verdict:** CONFIRMED — content correct, source tier weak in original.

## Upgrade 3 — SATUSEHAT EHR/EMR adoption (VC10, PP1.1-e) — REFINED with reinterpretation

- **Old citation:** Single arXiv preprint cited as "8.9% SATUSEHAT adoption among private clinics"
- **Critical correction:** The 8.9% figure is **PT MTK's vendor market share among FKTPs**, NOT the national SATUSEHAT integration rate. The arXiv source is explicit: "total market share of FKTP for PT MTK remains less than 10 percent."
- **New primary citations:**
  - Kemenkes BKPK official press release (Oct 2025): 34,463 facilities integrated to SATUSEHAT
  - Peer-reviewed PubMed 40776145 (Dec 2024): 33,901 facilities on the SATUSEHAT dashboard
  - GovInsider/Ministry tally: hospital EMR adoption ~96%, hospital SATUSEHAT-connection ~92%
  - **MOH Indonesia 2024 Digital Health Blueprint:** "80% of facilities lack digital technology adoption"
  - arXiv preprint → upgraded to peer-reviewed version: DOI 10.7454/ihpa.v11i2.1180 (Journal of Indonesian Health Policy and Administration)
- **Revised claim framing (apply to canonical):** Hospital adoption dominates the integrated-facility total. Private klinik pratama disaggregated adoption rate is not published; MOH's own 2024 Blueprint acknowledges 80% of facilities lack meaningful digital technology — consistent with the original directional argument that private GP clinics in Indonesia are largely paper/spreadsheet-driven.
- **Confidence upgrade:** Low → Medium (claim is now properly framed, not over-precise).
- **Verdict:** REFINED — direction confirmed; specific 8.9% figure was misinterpreted in original draft and should be replaced with the framing above.

## Upgrade 4 — CDM SMS reminder effect size (PP1.3-e)

- **Old citation:** Single PMC 5433794 RCT (54.6%→92.2% adherence)
- **New primary citations (tier-1 meta-analyses):**
  - Thakkar et al. 2016 — *JAMA Internal Medicine* meta-analysis, 16 RCTs, n=2,742. SMS doubles odds of chronic-disease medication adherence (OR 2.11; 95% CI 1.52–2.93). PubMed 26831740. https://pubmed.ncbi.nlm.nih.gov/26831740/
  - Gurol-Urganci et al. 2013 — Cochrane CD007458, 8 RCTs, n=6,615. SMS attendance RR 1.14 (95% CI 1.03–1.26); attendance lifts 67.8% → 78.6%.
  - BMC Endocrine Disorders 2023 T2DM-specific meta-analysis (9 RCTs, n=1,121; SMD 0.36, moderate GRADE).
  - Adikusuma 2017 PMC5489927 — Indonesian RCT in Mataram confirming significant MMAS improvement in T2DM patients.
- **Revised effect-size range:** conservative +10.8 pp (Cochrane attendance) / base +17.8 pp (JAMA OR 2.11 → 50% → 67.8%) / upside +37.6 pp (original MY multi-modal RCT). Original PMC5433794 figure sits at the upside, not contradicted.
- **Confidence upgrade:** Low → High
- **Verdict:** found-stronger-evidence; revise PP1.3-e text to present effect-size range rather than single-study point.

## Upgrade 5 — MY NDR 2023 (PP1.3, PP1.2) — UNRESOLVED

- **Status:** Primary URL (`moh.gov.my` / `crc.gov.my/ndr/`) returns HTTP 404 across all 6 path variants tested. NDR portal unreachable. Wayback blocked.
- **Data plausibility:** HIGH — figures cited (34.38% HbA1c ≤6.5%, 1,956,151 patients, 81.10% comorbid hypertension) appear consistently in 5+ independent indexed-snapshot snippets and trajectory matches NDR 2020 (43.7% control per Nature 2025, declining trend).
- **Peer-reviewed corroboration:** Nature 2025 (PMC-accessible), JOFEM 2023, PMC 2025 all confirm methodology and declining glycaemic control trend in MY primary care — none cite the specific 2023 national figures.
- **Action:** Retain `[NEEDS-ATTENDED-FETCH]` tag. Phase 2 Playwright pass should attempt: (a) `moh.gov.my` site search, (b) `crc.gov.my` mirror, (c) MOH Publications portal direct. Fallback citation: NDR 2020 (ResearchGate-accessible) for direction of claim.
- **Confidence:** unchanged Low (pending Phase 2 fetch).

## Net effect on Stage 1 source mix

Pre-deep-research: 3 High / 7 Medium / 40 Low (80% Low)
Post-deep-research (estimated): ~7–9 High / 10–12 Medium / ~28–33 Low (≈55–65% Low)

The remaining Lows are predominantly:
- Single-arXiv-preprint claims (one substitution made; others kept as marginal)
- US/global benchmarks applied without ID/MY-specific primary data (geography mismatch — needs field-interview validation, not deeper desk research)
- Trade press anchors where no primary source exists (small-clinic admin costs, WhatsApp channel use, dispensing revenue share)

## Tracer-bullet decision

Stage 1 produced 4 pain points with 10–13 citations each, 55 unique URLs total, and primary-source upgrade paths identified for 4 of 5 top weak claims. Deep-research confirmed the underlying claims are largely correct — the weakness was source tier, not factual accuracy. **Tracer fires; proceed to Stage 2.** Note the 80%-Low pre-DR figure will likely repeat per stage; we will run a single cross-stage upgrade pass in Step 5a if the corpus-wide rate remains above 70%.
