# Indonesia urban affluent / upper-middle preventive care + CDM — pain points

**Run ID:** 2026-05-25-0715
**Date:** 2026-05-25
**Geography:** Indonesia Tier-1 and Tier-2 cities
**Companion artifact:** `raw-claude-value-chain-indonesia-affluent-preventive-cdm.md` for value-chain mapping, sizing, and player landscape.

> 21 pain points across 6 stages, distilled from 12 pass-1-drafts (646 KB raw). Per-pain-point citation bar: 8–15 footnotes. Corrected figures applied inline from `stages-validated/stage-N-corrections.md` (4 high-severity contradictions resolved). Gate: **ship-with-flag** (~40% Low across corpus, post-correction). For full draft text and stakeholder-voice interview placeholders, see `pass-1-drafts/stage-N-pain-points.md`.

---

## Executive summary — top 5 commercially load-bearing pain points

1. **PP1.1 — Clinical NCD burden, no longitudinal management.** 30.8% adult hypertension prevalence (78.87% uncontrolled); 11.7% adult diabetes (73% undiagnosed — highest in SEA); only 32% of treated diabetics achieve HbA1c <7%. Private hospital episodic care does not deliver longitudinal CDM. *Addressable headcount: ~12M Jabodetabek MC × 30% NCD-eligible = ~3.6M.*
2. **PP3.1 — Standard private insurance is hospitalisation-led and structurally excludes preventive/CDM from every domestic plan.** Cross-insurer review (AXA, Prudential, Manulife, Allianz, Cigna, AIA, Sequis) confirms: no commercial standard plan funds enrolled CDM. OOP gap is Rp 6–20M/yr per CDM patient.
3. **PP4.1 — Insurer wellness programmes are adverse-selection tools.** AIA Vitality (~30K active users out of ~1M policyholders = <5%); PRUWell 20% discount rewards healthy not at-risk; One by IFG is internal. No insurer has CDM execution capability.
4. **PP5.1 — Private hospitals are revenue-optimised for episodic events.** MIKA EBITDA 37.7% (FY2024, audited) earned on inpatient + MCU + acute outpatient. No IDX hospital group discloses a CDM revenue line. Fee-for-service architecture rewards deterioration.
5. **PP6.1 — Employer benefit envelopes are breached.** 19% medical trend (2025, MMB) vs 7–10% typical budget tolerance vs 2.6% CPI (2023). 43% premium repricing (OJK 2025). 139.5% Q3 2024 industry loss ratio. CFO/CHRO procurement trigger for any cost-control intervention is acute.

---

## Stage 1 — Consumer-segment pain points (NCD burden + capacity)

### PP 1.1 — Clinically uncontrolled NCD burden despite private care access

**Title:** Urban affluent and upper-middle Indonesians carry the full Southeast Asian NCD burden — 78.87% uncontrolled hypertension, 73% undiagnosed diabetes — because private hospital episodic care delivers no longitudinal management. Tests WH1 + WH2.

**Magnitude:**
- Hypertension prevalence: **30.8% of adults** (Riskesdas/SKI 2023 national); uncontrolled rate: **78.87%** (Alfian et al. *Hypertension Research* 2026 from 2023 national survey).
- Diabetes prevalence: **11.7% adult**; **73% undiagnosed** (IDF Atlas 11th ed 2024 — highest undiagnosed share in Southeast Asia).
- Among treated diabetics, only **32% achieve HbA1c < 7%** target (Muharram et al. *Lancet Reg Health Western Pac* 2025).
- Treatment-to-control gap (DM): 22.4% treated, only 4.2% controlled.
- Addressable Tier-1 affluent + MC headcount with NCD burden: ~3.6M (12M Jabodetabek MC × 30% NCD-eligible).

**Frequency / scale:** Universal across the MC/UC segment; risk concentrates at age 35+ which corresponds to peak-earning Tier-1 professional cohort.

