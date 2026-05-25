## Stage 2: Indonesian Third-Party Administrators (TPAs) Serving the Corporate Health-Benefits Market

### Description

Indonesian TPAs sit between group health insurers and the employer-member population: they operate the real-time cashless claims authorization pipeline, manage contracted provider networks, route and settle payments, and supply utilization reports to insurer and employer clients. Unlike in-house insurer claims operations, a TPA is a legally distinct entity contracted by the insurer or directly by a self-funded employer; unlike a broker, the TPA holds no risk and earns an administration fee rather than a commission on premium. In the Indonesian market, TPAs are the only actors who touch every discrete claim event — from point-of-service authorization through ICD-coded adjudication to payment settlement — making them the single data hub through which the CDM cost burden of a corporate workforce either becomes legible or remains invisible.

---

### Activities

1. **Real-time cashless claim authorization at provider touchpoint** — When an insured employee presents a membership card (physical or digital) at a partner hospital or clinic, the TPA system verifies eligibility, confirms benefit limits, and issues a Letter of Guarantee (LoG/Surat Jaminan Rawat) within minutes, enabling treatment without upfront payment. Authorization may include pre-authorization for inpatient admission, specialist referral, or high-cost procedures.
2. **Claims adjudication and payment settlement** — The TPA receives itemized billing from providers, cross-checks against benefit tables, applies exclusions and sub-limits, negotiates disputed items, and releases payment to providers under contracted tariff schedules. Claims are coded against ICD-10 at the provider level; TPA medical reviewers verify coding accuracy and clinical appropriateness.
3. **Provider network contracting and management** — TPAs recruit hospitals, clinics, pharmacies, optical centers, and laboratories into contracted networks, negotiate tariff schedules and payment terms, credential providers against quality standards, and manage ongoing performance monitoring and complaints.
4. **Membership data and benefit plan administration** — TPAs maintain real-time membership rosters (often integrated with employer HRIS or insurer core systems via API), track accumulated benefits and remaining limits per member, and handle enrollment, mid-year additions/deletions, and life-event changes.
5. **Utilization reporting and data delivery to insurer/employer clients** — TPAs generate standard utilization reports (typically monthly) covering claims volume, cost by care category (inpatient, outpatient, pharmacy, dental, vision), loss ratio, and top providers. Advanced TPAs offer analytics layers (e.g., Meditap's MediLytics, AdMedika's AdAnalytics) that can segment by department, age band, or — rarely and only as a paid add-on — by ICD-10 disease cohort.

---

### Revenue Model

Per-member-per-month (PMPM) administration fee charged to the insurer or self-funded employer client, supplemented by per-claim transaction fees on reimbursement claims processed outside the cashless network; a small number of larger TPAs earn incremental revenue from analytics add-on modules or disease management program (DM) co-administration fees. [ASSUMED-1: Typical Indonesia TPA PMPM fee ranges IDR 8,000–25,000 (~$0.50–$1.55) per covered life per month for standard cashless + reimbursement administration, with analytics add-ons charged separately — to validate: confirm PMPM floor/ceiling and analytics-module pricing via direct interviews with AdMedika, Meditap, or Fullerton Health BD teams]

---

### Cost Drivers

