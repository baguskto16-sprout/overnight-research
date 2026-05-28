# Stage 1 Pain Points — GP Clinic Operations
## Indonesia (Tier-1/2 cities) and Malaysia (Klang Valley, Penang, Johor Bahru) — Private Commercial Primary Care

Run ID: 2026-05-26-0159
Sub-steps in scope: 1a (consultation & clinical documentation), 1b (lab result management), 1c (CDM patient recall & chronic-care follow-up), 1d (appointment scheduling & no-show management)
WH tested: WH1, WH2, WH5

---

## Stage 1: GP Clinic Operations

### Pain point 1.1

**Title:** Manual clinical documentation consumes 6–10 min per consult, capping GP throughput and accounting for 35–50% of active consultation time in EHR-equipped clinics — and the problem is structurally worse in Indonesia and Malaysia than global benchmarks because EHR penetration remains below 10% at private clinics in Indonesia and fragmented across Malaysia.

**Description:** Private GP clinic doctors in Indonesia and Malaysia spend a substantial share of each consultation on clinical documentation — history entry, SOAP note generation, ICD-10 code selection, prescription drafting, and EHR form completion — tasks that are largely low-judgment and rules-based but currently performed manually. In Indonesian private clinics, most documentation is still paper-based or uses lightweight billing-only systems; where EHRs exist, doctors manually transcribe consultation notes against structured ePuskesmas or equivalent fields. In Malaysian private clinics, where adoption is higher but fragmented, clinicians toggle between systems that do not communicate, re-entering data for clinical notes, BPJS/panel reporting, audit, and billing. The net effect is a throughput cap: a GP clinic running 40–60 consultations per day has 4–10 hours of documentable work that generates no direct clinical value.

**Who bears it:** Private GP clinic physicians and their administrative support staff (nurses/medical assistants who re-enter or verify data)

**Estimated cost:**
- Direct time cost: Documentation consumes approximately 6–10 min per consultation; at 50 consultations/day and a GP fully loaded cost of $15–20/hr (MY) or $10–14/hr (ID), documentation labor cost per clinic/day is $75–$167 (MY) or $50–$117 (ID) (1)(2)(13)
- Documentation accounts for approximately 35% of active consultation time globally; for primary care settings specifically, ambulatory physicians spend close to 2 hrs on EHR/admin for every 1 hr with a patient (3)(4)
- Throughput cap: If documentation time is reduced by 50% (ambient scribe benchmark), a 50-consult/day clinic could absorb 8–12 additional consultations at RM 35–80/consult ($8–$18), adding $64–$216/day in recoverable revenue per clinic — [ASSUMED-1]: to validate against actual utilisation rates at private GP clinics in MY/ID
- In Indonesian clinics not yet on EMR (>90% of private FKTPs), documentation overhead includes handwritten notes plus separate BPJS PCare eclaim entry — dual-entry rework estimated at 3–5 additional minutes per BPJS patient [ASSUMED-2]: to validate: what is the average additional time for PCare eclaim entry vs. integrated EMR submission at Indonesian private clinics?

**Willingness to pay:** Not yet sourced. [Interview placeholder: ask clinic operators in MY/ID whether they would pay $50–150/month per doctor for ambient SOAP generation, and what time-saving threshold triggers adoption]

**Frequency:**
- Globally, physicians spend >50% of their workday in the EHR; primary care ambulatory physicians experience close to 2 hrs EHR/admin per 1 hr of direct patient care (4)(5)
- In Indonesia, as of end-2024 only ~8.9% of eligible FKTPs (private primary care facilities) had registered and activated an EMR; the ARIMA projection is <10% total market penetration by June 2025 — meaning >90% of private clinics have no structured EHR documentation system at all, so documentation burden is carried entirely on paper or in non-integrated billing tools (6)
- In Malaysian primary care, digitalisation is described by frontline practitioners as "uneven, fragmented, and largely superficial": doctors routinely toggle between multiple systems, nurses re-enter the same information multiple times, and digital tools add administrative layers rather than removing them — directly traceable to documentation burden (7)
- A proof-of-concept study on automating Indonesian primary care documentation (Puskesmas setting) found that LLM transcription of 300+ second consultations takes under 30 seconds while maintaining clinical accuracy, confirming the technical bottleneck is in manual transcription, not clinical judgment (8)
- 26% of primary care physicians globally name documentation as their primary stressor; documentation burden is the leading EHR-linked contributor to physician burnout (5)(9)

**Evidenced or assumed:**
(1) GP salary Malaysia: SalaryExpert/ERI — https://www.salaryexpert.com/salary/job/general-practitioner/malaysia; PayScale MY — https://www.payscale.com/research/MY/Job=General_Practitioner/Salary
(2) GP salary Indonesia: Jobstreet ID — https://id.jobstreet.com/career-advice/role/general-practitioner/salary; WorldSalaries ID — https://worldsalaries.com/average-general-medical-practitioner-salary-in-jakarta/indonesia/
(3) Documentation time global benchmark (6–10 min/consult, ambient scribe reduction from 10.3 to 8.2 min): medRxiv longitudinal ambient scribe study — https://www.medrxiv.org/content/10.64898/2026.01.12.26343538.full.pdf
(4) 2 hrs EHR per 1 hr patient: AMA EHR burden reporting — https://www.ama-assn.org/practice-management/physician-health/doctors-work-fewer-hours-ehr-still-follows-them-home; PMC burnout/EHR — https://pmc.ncbi.nlm.nih.gov/articles/PMC10134123/
(5) Documentation as top stressor (26%); burnout: Tebra/The Intake — https://www.tebra.com/theintake/ehr-emr/how-documentation-became-top-cause-of-physician-burnout
(6) Indonesia EMR adoption 8.9% of eligible FKTPs; deadline-chasing dynamic; <10% by June 2025: arXiv 2512.05381 — https://arxiv.org/pdf/2512.05381
(7) Malaysian primary care digitalisation: fragmented, layered burden, dual-entry: Healthcare IT News Asia, Jan 2026 — https://www.healthcareitnews.com/news/asia/breakthrough-digital-transformation-clinic-level-malaysia
(8) LLM-based Indonesian consultation transcription PoC (Puskesmas): arXiv 2409.17054 — https://arxiv.org/abs/2409.17054
(9) EHR documentation burnout: PMC — https://pmc.ncbi.nlm.nih.gov/articles/PMC10134123/; AHRQ documentation burden — https://pmc.ncbi.nlm.nih.gov/articles/PMC11534919/
(10) Ambient AI scribe RCT (DAX Copilot / Nabla): PubMed 40672471 — https://pubmed.ncbi.nlm.nih.gov/40672471/; PMC 12492056 — https://pmc.ncbi.nlm.nih.gov/articles/PMC12492056/
(11) JAMA Network Open ambient scribe study (Yale/Sutter/CHRISTUS, 263 physicians): PMC — https://pmc.ncbi.nlm.nih.gov/articles/PMC12492056/
(12) ICD-10 coding accuracy: 23 ambulatory clinicians, >25% codes omitted or inappropriate; half entered codes were appropriate — PMC 5977598 — https://pmc.ncbi.nlm.nih.gov/articles/PMC5977598/
(13) Malaysia private clinic consult fee RM 35–80 context: CodeBlue / MPCAM — https://codeblue.galencentre.org/2025/03/doctors-group-demands-gp-fee-correction-to-rm50-to-rm150/; https://codeblue.galencentre.org/2025/06/mpcam-proposes-rm50-to-rm80-gp-consultation-fee/