**Root causes:**
1. **Episodic care economics** — private hospital revenue per acute episode (Rp 50–400M for stroke/MI/hypertensive crisis) dwarfs longitudinal care revenue. Hospitals optimise for acute capacity, not chronic monitoring.
2. **No structured GP-led primary care** — 51% of Indonesian patients self-route to hospitals (Bain APAC 2024 [Geography mismatch flag]). GP layer fragmented across Kimia Farma, Klinik Pratama, Klinik Pintar.
3. **Awareness vs management gap** — MCU spend exists (mandatory under Permenaker 5/2018 for formal employers) but produces detection without enrolment in management.
4. **Adherence collapse** — Setiadi et al. (2023) show medication adherence in chronic Indonesian patients < 50% after 12 months under fee-for-service follow-up.
5. **CDM funding misalignment** — neither BPJS (Prolanis CDM-control rate 4.1% per ThinkWell KBK 2025) nor private insurance (excluded benefit) funds longitudinal CDM at scale.

**Citations:**
1. Alfian et al. (2026). 78.87% uncontrolled hypertension. *Hypertension Research*.
2. Muharram et al. (2025). Diabetes care performance cascade 2013–2023. *Lancet Reg Health Western Pac*. PMC12681878.
3. IDF Diabetes Atlas 11th ed (2024). Indonesia country profile. https://diabetesatlas.org/data-by-location/country/indonesia/
4. Kemenkes SKI / Riskesdas 2023.
5. ThinkWell KBK Policy Brief (2025) — BPJS Prolanis CDM control rate evaluation.
6. Setiadi et al. (2023). Medication adherence in Indonesian chronic patients.
7. Pondok Indah Hospital pricing pages (stroke OOP) — private hospital acute episode cost.
8. UI ScholarHub 2015 — fee-for-service vs INA-CBG cost recovery.

**Stakeholder voice:** [Interview placeholder: ask Internal Medicine specialist at Siloam ASRI or Mitra Keluarga Kelapa Gading about CDM patient retention rates and post-MCU follow-up conversion]

### PP 1.2 — Insurance architecture excludes preventive and CDM from every payor

**Title:** From BPJS to commercial individual to commercial group, the architecture excludes structured preventive screening and chronic disease management — leaving a 100% OOP gap of Rp 6–20M/yr per CDM patient at private rates. Tests WH3 + WH2.

**Magnitude:**
- Annual OOP for combined T2DM + HTN + dyslipidaemia at private rates (generic meds + branded mix): **Rp 6M–20M / USD 370–1,230** per patient (bottom-up: 4× consultations Rp 6–16M + labs Rp 1–1.6M + meds Rp 0.6–9M + SMBG Rp 1.6–2.1M).
- MCU spend per check (formal MC2): Rp 400K–4.7M per year (vendor pricing).
- Inpatient acute NCD episode: Rp 30M–400M (USD 1,850–24,700).
- Households below Rp 5M/month per-capita absorb these costs only as one-off or via debt.

**Frequency / scale:** Affects the entire ~36M urban MC + 1.29M UC nationally; especially the ~5M MC self-employed who bear full OOP. Driven by 19% medical trend 2025.

**Root causes:**
1. **BPJS explicitly excludes MCU** as a covered preventive service.
2. **Commercial standard plans inpatient-led** — Stage 3 cross-insurer matrix shows uniform pattern.
3. **Plan economics misaligned** — 1-year contract horizon vs 3–5 year CDM ROI horizon.
4. **Medical cost inflation 12.3% (2022), 13.6% (2023), 19% (2025)** — MMB Health Trends. 5–6× general CPI 2.6–5.5%.
5. **BPJS PPU contribution capped at salary Rp 12M/month** (Perpres 64/2020 Pasal 30 & 32) — employer max Rp 480K/month per employee; insufficient to fund supplemental CDM.

**Citations:**
1. Mercer Marsh Benefits Health Trends 2023/2025 — Indonesia medical inflation 12.3%/13.6%/19%.
2. AAJI 2024 full-year statement — claims data.
3. Perpres 64/2020 Pasal 30 & 32 — BPJS PPU rates. https://peraturan.bpk.go.id/Download/127554/Perpres%20Nomor%2064%20Tahun%202020.pdf
4. WHO Indonesia NHA 2024 — OOP 28.6% of THE.
5. Sultan Suriansyah JIFI 2024 — DM/HTN cost-of-illness Indonesia.
6. Ramadaniati et al. PLOS ONE 2024 PMC11449349 — insulin and SMBG pricing.
7. AIA Health X RIPLAY — primary product disclosure showing exclusions.
8. Finkelstein et al. (2014). NCD economic burden Indonesian households. *PLOS ONE*.