Provider network operations (provider credentialing, tariff negotiation, relationship management), claims operations labor (medical reviewers, adjudicators, customer service), IT infrastructure for real-time authorization and EDI connectivity, customer service center operations (24/7 for inpatient emergencies), and fraud detection overhead.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Indonesia Insurance TPA market size (all lines, 2024) | USD 1.66 billion | Low — single market research firm (NextMSC); no cross-validation from OJK or multilateral source | (1) |
| Indonesia Health TPA market projected size (2030) | USD 5.0–5.32 billion (CAGR ~7.5–20.6% — range reflects two different research firms with divergent methodologies) | Low — two market research firms, no primary government source; treat as directional indicator only | (1), (2) |
| AAUI health GWP (general insurance, 2024) | IDR 11.82 trillion (~$760 million at 15,500) — proxy for TPA-administered premium base in non-life health | High — AAUI official Q4 2024 statistical report | (3) |
| AAJI life-health claims paid (Q3 2024 cumulative) | IDR 20.91 trillion (~$1.35 billion), up 37.2% YoY — includes group and individual life-health; most group claims flow through TPAs | Medium — AAJI published data, cited in trade press | (4) |
| AdMedika: lives administered (2025, own statement) | 5.1 million+ members | Low — vendor self-reported; no independent cross-validation | (5) |
| AdMedika: claims documents processed annually (2024, own statement) | 6.5 million+ claim documents per year | Low — vendor self-reported | (5) |
| Meditap: participants administered | 350,000+ (2024, Kontan/Meditap own publication) | Low — vendor self-reported via trade press interview | (6) |
| Owlexa Healthcare: provider network | 4,000+ providers (2024, own statement) | Low — vendor self-reported | (7) |
| HealthMetrics Indonesia: provider network | 4,500+ in Indonesia; 15,000+ regionally with direct billing | Low — vendor self-reported, launch press release April 2025 | (8) |
| Fullerton Health Indonesia: lives administered | 1.2 million+ (own statement); formerly Medilum | Low — vendor self-reported | (9) |
| Share of group health claims routed through independent TPAs vs. insurer in-house ops | No country-specific figure available in open sources | — | Data gap — requires OJK insurance statistics microdata or broker (MMB/WTW) survey data |
| Number of TPA companies commercially operating in Indonesia | Approximately 10–15 materially scaled players identified; no official OJK registry for TPA companies as of 2024 | Low — OJK does not license or publish a separate TPA register; TPAs operate under general commercial law with no sector-specific registration requirement | (10) |

**Data gap — market-level:** No Indonesian government source (OJK, BPS, BPJS Kesehatan) publishes a consolidated figure for total lives administered by independent TPAs vs. insurer in-house claims ops, or for TPA-specific fee revenue as a sub-segment of the insurance services market. The USD 1.66 billion "TPA market" figure from NextMSC is inconsistent in scale with the underlying insurer premium base (AAUI health GWP of $760 million for general insurance only) and its CAGR of 20.6% is implausible relative to the 7.5% CAGR from Ken Research for the same segment. Both should be treated as indicative only, not as validated market sizes.

---

### Current Players by Region

**Greater Jakarta / Java (national headquarters concentration — all major TPAs HQ here):**

- **PT Administrasi Medika (AdMedika)** — Telkom Group subsidiary (via PT Multimedia Nusantara/TelkomMetra); founded 2002, joined Telkom 2010. Market leader by lives and provider network: 5.1 million+ members, 8,600+ healthcare facilities (domestic + neighboring countries), 6.5 million+ claims documents/year. Named insurer client: Equira Life (announced August 2025). Products: AdClaim Managed Care, AdClaim Coordination of Benefits (CoB), AdClaim Indemnity. Technology: AdPass EDC, AdMobile app, Telkom HIE integration. Fee model: PMPM + per-claim reimbursement [ASSUMED]. (5)
- **Owlexa Healthcare** — Business unit of Lintasarta (Indosat Group subsidiary); 10+ years in operation. 4,000+ provider partners. Offers TPA/ASO (Administrative Services Only) and Managed Care products. Named insurer client: PT Asuransi Jiwa CAR (MOU signed, per Lintasarta press release); Bank OCBC NISP partnership. Technology: ISO 9001, ISO 27001, Kominfo PSE certified. Scale in lives: not publicly disclosed. (7), (11)
- **Meditap (PT Teknologi Pamadya Analitika)** — Independent; founded 2015. 350,000+ participants, 4,500+ provider partners. Differentiated by analytics: MediLytics (claims analytics platform), MediChat (digital health gateway), Anomaly Analyzer (fraud detection). ISO 27001:2022 certified. More than 2,500 policy variants under administration. Named clients: not publicly disclosed. Fee model: PMPM [ASSUMED]. (6), (12)
- **Fullerton Health Indonesia (formerly Medilum)** — Regional; Singapore-based Fullerton Health Group (partially owned by RRJ Capital) acquired local TPA Medilum via Global Assistance & Healthcare. 1.2 million+ covered lives, 1,400+ health providers in Indonesia, 20+ utilization report types, 24/7 medical call center. Microsoft cloud infrastructure. Added 37 public hospitals to panel January 2024. Fee model: PMPM [ASSUMED]. (9), (13)
- **HealthMetrics Indonesia (formerly Across Asia Assist Indonesia / AAA)** — Malaysia-headquartered digital TPA; acquired AAA in 2022, rebranded and formally launched Indonesia operations April 16, 2025. 4,500+ providers in Indonesia; 15,000+ direct-billing providers regionally. Named insurer clients from AAA legacy: Allianz, AXA, Tokio Marine, local corporates. 100+ insurers globally, 3,000+ corporate clients globally. Three flagship products: HealthMetrics Cloud Platform (ISO27001), Global Member App, International Assistance Hub. On track for USD 1 billion cumulative medical treatments by end-2025. (8), (14)