**AI capability candidate:**
- **Ambient voice + LLM SOAP generation**: the dominant capability match for sub-step 1a. Converts free-form verbal consultation into structured SOAP note with ICD-10 suggestion and prescription draft. Global RCT evidence (DAX Copilot/Nabla, 238 physicians, 14 specialties) confirms documentation time reduction and burnout benefit (10). Indonesian LLM PoC confirms feasibility in Bahasa Indonesia on Puskesmas workflows (8).
- Conservative/base/upside uplift on documentation time: conservative −15% (matches Nabla RCT result of −9.5% for time-in-note, adjusted for higher baseline where no system exists), base −40% (ambient scribe deployments at Kaiser/TPMG), upside −60% (Kaiser 7,000-physician deployment collective hours freed).
- ICD-10 coding: LLM auto-coding can reduce the ~25% omission/error rate from manual physician coding (12); classifier approach using consultation transcript → ICD-10 mapping.

**Data format (WH2):** Input is verbal (doctor-patient conversation in Bahasa Indonesia or Bahasa Malaysia/English); intermediate is free text if typed; output target is structured EHR fields (ICD-10 code, SOAP sections, prescription). The verbal-to-structured conversion is the exact bottleneck that ambient voice + LLM addresses. Where paper notes exist (>90% of Indonesian private clinics), a prior OCR/digitisation step is needed before LLM structuring is possible. **WH2 validated for this pain point: feasibility is gated by whether the input exists as audio/text vs. paper.**

**Geography tag:** ID primary (>90% of private clinics pre-EMR); MY primary (fragmented EHR, dual-entry burden); global benchmarks used for time/cost quantification.

---

**Root Causes**

- **RC1: EHR systems in Indonesian and Malaysian private clinics were designed for billing and compliance reporting, not clinical workflow support — creating additive documentation burden rather than replacing it.** The dominant design philosophy for clinic management software in SEA primary care has been to digitise transactions (registration, billing, drug dispensing, BPJS claim submission) rather than to reduce the cognitive load of clinical work. As documented by frontline Malaysian practitioners, systems "function as additional tasks layered onto clinical work, rather than invisible support that reduces effort" — doctors toggle between multiple non-communicating systems, nurses re-enter data for reporting and audit, and every additional data field competes with listening to the patient. This is a structural design failure, not a training failure: systems are built around software logic (form completion, data capture, compliance check) rather than clinical logic (supporting the consultation in real time). [MY — Healthcare IT News Asia, Jan 2026 (7)]

- **RC2: SATUSEHAT mandate in Indonesia and fragmented panel/insurer reporting in Malaysia create mandatory dual-entry workflows that amplify documentation time without clinical return.** In Indonesia, Minister of Health Regulation No. 24/2022 mandates EMR adoption and SATUSEHAT FHIR integration, with enforcement escalation from written warnings through accreditation revocation for facilities transmitting <50% of visit data by July 2024. Private clinics that adopt EMR must both run their own clinical workflow AND transmit structured FHIR data to SATUSEHAT — creating a compliance layer on top of a documentation layer. In Malaysia, panel clinics must satisfy multiple TPA/insurer reporting formats alongside MOH requirements; clinics describe "doctors toggling between multiple systems that do not communicate." The structural cause of persistence: compliance reporting is a mandatory prerequisite for insurance revenue and accreditation, so clinics cannot bypass it, and no integration layer automatically resolves the format mismatch between clinical systems and regulatory outputs. [ID — arXiv 2512.05381 (6); MY — Healthcare IT News Asia (7); MY — EMR evolution PMC — https://pmc.ncbi.nlm.nih.gov/articles/PMC12227897/]

- **RC3: ICD-10 code selection is mandatory for billing and reporting but requires medical judgment that most EHR query interfaces do not adequately support, forcing physicians into a slow manual search that degrades coding accuracy and consultation pace.** The near-four-fold expansion of diagnoses in ICD-10 presents a formidable challenge; the EHR query interfaces that exist tend to use proprietary interface terminology with no consistent cross-system search design. A simulation study of 23 ambulatory clinicians found that just over half of entered codes were appropriate and about a quarter were omitted; Crohn's disease and diabetes scenarios had the highest rates of incorrect coding — precisely the chronic disease conditions most prevalent in private SEA clinics. Under time pressure, clinicians converge on "close enough" coding rather than specific coding. This is not a training deficit; it is a consequence of a large, complex classification system that was not designed for rapid bedside use, operated under cognitive load with no real-time decision support. [Global — PMC 5977598 (12)]

- **RC4: Private GP clinics in Indonesia and Malaysia operate without dedicated medical coders or documentation specialists, forcing physicians to absorb the entire documentation function — a staffing model that is economically rational at current consultation-fee levels but creates a structural ceiling on throughput.** In the US and higher-income markets, hospitals and larger practices separate clinical coding from physician documentation, using certified medical coders. In SEA private primary care, where consultation fees are regulated at RM 10–35 in Malaysia (with proposed increases to RM 50–80) and equivalent low price points in Indonesia, the economics do not support a separate documentation role per physician. The result is that the physician is simultaneously clinician, note-taker, coder, and prescription writer. This staffing model is unlikely to change through hiring alone — it requires either a fee increase large enough to fund additional headcount (politically constrained in MY) or a technology solution that eliminates the documentation task entirely. [MY — CodeBlue fee data (13); MY — MPCAM proposal (13); global staffing ratio — AMA STEPS Forward]

- **RC5: Multilingual and code-switching consultation dynamics in Indonesian and Malaysian primary care create an input format that is structurally harder to automate than single-language consultations, slowing AI adoption and increasing the validation cost for ambient transcription tools.** Indonesian consultations blend Bahasa Indonesia with regional dialects (Javanese, Sundanese, Betawi) and medical terminology. Malaysian GP consultations routinely switch between Bahasa Malaysia, English, Mandarin, Tamil, and Hokkien within a single encounter. Ambient voice systems trained predominantly on English-language medical corpora require fine-tuning and clinical validation for these language environments. The Indonesian LLM PoC (arXiv 2409.17054) explicitly flags "language and cultural biases for LLMs" as a concern and notes that large-scale clinical evaluation has not yet occurred. This is a structural barrier to adoption that persists until regional-language medical transcription models reach clinical-grade accuracy — not a solved problem as of 2025. [ID — arXiv 2409.17054 (8); ASSUMED-3]: to validate: what is the word-error rate (WER) for commercial ambient scribe products on Bahasa Indonesia and code-switched Malaysian medical conversations? Which vendors have piloted in-language validation?]

