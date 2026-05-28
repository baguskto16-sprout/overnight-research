## Stage 1: GP Clinic Operations

**Role in the back-office flow:** The private GP clinic is the first point of clinical contact and the primary administrative processing unit — every patient touchpoint (intake, investigation, chronic follow-up, scheduling) generates a back-office transaction that currently lands on clinical staff via manual or semi-manual workflows.

---

### Activities (Sub-step decomposition)

#### Sub-step 1a — Consultation & Clinical Documentation

| Dimension | Detail |
|---|---|
| **Owner role** | GP/doctor (primary); clinic assistant / medical officer (vitals, intake); front-desk staff (registration, benefit verification) |
| **Input format** | Patient verbal history; paper or digital registration form; JKN/BPJS eligibility query (Indonesia: PCARE system via P-Care web/app; Malaysia: MySejahtera / insurer TPA portal); prior visit notes if any |
| **Output format** | SOAP note (majority still handwritten or typed in standalone software); ICD-10 coded diagnosis entry; prescription slip; referral letter if needed; BPJS PCARE submission record (Indonesia) or TPA claim entry (Malaysia) |
| **Typical time per transaction** | Patient registration + benefit check: 5–10 min; GP consultation + note dictation/typing: 10–20 min; ICD-10 coding + PCARE/TPA submission: 5–15 min per patient; total back-office load per consult: ~20–45 min across staff |
| **Current automation level** | Low–Medium. Indonesia: Permenkes 24/2022 mandates EMR + SATUSEHAT integration by end 2023, but cumulative adoption was only ~8.9% of eligible facilities (3,533 of 39,852) by mid-2025 projection; majority of private klinik pratama still use standalone billing software or paper. Malaysia: Only ~3% of clinics have digital health records (MOH/trade.gov 2024); most private GPs use basic billing/dispensing software not integrated with national systems |
| **Error / drop-off mode** | ICD-10 mis-coding causing TPA/BPJS claim rejection; incomplete benefit verification leading to out-of-pocket disputes; SOAP note not filed before prescription printed; SATUSEHAT API errors during submission (Indonesia); dual data entry (paper + system) for hybrid clinics |

**Key sub-activities:**
1. Patient registration: ID verification, insurance/JKN eligibility check, demographic capture
2. Vital signs measurement and intake history collection (nursing/assistant role)
3. GP consultation: clinical history, examination, differential
4. SOAP note generation (free-text or structured template in EMR/billing software)
5. ICD-10 diagnosis coding (manual lookup in most clinics; some use dropdown lists)
6. Prescription generation and electronic or paper dispensing instruction
7. Referral letter drafting if specialist referral indicated
8. BPJS PCARE submission (Indonesia, mandatory for JKN-enrolled patients) or insurer/TPA claim entry (Malaysia)
9. EHR/record filing (paper folder, local server, or cloud if SATUSEHAT/EMR integrated)

---

#### Sub-step 1b — Lab Result Management

| Dimension | Detail |
|---|---|
| **Owner role** | GP (interpretation, action decision); clinic assistant / front-desk (receipt and routing); patient (notification); partnered external lab (result transmission) |
| **Input format** | Lab report: PDF printout or fax from external lab (most common); e-result via lab's portal (selective); internal POC result if clinic has rapid diagnostics |
| **Output format** | Reviewed result with GP annotation; patient notification (phone call or WhatsApp); updated clinical note with result and management plan; BPJS PROLANIS record update (Indonesia: HbA1c, lipid profile, blood glucose); follow-up booking |
| **Typical time per transaction** | Result receipt and filing: 5–10 min; GP review and annotation: 3–5 min per report; patient notification: 5–10 min per call/message; PROLANIS record update (Indonesia): 10–20 min per patient |
| **Current automation level** | Low. Most labs still deliver results by PDF/fax to clinic email or print. Clinic staff manually sort and match results to patient files. No automated threshold alerting in majority of private clinics. PROLANIS (Indonesia) requires monthly HbA1c / blood glucose uploads to PCARE but data entry is manual |
| **Error / drop-off mode** | Result misrouted to wrong patient file; GP absent when results arrive and review is delayed; critical value not escalated promptly; PROLANIS lab result not submitted on time causing KBK capitation deduction; patient unreachable for result notification |