**Jakarta-based, international parent:**

- **Global Excel Indonesia (PT Prima Sarana Jasa)** — Part of Global Excel Management Inc. (Canada); operating in Indonesia since 1997 (as Healthcare Management Services). 4,000+ providers; serves Allianz, Prudential, MSIG, Bupa, and others (per own marketing). Services: TPA, Hospital Express Discharge Program, Primary Network Access, International Assistance. Average employee tenure >8 years. Scale in lives: not publicly disclosed. (15), (16)
- **PT Medilink Digital Medika** — Joint venture with Medilink-Global Asia Pte Ltd (Singapore); exclusive licensee of Electronic Claims Clearing System (ECCS 4.0). 3,500+ providers across Asia; Indonesia operations through Jakarta HQ. Named insurer clients: not publicly disclosed. (17)

**Insurer-affiliated / captive TPA:**

- **Garda Medika (PT Asuransi Astra Buana)** — Astra Group general insurer operating a TPA function for its own corporate health insurance product; 900+ hospitals and clinics in network; Garda Mobile HR-Akses portal for employer HR administrators. Not a standalone independent TPA — functions as in-house claims ops for Asuransi Astra's group health book. (18)
- **Mandiri Inhealth (PT Asuransi Jiwa Inhealth Indonesia)** — Acquired by IFG Life (80%) and Bank Mandiri (20%) in June 2024; 35% market share in group health insurance per AAJI Q1 2024; 1.8 million+ participants; APE IDR 1.7 trillion Q1 2024. Operates as a life insurer with an integrated TPA function, not as an independent TPA. Serves group health via One by IFG digital platform. (19)

**Other materially-present players (smaller scale or niche):**

- **Persada Healthcare (TPA Plus)** — Independent; operates Insurance Integrated Information System (IIIS); serves both individual and group corporate health. Scale not publicly disclosed. (20)
- **Tirta** — Independent, smaller; operates TPA/ASO model primarily for mid-cap employers; Jakarta-based. (21)
- **Pacific Cross Indonesia** — International TPA with focus on expat and international PMI; serves multinational employer and iPMI insurer segment. Not a mass-market domestic corporate TPA. (22)
- **Allianz Indonesia** — Multinational insurer that shifted TPA partnerships in 2024 (Allianz Syariah transition announced January 2024); uses external TPAs for portions of its health book. (23)

**Gap note:** OJK does not publish a separate TPA company register; TPAs are not licensed as a distinct regulated entity class under current Indonesian insurance law (confirmed by legal commentary as of 2023). This means the full universe of active TPAs cannot be enumerated from regulatory sources. The above list covers all materially-scaled players identified through open-source research; additional smaller or regional TPAs (e.g., Syntech, Nayaka Era Husada) likely exist but lack public data on scale. [Data gap — complete OJK-equivalent TPA registry requires law firm or industry association (AAJI/AAUI) primary inquiry]

---

### Preliminary Pain Points (this stage)