---

### Pain point 1.2

**Title:** Lab result routing and CDM threshold matching operate through manual review queues with no automated patient notification, creating a 7–10% rate of missed or non-timely follow-up on clinically significant results — and generating a persistent patient-safety and medicolegal exposure at private clinics operating without dedicated result-tracking staff.

**Description:** Private GP clinics in Indonesia and Malaysia routinely order blood tests (HbA1c, lipid panels, FBC, renal function, urine ACR) through attached or external labs. Lab results arrive via fax, email PDF, or lab portal PDF — almost never through a real-time HL7 or FHIR interface into the clinic's system. The GP or nurse must manually retrieve, review, and action each result: identify which patient it belongs to, check if values cross CDM thresholds (e.g., HbA1c ≥8% triggering intensification, eGFR <60 triggering nephrology referral), notify the patient, and schedule follow-up. In a clinic running 40–60 consultations per day with a mixed CDM panel of 200–400 chronic patients, the volume of incoming lab results creates a daily review queue that is non-trivial. In the absence of a structured tracking system, evidence from outpatient settings confirms that approximately 7% of abnormal lab results lack timely follow-up even with automated EHR notifications — and at private clinics with paper-based or non-integrated systems, the failure rate is expected to be substantially higher. [ASSUMED-4]: to validate: what is the actual missed lab follow-up rate at a representative private GP clinic in Malaysia and Indonesia operating without a structured result-tracking protocol?

**Who bears it:** Private GP clinic physicians and nursing/admin staff

**Estimated cost:**
- Clinical risk exposure: Missed or delayed follow-up on abnormal results is the fastest-growing category of malpractice claim, with one-fourth of delay-in-treatment claims attributed to failure to follow up test results (14)
- Staff time: Primary care physicians globally receive ~57 EHR/inbox alerts per day and spend close to 1 hr/day on inbox management alone (15); at private SEA clinics without integrated EHR alerting, manual lab triage takes at minimum 15–30 min/day for a clinic with 20+ lab-active CDM patients (admin + physician review combined) [ASSUMED-5]: to validate: actual time on lab result triage per day at private GP clinics in MY/ID
- Result routing rework: In mixed paper/electronic settings, studies show higher failure rates than in fully electronic settings — partial EHR adoption is an independent risk factor for missed results (16)
- Opportunity cost of CDM threshold non-action: Malaysia National Diabetes Registry 2023 shows only 34.38% of patients reached HbA1c ≤6.5% target; Indonesia's 2023 national survey found only 32% of diabetes patients had HbA1c <7% (17)(18). A portion of this gap is attributable to failure to identify and act on results that cross intervention thresholds — the portion attributable specifically to lab routing failures vs. other CDM management failures is not quantified (partial evidence)

**Willingness to pay:** Not yet sourced.

**Frequency:**
- 7.1% of clinically significant abnormal outpatient lab results lack timely follow-up even with automated EHR notification; variation across practices is 0–26% (14)(16)
- 77% of primary care physicians surveyed had no reliable method for tracking whether patients with abnormal results received recommended follow-up care (15)
- Lab results at private clinics in SEA arrive predominantly as PDF (fax/email) rather than structured HL7 — format confirmed as a consistent observation across clinic system vendors in the region [ASSUMED-6]: to validate via vendor interviews
- At Indonesian private clinics, SATUSEHAT FHIR integration is the designated path for structured lab data exchange, but only 8.9% of private FKTPs have activated integration as of end-2024 (6)
- In Malaysian primary care, the primary mode of lab result delivery to private GP clinics is external lab portal or PDF; no regulatory mandate exists for real-time structured result transmission to private GP EHRs [NEEDS-ATTENDED-FETCH]: https://www.moh.gov.my/moh/resources/Penerbitan/Laporan/Umum/NDR_Report_2023_Final.pdf

**Evidenced or assumed:**
(1) 7% timely follow-up failure rate, 10.2% unacknowledged alerts: PMC 2878665 — https://pmc.ncbi.nlm.nih.gov/articles/PMC2878665/
(2) 7.1% failure-to-inform rate across 19 primary care practices: AHRQ PSNet — https://psnet.ahrq.gov/issue/frequency-failure-inform-patients-clinically-significant-outpatient-test-results
(3) Fastest-growing malpractice claim: delay in diagnosis / failure to follow up test results: AHRQ PSNet delay case — https://psnet.ahrq.gov/web-mm/delay-treatment-failure-contact-patient-leads-significant-complications
(4) 77% no reliable follow-up tracking method: AAFP FPM — https://www.aafp.org/pubs/fpm/issues/2002/0700/p41.html
(5) 57 alerts/day, ~1 hr inbox: Tethered to the EHR PMC 5593724 — https://pmc.ncbi.nlm.nih.gov/articles/PMC5593724/
(6) Partial EHR = higher failure rate than full EHR or no EHR; Why test results still lost: PMC 8739406 — https://pmc.ncbi.nlm.nih.gov/articles/PMC8739406/
(7) Indonesia FHIR/SATUSEHAT integration at 8.9% of FKTPs: arXiv 2512.05381 — https://arxiv.org/pdf/2512.05381
(8) JMIR FHIR-based interoperability in Indonesia — complexity and developer burden: PMC 12036547 — https://pmc.ncbi.nlm.nih.gov/articles/PMC12036547/
(9) Malaysia National Diabetes Registry 2023 — 34.38% HbA1c ≤6.5%, only 65.62% not at target: MOH PDF — https://www.moh.gov.my/moh/resources/Penerbitan/Laporan/Umum/NDR_Report_2023_Final.pdf [NEEDS-ATTENDED-FETCH]
(10) Indonesia 2023 national survey — 32% HbA1c <7%: Lancet Regional Health – Western Pacific / PMC 12681878 — https://pmc.ncbi.nlm.nih.gov/articles/PMC12681878/
(11) Abnormal lab result notification: PMC automated NLP ICD coding — https://pmc.ncbi.nlm.nih.gov/articles/PMC11126795/
(12) Lab result management, test-result tracking systems: Springer JGIM 2021 — https://link.springer.com/article/10.1007/s11606-021-06772-y

**AI capability candidate:**
- **OCR + NER (named entity recognition) + threshold classifier**: PDF lab results arrive unstructured. OCR extracts text, NER tags analyte values, a threshold classifier compares against patient-specific CDM targets and generates a flag (HbA1c 9.2% > 8% threshold → intensification protocol). This is high-feasibility because the input (lab PDF) has consistent structure and the threshold logic is deterministic. Conservative uplift: flag 80% of actionable results automatically (vs. 0% today), freeing physician review to exception-handling only.
- **LLM-based patient notification drafting**: Once a threshold is flagged, an LLM can draft a patient-facing SMS/WhatsApp notification ("Your HbA1c result of 9.2% is above your target of 8.0%. Please book an appointment in the next 2 weeks") for physician approval and send.
- **Data format (WH2):** Input is PDF (lab report, via email or fax). This is the key automation gate: if results were delivered as HL7 or FHIR, threshold matching could be fully automated. The PDF format is the bottleneck — OCR/NER bridges it but introduces error risk on low-quality scans. **WH2 validated: format (PDF vs. structured) directly gates automation feasibility.**