**Key sub-activities:**
1. Receipt of lab result from external partner (Prodia, Kimia Farma Lab, Labklink — Indonesia; Gribbles, CLSH — Malaysia)
2. Manual matching of result to patient record
3. GP review and clinical interpretation
4. Flagging of abnormal / critical values
5. Patient notification (phone, WhatsApp, or SMS — WhatsApp dominant in both ID and MY)
6. Threshold matching against CDM parameters (e.g., HbA1c >7%, systolic BP >140 mmHg)
7. Trigger of follow-up appointment booking if threshold breached
8. Entry of result into BPJS PCARE PROLANIS record (Indonesia) or clinic EMR

---

#### Sub-step 1c — CDM Patient Recall & Chronic-Care Follow-up

| Dimension | Detail |
|---|---|
| **Owner role** | Clinic assistant / care coordinator (recall list generation, outreach); GP (clinical decision on escalation); employer/TPA coordinator (in corporate panel arrangements) |
| **Input format** | Visit history in clinic software or paper log; BPJS PROLANIS participant list (Indonesia); last consultation date + next-due date; last HbA1c / BP / blood glucose result |
| **Output format** | Recall communication (WhatsApp/SMS/phone call); appointment booking; escalation note if no response after N attempts; PROLANIS controlled-participant ratio report (Indonesia, KBK metric); employer/TPA CDM usage report (Malaysia corporate panels) |
| **Typical time per transaction** | Manual recall list generation: 30–90 min per week for a 500-active-CDM-patient clinic; per-patient outreach attempt: 3–7 min; response tracking per patient: 2–5 min |
| **Current automation level** | Very low. Recall lists are manually compiled from logbooks, spreadsheets, or basic clinic software filters. Outreach is conducted by staff via personal or clinic WhatsApp. No automated recall scheduling in majority of private clinics in either country. PROLANIS performance tracking done ad hoc |
| **Error / drop-off mode** | Overdue patients missed because recall list is not generated systematically; staff personal WhatsApp used causing data privacy issues; patient contact details outdated; PROLANIS controlled-participant ratio falls below 50% threshold causing KBK capitation penalty (Indonesia); employer/TPA not notified of CDM patients missing follow-up |

**PROLANIS program context (Indonesia):** BPJS Kesehatan's Program Pengelolaan Penyakit Kronis requires FKTP partners to manage enrolled DM and hypertension patients. Controlled-participant ratio is one of three KBK indicators linked to capitation payment. Private klinik pratama record higher PROLANIS performance (1.46% controlled ratio) than puskesmas (0.08%) but both remain below optimal targets.

**Malaysia NCD burden (relevant to private GP CDM volume):** NHMS 2023 found diabetes prevalence 15.6%, hypertension 29.2%, hypercholesterolaemia 33.3% — with over 2.3 million adults carrying three concurrent NCDs. Despite six times more private primary care clinics than public clinics, the majority of NCD patients still seek treatment from the public sector (MY), indicating significant untapped CDM volume in private GP settings.

**Key sub-activities:**
1. Weekly/monthly generation of overdue CDM patient list from clinic system or logbook
2. Tiered outreach: WhatsApp message → phone call → second attempt → escalation
3. Appointment booking on patient response
4. Response tracking and non-responder flagging
5. Escalation to GP for high-risk non-responders (e.g., missed 2+ consecutive HbA1c checks)
6. Coordination with employer/TPA for employees on corporate health panels (Malaysia)
7. PROLANIS monthly report compilation and PCARE upload (Indonesia)

---

#### Sub-step 1d — Appointment Scheduling & No-Show Management