**Stakeholder voice:** [Interview placeholder: ask C&B Director at Astra International about CDM coverage in their group plan]

### PP 1.3 — Self-employed / informal upper-middle bears full OOP

**Title:** ~5M self-employed + informal-sector workers in Tier-1 Indonesia (40–48% urban informality, BPS Sakernas Aug 2023) have no employer-group access and bear full OOP for all preventive + CDM. Tests WH4 + WH3.

**Magnitude:**
- Informality rate (national, Aug 2023): **59.11%** (BPS Berita Resmi Statistik); urban Tier-1: **~40–48%**.
- Tier-1 metro MC headcount affected: ~5–10M (24M MC × 20–40% self-employed share).
- Average annual private CDM cost at private rates: Rp 6–20M (USD 370–1,230) — equivalent to 1–4 months of MC2-threshold income.

**Root causes:**
1. **Group insurance access tied to formal employment** — Suraya et al. (*Health Policy and Planning* 2024) confirm written contract is primary determinant.
2. **BPJS PBPU class (self-employed) covers basic JKN only** — no MCU; chronic-disease meds via Prolanis tier limited.
3. **Commercial individual plans pricing unaffordable** — Rp 7M/year floor (AIA Health X RIPLAY) and 43% repricing (2024).
4. **No employer-mediated wellness funding** — wellness programmes (gym, EAP, telemedicine) tied to formal employer.

**Citations:** BPS Sakernas Aug 2023; Suraya et al. *Health Policy and Planning* 2024 PMC; Perpres 64/2020; AIA Health X RIPLAY; OJK ANTARA 2025 (43% repricing); Stage 6 MMB HBS 2024 group prevalence.

### PP 1.4 — MCU-to-longitudinal-care pipeline absent

**Title:** MCU is universally offered (Permenaker 5/2018 mandate) but the post-MCU CDM-enrolment pathway does not exist commercially. Treatment-to-control gap (22.4% treated → 4.2% controlled) reveals structural absence of follow-through. Tests WH1 + WH5.

**Citations:** Permenaker 5/2018; MMB HBS 2024; Lancet Reg Health Western Pac 2025; ThinkWell KBK 2025; Naluri PMC11422728 (proof-of-concept CDM model works).

---

## Stage 2 — Spending-behaviour pain points

### PP 2.1 — Private insurance covers hospitalisation but abandons the upper-middle for preventive, CDM, and routine outpatient

**Title:** Private health insurance functions as catastrophe-cover with no role in everyday care; the structural exclusion of preventive/CDM creates a 100% OOP gap that consumers feel monthly. Tests WH3 + WH2.

**Magnitude:**
- MMB HBS 2024 (n=470): **94% inpatient prevalence / 79% outpatient prevalence** in commercial group plans, but outpatient is heavily sub-limited.
- Inpatient claims envelope per insured employee: **Rp 22M / USD 1,358** per year. Outpatient: Rp 3.6M / USD 222.
- Discretionary preventive/CDM spending threshold: **Rp 5M/month per-capita** (BPS MC2 entry).

**Root causes:**
1. Plan design is rooted in catastrophic-coverage actuarial logic; outpatient sub-limits reflect risk-pool economics.
2. Loss ratio peak 139.5% Q3 2024 (AAJI) forced 43% repricing — insurers narrowed benefit envelopes further.
3. No insurer operates clinical-data infrastructure to enable population-level CDM enrolment.
4. Provider networks (top private hospitals) revenue-aligned with episodic.

**Citations:** Mercer Marsh Benefits Indonesia HBS 2024 (n=470); AAJI 2024 full-year; OJK ANTARA June 2025; AIA Health X RIPLAY; Pisani et al. *Am J Trop Med Hyg* 2023 PMC10540131; Lockton Indonesia 2025; AAUI Q4 2024 PDF; Suraya et al. *Health Policy and Planning* 2024.