- **No CDM-cohort reporting as a standard TPA deliverable:** Standard monthly TPA reports deliver claims by care type (inpatient/outpatient/pharmacy/dental) and aggregate loss ratio; ICD-10-level disease cohort reporting (e.g., "IDR X million in Q3 claims attributable to Type 2 Diabetes Mellitus E11.x across 247 members") is not a default deliverable from any Indonesian TPA identified in research. Meditap's MediLytics and AdMedika's analytics modules exist but are sold as add-ons; the default contracted scope does not include it. This means the metabolic cost burden within a corporate workforce is invisible to the employer unless they explicitly purchase diagnostic analytics. [ASSUMED-2: ICD-10 disease-cohort reporting is unavailable as a standard deliverable from the top-5 Indonesian TPAs — to validate: request sample report templates from AdMedika, Owlexa, Fullerton Health during discovery interviews]
- **PMPM contract structure creates no commercial incentive to flag costly chronic members:** TPA revenue per covered life is fixed regardless of the clinical complexity or CDM opportunity within that member population. A TPA earns the same PMPM whether it identifies 40 pre-diabetic members who could be enrolled in a disease management program or simply processes their claims without flag. Surfacing CDM cohorts requires incremental investment (analytics, medical review, outbound engagement) with no margin uplift unless the DM program contract is also held by the TPA. (10)
- **Provider network tariff focus crowds out preventive intervention logic:** TPA provider network contracts are structured around tariff rates for defined procedures, not around outcome incentives or preventive-care delivery. There is no contractual mechanism in standard Indonesian TPA–provider relationships that rewards a clinic for identifying pre-diabetic patients and routing them to structured management; the incentive is volume throughput under a negotiated fee schedule. (16)
- **Limited integration with non-insured care episodes (MCU, BPJS Prolanis):** Annual medical check-up (MCU) results — which contain fasting glucose, HbA1c, lipid panel, and blood pressure data — are typically held by the MCU provider (hospital or clinic chain) and the employer HR department; TPAs do not systematically receive or process MCU data, meaning the TPA's claims history has no connection to upstream metabolic risk stratification data. BPJS Prolanis data (for members enrolled in chronic disease management under JKN) is also not visible to the supplemental insurer's TPA. [ASSUMED-3: No Indonesian TPA currently has a standard integration with employer MCU platforms to enrich its claims analytics — to validate: confirm with Meditap/AdMedika business development whether MCU data integration is an available or planned product]
- **Regulatory vacuum creates quality and data governance uncertainty:** As of 2023, OJK does not license or regulate TPA companies as a distinct entity class; TPAs operate under general commercial law with no capital adequacy, data security, or reporting-standard mandate from the financial regulator. This creates variation in data quality, claims coding accuracy, and analytics capability across the TPA market, complicating employer attempts to benchmark or migrate claims data between TPAs. (10)
- **High employee-churn in claims adjudication creates ICD coding inconsistency:** TPA claims adjudication is labor-intensive; high turnover in junior reviewer roles leads to inconsistent ICD-10 code application, particularly for chronic multi-morbidity claims where the principal diagnosis selection is ambiguous (e.g., hypertensive heart disease vs. hypertension vs. heart failure). This reduces the reliability of any ICD-level cohort analysis, even where analytics tools exist. [ASSUMED-4: ICD coding quality at Indonesian TPAs is inconsistently audited — to validate: ask TPA medical directors whether they run periodic ICD accuracy audits and what the re-coding rate is]
- **No BPJS–supplemental TPA data bridge exists in practice:** Employers and TPAs handling supplemental (commercial) group health claims have no visibility into what their employees are simultaneously claiming under BPJS Kesehatan. An employee managing T2DM under Prolanis (BPJS pathway) may appear claim-free in the TPA's commercial claims system while still generating significant health costs. This bifurcation means the TPA's utilization data systematically underestimates the true disease burden for conditions managed primarily under BPJS. (OJK POJK 36/2025 mandates COB infrastructure by end-2026, but COB addresses payment allocation, not data sharing.) (3), (24)
- **TPA-insurer contract model concentrates bargaining power away from the employer:** In most group health arrangements, the TPA contract is between TPA and insurer; the employer is the insurer's client but is not party to the TPA data contract. Employers therefore have limited contractual rights to demand granular data extracts, ICD-level reporting, or analytics, even when they pay for health coverage. Changing TPA requires renegotiating through the insurer. [ASSUMED-5: Most Indonesian employer group health contracts give the employer no direct contractual rights over claims data from the TPA — to validate: review standard group medical insurance and TPA contract templates with an Indonesian insurance law firm]
- **Short-term repricing cycle reinforces TPA throughput orientation:** With Indonesian health insurance premiums repriced annually (OJK POJK 36/2025 caps repricing at once per year), both insurer and TPA attention cycles are calibrated to a 12-month loss ratio review. This makes multi-year CDM investment — which requires 18–36 months to show claims reduction — commercially unattractive within the current TPA contract and insurer renewal framework. (24)
- **Digital analytics investment is nascent and concentrated in one or two players:** Only Meditap (MediLytics, Anomaly Analyzer) and AdMedika (AdAnalytics module) have publicly documented analytics add-ons. Owlexa, Fullerton Health, and Global Excel Indonesia reference "reporting and analytics" in marketing materials but do not document disease-level analytical capability. The majority of TPAs outside the top 3–5 are operationally focused, not analytically oriented. [ASSUMED-6: The analytics capability gap between AdMedika/Meditap and the rest of the market is large — to validate: request product capability decks from Owlexa and Fullerton Health analytics teams]