| Dimension | Detail |
|---|---|
| **Owner role** | Front-desk / clinic assistant (booking, reminders, rebooking); GP (slot configuration); patients (self-service via WhatsApp or walk-in) |
| **Input format** | Patient WhatsApp / phone call booking request; walk-in queue; calendar/appointment book or basic scheduling module |
| **Output format** | Confirmed booking (WhatsApp confirmation, verbal); reminder message (1–2 days prior); no-show log; rebooked slot; slot utilization data |
| **Typical time per transaction** | Booking intake: 2–5 min per call/message; reminder dispatch: 1–2 min per patient (manual WhatsApp); no-show detection and rebooking: 5–10 min per slot; daily slot management: 30–60 min aggregate for front-desk |
| **Current automation level** | Low. Dominant booking channel is WhatsApp or phone call in both Indonesia and Malaysia. Dedicated scheduling software is used in chain clinics (Qualitas, Kimia Farma) and tech-enabled networks (Klinik Pintar). Independent private GPs typically manage appointments in a paper diary or shared WhatsApp group. No-show detection is manual — staff notice empty slots and attempt rescheduling |
| **Error / drop-off mode** | Double booking from parallel phone + walk-in channels; reminder not sent due to time pressure; no-show slot wasted with no rebooking; peak-hour queue overflow; patient arrival time misalignment; TPA/employer panel bookings tracked separately from regular bookings causing double work |

**Key sub-activities:**
1. Booking intake via WhatsApp, phone, or walk-in registration
2. Slot assignment against GP's availability
3. Automated or manual reminder dispatch (WhatsApp preferred in both countries)
4. No-show detection: empty slot monitoring
5. Rebooking offer to no-show patient (phone / WhatsApp)
6. Slot utilization tracking and periodic optimization
7. Special handling of BPJS-enrolled patients (Indonesia: PCARE appointment registration required) and panel clinic bookings (Malaysia: employer/TPA)

---

### Revenue / Cost Economics

**Indonesia (ID) — Private Klinik Pratama**

Revenue mix (typical mixed BPJS + private):
- BPJS capitation (JKN patients): IDR 9,000–16,000 (~$0.55–$0.99) per registered patient per month, per PMK No. 3/2023 (first increase since 2016); a clinic with 5,000 registered JKN patients earns IDR 45M–80M/month (~$2,800–$5,000/month) in capitation before performance deductions
- BPJS fee-for-service for non-capitation procedures
- Out-of-pocket (OOP) private consultation: IDR 200,000–548,000 (~$12–$34) per visit depending on city and clinic tier (Jakarta premium vs. secondary city budget)
- Pharmacy/drug dispensing: Significant in private-pay patients; GPs dispense medications directly

Revenue model in one line: **Monthly BPJS capitation per registered JKN head + fee-for-service private consultations + integrated drug dispensing margin.**

Cost drivers in one line: **GP/doctor salary or revenue share (dominant, ~40–50% of operating cost), drug procurement, rent (especially Tier-1 cities), clinic software/SATUSEHAT compliance costs, and administrative staff wages.**

[ASSUMED-1]: Administrative labour (front-desk, clinic assistant) accounts for 20–30% of operating cost at a typical 3-room klinik pratama — to validate: ask clinic owners what they pay clinic assistants per month and how many they employ vs. total monthly operating expense.

**Malaysia (MY) — Private GP Clinic**

Revenue mix:
- Consultation fee: Capped at RM10–RM35 (~$2.10–$7.40) under Schedule 7, Act 586 — unchanged for 30+ years; Madani Medical Scheme rate raised to RM35 in Sept 2023; regulatory revision underway (2025/2026)
- Drug dispensing: Dominant revenue driver because prescribe-and-dispense is legal; drug sales represent the majority of private GP revenue; markups range from several hundred to several thousand percent on generics
- Panel / employer health plan fees: Flat monthly fee or per-visit rate negotiated with employers/TPAs (e.g., SOCSO/PERKESO panel, corporate health panels); Qualitas and similar chain operators actively pursue corporate panel contracts
- Laboratory co-referral fees: Small but non-trivial for high-volume clinics

Revenue model in one line: **Capped consultation fee bundled with high-margin drug dispensing, supplemented by employer/TPA panel fees and lab co-referral income.**

Cost drivers in one line: **Drug procurement cost (largest input), GP/doctor salary or partnership draw, rent (Klang Valley premium), clinic management software licence, and compliance costs (pharmacy storage, cold chain).**