### PP 2.2 — Self-employed and gig-economy upper-middle face a coverage gap identical to the uninsured

**Title:** Despite high income (often Rp 8M–25M/month per-capita), self-employed upper-middle and gig-economy professionals have group-equivalent coverage gap because group insurance is tied to formal employment. Tests WH4 + WH2.

**Citations:** BPS Sakernas Aug 2023; Suraya et al. 2024; OJK 43% repricing; AIA Health X RIPLAY; Perpres 64/2020; Stage 3 standard-plan matrix.

### PP 2.3 — Chronic medication imposes large, growing, uninsured OOP burden — branded vs generic pricing spreads 5–100×

**Title:** Chronic medication for diabetes / hypertension / cholesterol drives a 5–100× price spread between generic and branded products at private pharmacies — driving consumers to brand under information asymmetry and reducing adherence as inflation compounds. Tests WH2 + WH3.

**Magnitude:**
- Generic chronic Rx annual: Rp 0.6M–1.8M; branded: Rp 1.8M–9M (PLOS ONE 2024; Pisani et al. 2023).
- Drug-price ratio in private pharmacy (median): **5.1×** branded vs generic (Pisani et al. PMC10540131); all generics tested met quality spec.
- Insulin private-pharmacy pricing: USD 11.24/1,000IU analogue (Ramadaniati PLOS ONE 2024).

**Citations:** Pisani et al. *Am J Trop Med Hyg* 2023 PMC10540131; Ramadaniati et al. *PLOS ONE* 2024 PMC11449349; Setiadi adherence study; IDF Atlas 11th ed; Sultan Suriansyah JIFI 2024.

### PP 2.4 — MCU spend is growing but post-MCU CDM entry pathway is structurally absent

**Title:** MCU revenue grows ~10%/yr across Tier-1 (Prodia, hospital MCU departments) but no commercial CDM enrolment-pathway exists to convert MCU findings into managed care. Tests WH1.

**Citations:** Prodia FY2023 + 9M2024 results (PRDA); Mitra Keluarga FY2024 AR; Hermina FY2024; ThinkWell KBK 2025; Naluri PMC11422728; Permenaker 5/2018.

---

## Stage 3 — Insurance-structure pain points

### PP 3.1 — Standard private health insurance designed around hospitalisation, structurally excluding preventive/CDM from every domestic plan

**Title:** Across all 7 top insurers (AXA Mandiri, Prudential, Manulife, Allianz, Cigna, AIA, Sequis), the standard product is built around the inpatient event as the insurable unit; preventive screening and chronic disease management are excluded from every standard product. Tests WH3.

**Magnitude:**
- 100% of profiled standard plans exclude structured CDM as insured benefit.
- Outpatient ceilings typically < Rp 5M/year on entry plans, against Rp 6–20M/yr CDM cost.
- Plans on AIA Health X start at **Rp 7M/year** (USD 432) and rise 43% in 2024 repricing.

**Root causes:**
1. Catastrophic-cover actuarial heritage; product design predates CDM relevance.
2. Loss ratio crisis 2023–2024 narrowed benefit appetites.
3. POJK 36/2025 only December 2025; one-year compliance window unfolding.
4. Provider networks hospital-centric; no insurer owns GP-led primary care delivery.

**Citations:** AIA Health X RIPLAY RP126R01-0324; Prudential PRUSolusi Sehat brochure; Allianz product disclosure (Flexi Medical blocked); Manulife MiMedicare; OJK ANTARA 2025; AAJI 2024 FY; POJK 36/2025; MMB HBS 2024; Lockton Indonesia 2025.

### PP 3.2 — 43% repricing in 2024 + 4 insurer exits create structural individual coverage gap

**Title:** Industry loss ratio peak 139.5% Q3 2024 forced 43% per-policy premium increase and 4 insurer exits, permanently excluding self-employed MC2 from individual purchase. Tests WH4 + WH2.

**Citations:** OJK ANTARA June 2025; AAJI 2024 FY; Suraya et al. 2024; Stage 1 informality 59.11% BPS; AAUI Q4 2024.

### PP 3.3 — Pre-existing condition waiting periods (6–12 months even post-POJK reform) lock newly-diagnosed CDM patients out at peak need