**Geography tag:** Global benchmark for miss rates; ID/MY for EHR integration gap; MY for NDR diabetes control data.

---

**Root Causes**

- **RC1: No regulatory mandate or commercial standard for real-time structured lab result transmission from external labs to private GP EHR systems in Indonesia or Malaysia forces results to be delivered as PDF or fax — a format that requires manual human triage to extract actionable values.** In high-income markets, HL7 interfaces between reference laboratories and GP EHRs are increasingly standard. In Indonesia and Malaysia, the dominant transmission mode for private clinic lab results is PDF report (email or fax). SATUSEHAT mandates FHIR-based integration for patient visit data but does not impose a specific standard on lab-to-primary-care result transmission for private facilities. Malaysian MOH has not mandated real-time structured lab result delivery to private GP clinics. The commercial incentive for labs to maintain PDF delivery (lower integration cost, no standardisation overhead) and for clinic management system vendors to build HL7/FHIR receivers (requires investment, limited purchasing power from small independent clinics) means the PDF format is economically sticky. [ID — JMIR FHIR interoperability, PMC 12036547 (8); ASSUMED-7]: to validate: does any TPA or insurer in MY mandate structured lab result transmission to panel clinics?

- **RC2: Private GP clinics in Indonesia and Malaysia operate with 1–2 administrative staff for 40–60 consultations per day, leaving no dedicated capacity for lab result triage and follow-up tracking — a task that compounds daily and generates a backlog in proportion to CDM panel size.** There is no regulatory staffing standard for private clinic administrative roles relative to patient volume. The economics of private primary care at controlled fee levels (RM 35–80 in MY, IDR 50,000–150,000 in ID) do not support a dedicated result-tracking role. A clinic with 200 CDM patients and monthly lab recall generates 50–80 lab results per month to review — approximately 3–4 results per working day on top of all other administrative tasks. Without a dedicated workflow and tracking tool, these results accumulate in an unstructured PDF inbox, and review is reactive (when the patient re-presents) rather than proactive. This staffing model is self-reinforcing: low margins → minimal admin staff → no tracking system → reactive follow-up → suboptimal CDM outcomes. [ASSUMED-8]: to validate: what is the average number of lab-active CDM patients at a representative private GP clinic (200-patient panel, 300-patient panel) in KL and Jakarta?