[ASSUMED-2]: Drug dispensing accounts for 50–70% of total revenue at a typical independent MY private GP clinic — to validate: ask GP owners to share their dispensing-to-consultation revenue ratio; academic literature (Zin et al., 2020; 2023) confirms drugs dominate but exact share varies.

---

### Market Size

| Metric | Value | Confidence | Geography | Sources |
|--------|-------|------------|-----------|---------|
| Total private clinics (klinik pratama + klinik utama) in Indonesia | ~15,311 (private-owned), of which ~14,564 klinik pratama | Medium | ID | (1), (2) |
| Private medical clinics in Malaysia | 9,830 (2022); estimated ~10,000+ by 2023–2024 | Medium | MY | (3), (4) |
| Total JKN primary care outpatient visits (FKTP, all types) | 376.58 million in Jan–Sep 2024 (9.07% YoY increase); 2023 full-year estimated ~450–500 million (cross-sector, not exclusively private) | Medium | ID | (5) |
| Indonesia healthcare providers market (total outpatient segment) | $19.6 billion (2023) — includes hospital OPD and private clinic; primary care clinic sub-segment not separately reported | Low — APAC/national aggregate; primary care subset not isolated | ID | (6) |
| Malaysia total healthcare operating expenditure | USD 10.9 billion (2023, all payers) | Medium | MY | (7) |
| Malaysia private healthcare market (private sector services) | USD 27.87 billion (2024 estimate, all private health services including hospitals) | Low — includes hospitals; outpatient/GP subset not isolated | MY | (8) |
| Malaysia private GP consultation fee range | RM10–RM35 (~$2.10–$7.40) regulated cap; Madani Scheme RM35 as of Sept 2023 | High | MY | (9), (10) |
| Indonesia BPJS capitation rate for klinik pratama | IDR 9,000–16,000/patient/month (~$0.55–$0.99) under PMK No. 3/2023 | High | ID | (11) |
| NCD burden relevant to CDM at private GP level — Malaysia | 15.6% diabetes, 29.2% hypertension, 33.3% hypercholesterolaemia prevalence (adults); 2.3M adults with 3+ NCDs | High | MY | (12) |
| Indonesia EMR/SATUSEHAT adoption rate among eligible facilities | ~8.9% (3,533 of 39,852 eligible facilities registered over 33 months to mid-2024) | Medium | ID | (13) |

**Data gap — country-level primary care outpatient visit volume for Indonesia private clinics specifically (vs. all FKTP including puskesmas):** No published disaggregated figure separating private klinik pratama visits from total JKN primary care utilization. BPJS PCARE data would be the primary source — field validation required.

**Data gap — Malaysia private GP total consultation volume per year:** MOH Health Facts 2024 PDF was inaccessible (404 at indexed URL); Statista shows clinic count but not visit volume. Estimate requires field validation.

---

### Current Players by Region

**Indonesia (Tier-1 and Tier-2 cities):**

- **Kimia Farma Klinik** — State-owned enterprise (SOE) commercial clinic arm of PT Kimia Farma Tbk; operates ~400 clinics nationally including Jakarta, Surabaya, Bandung, Medan; integrated with Kimia Farma pharmacy network of 1,300+ outlets; primary provider for corporate and JKN patients
- **Klinik Pintar** — Tech-enabled private GP network; operates 22 own clinics in Greater Jakarta as of late 2023; software platform (clinic management, SATUSEHAT integration, accreditation tools) used by 1,500+ networked third-party clinics (>5% of all clinics nationally); raised $5M Series A1 in Dec 2023; targets 100 own clinics
- **Good Doctor (GoodCare Clinic)** — Digital health platform with offline GoodCare Clinic arm; 1,000+ registered doctors; 4,000 pharmacies; operates in 100+ cities; BPJS FKTP telemedicine pilot 2023; backed by Grab/insurance ecosystem
- **Halodoc** — Dominant telemedicine platform; 20,000+ doctors; 3,300+ hospitals; 4,900 pharmacies; primarily a marketplace/TPA rather than direct clinic operator; strategic partner for clinic software and insurance cashless
- **Mitra Keluarga (Klinik arm)** — Primary hospital group (29 hospitals, Jabodetabek + Central/East Java); operates affiliated satellite clinics as feeder for hospital network; clinic arm is secondary to hospital business
- **ProSehat** — Corporate health platform; marketplace aggregating clinics + home services + vaccination; network of partner clinics rather than own clinic chain; Biznetgio cloud customer; serves corporates and insurance