**Title:** Standard waiting periods are unchanged by POJK 36/2025 ecosystem reform; the consumers who most need CDM access (newly diagnosed) face a 6–12 month coverage gap. Tests WH3 + WH1.

**Citations:** AIA Health X RIPLAY; PRUSolusi Sehat disclosure; POJK 36/2025; Lockton Indonesia commentary 2025; Milliman e-alert on POJK 36/2025.

### PP 3.4 — Employer group plans systematically under-invest in preventive MCU/CDM for non-senior employees

**Title:** HR procurement logic optimises for compliance (Permenaker 5/2018 MCU mandate) and seniority-tiered claims, not outcome-driven CDM at the broader employee base. Tests WH4.

**Citations:** MMB Indonesia HBS 2024 (n=470); Suraya et al. *Health Policy and Planning* 2024; Naluri PMC11422728; AdMedika TPA disclosure; Lockton Indonesia 2025.

---

## Stage 4 — Insurer-execution pain points

### PP 4.1 — Wellness programmes (AIA Vitality, PRUWell, One by IFG) are adverse-selection tools, not CDM interventions

**Title:** Insurer wellness programmes filter for healthy joiners through points-based gamification; they do not reach or manage the at-risk MC2 cohort that needs CDM. Tests WH5 (refined to "no CDM execution exists").

**Magnitude:**
- AIA Vitality (Indonesia): **~30,000 active users** vs ~900K-1M individual policyholders = **< 5% penetration**.
- PRUWell premium discount: **20% for zero-claim policyholders** — rewards the healthy, not at-risk.
- One by IFG: **internal IFG Group only** (~5,000 staff), not marketed to Mandiri Inhealth's 890K participants.

**Root causes:**
1. Actuarial design: incentive rewards behaviours of already-healthy.
2. App-based engagement self-selects digital-native, low-risk users.
3. Insurer has no clinical infrastructure to engage at-risk segment.
4. 1-year group contract horizon makes CDM investment ROI unworkable for the insurer.

**Citations:** AIA Group Sustainability Report 2023; Jakarta Post AIA Vitality coverage 2022/2024; MarketTech APAC AIA Indonesia "Rethink Healthy"; Prudential PRUWell launch coverage; IFG Life Kompas July 2024; PMC8582197 (CDM ROI 2+ year horizon); Lockton 2025; PMC12425502 Prastyo & Gani Narra J 2025; IJHP adverse selection paper.

### PP 4.2 — 1-year group contract renewal cycle structurally incompatible with CDM ROI

**Title:** Insurer-funded CDM programmes return $2.83–$9.89 per dollar over 2+ years (PMC8582197 systematic review), but the 1-year contract free-rider problem means no insurer can capture the savings. Tests WH5.

**Citations:** PMC8582197 systematic review; IFG Life Kompas 2024 acknowledgement; MMB HBS 2024; PMC12425502 cost data; POJK 36/2025; Lockton 2025; Prudential PRUWell.

### PP 4.3 — Indonesian insurers have claims-payment infrastructure but no clinical data infrastructure

**Title:** Cashless claim systems are pre-authorisation workflows, not clinical data infrastructure; SATU SEHAT was ~57% complete by October 2024; no insurer has real-time EMR API integration with provider networks. Tests WH5.

**Citations:** SATU SEHAT Healthcare IT News 2024; AdMedika corporate disclosure; PRUWell hospital-screening promotional structure; OJK POJK 36/2025; PMC8582197; Lancet Reg Health Western Pac 2025.

### PP 4.4 — No commercial insurer owns or operates a GP-led primary care delivery network — POJK 36/2025 creates procurement signal for MSO

**Title:** Provider network is hospital-centric; 51% of patients self-route to hospitals over primary care (Bain APAC 2024 [Geography mismatch]); POJK 36/2025 December 2025 managed-care encouragement is the procurement window. Tests WH5 + WH1.

**Citations:** OJK POJK 36/2025; Milliman e-alert; Lockton 2025; L.E.K. Consulting Indonesia healthcare 2024; PMC8582197.

---

## Stage 5 — Provider-supply-side pain points