- **RC3: The inbox-overload dynamic documented in US primary care is structurally replicated and amplified in SEA private clinics, where the same physician reviews lab results, responds to patient queries, manages prescriptions, handles referrals, and sees 40–80 patients per day — creating a cognitive load in which non-urgent abnormal results are systematically deprioritised.** A landmark study found that primary care physicians received ~57 alerts/day and spent close to 1 hr/day on inbox tasks. Timely follow-up failure rate (6.8%) was statistically similar between acknowledged and unacknowledged alerts — meaning the problem is not just non-receipt but cognitive inability to act on results already seen. In SEA private clinics, where doctors see 80–100 patients in understaffed conditions, the cognitive load is higher and the dedicated inbox-management time is lower. New diagnoses (abnormal result with no prior context) are 7.35x more likely to lack timely follow-up than results for known conditions — precisely the configuration at private clinics seeing patients without pre-existing CDM records. [Global — PMC 2878665 (1); PMC 5593724 (5); MY — doctor workload: Broadsheet Asia, 2025 — https://broadsheet.asia/2025/07/15/malaysias-healthcare-crisis-hospitals-grapple-with-doctor-shortages/]

- **RC4: In the absence of a structured recall and result notification protocol at the clinic level, the responsibility for follow-up defaults to the patient — who in most CDM populations in Indonesia and Malaysia is not reliably proactive.** Indonesia's 2023 national health survey data shows fewer than 20% of patients with diabetes and/or hypertension are well-controlled (19); less than half of participants in an Indonesian NCD screening study completed follow-up at primary healthcare facilities (42.2%) (20). Malaysia's NDR 2023 shows only 34.38% at HbA1c target. The structural cause is not exclusively patient behaviour — it is the absence of a systematic clinic-driven recall mechanism. Where no outbound notification process exists, abnormal lab results that did not trigger a same-day callback are effectively lost in the system until the patient re-presents. This is a structural process gap, not a patient compliance gap: the same patient population achieves significantly higher adherence (92.2% vs. 54.6%) when systematic SMS + call reminders are used (21). [ID — Lancet Regional (18); ID — Posbindu NCD screening follow-up: Wiley — https://onlinelibrary.wiley.com/doi/10.1111/phn.70117; MY — NDR 2023 (9); MY/ID — mobile adherence trial PMC 5433794 — https://pmc.ncbi.nlm.nih.gov/articles/PMC5433794/]

---

### Pain point 1.3

**Title:** CDM patient recall and chronic-care follow-up operates as a manual, staff-driven calling exercise with no systematic overdue-identification, resulting in a >50% default rate among chronic patients in private clinic panels and directly perpetuating the poor glycaemic and blood pressure control rates seen nationally in both countries.

**Description:** Private GP clinics in Indonesia and Malaysia hold a disproportionate share of the chronic disease management burden: private providers see approximately 60% of outpatient consultations in both countries, including large volumes of diabetes and hypertension patients who are nominally enrolled in a clinic's CDM programme. The recall cycle — identifying patients overdue for their 3-month review, HbA1c, or medication refill, then reaching out via phone/SMS, logging responses, rebooking, and escalating non-responders — is performed entirely manually by a clinic nurse or receptionist using a paper register, Excel sheet, or at best a clinic management system with a basic appointment history. There is no automated overdue-identification engine, no tiered escalation protocol, and no integration with TPA or employer data for corporate patients. The result is that recall is effort-limited: only patients whose records staff happen to review get contacted, and clinics with 300–500 CDM patients on their panel cannot systematically work through that list. The population-level consequence is visible in national disease control data: ≥66% of Malaysian diabetes patients not at glycaemic target; only 32% of Indonesian diabetes patients at HbA1c <7% — and a portion of this gap is attributable to structural recall failure at the primary care level.

**Who bears it:** Private GP clinic operators (revenue and care quality impact); patients with diabetes, hypertension, and dyslipidaemia; and corporate employers/TPAs who fund CDM-linked health benefits

**Estimated cost:**
- Staff time: Manual phone-based recall consumes approximately 5–10 min per attempted contact (dial, wait, speak, log); for a clinic with 200 overdue CDM patients per month, systematic recall requires 17–33 staff-hours/month — unaffordable at current staffing levels for most independent private clinics [ASSUMED-9]: to validate against clinic operations data
- Revenue leakage: Each missed CDM follow-up at a Malaysian private panel clinic represents a lost consultation (RM 35–80, $8–18) plus potentially lost drug revenue. At 30% default rate on 200 CDM patients/month, that is 60 missed consults = $480–$1,080/month in foregone revenue per clinic [ASSUMED-10]: to validate consultation-to-CDM-patient revenue figures with clinic operators
- Downstream hospitalisation cost: Uncontrolled diabetes and hypertension drive preventable hospital admissions; Malaysia's public health burden from NCD complications is rising; the private clinic bears no direct cost for downstream hospitalisation but the employer/insurer does — creating a misaligned incentive structure where prevention investment does not accrue to the entity making the recall effort [ASSUMED-11]: to validate with insurer/TPA data on hospitalisation rates among CDM-defaulting vs. compliant patients

**Willingness to pay:** Not yet sourced. [Interview placeholder: would private clinic operators pay $50–100/month for an automated CDM recall tool? Would a TPA or corporate employer pay $5–10/employee/year for demonstrated CDM compliance improvement?]

**Frequency:**
- In an Indonesian NCD screening study (Posbindu), less than half of participants (42.2%) completed follow-up at primary healthcare facilities after community screening — confirming systematic dropout in the post-identification step (20)
- Malaysia NDR 2023: Only 34.38% of registered diabetes patients achieved HbA1c ≤6.5% target; 81.10% had concurrent hypertension — confirming the CDM panel at private clinics is a multi-condition management problem, not single-disease (17)
- Indonesia SKI 2023 national survey: Only 32% (95% CI 27.6–36.3%) of diabetes patients had HbA1c <7%; fewer than 5% met all composite behavioral-clinical targets (18)
- Indonesia's Prolanis programme (chronic disease management in primary care) faces systematic implementation challenges: 69% of health centres lack qualified staff; implementation barriers include inadequate skill-mix distribution, overburdened nurses, and shortage of CDM-trained doctors — conditions replicated in private clinic settings (22)
- Mobile phone reminder trials in Malaysia: SMS + call reminders improved adherence from 54.6% to 92.2% and reduced missed appointments from 35.5% to 14.0% — demonstrating that the structural gap is addressable by systematic outreach, not patient-level attitude change (23)
- [ASSUMED-12]: No published direct measurement of the CDM default/recall rate specifically at private commercial GP clinics in Indonesia or Malaysia; the figures above come from public-sector or community settings. Private clinic default rates may differ. To validate: conduct chart audit at 3–5 private clinics in KL/Jakarta to measure 3-month and 6-month return rates for CDM patients.

**Evidenced or assumed:**
(1) 42.2% NCD follow-up completion after screening: Posbindu/Aceh Besar Indonesia: Wiley Public Health Nursing — https://onlinelibrary.wiley.com/doi/10.1111/phn.70117
(2) Malaysia NDR 2023: 34.38% HbA1c ≤6.5%, 65.62% not at target; 81.10% hypertension comorbidity: MOH Malaysia NDR 2023 — https://www.moh.gov.my/moh/resources/Penerbitan/Laporan/Umum/NDR_Report_2023_Final.pdf [NEEDS-ATTENDED-FETCH]
(3) Indonesia 2023: 32% HbA1c <7%, <5% meeting composite targets: Lancet Regional Health Western Pacific — https://www.thelancet.com/journals/lanwpc/article/PIIS2666-6065(25)00298-6/fulltext; PMC 12681878 — https://pmc.ncbi.nlm.nih.gov/articles/PMC12681878/
(4) Mobile reminders MY: 92.2% vs. 54.6% adherence, 14.0% vs. 35.5% missed appointments: PMC 5433794 — https://pmc.ncbi.nlm.nih.gov/articles/PMC5433794/
(5) Prolanis Indonesia implementation challenges (69% lacking qualified staff): PMC 12538241 — https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12538241/
(6) Malaysia EnPHC implementation: human resource constraints, workflow modification, task sharing: PMC 7799751 — https://pmc.ncbi.nlm.nih.gov/articles/PMC7799751/
(7) ASEAN NCD management recommendations: private clinics handle ~60% of consultations: PMC 7371561 — https://pmc.ncbi.nlm.nih.gov/articles/PMC7371561/
(8) Managing chronic diseases in Malaysian primary health care: PMC 4267020 — https://pmc.ncbi.nlm.nih.gov/articles/PMC4267020/
(9) Malaysia diabetes registry 2009 (4.4% LTFU >1 year): PMC 3434063 — https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3434063/
(10) Indonesia perceived barriers to diabetes/hypertension management in primary care: Frontiers Health Services 2025 — https://www.frontiersin.org/journals/health-services/articles/10.3389/frhs.2025.1715125/full
(11) Malaysia primary care scoping review (interventions targeting DM/HTN/dyslipidaemia): PMC 13095119 — https://pmc.ncbi.nlm.nih.gov/articles/PMC13095119/
(12) Diabetes care Indonesia trends 2013–2023 serial analysis: PMC 12519354 — https://pmc.ncbi.nlm.nih.gov/articles/PMC12519354/

**AI capability candidate:**
- **Predictive classifier + automated outreach orchestration**: Identifies overdue patients using rule-based logic (last visit >90 days, HbA1c >8%, last HbA1c >6 months ago) and sequences outreach via WhatsApp/SMS. Escalation logic: day 1 automated message → day 7 automated follow-up → day 14 staff call queue for non-responders.
- **LLM-drafted recall messages**: Generates personalised recall message in Bahasa Malaysia/Indonesia ("Hi Encik Ahmad, your last HbA1c check was 4 months ago. Your doctor recommends a review this month. Reply YES to confirm an appointment.") that can be sent via WhatsApp Business API.
- **NLP response classification**: Classifies patient replies (yes/no/reschedule/escalate) to route into appropriate next step without staff touch.
- Conservative uplift: recall completion rate from ~42% to ~65% (consistent with SMS reminder evidence); base uplift: to 80% (with tiered escalation); upside: to 90% (with employer/TPA integration for corporate CDM patients).
- **Data format (WH2):** Input is structured (appointment history in EHR or spreadsheet); output is SMS/WhatsApp text. This is a low-complexity automation target — the core logic is rules-based date arithmetic. The bottleneck is not format but workflow ownership (no one is accountable for the recall function) and integration with messaging channels. **WH2 partially validated: the data exists in structured form in most clinic systems — the gap is process, not format.**

**Geography tag:** ID (Posbindu follow-up data, Lancet national survey); MY (NDR 2023, mobile reminder trial); ASEAN (60% private-sector consultation share).

---

**Root Causes**

- **RC1: Private GP clinics have no contractual or regulatory obligation to maintain CDM recall compliance, so the task has no formal owner, no defined protocol, and no performance metric — meaning it is systematically deprioritised under workload pressure.** Unlike public-sector CDM programmes (MOH Malaysia's EnPHC, Indonesia's Prolanis), private GP clinics operate without a mandated recall process or any reporting obligation on follow-up rates. The clinic's income is generated per-consultation, not per-patient-under-management; a patient who defaults generates no cost to the clinic (beyond lost revenue). TPA panel agreements define reimbursement rates but do not typically include recall compliance KPIs or penalties for CDM defaulters. This creates a structural principal-agent gap: the entity with the lowest cost of running recall (the primary care clinic) has the weakest incentive to do so, while the entity bearing the downstream cost (the insurer or employer) lacks direct access to the CDM patient list. [MY — ASEAN NCD recommendations: PMC 7371561; ASSUMED-13]: to validate: do any Malaysian TPA panel agreements include CDM recall performance standards or incentive payments?

- **RC2: The information needed to identify overdue CDM patients is fragmented across appointment systems, EHR visit records, lab result PDFs, and drug dispensing records — none of which are integrated at the private clinic level, making systematic overdue identification a manual reconciliation task.** A patient is "due for recall" based on multiple concurrent signals: time since last HbA1c, last BP measurement, last medication refill, last foot exam. Generating that view requires crossing appointment history, clinical notes, lab records, and drug dispensing data. At private GP clinics with non-integrated or paper-based records, this cross-referencing is impossible without manual chart review. Even clinics with clinic management software tend to have systems that excel at billing and appointment scheduling but lack a chronic disease registry view that surfaces overdue patients automatically. Without that view, recall is impossible to operate systematically regardless of staff effort. [ID — EMR adoption barriers, arXiv 2512.05381 (6); MY — HIT News Asia fragmented systems (7); ASSUMED-14]: to validate: of the top 5 clinic management systems in MY and ID, which have a built-in CDM registry / overdue patient queue?

- **RC3: The recall communication channel mix at private clinics (phone call, SMS) is resource-intensive, poorly targeted, and does not exploit the WhatsApp penetration that reaches >80% of Indonesian and Malaysian adults — sustaining a high effort-to-contact ratio that makes systematic recall unaffordable at current staffing levels.** Indonesia and Malaysia both have WhatsApp penetration exceeding 80% of the adult population and clinics routinely use WhatsApp informally for patient queries. But the WhatsApp Business API — which enables automated, structured outreach with response routing — has not been integrated into mainstream clinic management systems in SEA. The default recall method remains phone calls, which consume 5–10 min per patient contact and require staff availability during business hours when patients are often unavailable. Evidence shows SMS reminder effectiveness (92.2% adherence improvement), but the clinic has no automated system to generate and track those messages. The result: recall effort is rationed by available staff hours rather than by clinical urgency. [MY — mobile reminder trial: PMC 5433794 (4); ASSUMED-15]: to validate: what share of private GP clinics in KL and Jakarta use WhatsApp Business API for structured patient communication vs. informal personal WhatsApp?

- **RC4: Poor CDM outcomes in Indonesia and Malaysia are attributed primarily to patient non-compliance in clinical and policy discourse, masking the structural contribution of clinic-side recall failure and deprioritising the systems investment that would address it.** When only 32–34% of diabetes patients are at HbA1c target, the default narrative is patient non-adherence to lifestyle modification and medication. This framing is partially accurate but incomplete: the Malaysian mobile reminder trial found that a simple SMS+call protocol drove adherence from 54.6% to 92.2% — a jump that cannot be explained by patient attitude change alone, only by systematic removal of the structural barrier (lack of timely reminder). The persistence of the "patient non-compliance" framing in policy documents means that investment in clinic-side recall tools is not seen as the primary lever. Until payers (TPAs, insurers, employers) make CDM recall compliance a funded, contracted deliverable, private clinics have no mechanism to monetise the investment in recall infrastructure. [MY — mobile adherence trial: PMC 5433794; MY — NDR 2023 (2); ID — national diabetes care performance: Lancet Regional (3); ASSUMED-16]: to validate: have any Malaysian or Indonesian insurers piloted value-based CDM contracts with private GP clinics that include a follow-up rate KPI?

---

### Pain point 1.4

**Title:** Appointment no-show rates of 15–30% at private GP clinics in Malaysia generate $480–1,500/month in foregone consultation revenue per clinic and create downstream scheduling inefficiency that neither the clinic management system nor the manual reminder workflow can systematically address.

**Description:** Private GP clinics in Indonesia and Malaysia face a structural scheduling challenge: a meaningful proportion of booked appointments are not attended without prior cancellation, the slot is unrecoverable, and the overhead meter keeps running. In Malaysia, published no-show rates range from 28% at major public hospitals to 15–35% across private outpatient settings. In Indonesia, the no-show literature is sparser but regional Asia-Pacific rates (Philippines, Singapore: ~28%) suggest a similar order of magnitude. The current mitigation approach is manual: a receptionist or nurse calls or sends an ad-hoc WhatsApp message 1–2 days before the appointment. This is low-coverage, inconsistently executed, and not personalised to no-show risk. Slot optimisation (overbooking high-risk patients, cross-booking no-show slots) requires a prediction capability that no clinic management system currently provides at scale. The economic impact at a private clinic is meaningful: at RM 35–80 per consult and 28% no-show rate on 50 booked slots/day, the daily revenue loss is RM 490–1,120 ($110–$250) — $2,750–$6,250/month — before accounting for overhead on the empty slot.

**Who bears it:** Private GP clinic operators (revenue impact); patients who could have used the empty slot (access impact)

**Estimated cost:**
- Direct revenue loss: 28% no-show rate × 50 slots/day × RM 35–80/consult = RM 490–1,120/day ($110–$250/day); monthly ~$2,750–$6,250 [MY — NDR/HKL no-show rate 28%; MY — consult fee data (13)(24)]
- Wasted staff overhead per empty slot: 3 staff involved in preparing an appointment (receptionist, nurse/MA, physician) × ~15 min each × local wage rate = ~$10–30 per empty slot in wasted labor at MY/ID wage rates; at 14 empty slots/day (28% of 50) = ~$140–$420/day [ASSUMED-17]: cross-check against MY healthcare admin staff salary of RM 2,249–3,910/month ($500–$870/month) translating to ~$3–5/hr
- Reimbursement loss under corporate/panel schemes: Panel clinic agreements typically reimburse only for completed consultations; no-shows under employee benefit schemes generate zero reimbursement; the clinic absorbs slot opportunity cost with no compensation mechanism

**Willingness to pay:** Not yet sourced.

**Frequency:**
- No-show rate 28% at Hospital Kuala Lumpur (major public facility); 35% at a tertiary dietetic clinic in southern Malaysia; global primary care range 15–30%; rates can reach 50% in some primary care settings (24)(25)
- Hospital Kuala Lumpur ML no-show prediction study: 28% no-show rate confirmed across 2019 appointment data; gradient boosting model achieved 78% accuracy in prediction (25)
- Singapore: 28.6% no-show rate; South Korea: 6.12% — showing that systematic intervention (South Korea's reminder/deposit infrastructure) can substantially reduce rates (24)
- 41.5% of patients at a Malaysian private facility reported experiencing long waiting times caused by others' no-shows — confirming systemic scheduling inefficiency beyond the revenue impact (24)
- Private clinic patients in Malaysia: 51.1% self-pay, 21.8% guaranteed letter, 24.9% waited >3 hrs — indicating the scheduling system is not calibrated to expected attendance patterns (24)

**Evidenced or assumed:**
(1) No-show 28% at HKL, 35% dietetic clinic, 15–30% primary care range, 50% outer bound: PMC 11436967 — https://pmc.ncbi.nlm.nih.gov/articles/PMC11436967/
(2) ML no-show prediction at HKL, 28% no-show rate, GB model 78% accuracy: PMC 10624443 — https://pmc.ncbi.nlm.nih.gov/articles/PMC10624443/
(3) Prevalence and predictors no-shows global: PMC 4714455 — https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4714455/
(4) Malaysia GP consult fee RM 35–80: MPCAM proposal — https://codeblue.galencentre.org/2025/06/mpcam-proposes-rm50-to-rm80-gp-consultation-fee/; CodeBlue fee correction — https://codeblue.galencentre.org/2025/03/doctors-group-demands-gp-fee-correction-to-rm50-to-rm150/
(5) Private clinic fee regulation RM 10–35 (existing cap): Bernama — https://www.bernama.com/en/news.php?id=2402227; private clinic fees up to 30% rise: The Rakyat Post — https://www.therakyatpost.com/news/2025/05/21/private-clinic-fees-could-rise-up-to-30-under-new-price-ruling/
(6) Malaysia healthcare admin staff salary RM 2,249–3,910/month: Indeed Malaysia nurse; ASEAN Briefing — https://www.aseanbriefing.com/doing-business-guide/malaysia/human-resources-and-payroll/salaries-minimum-wages-malaysia
(7) US/global no-show cost $150–200 per slot: Curogram — https://curogram.com/blog/how-much-each-year-do-no-shows-cost-the-u.s.-healthcare-system; note: adjusted downward significantly for MY/ID cost base
(8) Diabetes patients no-show → worse outcomes: PMC 3470968 — https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3470968/
(9) SMS and phone reminders: Malaysian ART study 92.2% vs 54.6% adherence: PMC 5433794 — https://pmc.ncbi.nlm.nih.gov/articles/PMC5433794/
(10) Indonesia appointment scheduling — mobile health / BPJS context: Statista Indonesia digital health — https://www.statista.com/outlook/hmo/digital-health/online-doctor-consultations/indonesia

**AI capability candidate:**
- **Predictive model (no-show risk score) + automated reminder sequencing**: A gradient boosting or logistic regression model trained on appointment history, patient demographics, appointment type, prior no-show record, and day-of-week generates a no-show risk score per upcoming appointment. High-risk patients trigger a tiered reminder sequence (48-hr WhatsApp, 24-hr SMS, 2-hr automated call queue). Malaysian academic validation shows 78% prediction accuracy is achievable on public hospital data (2); private clinic datasets may perform differently.
- **Slot optimisation**: Risk-scored no-show predictions enable intelligent overbooking (buffer 1–2 extra slots on high-risk days) without over-serving.
- Conservative uplift: Reduce no-show rate from 28% to 20% — consistent with SMS reminder evidence reducing missed appointments from 35.5% to 14.0% (9). At 50 slots/day this recovers ~4 consultations/day = RM 140–320/day ($30–70/day).
- **Data format (WH2):** Input is structured appointment data (date, time, patient ID, appointment type, prior no-show history) — already in EHR/clinic management system. This is the highest-feasibility AI use case for format: fully structured, no OCR or NLP required. **WH2 validated: structured data format is ready for ML with no pre-processing barrier.**

**Geography tag:** MY (HKL 28%, dietetic clinic 35%, PMC study); APAC (Singapore 28.6%); global (Korea 6.12% benchmark for achievability). Indonesia rate assumed similar [ASSUMED-18]: to validate against Indonesian private clinic appointment data.

---

**Root Causes**

- **RC1: Private GP clinic appointment reminders in Malaysia and Indonesia rely on informal, manually-triggered WhatsApp or phone call workflows with no systematic protocol, meaning reminder coverage depends entirely on staff availability and attention rather than a deterministic process.** The standard reminder practice at most private GP clinics is a 1-day-prior phone call or informal WhatsApp message from a receptionist — not automated, not tied to risk scoring, not tracked for delivery confirmation. This is a structural consequence of clinic management systems that were designed around appointment booking (intake and scheduling) rather than appointment completion (reminder, confirmation, rescheduling). No clinic-level incentive has historically driven investment in systematic reminder infrastructure; the cost of no-show has been absorbed as a background revenue variance. The absence of system-level reminder automation is confirmed by the widespread research on manual reminder trials and the continued high no-show rates despite those trials' proven effectiveness. [MY — PMC 11436967; MY — PMC 10624443; ASSUMED-19]: to validate: what share of private GP clinic management systems in MY and ID have built-in automated appointment reminder functionality at point of this research?

- **RC2: The commercial incentive structure of private GP clinics in Malaysia and Indonesia does not create a return on investment for no-show prevention tools, because the marginal revenue of a recovered slot (RM 35–80) is too small to justify stand-alone software procurement — keeping the market fragmented and tools underpowered.** A standalone no-show prevention tool generating $500–1,000/month in recovered revenue is economically attractive for the clinic, but most clinic management system vendors serve independent single-physician or 2-3 physician clinics with thin margins. The revenue threshold for software investment is very low; tools must be bundled into broader clinic management systems rather than sold standalone. This creates a chicken-and-egg: no-show prediction requires patient history data that only lives inside a clinic management system, but clinic management system vendors have not prioritised this feature because standalone-tool monetisation is insufficient. The result is a feature gap that persists until a bundled platform consolidates enough clinic volume to justify ML feature investment. [ASSUMED-20]: to validate via interviews with Kumo, KlinikPintar, CxSYS, Doctorxdentist and comparable MY/ID clinic management system vendors on no-show prediction feature roadmap.

- **RC3: No-show behaviour in SEA primary care has documented structural drivers (waiting time, prior experience, chronic disease burden, transportation) that reminder alone cannot fully address, but the predictors are not exploited for patient-level risk stratification because clinics lack the data infrastructure to build predictive models.** The Malaysian ML study identified month, gender, appointment type, prior no-show history, distance, insurance status, and waiting time as predictors. At a clinical level, chronic disease patients have higher no-show rates when disease is poorly controlled (confirmed in a PMC study linking diabetes no-shows to subsequent acute care utilisation). Without structured capture of these variables, reminder targeting remains untargeted — the same reminder goes to a first-time low-risk patient and a chronic high-risk defaulter. The data infrastructure prerequisite (structured EHR with prior no-show history, linked to demographics) is not present at most independent private GP clinics in Indonesia or Malaysia. Building it requires EHR adoption (addressed in PP 1.1) as a prerequisite. [MY — PMC 10624443 (2); global — PMC 3470968 (8); ASSUMED-21]: to validate: what variables are currently captured in Kumo, MyClinique, CxSYS structured appointment records that could support no-show risk modelling?

- **RC4: Overbooking as a practical no-show mitigation strategy is not systematically deployed at private GP clinics because it conflicts with the patient experience of long waiting times — and without a real-time prediction capability, overbooking is perceived as too risky rather than calibrated.** In the absence of slot-level no-show prediction, overbooking is a blunt instrument that risks over-serving on low-no-show days (long wait) and under-serving on high-no-show days. Private clinic operators who have experienced overbooking-driven patient complaints have reverted to under-booking, accepting no-show revenue loss as the safer option. The patient-experience cost of overbooking is immediate and visible (waiting room overflow, complaints); the revenue cost of no-show is diffuse and invisible (empty slot that could have been filled). This asymmetry in perceived cost depresses willingness to deploy overbooking without a calibrated predictive system. [ASSUMED-22]: to validate: have any Malaysian private clinic chains deployed systematic overbooking protocols, and at what prediction threshold?

---

### New pain points identified beyond working hypotheses

**None additional promoted to full pain point status.** Two candidate pain points were considered and downgraded:

1. **TPA/panel benefit verification at intake (sub-step 1a)**: Research found that Malaysian TPAs have largely moved to real-time electronic eligibility verification via EDC terminals and web portals (WECARE TPA, eMAS, PMCare) — the problem exists but is materially less severe than hypothesised for Klang Valley / urban MY, where panel clinic infrastructure is mature. It is likely more acute for Indonesian BPJS PCare verification at under-resourced private clinics. Downgraded to a partial pain point to be revisited in Stage 3 (Insurance & TPA operations) where it has higher systemic relevance.

2. **Multi-system EHR data fragmentation for referral letter generation**: Surfaced during research as a genuine pain point (generating structured referral letters to specialists requires aggregating history, current medications, recent labs, and relevant clinical notes — currently done manually), but the evidence base is insufficient to write to full IMI depth without additional primary research. Flagged for deep-research pass.

---

### Assumptions tagged in this stage

[ASSUMED-1]: GP clinic utilisation rate data needed to validate throughput uplift from documentation time reduction in MY/ID private clinics. To validate: ask clinic operators what percentage of scheduled slots are filled on a typical day, and whether "full" is limited by patient demand or by consultation duration.

[ASSUMED-2]: Additional time for BPJS PCare eclaim entry vs. integrated EMR estimated at 3–5 min/BPJS patient; not directly measured at Indonesian private clinics. To validate: time-motion study at 3–5 Indonesian private clinics with and without PCare eclaim integration.

[ASSUMED-3]: Commercial ambient voice scribe word-error rate (WER) for Bahasa Indonesia and code-switched Malaysian medical conversations is unknown. To validate: contact Nuance DAX, Nabla, Heidi Health, or regional alternatives (e.g. Klinik Pintar, Abridge) for in-language validation data.

[ASSUMED-4]: Actual missed lab follow-up rate at private GP clinics in MY/ID operating without structured result-tracking protocol is unknown; 7% global estimate used as conservative floor. To validate: chart audit at 3–5 private clinics in KL and Jakarta.

[ASSUMED-5]: Time on manual lab triage per day estimated at 15–30 min for a clinic with 20+ lab-active CDM patients; not directly measured. To validate: time-motion observation at 2–3 private clinics.

[ASSUMED-6]: PDF/fax/email is the dominant lab result delivery format at Malaysian and Indonesian private GP clinics; HL7 interface penetration assumed negligible. To validate: confirm with Sonic Healthcare MY, Quest Diagnostics ID/MY, and clinic management system vendors (Kumo, KlinikPintar).

[ASSUMED-7]: No TPA or insurer in Malaysia mandates structured lab result transmission to panel clinics. To validate: review panel clinic agreement templates from WECARE TPA, eMAS, PMCare, Manulife, AIA.

[ASSUMED-8]: Average number of lab-active CDM patients at a representative private GP clinic (200–300 patient panel) in KL and Jakarta is unknown. To validate: ask 5–10 clinic operators.

[ASSUMED-9]: Manual CDM phone recall requires 5–10 min/patient contact; 200 overdue CDM patients/month = 17–33 staff-hours/month. To validate: time-motion observation or staff interview at 2–3 clinics.

[ASSUMED-10]: Revenue per CDM consultation at Malaysian private panel clinic RM 35–80. To validate: confirm against actual claim data from PMCare or WECARE TPA for CDM patient consultations.

[ASSUMED-11]: Downstream hospitalisation cost for CDM defaulters not attributed to specific clinic recall failure vs. other factors. To validate: obtain insurer/TPA data on hospitalisation rates among CDM-compliant vs. CDM-defaulting private panel patients.

[ASSUMED-12]: CDM default/recall rate specifically at private commercial GP clinics in Indonesia or Malaysia not directly measured in published literature; public-sector proxy data used. To validate: chart audit.

[ASSUMED-13]: No Malaysian TPA panel agreements known to include CDM recall compliance KPIs or incentive payments. To validate: request panel agreement templates from top 5 Malaysian TPAs.

[ASSUMED-14]: Top 5 clinic management systems in MY/ID (Kumo, KlinikPintar, CxSYS, MyClinique, Klinik+) do not currently have a built-in CDM registry / overdue patient queue. To validate: product demo + feature audit.

[ASSUMED-15]: Share of private GP clinics using WhatsApp Business API (vs. personal WhatsApp) for structured patient communication is unknown; assumed <10% for Indonesian private clinics and <20% for Malaysian. To validate: survey of clinic operators.

[ASSUMED-16]: No Malaysian or Indonesian insurer known to have piloted value-based CDM contracts with private GP clinics including follow-up rate KPI. To validate: interviews with AIA MY, Prudential MY, BPJS Kesehatan ID, and mid-tier corporate TPAs.

[ASSUMED-17]: Wasted staff overhead per empty slot estimated at $10–30; calculation based on MY admin salary data and 3-staff-member prep assumption. To validate: time-motion study of slot preparation overhead.

[ASSUMED-18]: Indonesian private clinic no-show rate assumed similar to MY 15–30% range; no published Indonesian private clinic no-show data found. To validate: request appointment log data from KlinikPintar or Klinik+.

[ASSUMED-19]: Most private GP clinic management systems in MY/ID lack built-in automated appointment reminder functionality at point of this research. To validate: product capability audit across Kumo, CxSYS, MyClinique, KlinikPintar.

[ASSUMED-20]: Clinic management system vendors have not prioritised no-show prediction feature because standalone-tool monetisation is insufficient. To validate: vendor interviews.

[ASSUMED-21]: Structured EHR variables needed for no-show risk modelling (prior no-show history, demographics, appointment type) are not standardly captured at independent private GP clinics in ID/MY. To validate: product demo + field data review.

[ASSUMED-22]: No Malaysian private clinic chain known to have deployed systematic overbooking protocols calibrated to no-show prediction. To validate: interviews with multi-site clinic operators (e.g. Kumpulan Perubatan Johor, DoctorOnCall, or franchised GP clinic networks).