**Note on "Klinik Tania":** No commercially operating GP clinic network with this name was found in Indonesian market data. This name was likely a confusion in the input brief — not included. Document the gap.

**Note on "Medico Plus":** No verifiable GP clinic chain with this name found in public sources for Indonesia. [NEEDS-ATTENDED-FETCH]: https://medicoplus.co.id (domain existence unverified)

---

**Malaysia (Klang Valley, Penang, Johor Bahru):**

- **Qualitas Medical Group** — Largest private GP chain in Malaysia; 135 owned clinics + 151 affiliate/associate clinics as of end-2024 (end-Sep 2024: 125 owned + 148 affiliates); AA3/Stable rating from RAM Ratings; integrated GP + dental + imaging; active in Klang Valley, Penang, Johor Bahru; corporate panel focus
- **KPJ Healthcare (Klinik Kesihatan / Daycare network)** — 29 hospitals nationally + 4 Ambulatory Care Centres; KPJ operates satellite primary care clinics as feeders to specialist hospitals; Klinik Waqaf An-Nur (KWAN) network — 11 clinics serving lower-income patients; strong Klang Valley + JB presence
- **PERKESO/SOCSO panel GP network** — Not a single operator but ~2,000+ independent private GPs enrolled as Employment Injury Scheme panel clinics (state lists published at sehat.perkeso.gov.my); clinics are individual or small-group practices; dominant in worker coverage for occupational injury
- **ProtectHealth panel clinics (Madani Medical Scheme)** — ~2,500 GPs enrolled in the Skim Perubatan Madani (SPM) nationwide as of 2023; ProtectHealth Corporation is the operational manager for government health programme delivery to private GPs; clinics are independent GPs not a corporate chain
- **BookDoc partner clinics** — Digital appointment platform connecting 5-country network (MY, SG, HK, TH, ID); primary care booking layer over independent clinics; not an operator of clinics but the largest digital channel for private GP bookings in Malaysia
- **DoctorOnCall / Doc2Us / Qmed Asia** — Telemedicine platforms with physical clinic referral networks; growing presence in Klang Valley; not direct clinic operators

**Note on "Pantai Premier":** Pantai Hospital group (IHH Healthcare subsidiary) operates specialist hospitals, not a standalone GP clinic network. Excluded from primary GP clinic count.

---

### Preliminary Pain Points (this stage)

1. **Dual-system data entry burden (ID/MY):** Most private GP clinics operate a standalone billing/dispensing software AND a government-mandated platform (SATUSEHAT in Indonesia, MySejahtera/EMR in Malaysia) — staff must enter the same consultation data twice, consuming 10–20 minutes per patient and introducing transcription errors. (Source 13, Source 14)

2. **ICD-10 coding errors causing claim rejections (ID/MY):** Private GPs in both countries report that ICD-10 coding inaccuracies are a leading cause of BPJS/TPA claim rejection, requiring manual correction and resubmission; this is worsened by time pressure during peak clinic hours and no automated coding assist. (Source 9, Source 13)

3. **Manual CDM recall with no systematic overdue-patient detection (ID/MY):** Recall of PROLANIS patients (Indonesia) and NCD patients (Malaysia) is based on staff memory or manual logbook review; high NCD burden (15.6% DM, 29.2% HTN in MY; similar in ID) means large numbers of patients overdue for recall — current process drops patients between visits. (Sources 12, 15)

4. **Lab result routing without actionable threshold alerts (ID/MY):** Lab results arrive as PDFs by email or fax; GP reviews them reactively when available; no automated flagging of values breaching CDM thresholds (e.g., HbA1c >8%) that would trigger same-day patient contact. PROLANIS labs are particularly high-frequency (monthly blood glucose, 6-monthly HbA1c) and the manual routing creates a bottleneck. (Source 15)

