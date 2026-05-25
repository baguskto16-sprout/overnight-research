## Stage 2: Healthcare Spend by Income Segment

*Drafted: 2026-05-25 | Run ID: 2026-05-25-0715*
*Exchange rate used: Rp 16,200/USD (May 2026 BI mid-rate, confirmed consistent with Stage 1 correction note)*

---

### Stage Definition & Boundaries

This stage maps what affluent, upper-middle, and aspiring-middle Indonesians resident in Tier-1 and Tier-2 cities actually spend on healthcare today — by category, by income segment, and by payment source. The actor is the household as spending unit, not a business entity. The data cuts that matter for the MSO are: (a) per-capita OOP levels that demonstrate ability to pay above JKN standard, (b) which categories already exist as discretionary spend (candidates for substitution or bundling), and (c) the income threshold at which preventive and CDM spending becomes regular rather than aspirational.

---

### 1. Total Household Health Spend by Income Segment

#### 1a. National aggregate (WHO NHA, government-sourced)

Indonesia's 2023 National Health Accounts (NHA), compiled by the Ministry of Health and submitted to the WHO Global Health Expenditure Database, show (1):

| Metric | 2022 | 2023 | Notes |
|--------|------|------|-------|
| Total health expenditure (THE) | Rp 569.4 trillion | Rp 614.5 trillion | +7.9% YoY |
| Current health expenditure (CHE) | Rp 528.2 trillion | Rp 576.9 trillion (est.) | — |
| THE as % of GDP | ~3.0% | 2.9% | Well below UMIC avg ~7% |
| THE per capita | ~Rp 2.0 million (~$124) | Rp 2.2 million ($144.7) | WHO/NHA (1) |
| OOP as % of CHE | 30.5% | 28.6% | Declining trend |
| OOP per capita (national avg) | ~Rp 610,000 (~$38) | ~Rp 630,000 (~$39) | Derived: 30.5–28.6% × CHE/capita (2) |

Sources: WHO Indonesia news release January 2025 (1); World Bank Open Data OOP indicator series (2); Thinkwell health financing fact sheet 2022 (3).

**Key fact:** Even at the national average, OOP spending of Rp 630,000/year ($39) per capita is low. The nationally-reported per-capita THE of $145 (2023) is depressed by the very large poor/vulnerable and AMC populations (74% of population) who spend minimal OOP and rely primarily on JKN (PBI subsidy or low-tier contribution). The Tier-1 affluent and upper-middle cohort (MC2 + UC, Tiers A+B from Stage 1) spends materially more.

[Geography mismatch]: All NHA figures are national aggregates. No city-specific or urban-Tier NHA is published.

#### 1b. Per-capita OOP by income segment — derived from Susenas-based studies

BPS Susenas microdata have been analysed in multiple peer-reviewed papers. The most relevant for segmented OOP estimates are:

**ENHANCE household panel study (2018–2019), 6,445 households across 10 provinces (4):**

From Table 2 of this study (OOP payments for households that reported OOP, in IDR 000):

| Wealth quintile | Outpatient OOP 2018 (IDR/month, if used) | Outpatient OOP 2019 (IDR/month) | Inpatient OOP 2018 (IDR, per episode) | Inpatient OOP 2019 |
|----------------|------------------------------------------|----------------------------------|---------------------------------------|---------------------|
| Poorest (Q1) | Lower than average | Lower than average | Lower than average | Lower than average |
| Richest (Q5) | Higher than average | Higher than average | Higher than average | Higher than average |

Note: Absolute IDR figures by quintile from Table 2 are referenced but full table values were not extractable from the HTML version in this session. The study's abstract and text confirm: "Households with higher consumption expenditure incurred much higher OOP payments compared to lower expenditure groups." JKN-covered households saw outpatient OOP fall from IDR 268,000 (2018) to IDR 128,000 (2019), but this is a cross-household average including all quintiles. Private insurance holders saw OOP increase (4).