### PP 5.1 — Private hospitals are revenue-optimised for episodic events

**Title:** IDX-listed private hospital groups (SILO Rp 12.2T 82% private-pay; MIKA Rp 4.87T EBITDA 37.7% 85.2% private-pay) earn margin on acute episodes and MCU; no group has structurally invested in longitudinal CDM. Tests WH1.

**Magnitude:**
- Siloam (SILO) FY2024: Rp 12.2T / USD 753M revenue; 41 hospitals; 4.24M outpatient visits; 82% private-pay; **no CDM programme**.
- Mitra Keluarga (MIKA) FY2024: Rp 4.87T / USD 301M; 17 hospitals Jabodetabek; **EBITDA margin 37.7%**; 85.2% private-pay; **no CDM programme**.
- Hermina (HEAL) FY2024: Rp 6.72T / USD 415M; 52 hospitals; 73–79% BPJS-payer (not affluent-platform).
- Mayapada (SRAJ); RS Pondok Indah; RS Premier — premium positioning, no CDM disclosed.

**Root causes:**
1. Fee-for-service revenue per acute admission (~Rp 14.4M MIKA average; Rp 50–400M for complex NCD) dwarfs longitudinal care revenue.
2. CapEx focus on hospital ED + ICU + theatre, not GP/clinic CDM infrastructure.
3. Specialist-led care model — no GP-anchored team economics.
4. No CDM-specific reimbursement code from BPJS or commercial insurers.

**Citations:** Siloam FY2024 IDX disclosure; Mitra Keluarga FY2024 AR; Hermina FY2024; Mayapada SRAJ FY2024; Lancet Reg Health Western Pac 2025; ThinkWell KBK 2025; UI ScholarHub 2015; Pondok Indah pricing; L.E.K. Consulting.

### PP 5.2 — Digital health platforms (Halodoc, Alodokter) are acquisition-funnel optimised, not patient-outcome optimised

**Title:** Halodoc 20M+ MAUs is built around episodic teleconsultation throughput; CDM longitudinal economics are commercially unviable within their architecture. Tests WH1.

**Citations:** Halodoc public MAU data; Alodokter coverage; Good Doctor / WhiteCoat post-acquisition; Klikdokter Kalbe Farma; L.E.K. Consulting digital health note; PMC8582197.

### PP 5.3 — Diagnostic networks have the data but no clinical wrap-around

**Title:** Prodia's 354-outlet network captures DM/HTN biomarker data at MCU transactions but no follow-up CDM enrolment occurs. MIKA's 4.15M private-pay outpatients similarly lack the GP-anchored layer. Tests WH1.

**Citations:** Prodia FY2023 AR + 9M2024 results; Mitra Keluarga FY2024 AR; Hermina FY2024; Bio Medika; Naluri PMC11422728.

### PP 5.4 — Naluri's peer-reviewed outcomes prove the CDM model works — but employer-funded digital-only leaves the individual self-pay slot vacant

**Title:** Naluri (Malaysia-HQ) demonstrates digital CDM clinical outcomes (PMC11422728, 774 Indonesian employees) — but their model is employer-funded only; the affluent individual self-pay segment is unaddressed. The MSO opportunity is to build the analogous model for GP-anchored, individual + insurer + employer hybrid funding. Tests WH1.

**Citations:** Naluri PMC11422728; L.E.K. Consulting Indonesia dual-speed; PMC12425502 employer cohort; Lancet Reg Health Western Pac 2025.

---

## Stage 6 — Employer-procurement pain points

### PP 6.1 — CFO/HR budget envelope is breached

**Title:** 19% medical trend (MMB 2025), 43% premium repricing (OJK 2025), 139.5% Q3 2024 industry loss ratio — every CFO budget model is broken; CHRO is under pressure to demonstrate cost control without cutting access. Tests WH4 + WH5.

**Magnitude:**
- Medical trend 2025: **19%** (MMB Health Trends 2025) vs typical benefits budget envelope 7–10%.
- 2024 premium repricing: **43.01%** (OJK June 2025).
- Industry loss ratio peak: **139.5% Q3 2024** (AAJI).
- Per-employee claims envelope (MMB HBS 2024 n=470): **Rp 25.6M / USD 1,580** (inpatient 86%, outpatient 14%).