---

### Sources for this stage

(1) Next Move Strategy Consulting. "Indonesia Insurance TPA Market to Reach $5.32 Bn by 2030." NextMSC, 2024. https://www.nextmsc.com/news/indonesia-insurance-tpa-market

(2) Ken Research. "Indonesia Health TPA Market | 2019–2030." https://www.kenresearch.com/indonesia-health-insurance-tpa-market [paywalled; public summary accessed May 2026]

(3) Asosiasi Asuransi Umum Indonesia (AAUI). "Triwulan 4 (Jan s/d Des) Tahun 2024." AAUI Statistical Report Q4 2024. https://aaui.or.id/wp-content/uploads/2025/03/analisa-Q4-24-web-ver.pdf

(4) AAJI Daily News — 2 Juli 2024 (citing AAJI Q1–Q3 2024 health claims data). https://aaji.or.id/Berita/aaji-daily-news---2-juli-2024 [Note: Q3 2024 IDR 20.91 trillion cited in Kontan trade press corroboration]

(5) PT Administrasi Medika (AdMedika). "About Us." https://www.admedika.co.id/en/about-us [vendor self-reported; Low confidence for claims volume figures]; and Telkom press release on Equira Life partnership (August 2025): https://www.telkom.co.id/sites/berita/id_ID/news/admedika-resmi-menjadi-mitra-tpa-kesehatan-untuk-pengelolaan-klaim-peserta-asuransi-equira-life-3217

(6) Kontan.co.id. "Meditap Perkenalkan Teknologi Layanan Kesehatan Sistem Terintegrasi." https://industri.kontan.co.id/news/meditap-perkenalkan-teknologi-layanan-kesehatan-sistem-terintegrasi [trade press citing Meditap figures]

(7) Owlexa Healthcare. "About Us." https://www.owlexa.com/company/about-us ; and Lintasarta product page: https://www.lintasarta.net/en/products-services/lintasarta-industry-solution/owlexa-healthcare-by-lintasarta/

(8) TNGlobal / HealthMetrics. "Malaysia's digital third-party administrator HealthMetrics launches in Indonesia." April 21, 2025. https://technode.global/2025/04/21/malaysias-digital-third-party-administrator-healthmetrics-launches-in-indonesia/ ; and HealthMetrics newsroom: https://healthmetrics.com/newsroom/healthmetrics-launches-in-indonesia-to-support-indonesia-emas-2045-and-build-a-borderless-healthcare-ecosystem

(9) Fullerton Health Indonesia. "Third Party Administration." https://www.fullertonhealth.com/id/services/third-party-administration/ ; and Fullerton Health. "Global Assistance & Healthcare Acquires Indonesian TPA Provider Medilum." https://www.fullertonhealth.com/global-assistance-healthcare-acquires-indonesian-tpa-provider-medilum/