5. **WhatsApp as the primary appointment/reminder channel with no structured tracking (ID/MY):** Both countries rely on clinic staff using personal or clinic WhatsApp for appointment reminders and follow-ups; no read-receipt tracking, no automated rebooking on no-show, and patient data sits in informal messaging threads rather than the clinic system. Research in Malaysia confirms no-show reduction remains a challenge at private outpatient clinics. (Sources 16, 17)

---

### Sources for this stage

(1) BPS-Statistics Indonesia regional data on Klinik Pratama (multiple provincial BPS pages, 2023): https://jateng.bps.go.id/en/statistics-table/3/YmlzemNGUkNVblZLVVhOblREWnZXbkEzWld0eVVUMDkjMw==/jumlah-rumah-sakit-umum--rumah-sakit-khusus--puskesmas--klinik-pratama--dan-posyandu-menurut-kabupaten-kota-di-provinsi-jawa-tengah--2022.html

(2) Kemenkes fasyankes.kemkes.go.id data (2023) — cited in ehealth.co.id summary: https://ehealth.co.id/blog/post/data-kondisi-dan-ketersediaan-fasilitas-kesehatan-di-indonesia/ [NEEDS-ATTENDED-FETCH for direct Kemenkes portal confirmation: https://fasyankes.kemkes.go.id/]

(3) Statista — Number of private medical clinics Malaysia 2015–2023 (9,830 in 2022): https://www.statista.com/statistics/1464154/malaysia-number-of-private-medical-clinics/

(4) MIDF Healthcare Thematic Report (Malaysia), May 2025 — private clinic count and market data: https://www.midf.com.my/sites/corporate/files/2025-05/thematic-malaysia_healthcare-midf-050525_2.pdf [NEEDS-ATTENDED-FETCH]

(5) DJSN Monthly JKN Report September 2024 (376.58M FKTP visits Jan–Sep 2024): https://kesehatan.djsn.go.id/kesehatan/doc/laporan-bulanan/Monthly_Report_JKN_b9_2024.pdf

(6) Ken Research — Indonesia Healthcare Providers Market (outpatient $19.6B, 2023): https://www.kenresearch.com/industry-reports/indonesia-healthcare-providers-market-outlook-to-2028

(7) Statista — Malaysia healthcare operating expenditure 2023: https://www.statista.com/statistics/1463780/malaysia-healthcare-operating-expenditure/

(8) Statista — Malaysia healthcare market size 2024: https://www.statista.com/outlook/hmo/hospitals/malaysia

(9) CodeBlue — Malaysia GP consultation fee discussion (RM10–RM35 range, Madani RM35 from Sept 2023): https://codeblue.galencentre.org/2023/09/madani-medical-schemes-gp-consultation-fee-raised-by-rm5-programme-expanded-nationwide/

(10) Bernama — Health Ministry final discussion on GP consultation fee revision: https://www.bernama.com/en/news.php?id=2402227

(11) Eclinic.id — BPJS Kesehatan capitation rates under PMK No. 3/2023: https://www.eclinic.id/tarif-kapitasi-baru-bpjs-untuk-klinik/

(12) CodeBlue / NHMS 2023 — Malaysia NCD prevalence (2.3M adults with 3+ NCDs): https://codeblue.galencentre.org/2024/05/over-two-million-adults-in-malaysia-live-with-three-ncds-nhms-2023/

(13) arXiv preprint — EMR adoption dynamics and regulatory impact in Indonesian primary care (8.9% adoption, ARIMA modelling): https://arxiv.org/pdf/2512.05381

(14) Kemenkes — SATUSEHAT platform launch and integration mandate (Permenkes 24/2022): https://kemkes.go.id/eng/kemenkes-luncurkan-platform-satusehat-untuk-integrasikan-data-kesehatan-nasional

(15) P4H Network / WHO — PROLANIS implementation review in Indonesia: https://p4h.world/en/documents/chronic-disease-management-programme-prolanis-in-indonesia

(16) PMC — Patients' intention to make up-front payment at private outpatient clinics in Malaysia as a no-show reduction method (Daher et al., 2024): https://pmc.ncbi.nlm.nih.gov/articles/PMC11436967/