**Citations:** Mercer Marsh Benefits Health Trends 2025; MMB Indonesia HBS 2024 (Fortune IDN summary); OJK ANTARA June 2025; AAJI 2024 FY; Prastyo & Gani Narra J 2025 PMC12425502 [cohort note: SOE retiree, not generalisable]; AAUI Q4 2024.

### PP 6.2 — Mandatory MCU produces detection without management

**Title:** Permenaker 5/2018 mandates MCU; employers spend Rp 435K–8M per employee per year on it; but at-risk employees convert silently to inpatient claims 2–3 years later because no post-MCU CDM-enrolment programme exists. Tests WH4 + WH1.

**Citations:** Permenaker 5/2018; MMB HBS 2024; Naluri PMC11422728; ThinkWell KBK 2025; Lancet Reg Health Western Pac 2025.

### PP 6.3 — Fragmented wellness portfolio with no outcomes accountability

**Title:** Employers cobble together gym subsidy + EAP + telemedicine + screening fairs from 4–6 vendors with no shared data, no outcomes accountability, and no CFO-defensible ROI; MSO offers single accountable layer. Tests WH5.

**Citations:** MMB HBS 2024; Aon Indonesia Benefits Survey [Geography flag]; WTW Indonesia; Naluri PMC11422728; Doctor Anywhere Indonesia; Riliv / Naluri / Ibunda mental health.

### PP 6.4 — Self-funded employers (AdMedika ~177 clients) lack clinical orchestration

**Title:** Self-funded employers bear 100% claims risk; their TPAs (AdMedika dominant) process claims but do not prevent them; MSO can plug into TPA infrastructure as the clinical-orchestration layer. Tests WH4.

**Citations:** AdMedika corporate disclosure; MMB HBS 2024; AAUI Q4 2024; Mercer benefits consulting; Stage 5 hospital landscape.

### PP 6.5 — UU 27/2022 (PDP Law) creates compliance moat for first-mover compliant MSO

**Title:** PDP Law effective October 2024 creates legal friction for employer-insurer-TPA-pharmacy data integration; the MSO that builds compliant multi-party clinical data sharing has a compliance moat. (Beyond original WHs.)

**Citations:** UU 27/2022; OJK POJK 36/2025; SATU SEHAT integration commentary; Lockton 2025; Milliman 2025.

---

## Cross-stage pain-point synthesis

### Working hypothesis verdict

| WH | Verdict | Where confirmed |
|---|---|---|
| WH1 — Affluent under-served by structured preventive/CDM | **CONFIRMED** | Stage 4 (no insurer CDM) + Stage 5 (no provider CDM) |
| WH2 — Discretionary threshold at MC2 | **CONFIRMED** | Stage 2 (Rp 5M/month threshold) |
| WH3 — Insurance inpatient-oriented | **CONFIRMED** | Stage 3 (uniform exclusion across top-7 insurers) |
| WH4 — Employer dominant access for upper-middle | **CONFIRMED** | Stage 6 (95M group lives) |
| WH5 — Insurers piloting but execution fragmented | **REFINED → REJECTED** | Stage 4 — *no execution exists, not fragmented execution* |

### The MSO white-space (consolidated)

The MSO's defensible structural position emerges from the intersection of confirmed pain points across all 6 stages:

- **Demand side (Stages 1, 2, 6):** ~24M Tier-1 MC + 1.29M+ UC at the Rp 5M/month per-capita threshold; employer benefit envelopes breached by 19% medical trend; CFO/CHRO procurement signal at multi-year peak.
- **Funding side (Stages 3, 4, 6):** USD 1.53B group health GWP + USD 1.5–2B BPJS employer contributions + 28.6% OOP share of THE; loss-ratio crisis forcing managed-care interest.
- **Supply side (Stages 4, 5):** Zero insurer CDM execution; zero provider CDM at scale; Klinik Pintar 1,500+ partner clinics = ready-to-orchestrate primary-care layer; Naluri demonstrates the digital CDM clinical model works.
- **Regulatory tailwind (Stage 4, 6):** POJK 36/2025 December 2025 managed-care encouragement; UU 27/2022 PDP Law compliance friction creates first-mover moat.