(10) Hukumonline. "Urgensi Pengaturan Perusahaan Third Party Administrator di Industri Asuransi Kesehatan." https://www.hukumonline.com/berita/a/urgensi-pengaturan-perusahaan-third-party-administrator-di-industri-asuransi-kesehatan-lt6476c4f302d6a/ [403 at fetch; cited via search result summary; mark [NEEDS-ATTENDED-FETCH] for verbatim extraction]

(11) Lintasarta. "Penandatanganan MOU Layanan TPA Owlexa Healthcare dengan PT Asuransi Jiwa CAR." https://www.lintasarta.net/berita/penandatanganan-mou-layanan-tpa-owlexa-healthcare-dengan-pt-asuransi-jiwa-car/

(12) Meditap (PT Teknologi Pamadya Analitika). "Peran Penting Third Party Administrator (TPA) untuk Perusahaan Asuransi." https://meditap.id/article/peran-penting-third-party-administrator-tpa-untuk-perusahaan-asuransi ; and IDN Times Jabar on AI features: https://jabar.idntimes.com/news/jawa-barat/pastikan-pelayanan-kesehatan-meditap-luncurkan-fitur-berbasis-ai-00-dzkhf-6spyhr

(13) Fullerton Health Group. "Milestones." https://www.fullertonhealth.com/milestones/ [confirms Medilum acquisition]

(14) HealthMetrics. "HealthMetrics Makes Strategic Investment in Across Asia Assist." https://healthmetrics.com/newsroom/healthmetrics-makes-strategic-investment-in-across-asia-assist

(15) Global Excel Indonesia. "About Us." https://globalexcel.co.id/about-us/ [vendor self-reported; Low confidence for insurer-client claims]

(16) Global Excel Indonesia. "Struggling to Find a Reliable Third Party? Here Is Why Global Excel Indonesia Is the Best Choice." https://globalexcel.co.id/struggling-to-find-a-reliable-third-party-here-is-why-global-excel-indonesia-is-the-best-choice/

(17) PT Medilink Digital Medika. "Third Party Administration (TPA)." https://medilink.co.id/third-party-administration-tpa/

(18) Garda Medika / Asuransi Astra. "Garda Medika." https://www.asuransiastra.com/health/support/ ; and DuniaFintech summary: https://duniafintech.com/garda-medika/

(19) IDNFinancials. "IFG to acquire 70% of Mandiri Inhealth from Bank Mandiri and Kimia Farma." https://www.idnfinancials.com/news/49206/ifg-to-acquire-70-of-mandiri-inhealth-from-bank-mandiri-and-kimia-farma ; and Mandiri Inhealth About page: https://www.mandiriinhealth.co.id/en/about

(20) Persada Healthcare. "Third Party Administration PLUS." https://persadahealthcare.com/Product/Detail/TPA-PLUS

(21) Tirta. "Third Party Administration (TPA) / ASO." http://tirta.melsa.net.id/third-party-administration-tpa-aso-2/

(22) Pacific Cross Indonesia. "Third Party Administrator (TPA) | Jasa Asuransi B2B." https://www.pacificcross.co.id/services/third-party-administration-tpa-2

(23) Allianz Syariah Indonesia. "Perubahan Layanan Administrasi TPA Nasabah Allianz Syariah." January 2024. https://satuyangterpenting.wordpress.com/2024/01/28/perubahan-layanan-administrasi-tpa-nasabah-allianz-syariah/ [secondary blog citing Allianz notification; NEEDS-ATTENDED-FETCH on original Allianz source]

(24) OJK. "Peraturan OJK No. 36 Tahun 2025 Tentang Penguatan Ekosistem Asuransi Kesehatan." https://ojk.go.id/id/regulasi/Pages/POJK-36-Tahun-2025-Penguatan-Ekosistem-Asuransi-Kesehatan.aspx ; and Milliman e-Alert: https://www.milliman.com/en/insight/indonesia-health-regulations-ealert-key-updates

(25) Prastyo CE, Gani A. "Medical cost inflation and its drivers in Indonesian employer-sponsored health insurance for retiree families." Narra J. 2025 May 8;5(2):e2528. PMC12425502. https://pmc.ncbi.nlm.nih.gov/articles/PMC12425502/ [Academic; peer-reviewed; confirms ICD-10 coding practice in Indonesian employer-sponsored claims and cardiovascular/diabetes as major cost drivers]