(17) Klinik Pintar — Series A1 funding, own clinic count (22), and third-party network (1,500+): https://technode.global/2023/12/11/indonesian-healthtech-firm-klinik-pintar-closes-5m-round-led-by-altara-ventures/

(18) RAM Ratings — Qualitas Medical Group AA3 rating (135 owned + 151 affiliate clinics, end-2024): https://www.ram.com.my/pressrelease/?prviewid=6836

(19) Bain & Company — Asia-Pacific Front Line of Healthcare 2024 (Indonesia/Malaysia consumer trust and primary care trends): https://www.bain.com/insights/asia-pacific-front-line-of-healthcare-2024/

(20) PMC — Trends in cost of medicines, consultation fees and clinic visits in Malaysia's private primary healthcare (Zin et al., 2023): https://pmc.ncbi.nlm.nih.gov/articles/PMC10284298/

(21) PMC — Drug utilization and drug pricing in Malaysia private primary healthcare (Zin et al., 2020): https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7750386/

(22) trade.gov — Malaysia Digital Health (only 3% of health clinics have digital health records, 2024): https://www.trade.gov/market-intelligence/malaysia-digital-health

(23) PERKESO panel clinic lists (Malaysia, state-level): https://sehat.perkeso.gov.my/v2/list/listklinikkl.php

(24) ProtectHealth — Madani Medical Scheme (~2,500 GP participants): https://protecthealth.com.my/skimperubatanmadani/

(25) Good Doctor Indonesia — GoodCare Clinic, BPJS telemedicine pilot 2023: https://www.gooddoctor.co.id/en/for-you/goodcareclinic/

(26) Kimia Farma — 400 clinics, 1,300+ pharmacy outlets: https://www.kimiafarma.co.id/en/annual-report

(27) BPJS Kesehatan — UHC 98.45% 2024, FKTP network growth: https://harmonyfmserang.com/bpjs-kesehatan-perkuat-akses-jkn-hingga-pelosok-raih-uhc-9845-persen-di-2024/

(28) Frontiers in Health Services — Perceived barriers to managing DM and HTN in Indonesian primary care: https://www.frontiersin.org/journals/health-services/articles/10.3389/frhs.2025.1715125/full

(29) trade.gov — Healthcare Resource Guide Indonesia (private sector data, FDI): https://www.trade.gov/healthcare-resource-guide-indonesia

---

### Assumptions to validate

[ASSUMED-1]: Administrative labour (front-desk + clinic assistant) accounts for 20–30% of operating cost at a typical 3-room klinik pratama in Indonesia
- to validate: Ask 3–5 klinik pratama owners in Jakarta/Surabaya: "How many clinic assistants do you employ, what is their monthly salary, and what is your total monthly operating expense?" Cross-check against BPJS capitation revenue per 5,000 JKN enrollees.

[ASSUMED-2]: Drug dispensing accounts for 50–70% of total revenue at a typical independent private GP clinic in Malaysia
- to validate: Ask GP owners in Klang Valley / Penang: "What percentage of your monthly revenue comes from dispensing vs. consultation fees vs. panel/TPA income?" Compare against Zin et al. academic studies which suggest drugs dominate but exact share is clinic-specific.

[ASSUMED-3]: A typical independent private klinik pratama in Jakarta/Surabaya sees 40–80 patients per day (implying ~10,000–20,000 visits/year)
- to validate: Ask clinic owners or review Klinik Pintar operational data: "What is average daily patient volume at your 22 own clinics?"

[ASSUMED-4]: The majority of private GP clinics in Malaysia do not use WhatsApp Business API or structured CRM for patient follow-up — personal WhatsApp is the dominant channel
- to validate: Survey front-desk staff at 5–10 independent GP clinics in Klang Valley: "Do you use a dedicated clinic scheduling system or personal WhatsApp for appointment reminders?"

[ASSUMED-5]: PROLANIS recall lists at Indonesian klinik pratama are generated manually (spreadsheet or paper) rather than from automated EMR exports in the majority of clinics
- to validate: Ask BPJS PCARE-enrolled klinik pratama: "How do you identify which PROLANIS patients are overdue for their monthly check?" If >70% say "manually" or "from our paper list," assumption is confirmed.