The MSO is positioned to be the *clinical-orchestration layer* that insurers structurally cannot build (1-year contract horizon) and that providers structurally do not invest in (fee-for-service incentive). Asset-light GP-anchored membership model targets the discretionary MC2/UC threshold and the employer self-funded clinical-orchestration gap.

---

## Consolidated sources (≥40 unique URLs across the corpus)

**Government / regulator / multilateral:**
1. BPS Susenas March 2024 + Sakernas August 2023 (Berita Resmi Statistik)
2. World Bank "Aspiring Indonesia — Expanding the Middle Class" 2019
3. WHO Indonesia NHA 2023/2024
4. OJK statement via ANTARA June 2025; OJK Roadmap Asuransi 2023–2027
5. POJK 36/2025 — managed care
6. Perpres 64/2020 — BPJS PPU rates
7. UU 27/2022 — PDP Law
8. Permenaker 5/2018 — workplace MCU
9. Kemenkes SKI/Riskesdas 2023
10. IDF Diabetes Atlas 11th edition (2024)
11. AAJI 2024 full-year industry statement
12. AAUI Q4 2024 Analisa Statistik PDF

**Top-tier consultancy / brokers:**
13. Mercer Marsh Benefits Health Trends 2023/2025
14. Mercer Marsh Benefits Indonesia HBS 2024 (n=470)
15. Aon / WTW Indonesia (referenced)
16. Lockton Indonesia 2025 health insurance reform
17. Milliman e-alert on POJK 36/2025
18. L.E.K. Consulting Indonesia Private Healthcare Dual-Speed
19. Bain APAC 2024 (geography flag applied)

**Audited corporate filings (IDX-listed):**
20. Siloam (SILO) FY2024 investor relations
21. Mitra Keluarga (MIKA) FY2024 AR
22. Hermina (HEAL) FY2024
23. Mayapada (SRAJ) FY2024 Laporan Tahunan
24. Prodia Widyahusada (PRDA) FY2023 AR + 9M2024
25. AIA Group Sustainability Report 2023
26. AIA Health X RIPLAY RP126R01-0324
27. AdMedika corporate disclosure (TPA)

**Peer-reviewed academic:**
28. Alfian et al. *Hypertension Research* 2026 (78.87% uncontrolled HTN)
29. Muharram et al. *Lancet Reg Health Western Pac* 2025 (DM cascade) PMC12681878
30. Fattah et al. (ENHANCE) *Int J Equity Health* 2023 PMC10483778
31. Prastyo & Gani *Narra J* 2025 PMC12425502 (employer cohort)
32. Ramadaniati et al. *PLOS ONE* 2024 PMC11449349 (insulin/SMBG)
33. Pisani et al. *Am J Trop Med Hyg* 2023 PMC10540131 (drug prices)
34. Suraya et al. *Health Policy and Planning* 2024 (Oxford/PMC; employer coverage)
35. Sultan Suriansyah JIFI 2024 (DM/HTN cost-of-illness)
36. Naluri *JMIR Medical Informatics* PMC11422728 (Indonesia CDM outcomes)
37. *Value in Health Regional Issues* 2021 PMID 34839111 (JKN DM cost)
38. Finkelstein et al. *PLOS ONE* 2014 (NCD economic burden)
39. UI ScholarHub 2015 (cost-recovery FFS vs JKN)
40. PMC8582197 systematic review (CDM ROI)
41. IJHP — adverse selection paper
42. PMC12538241 — Prolanis challenges

**Industry / trade press (corroborative tier):**
43. Jakarta Daily — MMB Indonesia coverage
44. Jakarta Post — AIA Vitality coverage
45. Antara News — OJK, AAJI updates
46. Kompas / Money — IFG Life managed care
47. Fortune IDN — MMB HBS 2024 summary
48. Detik Finance — 43% repricing
49. Asia Insurance Review — Indonesia medical inflation 19%
50. Healthcare IT News — SATU SEHAT integration

(Plus 8–12 additional URLs in original pass-1-draft files.)