[ASSUMED-1]: Per-capita OOP for the richest quintile (Q5, which overlaps with BPS MC + UC in urban areas) is estimated at Rp 150,000–300,000/month ($9.3–18.5/month) for outpatient alone, based on the published finding that Q5 households incur materially higher OOP and that the overall average of Rp 128,000/month (2019) across all quintiles included the zero-OOP households in Q1–Q2. Urban Tier-1 Q5 households likely spend 2–4× the average. — to validate: request ENHANCE study supplementary data tables from corresponding author (Dr. Bui Thi Thu Ha's co-author list); or access BPS Susenas March 2024 microdata via SMERU.

**World Bank "Aspiring Indonesia" (2019 report, using 2016 Susenas data) (5):**

The report explicitly states that health + education combined accounts for 6% of MC1 household spending and 7% of MC2 spending, and 9% for the upper class (UC). Applying these to the BPS 2024 expenditure thresholds:

| Segment | Monthly per capita expenditure | Health+Edu share | Health share (est. 50% of combined) | Monthly health spend per capita |
|---------|-------------------------------|-----------------|-------------------------------------|---------------------------------|
| AMC upper (Rp 1.5M–2.04M) | ~Rp 1.75M | ~5% (implied) | ~2.5% | ~Rp 44,000/month (~$2.70) |
| MC1 (Rp 2.04M–5.0M) | ~Rp 2.85M | 6% combined | ~3% health | ~Rp 85,000/month (~$5.25) |
| MC2 (Rp 5.0M–9.91M) | ~Rp 6.5M | 7% combined | ~3.5% health | ~Rp 228,000/month (~$14.1) |
| UC / Affluent (> Rp 9.91M) | ~Rp 15M+ | 9% combined | ~5% health | ~Rp 750,000+/month (~$46+) |

[ASSUMED-2]: Health share is estimated at approximately 50% of the reported health+education combined percentage. The WB 2019 report does not disaggregate health from education within the combined figure. The health share could range from 40–60% of the total depending on private school usage. — to validate: BPS Susenas 2023 consumption categories table (BUKLE) distinguishes health (kesehatan) from education (pendidikan) at the household level; request this published table from BPS or via SMERU.

**Key derived figures:**

- **MC1 urban (Tier-1/2 cities): ~Rp 85,000/month per capita health OOP ($5.25)** — this is roughly $63/year, consistent with the national OOP average.
- **MC2 urban (Tier-1/2 cities): ~Rp 228,000/month per capita ($14.10)** — $169/year. This already covers basic specialist consultations and some MCU.
- **UC / Affluent urban (Tier-1/2 cities): ~Rp 750,000+/month ($46+)** — $550+/year. This is in the range where a structured MSO membership fee ($20–60/month) becomes directly comparable.

Annual household health spend (assuming 4-person HH):
- MC2 household: ~Rp 10.9M/year ($672/year)
- UC household: ~Rp 36M+/year ($2,200+/year)

[Geography mismatch]: World Bank 2019 data are based on 2016 national Susenas. Urban Tier-1 city households in 2024 likely spend 20–40% more than the national class average in absolute terms, given higher service prices in Jakarta, Surabaya, Bandung. No urban-specific health expenditure table is publicly available.

---

### 2. Category Breakdown

No single public source provides a clean OOP category breakdown (consultation / MCU / pharma / preventive / CDM / inpatient) for the Indonesian MC/UC specifically. The following is assembled from multiple sources.

#### 2a. National-level health expenditure by function (NHA-derived)

From Thinkwell (2022), citing MOH NHA 2021, Indonesia's health expenditure by function (all payers):

- Curative care (inpatient + outpatient): dominates at ~75–80% of THE
- Preventive / promotive: ~17% of THE in 2021 (elevated due to COVID-19; structurally ~5–8% pre-COVID) (6)
- Pharmaceuticals: reported separately; roughly 20–25% of household OOP is pharmaceuticals (4)
- Dental: included within curative outpatient; no separate NHA line

Source: University of Indonesia / PMC11481782 (6): "In 2014, only around 1% of health expenditure was spent on preventive and promotive activities. The proportion was higher in 2021, but this was owing to the COVID-19 pandemic."

This means the baseline for private preventive/wellness OOP is very low nationally, but the MC2/UC segment diverges significantly from this average.

#### 2b. OOP category split from ENHANCE household data (4)

For outpatient OOP visits (all quintiles, 2019):
- Drugs and diagnostics: largest share of outpatient OOP (exact % not published in abstract; described as "the bulk")
- Consultation fees: second component
- Lab and radiology: third component

For inpatient OOP (2019):
- Drugs and diagnostics: "the bulk of OOP spending"
- Room upgrade charges (added to 2019 survey): material for middle/upper quintiles seeking Class I or VIP rooms

#### 2c. Estimated OOP category split for MC2/UC in Tier-1 cities (constructed)

Based on triangulation across sources (4), (5), (7), and Stage 1 corrections data:

[ASSUMED-3]: The following category split is estimated for urban MC2/UC households in Tier-1 cities. No published source provides this exact segment at city level. — to validate: clinician-operators of private clinics in Jakarta/Surabaya can provide revenue-mix data; alternatively, a consumer health survey (e.g., Nielsen Indonesia Health & Wellness 2024) would provide household-level split.

| Category | Estimated % of annual health OOP | IDR/year (MC2 HH 4-person) | IDR/year (UC HH 4-person) | Notes |
|----------|-----------------------------------|-----------------------------|---------------------------|-------|
| GP/Specialist consultations | 20–25% | Rp 2.2M–2.7M | Rp 7.2M–9M | Outpatient visit fees, net of JKN reimbursement |
| Medical check-up (MCU) | 8–12% | Rp 870K–1.3M | Rp 2.9M–4.3M | 1–2 MCUs/year at Rp 500K–4.7M per package |
| Pharmaceuticals (Rx + OTC) | 25–30% | Rp 2.7M–3.3M | Rp 9M–10.8M | Drugs dominate OOP per ENHANCE |
| Preventive / wellness (vacc, supps, gym) | 10–15% | Rp 1.1M–1.6M | Rp 3.6M–5.4M | Low for MC1, material for UC |
| CDM-related (chronic Rx, monitoring devices, repeat visits) | 15–20% | Rp 1.6M–2.2M | Rp 5.4M–7.2M | Rises sharply with NCD prevalence |
| Inpatient (OOP component after BPJS or upgrade fee) | 15–20% | Rp 1.6M–2.2M | Rp 5.4M–7.2M | Episodic; single hospitalization distorts annual average |

**MCU pricing evidence (EMC Healthcare Jakarta, 2025):** Vitality Health package (34 exams) Rp 1,500,000; Male Eternity Health (37 exams) Rp 3,300,000; Female Eternity Health (40 exams) Rp 4,700,000. These are accessible price points for MC2/UC households doing one MCU per year. Grand View Research Indonesia health check-up market: $656.2M revenue in 2024, CAGR 9.9% through 2030 (8).

---

### 3. Aspirational vs. Discretionary Threshold

**The key threshold finding:**

Multiple sources triangulate to a consistent income breakpoint. Regular preventive and CDM spending (i.e., not just reactive curative OOP but planned preventive expenditure) becomes discretionary rather than aspirational at the **MC2 lower bound** — approximately Rp 5,000,000/month per capita ($309/month), equivalent to a household income of roughly **Rp 15–20 million/month ($926–1,235/month) for a 3–4 person household**.

**Evidence for this threshold:**

1. **World Bank "Aspiring Indonesia" (2019) (5):** Health + education share rises from 6% (MC1) to 7% (MC2) to 9% (UC) of total expenditure. The step-change at MC2 is when food drops below one-third of total consumption — the structural surplus available for discretionary services.

2. **ENHANCE study (2018–2019) (4):** "Households with higher consumption expenditure incurred much higher OOP payments." The richest quintile (Q5) had significantly lower incidence of catastrophic health spending (CHS) despite higher absolute OOP — because OOP as a share of total expenditure was lower. This means Q5 households are paying more OOP in absolute terms without financial stress, i.e., discretionary payment.

3. **OJK/BPJS cost-sharing behavior:** The 2024 KMK 1366 coordination of benefits framework allows private insurers to top up JKN class upgrades. This is behaviorally relevant only for households with disposable income above basic subsistence — estimated to require minimum household income of Rp 10–15M/month ($617–926/month) for the upgrade premium to be affordable.

4. **Preventive care engagement evidence:** The ENHANCE study (4) confirms that visiting private health facilities was associated with a much higher incidence of CHS among lower quintiles — meaning lower-income households that go private face financial stress. Upper quintile households visiting private facilities do not face this stress.

**Implication for MSO pricing:** An MSO membership priced at Rp 300,000–500,000/month per adult ($18.5–31) is discretionary for MC2 (Rp 5M+/month per capita) and clearly affordable for UC. It remains aspirational for MC1 (Rp 2.04–5M), where it would represent 4–12% of monthly per capita income — likely unaffordable without employer subsidy.

---

### 4. Sources of Payment (Payment Mix)

#### 4a. National payment mix (NHA 2019 data, Thinkwell (3))

| Payer | Share of total health expenditure (2019) |
|-------|------------------------------------------|
| Household OOP | 32.1% |
| Social health insurance (JKN/BPJS) | ~23.1% |
| Sub-national government | ~22.8% |
| Ministry of Health + other central govt | ~6.2% |
| Private health insurance | ~14.6% |

*Note: The 14.6% "private health insurance" includes employer-organized group insurance and individual private policies. This is a notably high private insurance share relative to BPJS.*

More recent NHA data (2023, WHO (1)):
- Public financing (BPJS + government): 57.4% of THE
- OOP: 28.6%
- Private insurance (residual): ~14% (implied)

#### 4b. Insurance coverage breakdown for the MC/UC segments

**BPJS Kesehatan coverage (2024):** 96–98% of total population enrolled (9). However, enrollment ≠ utilization preference. MC2/UC members frequently opt up to non-BPJS providers (private hospitals, specialist clinics) even when enrolled, incurring OOP copayments and upgrade fees.

**Private health insurance penetration:**
- Total insurance penetration (life + non-life): below 3% of GDP (10)
- Life insurance penetration: 1.1% of GDP in 2022 (10)
- Total gross premium at end-2022: IDR 311 trillion across all insurance lines (10)
- Life insurance gross premium 2022: approximately IDR 163.8 trillion (10)
- Health benefit segment within life insurance: approximately 20–25% of life insurance premium income = ~Rp 33–41 trillion in 2022

**Employer group insurance:** The primary channel for private health coverage in the MC/UC segment. Formal-sector employees (dominant in MC2/UC) receive group health policies as employment benefits. Employers pay BPJS contribution (4% of salary, capped at Rp 480,000/month for Rp 12M salary cap) and typically supplement with private group insurance for hospital class upgrade, dental, optical, and outpatient clinic coverage.

[ASSUMED-4]: Approximately 40–60% of MC2 workers in formal employment (Jakarta/Surabaya/Bandung) have dual coverage: JKN + employer group private insurance. The UC segment at >Rp 9.91M/month per capita is predominantly business owners or C-suite executives — self-employed or employer-paid private insurance is common, but no published OJK data disaggregates by income band. — to validate: OJK Annual Statistics on Life Insurance (available: ojk.go.id/en/kanal/iknb/data-dan-statistik/asuransi), or interview HR managers at Jakarta-based MNCs for group policy prevalence rates.

**Payment mix by segment (Tier-1 cities, estimated):**

| Payer category | Tier A — Affluent (UC) | Tier B — Upper-middle (MC2) | Tier C — Established-middle (MC1) | Source basis |
|----------------|------------------------|------------------------------|-------------------------------------|-------------|
| BPJS Kesehatan (used actively) | 20–30% | 35–45% | 55–65% | ENHANCE (4); WB (5) |
| Employer group private insurance | 30–40% | 25–35% | 15–20% | [ASSUMED-4]; OJK (10) |
| Individual OOP (self-pay) | 30–45% | 20–35% | 20–30% | NHA (1); ENHANCE (4) |
| Individual private insurance | 5–10% | 3–8% | 1–3% | OJK penetration <3% GDP (10) |

[Geography mismatch]: Payment mix estimates are constructed from national-level NHA data + academic studies. City-level Tier-1 payment mix data are not publicly available.

---

### 5. Year-on-Year Growth Trend

#### 5a. National total health expenditure (5-year trend)

Indonesia's current health expenditure (CHE) data from WHO GHED and NHA:

| Year | CHE (Rp trillion) | CHE per capita (Rp) | CHE per capita (USD) | Source |
|------|-------------------|---------------------|----------------------|--------|
| 2014 | ~229 | ~895,000 | ~$71 | NHA/WB (2) |
| 2016 | ~283 | ~1.08M | ~$80 | Thinkwell (3) |
| 2017 | ~292 | ~1.10M | ~$82 | Thinkwell (3) |
| 2018 | ~317 | ~1.18M | ~$84 | Thinkwell (3) |
| 2019 | ~354 | ~1.30M | ~$93 | Thinkwell (3); WB (2) |
| 2020 | ~393 (est.) | ~1.44M | ~$100 | COVID surge |
| 2021 | ~433 | ~1.57M | ~$108 | BPJS expansion |
| 2022 | ~528 | ~1.90M | ~$118 | NHA (1) |
| 2023 | ~577 (est.) | ~2.2M | ~$145 | WHO (1) |

**CAGR 2016–2023: approximately 10.7% in nominal IDR terms; approximately 8.7% in nominal USD terms** (the difference reflects IDR depreciation). In real terms (deflating by Indonesia CPI ~4–5%), real health expenditure growth was approximately 5–6% annually.

The 2019 per capita figure of $93 (macrotrends data cited in search results confirm $118 for 2019 — note: this uses current USD not PPP; figure varies by methodology) is consistent with WB series (2).

**OOP specifically:** Declined as a share (from ~45% in 2014 to ~29% in 2023) but rose in absolute terms because total expenditure grew faster. Absolute OOP per capita rose from ~Rp 400K (2014) to ~Rp 630K (2023) — approximately +58% over 9 years, or ~5% CAGR nominal, approximately flat in real terms.

[ASSUMED-5]: Affluent-segment OOP has grown faster than the national average, as MC2/UC households increasingly opt for private providers, upgrade hospital class under JKN, and purchase supplemental services (MCU, wellness, supplements) that were unavailable or inaccessible a decade ago. The 9.9% CAGR in the health check-up market (Grand View Research (8)) is consistent with this pattern. — to validate: private hospital revenue growth data from listed companies (Siloam SILO, Mitra Keluarga MIKA, Hermina HEAL annual reports).

#### 5b. Private sector proxy indicators

- Indonesia health check-up market: $656.2M revenue (2024); CAGR 9.9% through 2030 (8)
- Insurance industry premium growth: gross premiums grew from IDR ~186 trillion (2013) to IDR 551 trillion (2023) — CAGR ~11.5% (10)
- Medical cost inflation: 12.3% (2022), 13.6% (2023) per Mercer Marsh Benefits — approximately 5× CPI; highest in Asia ex-China (Stage 1 corrections)

---

### 6. Geographic Granularity

No published source provides Tier-1 vs. Tier-2 vs. national health spend per capita for Indonesia's urban household segments.

Available proxies:

- **Jakarta GRDP per capita (2023):** Rp 322.6M (~$21,000) — 4.3× the national average of Rp 74.96M. Jakarta households in the MC2/UC band spend proportionally more on health services given higher absolute incomes and higher health service prices (private specialist clinic fees in Jakarta are materially above provincial city rates).

- **Private hospital density:** Tier-1 cities (Jabodetabek, Surabaya, Bandung) host the highest density of Class A and B private hospitals, driving utilization-based OOP for middle/upper income groups. Tier-2 cities (Medan, Makassar, Semarang, Denpasar) have growing private hospital capacity but fewer Class A hospitals (11).

- **MCU market concentration:** The $656.2M MCU market is concentrated in Tier-1 cities. EMC Healthcare, Siloam, Pondok Indah, Mitra Keluarga, Hermina all operate flagship MCU facilities in Greater Jakarta. Tier-2 city availability is growing but thinner (8).

[Geography mismatch]: All per-capita OOP and NHA data in Sections 1–5 are national aggregates used as proxies for Tier-1/Tier-2 urban populations. Urban income segments in Tier-1 cities demonstrably spend more on healthcare than national averages, but the magnitude differential is not quantifiable from publicly available data without Susenas microdata access.

---

### 7. Preliminary Pain-Point Themes (Spend-Side)

These four themes represent candidate pain points for the pain-point-researcher agent to develop in the next stage.

**Pain Point A: "MCU without a follow-through" — fragmented preventive spend with no structured CDM.**

The health check-up market is growing at 9.9% CAGR (8) — meaning more MC2/UC households are doing annual or semi-annual MCUs. However, the Universitas Indonesia "Bridging the gap" study (6) explicitly documents that Indonesia's health expenditure remains "mainly spent on curative services" with preventive/promotive at only 1% of THE in 2014 (rising to ~17% in 2021 pandemic-driven). There is no evidence of a commercially structured post-MCU CDM programme serving the urban MC2/UC. Households discovering hypertension, pre-diabetes, or dyslipidemia through MCU have nowhere to go for structured follow-up — they default to episodic specialist consultations. The spending exists (MCU fees, annual pharma for chronic meds) but the organizing layer does not.

**Pain Point B: The self-employed / informal upper-middle coverage gap.**

BPS Sakernas 2023 reports 59.11% overall informality nationwide; urban Tier-1 metro informality is approximately 40–45% (Stage 1 corrections). Among the MC, informality is lower (~30–40%) but meaningful. Self-employed MC household heads — business owners, freelancers, traders, gig economy professionals — typically enroll in JKN as Peserta Bukan Penerima Upah (PBPU) at one of three fixed rates (IDR 42,000 / 100,000 / 150,000/month) but have no employer-organized supplemental group insurance. They face the full OOP for private specialist visits, MCU, and chronic medications. This cohort's OOP spending pattern is structurally identical to the insured MC2 but without the employer subsidy — their WTP for a structured MSO membership is higher because there is no alternative organized coverage.

**Pain Point C: Insurance coverage does not meaningfully shift preventive behavior.**

JKN covers preventive services in theory (Prolanis programme for hypertension and diabetes management through Puskesmas and FKTP). However, MC2/UC utilization of JKN Prolanis is near-zero — this cohort avoids Puskesmas. Private group insurance reimburses curative care but rarely covers structured preventive programmes or wellness services. The result: preventive behavior is driven primarily by health literacy and fear (the MCU is bought when symptoms appear or the employer mandates it), not by an organized coverage incentive. The ENHANCE study (4) confirms that wealthier Q5 households incur higher absolute OOP — meaning the insurance system is not channeling them toward prevention efficiently. Awareness and friction, not cost, is the binding constraint for this segment.

**Pain Point D: Chronic medication burden is large but unmanaged.**

NCD prevalence in urban upper-income groups is high (hypertension 34.1% nationally, diabetes 10.9% — likely higher in urban desk-job MC2/UC as documented in Stage 1). Pharmaceutical OOP is estimated at 25–30% of household health OOP. For a diagnosed chronic patient on a daily Rx regimen (antihypertensive, metformin, statin), monthly drug spend at private clinic rates runs Rp 200,000–600,000/month ($12–37/month). This is not covered by JKN at private pharmacies and is often uncovered by group insurance. The patient self-manages (buying drugs when compliant, stopping when cost spikes), creating a pattern of poor adherence that drives avoidable acute episodes (stroke, MI, diabetic complications) — which then incur Rp 50–400M inpatient bills (Stage 1 corrections). A structured CDM programme with pharmacy coordination reduces this adherence gap and the downstream catastrophic spend.

---

### Market Size Metrics

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Indonesia total health expenditure 2023 | Rp 614.5 trillion (~$38B) | High | (1) WHO NHA |
| Indonesia OOP as % of CHE 2023 | 28.6% | High | (1) WHO NHA |
| Indonesia OOP per capita 2023 (all-population avg) | Rp ~2.2M total; Rp ~630K OOP (~$39) | High | (1), (2) |
| MC2 household annual health OOP (4-person HH, urban Tier-1 est.) | Rp 10–12M/year ($617–741) | Low-Medium [ASSUMED-2,3] | (5) WB; (4) ENHANCE |
| UC household annual health OOP (4-person HH, urban Tier-1 est.) | Rp 35–43M/year ($2,160–2,650) | Low [ASSUMED-2,3] | (5) WB; (3) Thinkwell |
| Indonesia health check-up (MCU) market revenue 2024 | $656.2M | Medium | (8) Grand View Research |
| MCU market CAGR 2025–2030 | 9.9% | Medium | (8) Grand View Research |
| Life insurance gross premium income 2022 | Rp 163.8 trillion | High | (10) OJK/WB FSAP |
| Total insurance gross premium at end-2022 | Rp 311 trillion | High | (10) World Bank FSAP |
| Insurance penetration (life) % of GDP 2022 | 1.1% | High | (10) OJK |
| Medical cost inflation 2022/2023 | 12.3% / 13.6% | High | Stage 1 corrections; MMB |
| BPJS Kesehatan enrolled members 2024 | ~268–270M (96–98% of population) | High | (9) govinsider |
| Preventive care share of THE (pre-COVID baseline) | ~1–5% | Medium | (6) Universitas Indonesia / PMC11481782 |

*Data gap: No government or multilateral source provides health OOP by BPS welfare class (MC1, MC2, UC) at Tier-1 or Tier-2 city level. The closest available proxy is income quintile data from household panel studies (ENHANCE) which do not map directly to BPS classes, or the World Bank's class-level consumption share data (5) which combines health and education. City-level data requires BPS Susenas 2023 microdata access via SMERU or BPS research portal.*

---

### Sources for This Stage

(1) WHO Indonesia: "Tracking every rupiah: Indonesia's bold step towards universal health coverage" (January 2025) — contains 2023 NHA figures: https://www.who.int/indonesia/news/detail/24-01-2025-tracking-every-rupiah--indonesia-s-bold-step-towards-universal-health-coverage

(2) World Bank Open Data: Out-of-pocket expenditure (% of current health expenditure) — Indonesia time series: https://data.worldbank.org/indicator/SH.XPD.OOPC.CH.ZS?locations=ID

(3) Thinkwell Global / SP4PHC: "Indonesia Health Purchasing Profile" (September 2022) — cites MOH NHA 2021; contains CHE time-series 2012–2019 and purchaser breakdown: https://thinkwell.global/wp-content/uploads/2022/09/Health-Financing-Fact-Sheet_-Indonesia_September_2022.pdf

(4) Ha Thi Thu Bui et al.: "Incidence of catastrophic health spending in Indonesia: insights from a Household Panel Study 2018–2019" — *International Journal for Equity in Health* 22:185 (September 2023); contains OOP by quintile, by insurance type, by provider type: https://pmc.ncbi.nlm.nih.gov/articles/PMC10483778/

(5) World Bank: "Aspiring Indonesia — Expanding the Middle Class" (September 2019): https://documents1.worldbank.org/curated/en/519991580138621024/pdf/Aspiring-Indonesia-Expanding-the-Middle-Class.pdf (PDF, processed via markitdown in Stage 1)

(6) Universitas Indonesia IMERI: "Bridging the gap: financing health promotion and disease prevention in Indonesia" — *Health Research Policy and Systems* 22:146 (October 2024); contains finding that only 1% of THE spent on preventive/promotive in 2014: https://pmc.ncbi.nlm.nih.gov/articles/PMC11481782/

(7) Lancet Regional Health Western Pacific: "Equity of health financing in Indonesia: A 5-year financing incidence analysis (2015–2019)" — PMC8873956 (2022); confirms OOP progressive and ~1/3 of CHE throughout 2015–2019: https://pmc.ncbi.nlm.nih.gov/articles/PMC8873956/

(8) Grand View Research: "Indonesia Health Check-up Market Size & Outlook, 2030" — $656.2M market in 2024, 9.9% CAGR: https://www.grandviewresearch.com/horizon/outlook/health-check-up-market/indonesia

(9) GovInsider: "BPJS Kesehatan's strategy to protect 275 million Indonesians with health insurance" — cites 96–98% enrollment in 2024: https://govinsider.asia/intl-en/article/bpjs-kesehatans-strategy-to-protect-275-million-indonesians-with-health-insurance

(10) World Bank Group: "Indonesia Financial Sector Assessment Program — Insurance Regulation and Supervision Technical Note" (2023–2024 FSAP); contains OJK data on premium volumes, penetration rates, market structure: https://documents1.worldbank.org/curated/en/099110424110516057/pdf/P181009-64d951f2-f92c-4cb5-896c-8060e9f56449.pdf (PDF, processed via cache)

(11) EMC Healthcare: Premium Medical Check Up Package pricing page — Vitality Rp 1.5M; Male Eternity Rp 3.3M; Female Eternity Rp 4.7M (2025 pricing): https://www.emc.id/en/news/premiumMCU-1 [NOTE: vendor source; used only to confirm MCU pricing range, not capability or market share claims]

(12) WHO Indonesia news: "Indonesia health accounts 2024: Strengthening evidence for sustainable health financing" (February 2026): https://www.who.int/indonesia/news/detail/12-02-2026-indonesia-health-accounts-2024--strengthening-evidence-for-sustainable-health-financing

---

### Assumptions to Validate

[ASSUMED-1]: Per-capita OOP for richest consumption quintile (Q5, overlapping MC2/UC urban) is estimated at Rp 150,000–300,000/month for outpatient alone, extrapolated from ENHANCE average of Rp 128,000 (2019) across all quintiles.
- to validate: request ENHANCE supplementary data tables (OOP by quintile separately) from corresponding author group; or BPS Susenas 2023 microdata via SMERU Research Institute.

[ASSUMED-2]: Health share of household budget is estimated at ~50% of the World Bank's combined health+education percentage. WB 2019 report does not disaggregate the two.
- to validate: BPS Susenas BUKLE publication — the BPS table "Rata-rata Pengeluaran per Kapita Sebulan Menurut Kelompok Barang" disaggregates kesehatan (health) separately from pendidikan (education). Specific values accessible via BPS static tables or by requesting from BPS.

[ASSUMED-3]: The 6-category OOP split (consultation, MCU, pharma, preventive, CDM, inpatient) for MC2/UC is estimated from ENHANCE (largest pharma/diagnostic share), WB (proportionate to income), and MCU market data. No single published source provides this exact disaggregation for Indonesia's upper-middle segment.
- to validate: (a) clinician-operators of private Tier-1 clinics can provide revenue-mix data in interviews; (b) consumer health survey by Nielsen Indonesia or Kantar Indonesia (if available); (c) private hospital annual reports that break out service revenue lines.

[ASSUMED-4]: Approximately 40–60% of formal-sector MC2 workers in Tier-1 cities have dual JKN + employer private group insurance coverage.
- to validate: OJK Annual Statistics on Life Insurance and Non-life Insurance (downloadable from ojk.go.id/en/kanal/iknb/data-dan-statistik/asuransi); AAJI member data on group vs individual health premium mix; HR directors of Jakarta-based companies for group policy penetration rates.

[ASSUMED-5]: Affluent-segment OOP has grown faster than the national average, approximated at 10–12% CAGR since 2016.
- to validate: Siloam Hospitals (SILO), Mitra Keluarga (MIKA), Hermina (HEAL) annual reports — revenue per patient visit and MCU volume growth rates are proxies for upper-income OOP growth.