(26) Joe Corrigan / SlideShare. "The Indonesian TPA Manifesto — A Primer on the Indonesian Health Insurance Services Market." https://slideshare.net/corriganjoe/tpa-manifesto-indonesia [trade presentation; confirms ~6 TPA companies serving insurance sector historically, insurer dissatisfaction with service levels]

(27) AAUI. "AAUI Catat Pendapatan Premi Asuransi Kesehatan Meningkat 77,2% pada 2024." Kontan, 2025. https://keuangan.kontan.co.id/news/aaui-catat-pendapatan-premi-asuransi-kesehatan-meningkat-772-pada-2024

(28) OJK Roadmap Perasuransian Indonesia 2023–2027. Direktorat Pengembangan IKNB dan Inovasi Keuangan Digital, OJK. https://ojk.go.id/id/regulasi/otoritas-jasa-keuangan/rancangan-regulasi/Documents/Draft%20Roadmap%20Pengembangan%20Perasuransian%20Indonesia.pdf (PDF, processed via markitdown)

---

### Assumptions to validate

[ASSUMED-1]: Typical Indonesia TPA PMPM fee ranges IDR 8,000–25,000 (~$0.50–$1.55) per covered life per month for standard cashless + reimbursement administration, with analytics add-ons charged separately
- to validate: Request fee schedule or range confirmation from AdMedika, Meditap, Fullerton Health BD or Pricing teams in field interviews; cross-reference with broker (MMB/Aon) Indonesia benefits team who see TPA fee invoices from employer side

[ASSUMED-2]: ICD-10 disease-cohort reporting (e.g., diabetic employee population claims) is unavailable as a standard deliverable from the top-5 Indonesian TPAs
- to validate: Request sample monthly utilization report templates from AdMedika, Owlexa, and Fullerton Health; confirm whether ICD-level segmentation is included in base contract or requires explicit paid add-on scope

[ASSUMED-3]: No Indonesian TPA currently has a standard integration with employer MCU platforms to enrich claims analytics with metabolic risk data
- to validate: Ask Meditap and AdMedika product/BD teams whether MCU data integration is an existing product, a roadmap item, or not currently planned; ask MMB/WTW consultants whether any employer client has achieved claims-plus-MCU data integration in Indonesia

[ASSUMED-4]: ICD coding quality at Indonesian TPAs is inconsistently audited, leading to unreliable disease-cohort data even where analytics modules exist
- to validate: Ask TPA medical directors whether periodic ICD accuracy audits are conducted, what the re-coding rate is, and how coding disputes with providers are handled

[ASSUMED-5]: Most Indonesian employer group health contracts give the employer no direct contractual rights over ICD-level claims data from the TPA (data rights flow insurer-to-TPA, not employer-to-TPA)
- to validate: Review standard group medical insurance contract templates (GMI) and TPA data-sharing annex with an Indonesian insurance law firm (e.g., AKSET, HHP); confirm employer data access rights in the standard three-party insurer-TPA-employer relationship

[ASSUMED-6]: The analytics capability gap between AdMedika/Meditap and the remaining market is large; Owlexa, Fullerton Health, and Global Excel Indonesia cannot currently produce ICD-level disease cohort reports
- to validate: Request product capability decks and live demo from Owlexa and Fullerton Health analytics teams; specifically ask whether ICD-10 disease cohort segmentation is in the product today or on the roadmap

[NEEDS-ATTENDED-FETCH]: https://www.hukumonline.com/berita/a/urgensi-pengaturan-perusahaan-third-party-administrator-di-industri-asuransi-kesehatan-lt6476c4f302d6a/ — blocked by 403; verbatim regulatory analysis on TPA oversight gap needed

[NEEDS-ATTENDED-FETCH]: https://swa.co.id/swa/trends/technology/alih-daya-pengelolaan-administrasi-klaim-asuransi — blocked by 403; Indonesian language article on TPA outsourcing market analysis needed
