# Stage 6 (validated) — Run 2026-05-25-0427

*Pass-1 drafts + any applicable deep-research outcomes. See pass-2-validation/stage-6.json for per-claim confidence.*

---

## Part A — Value chain (sub-step process map)

# Stage 6 Value Chain — TPA / Insurer: CDM & Preventive Programme Administration (Sub-process 3d)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Mapped: 2026-05-25*

---

## Stage Description

TPAs and private health insurers administering chronic disease management (CDM) and preventive programmes for employer groups across Indonesia and Malaysia. This stage covers the full 3d sub-process: enrolment of employees into CDM programmes, ongoing patient monitoring, intervention dispatch when clinical thresholds are breached, employer population reporting, and annual renewal/panel management.

**Indonesia named actors:**
- BPJS Kesehatan (PROLANIS — the state CDM mandate for all FKTP; covers ~7.4M JKN-enrolled DM patients and 20.5M HT patients)
- AdMedika (Telkom subsidiary; >5.2M participants from 177 private insurer and corporate clients; offers "National Health Solution" including CDM coordination)
- OWLEXA Healthcare (Lintasarta subsidiary; digital health platform including corporate health administration, telemedicine, care management)
- Private employer self-insured CDM programmes (typically run via a captive TPA or directly by HR)

**Malaysia named actors:**
- PMCare (pioneer/leading TPA; 983,931 members; >RM2B annual payments; recently invested in Naluri; offers wellness programmes tailored to medical utilisation history)
- Naluri Health (digital CDM coaching platform; PMC-invested; Employee CDMP with documented real-world outcomes; Bank Rakyat 2024 rollout via PMCare partnership)
- AIA Vitality (391,000+ members; Malaysia's largest insurer wellness programme; step-tracking and health screening reward structure; Vitality Member Guide 2024)
- BookDoc Wellness (corporate wellness, step challenges, digital therapeutics; Malaysia digital therapeutics market participant)
- Medilink Global (ECCS 4.0; >15M cumulative claims; MCO-level outpatient management that spans CDM panel clinics)

---

## Market Size Context

| Metric | Value | Source |
|--------|-------|---------|
| Indonesia private TPA market (2024) | USD 1.66B, growing at 20.6% CAGR to USD 5.32B by 2030 | NextMSC |
| BPJS CDM enrolled DM patients (JKN) | ~7.4M diagnosed; 2.8M (37.8%) regular FKTP attenders | BPJS / Stage 2 |
| BPJS CDM enrolled HT patients (JKN) | ~20.5M diagnosed; 5.6M (27.3%) regular FKTP attenders | Stage 2 |
| Malaysia MHIT market (2023) | RM7,325M (~USD 1.6B) | Faber Consulting |
| PMCare covered lives | 983,931 members (2024) | PMCare |
| AIA Vitality Malaysia members | 391,000+ | AIA Malaysia Factsheet 2025 |
| Naluri CDMP clinical improvement rate | 60% of members see clinical improvement | Naluri CDMP page |
| Indonesia medical cost inflation | 20.48% employer population (2023) | Ken Research |

---

## Sub-step Process Map: Sub-process 3d (CDM & Preventive Programme Administration)

### S3d-1: CDM Enrolment — Patient Identification & Consent

**Activity description:** The TPA/insurer or FKTP care team identifies employees who are eligible for CDM enrolment based on: (a) existing BPJS PROLANIS registration (Indonesia), (b) MCU abnormal result flags (HbA1c ≥6.5%, BP ≥140/90, LDL ≥3.4 mmol/L), (c) claims history showing repeated prescriptions for DM or HT medications, or (d) employer-referred list from HR health screening. The care manager reviews the candidate list — typically a spreadsheet exported from the TPA portal or BPJS PCare — contacts the patient, explains the programme, and obtains verbal or written consent. In PROLANIS (Indonesia), the FKTP enters patient data into BPJS PCare system manually: name, BPJS number, diagnosis, baseline clinical values.

**Owner / executor role:** FKTP nurse or care coordinator (PROLANIS Indonesia); TPA care manager or outsourced nurse coordinator (private TPA, Malaysia); HR wellness coordinator (employer-initiated CDM)

**Inputs:**
- BPJS member data / employer beneficiary list
- MCU result flags or GP referral letter
- Patient NRIC/KTP, contact details
- Diagnosis confirmation (ICD-10: E11, I10)

**Outputs:**
- Signed/verbal consent record
- BPJS PCare PROLANIS enrolment entry (Indonesia)
- TPA CDM enrolment record (Malaysia)
- Baseline clinical values (HbA1c, BP, weight, eGFR)

**Typical time per transaction:** 20–45 minutes per patient for identification, outreach, consent, and data entry. [ASSUMED-1] — no published time-motion study for CDM enrolment administration found; derived from PROLANIS programme guidelines and FKTP staff task descriptions.

**Volume:** PROLANIS: 22,000+ FKTPs participate; each enrolls typically 20–150 patients depending on panel size. Private TPA (Malaysia): PMCare serves 983,931 members; proportion enrolled in a structured CDM programme is undisclosed. Naluri/PMCare partnership covers 6,000 Bank Rakyat employees (2024 launch).

**Current automation level:**
- Indonesia PROLANIS: PCare system provides structured enrolment fields, but patient identification upstream relies on GP/nurse recall of paper registers or informal cross-checking of BPJS data. No automated alert fires when a patient's MCU result or claims history crosses CDM criteria.
- Malaysia private TPA: No structured CDM auto-enrolment across the industry. PMCare/Naluri integration is employer-requested, manually triggered. AIA Vitality enrolment is self-initiated by policyholder via app.

**Error / drop-off mode:**
- Eligible patients not identified because claims-based identification misses patients who pay OOP for CDM medications
- Patients contacted but declining consent; no follow-up escalation protocol
- Data entry errors in PCare at enrolment (wrong ICD-10, wrong baseline values)
- FKTP staff identifies patient as eligible but is too busy to complete enrolment entry; patient sits in "candidate" state indefinitely

**AI capability that would address it:** Rules-based eligibility engine scanning claims + MCU + GP encounter data for CDM criteria; LLM-assisted patient outreach script personalization; OCR extraction of baseline clinical values from MCU report to auto-populate enrolment form.

---

### S3d-2: Ongoing Monitoring — HbA1c, BP Tracking & Threshold Detection

**Activity description:** Enrolled CDM patients must attend periodic clinical reviews: PROLANIS requires monthly GDP/BP checks and biannual HbA1c + lipid panel per protocol. Results from these visits are entered into BPJS PCare (Indonesia) or recorded in a separate clinic/TPA spreadsheet/database (Malaysia). The care manager or nurse reviews results each month to identify patients whose values breach intervention thresholds: HbA1c >9% (uncontrolled DM), BP >160/100 (severe HT). In PROLANIS, the RPPT (Rasio Peserta Prolanis Terkendali) indicator — the share of enrolled patients who achieve controlled targets — is calculated monthly and determines the FKTP's P4P capitation adjustment. The calculation is done by BPJS PCare based on entered values, but the underlying data entry is manual.

**Owner / executor role:** FKTP nurse or GP (Indonesia); TPA care manager or panel GP (Malaysia); patient (for self-monitoring via app, where applicable)

**Inputs:**
- Monthly GDP/BP reading from consultation (paper/EHR)
- Biannual HbA1c result from external or on-site lab (often PDF)
- Attendance register (paper or PCare)

**Outputs:**
- Updated PCare monthly encounter record (Indonesia)
- Controlled/uncontrolled status per patient per month
- RPPT score per FKTP (auto-calculated by PCare after data entry)
- Monthly summary for care manager review

**Typical time per transaction:** 5–15 minutes per patient per month for result entry and manual review; 2–4 hours/month for a nurse managing 80–100 PROLANIS patients to review all monthly records. [ASSUMED-2]

**Current automation level:**
- Indonesia PROLANIS PCare: structured data entry with automated RPPT calculation after entry. But: (a) HbA1c results from external labs arrive as PDFs — not auto-parsed into PCare; (b) biannual HbA1c examinations are documented as "not being carried out" at multiple FKTPs due to supply constraints; (c) no automated alert flags when a patient's HbA1c crosses the >9% threshold between monthly check-ins.
- Malaysia private TPA: No uniform monitoring system. PMCare wellness programmes use member medical history and utilisation data; Naluri's platform tracks self-reported and lab-submitted values for coaching triggers; no TPA-wide automated threshold monitoring.

**Error / drop-off mode:**
- HbA1c PDF from external lab not entered into PCare → uncontrolled patient counted as "data missing" rather than "uncontrolled" → RPPT calculation understates severity
- Patient misses monthly visit → no attended value → RPPT denominator counted but no result in numerator → RPPT numerically declines
- Care manager identifies threshold breach visually from paper register or spreadsheet days after the visit; intervention not triggered promptly

**AI capability that would address it:** OCR+LLM extraction of HbA1c/BP values from PDF lab reports into structured fields; real-time rule engine applying threshold logic (HbA1c >9%, BP >160/100) to trigger care manager alert immediately upon result entry; predictive risk scoring (next-visit HbA1c prediction) from longitudinal data.

---

### S3d-3: Intervention Dispatch — Care Manager Outreach & Escalation

**Activity description:** When monitoring identifies a patient with uncontrolled values (HbA1c >9%, BP >160/100, missed 2+ consecutive visits, hospital admission), the care manager must initiate an outreach event: phone call, WhatsApp message, or home visit referral. The outreach is recorded manually in a tracking sheet. If the patient responds and returns for care, the GP adjusts the treatment plan. If the patient does not respond after 2–3 attempts, the care manager typically escalates to the employer HR (for employer-programme patients) or closes the case. In PROLANIS, the "home visit" component is a documented but inconsistently delivered protocol element.

**Owner / executor role:** FKTP nurse or care coordinator; TPA care manager; sometimes employer HR wellness coordinator

**Inputs:**
- Monthly monitoring flags from step 3d-2
- Patient contact details
- Prior outreach history (where recorded)

**Outputs:**
- Outreach event log (paper or spreadsheet)
- Response outcome (attended, refused, no contact)
- Updated care plan if attended
- Escalation to employer/HR if unresponsive

**Typical time per transaction:** 10–30 minutes per outreach attempt (phone + documentation); 3–5 attempts per non-responding patient before case closure. For a 100-patient PROLANIS roster with 20–30% requiring active outreach monthly, this represents 3–15 hours of care manager time per month on outreach alone. [ASSUMED-3]

**Current automation level:** No automation found in either market. WhatsApp broadcast groups are the most advanced tool in use at FKTP level; these are one-way and non-responsive. Naluri's platform sends push notifications and coach-initiated messages via app, but only for enrolled Naluri users. BPJS's AI roadmap includes SMS reminders at JKN Mobile level, but not care-manager-to-patient intervention dispatch automation at FKTP level.

**Error / drop-off mode:**
- No standardized outreach tracking → duplicate outreach to same patient, or no outreach to high-risk patients
- Care manager overwhelmed by volume → high-risk patients not contacted promptly after threshold breach
- No escalation to employer/HR for employer-programme patients → employer has no visibility into which employees are uncontrolled
- Non-responders closed from case without re-engagement trigger

**AI capability that would address it:** Automated outreach trigger on threshold breach (WhatsApp via API, IVR, SMS); response-tracking system that logs outcomes and re-triggers at configured intervals; predictive model identifying patients most likely to respond to which channel; automated employer notification for persistently non-responding enrolled employees.

---

### S3d-4: Employer Population Reporting — Dashboard & Analytics

**Activity description:** On a monthly or quarterly basis (sometimes annual at renewal), the TPA or CDM programme operator produces an employer population health report: aggregate CDM enrolment count, controlled/uncontrolled ratio, attendance rate, lab value distributions, trend vs. prior period. In Malaysia, this is sometimes delivered as a static PDF or PowerPoint. In Indonesia under PROLANIS, BPJS itself produces RPPT reports per FKTP, but the employer receives no direct report — the insurer's CDM reporting to the employer is a separate private-market deliverable for employer group schemes. Manual data export from TPA portal → Excel pivot → formatted report is the dominant workflow for most mid-market Malaysian TPAs.

**Owner / executor role:** TPA account manager or care management coordinator; employer HR/wellness team

**Inputs:**
- Monitoring data from step 3d-2
- Enrolment records from step 3d-1
- Attendance logs
- Prior-period report for trending (if available in structured form)

**Outputs:**
- Population health summary report (PDF, PowerPoint, or dashboard)
- Controlled/uncontrolled ratios per disease category
- CDM enrolment rate vs. eligible population
- Year-on-year trend (if prior data available)
- Anonymous individual-level flags (at employer's request, PDPA-compliant scope)

**Typical time per transaction:** 4–16 hours per employer per reporting period for manual Excel pivot + report formatting, for an employer with 500–2,000 enrolled CDM members. [ASSUMED-4] Analogous to PP4.2 (MCU population summary) but for ongoing CDM data, not one-time MCU results.

**Current automation level:**
- Malaysia: BP Healthcare POPE provides aggregate employer reporting with PII protection (confirmed differentiator in market — see Stage 4). PMCare offers wellness programme analytics tailored to member utilisation. AIA Vitality provides a member dashboard but not a population-level employer CDM analytics product at the level of individual CDM condition tracking.
- Indonesia: BPJS PROLANIS reports RPPT scores to FKTP level; no employer-facing CDM population dashboard found in the private TPA market for employer group schemes.

**Error / drop-off mode:**
- Manual Excel aggregation produces static, backward-looking report with no real-time view during programme cycle
- PDPA/UU PDP compliance uncertainty about what aggregated data can be disclosed to employer (see PP4.2)
- Prior-year data unavailable or in different format → no year-on-year trending
- Employer receives report but cannot act on it without clinical decision support embedded in the report

**AI capability that would address it:** Automated PDPA-aware population health analytics engine consuming structured TPA/CDM data; real-time employer dashboard with drill-down to department/risk tier; LLM-generated narrative summary identifying key trends and recommended employer actions; predictive cost-of-care modelling for the uncontrolled CDM population.

---

### S3d-5: Renewal Cycle & Panel Network Management

**Activity description:** Annually, the CDM programme undergoes a renewal cycle: (a) re-enrolment of existing patients (consent re-confirmed, clinical values updated), (b) addition or removal of panel clinics/providers from the CDM provider network, (c) CDM vendor performance review (attendance rates, RPPT achievement, patient satisfaction), and (d) contract renewal negotiation with TPA/insurer. Panel clinic onboarding requires credentialing verification, facility audit, and training on programme protocols. In PROLANIS (Indonesia), FKTP "keikutsertaan" (participation) is renewed annually with BPJS; inclusion/exclusion depends on meeting minimum facility standards. For private TPA CDM in Malaysia, vendor performance is tracked manually (no standardized performance scorecard found in public sources).

**Owner / executor role:** TPA account management team; BPJS KC regional offices (Indonesia PROLANIS); employer HR (renewal sign-off)

**Inputs:**
- Current FKTP/panel clinic performance data
- Patient re-enrolment consent forms
- Credentialing/accreditation documents for new panel clinics
- Utilisation and CDM outcome data for outgoing year

**Outputs:**
- Updated FKTP participation list (BPJS PCare)
- Renewed employer CDM contract
- Panel addition/removal decisions
- Performance report for outgoing contract year

**Typical time per transaction:** 8–20 hours per employer account per renewal cycle for TPA account management; 2–4 hours per new panel clinic for credentialing + onboarding. [ASSUMED-5]

**Current automation level:** Predominantly manual. No automated panel performance scoring system found in either market. BPJS PCare records RPPT data that could support automated performance scoring, but FKTP performance review for PROLANIS panel participation renewal is done by BPJS regional office staff reviewing aggregate data. Private TPA panel management in Malaysia appears to rely on account manager knowledge and informal performance tracking.

**Error / drop-off mode:**
- Poor-performing panel clinics retained because no objective performance scorecard triggers review
- New panel clinics with good capacity not onboarded because manual credentialing backlog is too long
- Re-enrolment of patients not completed before annual programme cycle begins → gap in monitoring coverage
- Employer does not receive renewal-year performance comparison in time to make vendor switch decision

**AI capability that would address it:** Automated panel performance scoring (CDM outcome metrics, attendance rates, claim cost per enrolled member); automated onboarding workflow for new panel clinics (document collection, credential check, training module dispatch); re-enrolment reminder automation; employer-facing renewal decision support report.

---

## Preliminary Pain Point Summary

Three pain points are structurally supported by this value chain mapping:

**PP6.1 (CDM enrolment + monitoring manual workflow):** Enrolment identification has no automated trigger; monitoring relies on manual result entry with no threshold alert engine; intervention dispatch is manual WhatsApp/phone with no structured tracking. Target AI: eligibility rule engine + HbA1c threshold alert + automated outreach dispatch.

**PP6.2 (Employer population reporting — analytics gap + PDPA tension):** Population health summaries are manual Excel aggregations; prior-year trend data unavailable across employer switches; PDPA/UU PDP compliance of employer-level CDM reporting is legally ambiguous. Target AI: PDPA-aware automatic population health analytics with real-time dashboard.

**PP6.3 (Renewal cycle + panel network management is manual; performance tracking poor):** No objective performance scorecard triggers panel review; new clinic onboarding is manual and slow; re-enrolment is not automated. Target AI: performance scoring + automated onboarding workflow + predictive retention model.

---

*Sources referenced in this value chain map are cited in full in the accompanying stage-6-pain-points.md file.*

---

## Part B — Pain points

# Stage 6 Pain Points — TPA / Insurer: CDM & Preventive Programme Administration (Sub-process 3d) + ID-vs-MY Readiness Compare

*Run ID: 2026-05-25-0427 | Pass 1 draft | Researched: 2026-05-25*

---

## Stage 6: TPA / Insurer — CDM & Preventive Programme Administration

### Pain point 6.1

**Description:** TPA care managers and FKTP nurses running CDM programmes in Indonesia and Malaysia track enrolled patients through manual spreadsheets, paper registers, and informal WhatsApp communication — with no automated engine applying clinical threshold logic (HbA1c >9%, BP >160/100 mmHg, 2+ missed visits) to trigger timely care manager intervention. In PROLANIS (Indonesia), the BPJS PCare system records structured encounter data after the fact but does not proactively alert the care manager when a newly entered value crosses an uncontrolled threshold. Biannual HbA1c results from external labs arrive as PDFs and are documented as "not being entered" into PCare at multiple facilities due to supply gaps and staff capacity. The result: patients accumulate uncontrolled-disease time between threshold breach and outreach, and the FKTP's RPPT score suffers — with only 32% of 273 assessed FKTPs meeting the Level 4 controlled-patient target as of December 2023. In Malaysia's private TPA market, no standardized CDM monitoring platform exists across the TPA industry; PMCare's Naluri investment and the Bank Rakyat 2024 EAP rollout are early-market exceptions, not industry norms. The real-world Naluri study (774 Indonesian employees, PMC 2024) confirms that patients receiving active digital coaching show significantly better outcomes on HbA1c, LDL, weight, and BP versus the no-coaching group — establishing the causal link between structured outreach and clinical outcomes, and the cost of its absence.

**Who bears it:** FKTP nurses and care coordinators (manual monitoring labor); TPA care management teams (outreach labor without systematic prioritization); enrolled CDM patients (delayed intervention when values deteriorate); BPJS Kesehatan (poorer RPPT, capitation leakage from non-achieving FKTPs); employers (higher CDM-related medical claims from unmanaged employees).

**Estimated cost:**
- Care manager labor for manual monitoring and outreach: For a PROLANIS roster of 100 patients, a nurse spending 2–4 hours/month on manual record review plus 3–15 hours/month on outreach dispatch represents 5–19 hours/month of unautomated labor. At Indonesian nurse salary IDR 5–6M/month (~$1.78–$2.14/hr), this is $9–$41/month per 100-patient roster, or $108–$492/year per clinic — modest per clinic, but applied across 22,000+ PROLANIS-participating FKTPs, this is a $2.4M–$10.8M/year system-level labor cost in direct monitoring and outreach work. (1), (2), [ASSUMED-2], [ASSUMED-3]
- RPPT capitation penalty: Under BPJS KBK, FKTPs achieving Level 4 RPPT (≥75% controlled) receive the full performance capitation; those below Level 4 receive reduced payments. Only 32% of assessed FKTPs reach Level 4. An FKTP with 1,000 enrolled members earning IDR 12,000/month capitation ($0.74/member/month) loses IDR 600,000–1,800,000/month ($37–$111/month) per clinic for missing RPPT. Across 68% of non-achieving FKTPs, aggregate capitation penalty at system level is substantial — though precise aggregation requires FKTP count data that is not published at the national level. (3)
- Employer CDM cost from unmanaged employees: Naluri's real-world study documents statistically significant deterioration in HbA1c, LDL, and BP in the no-coaching cohort (n=489) vs. the active coaching cohort (n=177) over a 12-month follow-up. If average DM complication cost in Malaysian employer plans is MYR 3,000–8,000/year ($648–$1,726) per uncontrolled patient (Stage 4 reference), and a 1,000-employee employer has 156 CDM-eligible employees (15.6% DM prevalence, NHMS 2023) of whom 40–60% are insufficiently monitored, the annual employer cost gap is MYR 187,200–1,352,000 ($40,400–$291,900) per 1,000-employee employer. [ASSUMED-1] (4), (5)

**Willingness to pay:** Not sourced. [ASSUMED-6]: to validate — ask AdMedika, OWLEXA, and PMCare care management leads what they currently spend per enrolled CDM patient per year on monitoring + outreach labor, and whether they would pay $3–$8/member/year for an automated threshold-alert + outreach-dispatch module; for PMCare's 983,931 members (even if 10–15% are CDM-enrolled), this implies $295,000–$1.2M annual licensing at the upper bound.

**Frequency:**
- Only 32% of 273 assessed FKTPs met Level 4 RPPT (controlled CDM patient ratio) by December 2023; the majority of PROLANIS-active FKTPs are systematically underperforming on the controlled-patient indicator. (3)
- Only 34.3% of eligible DM patients enrolled in PROLANIS at all in East Java study; of those enrolled, only 56.8% maintained regular attendance — confirming systematic drop-off at every stage of the CDM pathway. (6)
- PROLANIS biannual HbA1c examinations documented as "not being carried out" at multiple FKTPs due to supply and staff capacity constraints. (7)
- Naluri's real-world study: 300 employees offered active coaching; 177 (59%) accepted — 41% of offered patients did not engage even when coaching was offered proactively. (4)
- WhatsApp non-participation and supply barriers identified as key PROLANIS recall failure modes in 2025 scoping review (n=23 studies). (8)
- BPJS AI roadmap includes predictive models for DM/HT susceptibility and visit frequency prediction — confirming BPJS itself recognizes the gap in current manual monitoring. (9)
- Malaysia NHMS 2023: only 34.4% of tracked DM patients achieved HbA1c ≤6.5% target; mean HbA1c 7.7% nationally. This is a monitoring and engagement failure visible at population scale. (5)

**Evidenced or assumed:**
(1) Indonesian nurse/admin salary IDR 5–6M/month — https://id.jobstreet.com/career-advice/role/general-practitioner/salary
(2) PROLANIS monitoring labor estimate — derived from PROLANIS activity structure (monthly check-in + biannual labs + home visits): https://phcogj.com/article/2352; PROLANIS scoping review PMC 2025 — https://pmc.ncbi.nlm.nih.gov/articles/PMC12538241/
(3) RPPT achievement 32% of FKTPs Level 4, December 2023; KBK capitation structure — https://jurnal-jkn.bpjs-kesehatan.go.id/index.php/jjkn/article/view/273
(4) Naluri real-world CDMP outcomes study (n=774, Indonesia) — https://pmc.ncbi.nlm.nih.gov/articles/PMC11422728/
(5) Malaysia NHMS 2023 DM 15.6%, HbA1c ≤6.5% only 34.4% — https://www.nature.com/articles/s41598-025-08311-9; Malaysia NDR 2023 — https://pmc.ncbi.nlm.nih.gov/articles/PMC10576047/
(6) PROLANIS East Java enrolment: 34.3% eligible enrolled, 56.8% regular attendance — https://pmc.ncbi.nlm.nih.gov/articles/PMC12538241/
(7) PROLANIS HbA1c biannual examinations gap — https://phcogj.com/article/2352
(8) PROLANIS 2025 scoping review barriers: WhatsApp non-participation, supply barriers — https://pmc.ncbi.nlm.nih.gov/articles/PMC12538241/
(9) BPJS Kesehatan AI roadmap: DM/HT predictive models, JKN digital tools — https://govinsider.asia/intl-en/article/bpjs-kesehatan-to-use-ai-improve-efficiency-healthcare-services
(10) BPJS PROLANIS programme structure (WHO/P4H case study reference) — https://p4h.world/en/documents/chronic-disease-management-programme-prolanis-in-indonesia
(11) PROLANIS PCare enrolment procedure document — https://www.scribd.com/document/493018167/Prosedur-Pendaftaran-Peserta-Prolanis
(12) PMCare-Naluri-Bank Rakyat wellness launch, November 2024 — https://www.naluri.life/news-and-reports/bank-rakyat-malaysia-wellness-programme-pmcare-naluri
(13) Naluri CDMP page — https://www.naluri.life/what-we-offer/cdmp
(14) WhatsApp CDM intervention HbA1c study (PMC 2024) — https://pmc.ncbi.nlm.nih.gov/articles/PMC11410229/
(15) PROLANIS scoping review ResearchGate — https://www.researchgate.net/publication/395443872_Challenges_in_implementing_Indonesia's_community-based_chronic_disease_management_program_Prolanis_A_scoping_review

**Root Causes**

- **RC1: No automated data pathway connects lab result delivery to the CDM monitoring system, leaving threshold detection dependent on human review of a document.** The single largest structural failure in CDM monitoring is that HbA1c results from external labs arrive as PDFs — not as structured fields in BPJS PCare or the TPA's CDM database. The SATUSEHAT FHIR R4 mandate governs submission to the national platform, not inter-facility result delivery to FKTP-level CDM systems; no standard requires labs to push structured results to the patient's FKTP in real time. Without a structured inbound result feed, the care manager cannot apply threshold logic because the threshold logic requires a numeric value, not a PDF. This is the same root cause as PP2.1 (GP lab result PDF parsing) and PP3.1 (MCU multi-source result collation) — it is a systemic infrastructure gap that compounds across every layer of the CDM pathway.

- **RC2: The BPJS PROLANIS KBK performance system rewards controlled-patient outcomes at the end of the month but provides no within-month alert to the care manager when control deteriorates.** PCare records the monthly encounter value after the visit; the RPPT calculation runs at month-end. If a patient attends on Day 3 with HbA1c 11.4% and the care manager reviews records on Day 28, the patient has spent 25 days uncontrolled without intervention. The system design — a retrospective outcome tracker rather than a prospective alert engine — is a structural choice embedded in how BPJS PCare was architected, reflecting a measurement-and-reporting paradigm rather than a real-time clinical management paradigm. Changing this requires either BPJS PCare to add an alert module, or a third-party layer that reads PCare data via API and applies threshold logic externally.

- **RC3: PROLANIS outreach is structurally underfunded relative to the intensity required for complex CDM patients with multiple barriers to engagement.** The PROLANIS capitation payment (IDR 12,000/member/month, ~$0.74) funds a comprehensive CDM programme including monthly visits, biannual labs, health education, physical exercise clubs, and home visits. At this capitation rate, a 100-patient roster generates IDR 1.2M/month ($74) in programme-specific revenue — insufficient to fund dedicated care manager staffing. The PROLANIS activity bundle is therefore delivered by the same nurse staff managing the FKTP's general patient population, creating chronic capacity competition. The PROLANIS 2025 scoping review explicitly identifies "inadequate human resources" and "multidisciplinary staffing deficits" as primary barriers to programme fidelity. Until capitation rates are restructured or AI automation reduces the per-patient outreach cost, PROLANIS outreach will remain structurally under-resourced.

- **RC4: Malaysia's private TPA CDM market lacks a standardized CDM enrolment-to-outcome data standard, preventing any TPA from offering an evidence-based, outcome-linked CDM product to employers.** Unlike Singapore's CDMP (Chronic Disease Management Programme, MOH primary care integrated care), Malaysia's private employer CDM market has no MOH-mandated programme design, data standard, or outcome reporting requirement. Each TPA or digital health vendor (Naluri, BookDoc, AIA Vitality) defines its own enrolment criteria, monitoring frequency, outcome metrics, and reporting format. This fragmentation means employers cannot compare CDM ROI across vendors, cannot aggregate data when switching vendors, and cannot make evidence-based investment decisions about expanding CDM programmes. The absence of a standard is a structural market failure that depresses employer willingness to invest and slows the CDM digital market's development.

- **RC5: BPJS PROLANIS operational reporting creates perverse RPPT gaming incentives that reduce real-world CDM engagement quality without reducing measured performance.** Because RPPT rewards the controlled-patient ratio (patients at target / enrolled patients), FKTPs facing poor control rates can improve their RPPT by reducing the denominator — not enrolling borderline-controlled patients who might fail, or de-enrolling patients who repeatedly fail to attend — rather than by improving care delivery. The 2023 JKN performance study (n=273 FKTPs) does not document explicit gaming, but the structural incentive to curate the enrolled population rather than maximize engagement is a documented concern in capitation-with-performance-payment design literature. This distortion is a structural consequence of measuring end-state outcomes rather than process fidelity (outreach completion, visit attendance, timely lab collection).

---

### Pain point 6.2

**Description:** Employer population health reporting for CDM programmes — the analytics layer that shows HR and HSE teams how many employees are enrolled, controlled, deteriorating, or absent from follow-up, and at what cost — is produced manually by TPA account managers exporting portal data to Excel, or is not produced at all for smaller employer accounts. The PDPA (Malaysia Personal Data Protection Amendment Act 2024, effective January 1, 2025) and UU PDP (Indonesia, effective 2024) create legal uncertainty about what aggregated or individual-level health data an employer may receive from its TPA, suppressing the development of automated analytics products. Where employer-facing CDM dashboards exist (BP Healthcare POPE is the documented example in Malaysia), they are marketed as differentiators — confirming that real-time, PDPA-compliant population health analytics is not yet an industry standard. Without actionable population analytics, employers cannot link CDM programme spending to medical claims reduction, cannot justify wellness programme budgets to CFOs, and cannot make evidence-based decisions about intervention intensity or panel clinic selection.

**Who bears it:** Employer HR/HSE teams (labor cost of manual report assembly; inability to demonstrate ROI); TPA account management teams (manual report production labor); CDM programme vendors (inability to differentiate on outcomes); employees (whose identified but unmonitored health deterioration is invisible to the employer who could act).

**Estimated cost:**
- TPA labor for manual population report assembly: At 4–16 hours per employer per reporting period (analogous to PP4.2 MCU population summary; CDM reporting has ongoing data rather than one-time MCU, so may be closer to 2–8 hours per quarterly report), and a Malaysian TPA account manager at MYR 5,000–8,000/month (~$5.36–$8.57/hr), each report cycle costs $10.72–$68.57 in direct labor. For a TPA managing 100 employer accounts generating quarterly CDM reports, this is $4,288–$27,428/year in report assembly labor alone — modest in absolute terms but representing time that prevents account managers from doing client development. (1), [ASSUMED-4], [ASSUMED-5]
- Employer decision quality cost: A 2023 US employer analytics study found >80% of employers believe they lack adequate visibility into employee health utilization; without population health analytics, employers cannot demonstrate wellness programme ROI to CFOs and senior leadership, reducing programme budget sustainability. In the ID/MY context, this means employers underinvest in CDM because they cannot show the cost-of-illness calculation that would justify higher wellness spend. (2)
- PDPA compliance risk: Malaysia PDPA Amendment Act 2024 (effective January 1, 2025) adds mandatory data breach notification requirements; health data remains sensitive personal data under Section 4. For employers receiving individually identifiable employee health data from their TPA — even CDM programme enrolment lists with condition names — without explicit consent covering this processing purpose, there is potential breach exposure. The structural gap: most employer-TPA CDM agreements were written before the 2024 amendment; consent language does not necessarily cover analytics data flows from TPA to employer. (3)
- Population cost-of-illness gap: Malaysia NDR 2023 shows only 34.4% of tracked DM patients achieved HbA1c ≤6.5% target. Employer-sponsored CDM programmes with strong data analytics (Naluri documented: 60% of members see clinical improvement) significantly outperform programmes without monitoring. The cost gap between a monitored CDM population and an unmonitored one, applied to a 1,000-employee workforce with 15.6% DM prevalence = 156 DM employees, implies a potential employer claims cost difference of MYR 624,000–2.5M/year between best-practice and no-programme scenarios. [ASSUMED-1] (4), (5)

**Willingness to pay:** Not sourced. [ASSUMED-7]: to validate — ask HR/HSE directors at large Malaysian and Indonesian employers (manufacturing, banking, plantation) whether they would pay MYR 3–8 per employee per year for a real-time, PDPA-compliant CDM population health dashboard that updates as monitoring data arrives and includes year-on-year trending; hypothesis is that demonstrated CDM ROI analytics justifying MYR 50–200/head wellness investment would generate willingness to pay MYR 5+/head/year for the analytics platform.

**Frequency:**
- Population summary reporting is a deliverable for every corporate CDM engagement annually; for active CDM programmes with quarterly check-ins, it may be quarterly. Any employer with >50 CDM-enrolled employees running an annual programme receives this deliverable. Indonesia has no specific CDM employer reporting mandate beyond BPJS PROLANIS FKTP-level RPPT; Malaysia has no MOH mandate for employer CDM population reporting. (1)
- BP Healthcare POPE explicitly markets aggregate employer reporting with "zero dissemination of personally identifiable information" as a differentiator — confirming this is a solved problem for some vendors but not industry standard. (6)
- Malaysia PDPA Amendment Act 2024 (effective January 1, 2025): mandatory breach notification within specified period; health data = sensitive personal data; employers and TPAs must have explicit consent for health data processing. Existing employer-TPA agreements may not have been updated. (3)
- Indonesia OJK Circular Letter No. 7/SEOJK.05/2025 (deferred, pending new OJK Regulation): requires private insurers to implement digital integration with healthcare providers and establish a Medical Advisory Board — signaling regulatory direction toward structured data flows, even if the specific circular has been deferred. (7)
- Malaysia: only ~15% of public hospitals and 18% of public health clinics have EMRs as of 2024-2025; private GP adoption higher but historically fragmented — structural data quality constraint for population analytics. (8)
- Naluri's 60% clinical improvement rate among coached members vs. significant deterioration in non-coached cohort provides evidence that population health analytics linked to intervention triggers produces measurable outcome differences worth measuring and reporting. (4)

**Evidenced or assumed:**
(1) TPA account manager salary estimates — Malaysia, derived from MYR 5,000–8,000 benchmark for executive/account manager roles; analogous to Stage 4 PP4.2 evidence base — https://malaysia.indeed.com/career/nurse/salaries; https://dataon.com/en-my/blog/what-is-employee-turnover/
(2) US employer health utilization visibility gap (>80% lacking adequate visibility) — https://paulcohen.com/what-employers-dont-know/
(3) Malaysia PDPA Amendment Act 2024, sensitive personal data, mandatory breach notification — https://hallboothsmith.com/malaysia-2024-data-privacy-reform/; https://insightplus.bakermckenzie.com/bm/data-technology/malaysia-personal-data-protection-amendment-act-2024-to-come-into-force
(4) Naluri CDMP real-world outcomes (60% clinical improvement) — https://pmc.ncbi.nlm.nih.gov/articles/PMC11422728/; https://www.naluri.life/what-we-offer/cdmp
(5) Malaysia NDR 2023: 34.4% HbA1c ≤6.5% target achievement — https://pmc.ncbi.nlm.nih.gov/articles/PMC10576047/
(6) BP Healthcare POPE employer reporting, PII protection — https://bpgroup.bphealthcare.com/diagnostic-centre-2/pope/
(7) Indonesia OJK Circular Letter No. 7/SEOJK.05/2025 deferred; insurer digital integration mandate — https://global.lockton.com/us/en/news-insights/indonesia-to-reform-health-insurance-products-for-enhanced-risk-management; https://www.mondaq.com/reinsurance/1661826/legal-insight-new-health-insurance-products-standards-ojk-circular-letter-no-7seojk052025
(8) Malaysia EHR/EMR adoption: <15% public hospitals, ~18% public clinics with EMR; private clinic adoption historically higher but fragmented — https://theedgemalaysia.com/node/729797
(9) PMCare wellness programme analytics tailored to utilisation — https://www.pmcare.com.my/
(10) AIA Vitality 391,000+ members; member dashboard, step tracking — https://www.aia.com/content/dam/group-wise/en/docs/Regional-solutions/FactSheets_2025/AIA%20Malaysia%20Factsheet%202025.pdf
(11) Bank Rakyat-PMCare-Naluri partnership 2024 — https://www.naluri.life/news-and-reports/bank-rakyat-malaysia-wellness-programme-pmcare-naluri
(12) Indonesia UU PDP 2022 — health data as sensitive personal data — https://www.aseanbriefing.com/doing-business-guide/indonesia/company-establishment/personal-data-protection-law
(13) NHMS 2023 DM prevalence 15.6% — https://www.nature.com/articles/s41598-025-08311-9

**Root Causes**

- **RC1: TPA CDM platforms are architected for individual member management, not employer population analytics — the employer analytics layer is an afterthought built in Excel rather than a native product feature.** The dominant TPA technology paradigm (claims processing, eligibility verification, GL management) is designed for individual transaction processing. Population analytics — which requires aggregation, trend computation, risk stratification, and cohort comparison across thousands of members per employer — is a data warehouse problem, not a transaction processing problem. Most mid-market TPAs in Indonesia and Malaysia have not built the data warehouse and analytics layer because it requires significant additional infrastructure investment beyond the transaction processing core. Those that have (BP Healthcare POPE) use it as a premium differentiator, confirming the structural gap for the majority of the market.

- **RC2: PDPA/UU PDP legal uncertainty about employer-level health data disclosure creates compliance paralysis that prevents TPA product teams from building automated employer CDM dashboards.** The legal line between permissible employer access (aggregate CDM enrolment and controlled-rate statistics) and impermissible access (individually identifiable condition-level data) is not operationally specified in Malaysia's PDPA 2010/2024 or Indonesia's UU PDP 2022 at the CDM-programme level. The Malaysia PDPA Amendment 2024 adds mandatory breach notification but does not provide a safe harbor for aggregated health analytics. TPA product teams cannot build automated dashboards that push health data to employer portals without legal sign-off on each data element — and that legal sign-off process is slow, expensive, and creates liability that product teams avoid. This is the same structural barrier documented in PP4.2 (MCU population summary) and PP4.3 (post-MCU follow-up), confirming it is a cross-stage constraint on any health analytics product targeting the employer layer.

- **RC3: Year-on-year CDM trending requires identity-matched records that are inaccessible when employees change employers or the employer changes TPA vendors.** CDM population analytics requires linking an employee's CDM records from multiple programme years to show whether their HbA1c trend is improving or deteriorating over time. This longitudinal linking requires a stable employee identity key (NIK / NRIC) and cross-year record retention at TPA level. When an employee changes employers or the employer switches TPA, the prior-year CDM records are retained by the old TPA (medical records ownership sits with the facility) and are inaccessible in structured form to the new TPA. Employer-switching of CDM vendors is common in a competitive market — the result is that every new programme year loses its longitudinal signal. This is the same structural cause as PP4.4 (MCU longitudinal data silo), confirming it applies across the entire corporate health data stack, not just MCU.

- **RC4: Employers in Indonesia and Malaysia lack the health analytics capability to interpret CDM population data even when it is delivered, reducing their willingness to pay for analytics products.** HR and HSE teams at most mid-market employers in both markets are equipped to administer benefits but not to interpret population health analytics. A dashboard showing mean HbA1c trend across a 500-employee CDM cohort, stratified by department and risk tier, requires a health analyst to interpret and operationalize — a role that most employers do not have. Without internal capability to act on analytics, employers perceive analytics products as nice-to-have rather than essential — limiting their willingness to pay and creating a market where only the most sophisticated employers (GLCs, large banks, multinationals) currently demand or use CDM analytics.

---

### Pain point 6.3

**Description:** The annual CDM programme renewal cycle — re-enrolment of existing patients, performance review of panel clinics, addition/removal of underperforming or new panel providers, and contract renewal with TPA — is conducted without any systematic performance scorecard, automated credential verification, or re-enrolment workflow. TPA account managers assess panel clinic performance informally (RPPT scores, complaint calls, utilisation data in spreadsheets); no objective scoring triggers a performance review or removal decision. New panel clinics that could strengthen CDM coverage in specific employer geographic footprints are not proactively identified or onboarded because credentialing and protocol training are manual processes with long backlogs. Patient re-enrolment consent confirmation is manually coordinated. The structural consequence: poorly performing CDM panel clinics are retained by default because the switching cost (identifying alternatives, credentialing, training) exceeds the effort of continuing with an underperforming partner; high-potential new clinics are not recruited because no proactive outreach model exists.

**Who bears it:** TPA account management teams (renewal labor burden); employers (CDM programme quality stagnates with underperforming panel providers); employees in CDM (suboptimal care quality from retained underperforming clinics); potential new panel clinics (invisible to TPA without a proactive recruitment system).

**Estimated cost:**
- TPA renewal labor per employer account: 8–20 hours of account management time per annual renewal cycle per employer account (re-enrolment coordination, vendor performance review, contract drafting) at MYR 5,000–8,000/month ($5.36–$8.57/hr) = $43–$171 per employer account per year in direct renewal labor. For a TPA managing 100 employer CDM accounts, this is $4,300–$17,100/year in renewal labor — modest per account but not trivial at scale. [ASSUMED-5] (1)
- New clinic onboarding delay cost: If a TPA could onboard 10 new panel clinics per quarter (improving geographic coverage for CDM referrals) but manual credentialing caps this at 3–4 new clinics, the foregone CDM network coverage represents a structural quality gap. Not directly quantifiable from published sources; [ASSUMED-8] — to validate: ask PMCare and AdMedika how many new panel clinics they onboard per quarter and what the credentialing timeline is.
- Underperforming clinic retention cost: An FKTP achieving RPPT Level 2 (50–60% controlled) vs. Level 4 (≥75% controlled) for the same CDM roster represents a clinically meaningful outcomes gap. If 20% of panel clinics are underperforming, and each underperforming clinic serves 50 CDM patients, for a TPA with 200 panel CDM clinics, 40 clinics × 50 patients × lower controlled rate represents a large cohort receiving suboptimal CDM management. Quantification requires per-clinic RPPT distribution data not publicly available. [ASSUMED-9]

**Willingness to pay:** Not sourced. [ASSUMED-10]: to validate — ask PMCare and AdMedika operations heads whether they would pay for an automated panel performance scoring + onboarding workflow tool; hypothesis: TPA would pay $2–$5 per panel clinic per month for a performance dashboard that scores RPPT, attendance, patient satisfaction, and cost-per-enrolled-member — for a 200-clinic panel network this is $400–$1,000/month or $4,800–$12,000/year.

**Frequency:**
- Annual CDM programme renewal is the industry norm for employer-sponsored programmes in both markets; BPJS PROLANIS FKTP "keikutsertaan" is also reviewed annually. (See PROLANIS programme structure: p4h.world/en/documents/chronic-disease-management-programme-prolanis-in-indonesia)
- PROLANIS 2025 scoping review identifies "inconsistent staffing norms across FKTPs" as a barrier — confirming that no standardized performance scorecard exists that would enable the identification of persistently underperforming facilities. (2)
- BPJS PCare does record RPPT monthly by FKTP — the data to support automated performance scoring exists in BPJS's system, but there is no evidence that it is operationalized into a systematic panel performance review and renewal decision workflow. (3)
- No published study or industry report documents standardized CDM panel performance scoring or automated onboarding workflow for private TPAs in Indonesia or Malaysia. This gap is [ASSUMED-9] — to validate with PMCare and AdMedika operations teams.
- Malaysia private GP panel network for TPA (PMCare: >5,280 panel GP clinics) is large enough that manual performance review of each clinic is infeasible — structural evidence that automated performance scoring is needed at scale.

**Evidenced or assumed:**
(1) TPA account manager salary — Malaysia, MYR 5,000–8,000/month — derived from general professional salary data: https://malaysia.indeed.com/career/nurse/salaries (nurse benchmark; account manager/coordinator role comparable)
(2) PROLANIS scoping review: inconsistent staffing norms, no standardized SOPs — https://pmc.ncbi.nlm.nih.gov/articles/PMC12538241/
(3) BPJS PCare RPPT recording by FKTP — https://jurnal-jkn.bpjs-kesehatan.go.id/index.php/jjkn/article/view/273
(4) PMCare panel clinic network: >5,280 panel GP clinics — https://www.pmcare.com.my/
(5) PROLANIS FKTP participation: 22,000+ FKTPs — https://p4h.world/en/documents/chronic-disease-management-programme-prolanis-in-indonesia
(6) BPJS Kesehatan RPA and process automation for administrative workflows — https://govinsider.asia/intl-en/article/bpjs-kesehatan-to-use-ai-improve-efficiency-healthcare-services
(7) RPPT Level 4 achievement 32% of FKTPs — implies 68% are below performance benchmark — https://jurnal-jkn.bpjs-kesehatan.go.id/index.php/jjkn/article/view/273
(8) PMCare wellness programme description — https://www.pmcare.com.my/
(9) PROLANIS programme P4H WHO reference — https://p4h.world/en/documents/chronic-disease-management-programme-prolanis-in-indonesia
(10) OJK insurer digital integration mandate direction — https://global.lockton.com/us/en/news-insights/indonesia-to-reform-health-insurance-products-for-enhanced-risk-management
(11) Malaysia TPA annual claims processed; panel network scale — https://codeblue.galencentre.org/2025/11/a-tpas-medical-trend-average-rm9300-hospitalisation-rm131-gp-visit/

**Root Causes**

- **RC1: No objective, systematically calculated panel performance scorecard exists in either market, so underperforming clinics are retained by relationship inertia rather than removed by evidence.** TPA account managers reviewing panel clinic performance rely on utilization data, complaint logs, and personal knowledge — not a standardized scorecard covering CDM outcome metrics (controlled-patient rate, attendance rate, lab completion rate), cost-per-enrolled-member, and patient satisfaction. Without a quantified score, the decision to remove an underperforming clinic is a political negotiation, not a data-driven call. Account managers face relationship friction with clinic owners and avoid difficult conversations without hard evidence. The structural fix — an automated monthly performance score for each panel clinic, generated from TPA claims and CDM monitoring data — requires integrating claims analytics with CDM programme tracking, a capability that most mid-market TPAs have not built.

- **RC2: Panel clinic onboarding is a manual, labor-intensive credentialing process with no digital document collection or automated protocol training delivery, creating a long queue of unprocessed clinic applications.** Onboarding a new panel clinic requires: document collection (facility registration, doctor credentials, equipment list, location verification), credential verification against medical board and facility licensing databases, and protocol training delivery (CDM programme-specific clinical protocols, reporting requirements, PCare or TPA portal training). All of these steps are currently managed via email, phone, and physical document submission in both markets. There is no digital onboarding portal where a clinic submits documents, triggers automatic verification, and receives a training module. The result: the onboarding queue exceeds the TPA's capacity to process, and potentially high-performing new clinics wait 4–8 weeks or are never recruited. [ASSUMED-8] — to validate with PMCare.

- **RC3: The annual renewal cycle structure creates a single bottleneck for all re-enrolment, performance review, and contract renewal decisions, preventing real-time programme improvement throughout the year.** Because the CDM programme is structured as an annual contract with a defined start and end date, all significant changes — patient re-enrolment, clinic performance decisions, contract amendments — are deferred to the renewal window. Poor-performing clinics identified in Q2 are not acted on until Q4 renewal. High-potential new clinics identified in Q3 are not onboarded until Q4. This creates a 6–9 month lag between problem identification and structural response. The structural alternative — a rolling programme with continuous performance monitoring and clinic onboarding/removal — requires the infrastructure of steps RC1 and RC2 to be in place first.

- **RC4: Employer CDM contracts are structured as fixed-fee all-inclusive programmes without individual sub-process cost visibility, removing the economic signal that would drive TPA investment in renewal automation.** CDM programme fees are quoted as per-employee-per-year (PEPY) packages, bundling enrolment, monitoring, intervention, reporting, and renewal administration into a single price. TPA management does not have activity-based costing for the renewal sub-process; they do not know how many account-manager hours are consumed per renewal, and therefore cannot calculate the ROI of automating it. This is structurally identical to PP4.5 (MCU report generation cost embedded in per-employee fee), confirming a pattern across the corporate health industry in both markets: the absence of sub-process cost visibility prevents process-level automation investment.

---

### New pain points (not in original hypothesis)

**PP6.4 (surfaced during research): OJK coordination-of-benefit (COB) mandate creates a new data integration pain for private insurers administering employer CDM programmes in parallel with BPJS Kesehatan.**

Indonesia's OJK Circular Letter No. 7/SEOJK.05/2025 (deferred, pending new OJK Regulation) mandates that private health insurance products include a coordination-of-benefits feature integrating with BPJS Kesehatan. For employer CDM programmes where employees have both BPJS and private employer coverage, this COB requirement creates a new data integration problem: the private TPA must be able to determine what BPJS has paid for a CDM-related encounter before calculating the private plan's contribution. No cross-system API for real-time BPJS claims lookup by private TPAs exists in either market. This is partially evidenced (OJK reform direction is confirmed; cross-system data flow gap is structural); the specific operational burden on TPA CDM administration is [ASSUMED-11] — to validate with AdMedika and OWLEXA compliance teams about their COB readiness timeline.

Sources: https://global.lockton.com/us/en/news-insights/indonesia-to-reform-health-insurance-products-for-enhanced-risk-management; https://www.mondaq.com/reinsurance/1661826/legal-insight-new-health-insurance-products-standards-ojk-circular-letter-no-7seojk052025

---

## ID-vs-MY Readiness Compare: Faster Path to AI-Enabled CDM Pilot

### Readiness Matrix

| Layer | Indonesia readiness | Malaysia readiness | Winner | Why |
|---|---|---|---|---|
| **EHR / data infrastructure** | SATUSEHAT FHIR R4 mandate since 2022; only 8.9% of eligible FKTPs have adopted EMR (3,533/39,852); BPJS PCare captures structured CDM encounter data for 22,000+ FKTPs but HbA1c from external labs arrives as PDF; 58% met 50% threshold compliance in October 2024 but rates declined by December deadline | Less than 15% of public hospitals and 18% of public health clinics have EMRs as of 2024–2025; private GP adoption historically higher (~79.6% in earlier study) but fragmented across vendors; myHIX exchange targeted at MOH hospitals, not private CDM network; no FHIR mandate for private sector | **Draw — both weak** | ID has larger structured CDM dataset in BPJS PCare; MY private sector has more digitised GP records but no aggregation mandate. Neither has a real-time cross-facility CDM data feed. |
| **Regulatory posture** | BPJS PROLANIS is a mandatory CDM programme; all FKTP participating in JKN must run PROLANIS; OJK COB mandate (deferred 2025) pushes private insurer digital integration; BPJS AI roadmap explicit on DM/HT predictive models | Voluntary panel model; no MOH mandate for private employer CDM programme structure; Malaysia PDPA 2024 Amendment adds compliance complexity; OJK equivalent (BNM) issued December 2025 prompt-settlement guidance but no CDM-specific digital integration mandate | **Indonesia** | PROLANIS mandate creates captive audience of 22,000+ FKTPs for any TPA/AI solution that integrates into PCare or FKTP operations; regulatory compliance driver reduces sales friction. Malaysia is a purely commercial market — faster to close one deal but no systemic forcing function. |
| **TPA / insurer digitisation** | AdMedika (first TPA ID, Telkom group, >5.2M participants), OWLEXA (Lintasarta subsidiary, digital-first), BPJS Vedika (AI-enabled claims verification, reduced claims processing from 45 to 15 days, FTE from 1,345 to 961); BPJS AI roadmap active; private insurer CDM programme digitisation remains nascent | PMCare (RM2B+ annual payments, digital ECCS system, Naluri investment, wellness analytics capability); Medilink ECCS 4.0; AIA Vitality (391,000+ members, digital engagement); active private insurer wellness market; Naluri has published real-world outcome data from CDMP | **Malaysia** | Malaysia private TPA market has more advanced digital infrastructure at the employer CDM programme layer; PMCare-Naluri partnership is the most developed employer CDM AI integration in the region; AIA Vitality provides an active benchmark. Indonesia TPA CDM digitisation lags private TPA capability in MY. |
| **GP receptivity / willingness to integrate** | Mixed; only 8.9% EMR adoption at FKTP level; "deadline-chasing" behavior on SATUSEHAT compliance; key barriers are staff capacity, IT skills, connectivity; WhatsApp non-participation among PROLANIS patients; nurse staff at FKTP running PROLANIS alongside full general patient load | Mixed; private clinic adoption of EMR historically higher; main bottleneck identified as "fragmented design philosophy" rather than unwillingness; digital health transformation 2024 announced; Ministry expanding GP scope; Naluri's real-world data from employer programme confirms that coached employees engage when outreach is app-based | **Malaysia (slight)** | Malaysia private GP clinics are more digitised and the voluntary panel model means clinics that adopt digital CDM tools have a commercial incentive (differentiation, employer referrals). In Indonesia, the mandate-driven model creates compliance behavior (minimum viable participation) rather than enthusiastic adoption. |
| **Operator economic capacity** | Lower; FKTP capitation IDR 12,000/member/month ($0.74) for PROLANIS leaves minimal budget for technology tools; private insurer employer CDM market smaller (USD 1.66B TPA market, rapidly growing); employer medical cost inflation 20.48% in 2023 creates pain point pressure | Higher; Malaysia MHIT market USD 1.6B; employer health insurance premium inflation 15% (2024); large employer segment (GLCs, multinationals, banking) has documented willingness to invest in CDM ROI tools; PMCare invested in Naluri (committed capital signals market confidence); MYR 18M in AIA Vitality rewards paid out confirms active engagement spending | **Malaysia** | Malaysian employers (especially GLCs, banks, multinationals) have budget, pain, and willingness to invest in CDM analytics. Indonesia's PROLANIS capitation model is financially constrained; the larger opportunity is private employer supplemental CDM, which is nascent. |
| **Faster path to pilot — recommendation** | Best entry via BPJS PROLANIS digital layer: build a PCare-adjacent threshold-alert engine that fires when HbA1c >9% is entered, triggering automated WhatsApp outreach (via PCare API or FKTP EHR system). Partner with KlinikPintar or eClinic to embed in their FKTP software. Low willingness-to-pay per clinic but scale (22,000+ FKTPs) creates high volume leverage. Second option: private employer CDM automation for AdMedika/OWLEXA book — higher per-member WTP but smaller population. | Best entry via Malaysia private employer CDM programme: partner with PMCare (existing Naluri investment, Bank Rakyat precedent) to add a PDPA-compliant automated monitoring + population health analytics layer to the existing TPA infrastructure. Pilots with 5–10 GLC/bank employers covering 50,000–100,000 employees would produce measurable outcome data in 12 months. AI layer targets: PP6.1 threshold alerts + PP6.2 population analytics. | **Malaysia (for first pilot)** | See verdict below. |

---

### WH6 Verdict — Which Market and Which Layer to Pilot First

**Malaysia is the faster path to pilot for an AI-enabled employer CDM programme layer, specifically targeting the PMCare/employer wellness TPA tier.**

The evidence from Stages 1–6 supports this conclusion through five converging factors:

**1. Existing commercial infrastructure is further along.** PMCare has already invested in Naluri (CDM coaching), launched the Bank Rakyat programme (6,000 employees, November 2024), and has documented >RM2B annual claims flow and 983,931 member coverage. AIA Vitality has 391,000+ active wellness members. The commercial and contractual infrastructure for employer CDM digital programmes is three to five years more mature in Malaysia than in Indonesia's private employer market. Piloting alongside an existing PMCare-Naluri relationship is faster than building from scratch.

**2. Economic capacity is higher.** Malaysia employer group health insurance is a commercially motivated market where insurers and TPAs compete on CDM ROI analytics (BP Healthcare POPE, PMCare wellness analytics, AIA Vitality differentiation). Employers in GLCs, banks, and multinationals — the pilot segment — have established wellness budgets and demonstrated willingness to pay for population health infrastructure. Indonesia's PROLANIS market is capitation-constrained; the per-clinic economics do not support premium AI tool pricing.

**3. Data quality, while imperfect, is higher in the private MY market — BUT note critical post-critic dialectic challenge.** Malaysian private GP clinics have ~79.6% EMR adoption (pre-2024 study; Hong Kong geo-proxy, Low confidence); private TPA portals (PMCare ECCS, Medilink ECCS 4.0) have structured outpatient claims data that can feed a CDM analytics engine. Indonesia's *private* klinik pratama EMR adoption is 8.9% (single-vendor PT MTK / Medeva market share, per arXiv:2512.05381). **CRITICAL DIALECTIC CAVEAT (added post-critic-pass):** Indonesia's *SATUSEHAT national integration* rate is dramatically higher than the 8.9% figure suggests. HealthTechAsia (January 2026) reports 91% of primary care facilities and 95% of hospitals are SATUSEHAT-integrated, holding records for 270M patients; GovInsider (2025) reports 99% of 10,000+ puskesmas have digital recording via SATUSEHAT. These are different denominators: 8.9% measures *private vendor market share*; 91%/99% measures *national platform integration*. If the SATUSEHAT figures reflect substantive data flows (not only API connections), Indonesia's data infrastructure for a PROLANIS-channel pilot — which runs through puskesmas, not private klinik pratama — is materially competitive with or superior to Malaysia's fragmented private GP EMR landscape. **This does not flip the WH6 verdict** (Malaysia still wins on TPA commercial readiness, PMCare-Naluri pilot template, operator economic capacity), **but it materially weakens the Indonesia data-infrastructure-deficit pillar** and supports a dual-track recommendation: Malaysia first via employer-TPA tier, Indonesia in parallel via PROLANIS public-CDM tier rather than strictly second-phase. (counter-sources: HealthTechAsia Jan 2026; GovInsider 2025; arXiv:2512.05381 single-vendor caveat)

**4. Regulatory risk is manageable.** Malaysia PDPA 2024 creates compliance complexity but also provides a clear framework (explicit consent, anonymized aggregation as safe harbor) that sophisticated TPA legal teams can navigate. Indonesia's emerging OJK COB mandate (deferred, pending final regulation) creates regulatory uncertainty for private insurer CDM integration timing. BNM's December 2025 guidance on prompt claims settlement and general direction toward digital integration signals a supportive regulator without mandating a specific CDM programme architecture — providing flexibility for a pilot.

**5. Naluri's published evidence base provides a validated pilot template.** The PMC 2024 real-world study (n=774 Indonesian employees covered under Malaysian-governed programme, published in JMIR mHealth) is the strongest evidence of digital CDM ROI in the SEA region. This paper gives a Malaysia-piloting AI vendor a directly replicable programme design, a validated outcome metric set (HbA1c, LDL, BP, BMI), and a clear before/after measurement framework — reducing pilot design risk substantially.

**The specific AI intervention to pilot first in Malaysia is PP6.1 (automated threshold monitoring + outreach dispatch)** — building a rule engine that sits on top of PMCare's existing CDM monitoring data, fires a care manager alert when HbA1c >9% or BP >160/100 is entered, and triggers a templated WhatsApp or app-push outreach via Naluri's platform. This is a relatively low-complexity integration (reads structured TPA portal data, applies rules, dispatches outreach) with high measurable impact (RPPT-equivalent controlled-patient rate), a willing early adopter (PMCare/Naluri have already committed capital to this use case), and a replicable outcome study design (replication of the Naluri PMC 2024 study in a Malaysian employer cohort).

**Indonesia is the second-phase market**, best entered via the PROLANIS layer once PCare API access or FKTP EHR integration is achieved — potentially through KlinikPintar or eClinic's growing FKTP network (8.9% adoption, growing under mandate pressure). The RPPT-linked capitation creates a financial incentive for any FKTP to adopt a tool that provably improves controlled-patient rates, and the 22,000+ FKTP population provides scale at lower per-unit willingness to pay. The OJK COB reform, once finalized, will additionally create demand for private insurer CDM digital integration — opening a second Indonesia entry point.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Employer CDM cost gap between monitored vs. unmonitored CDM population estimated at MYR 3,000–8,000/year per uncontrolled DM patient in employer healthcare claims — to validate: actuarial data from Sun Life Malaysia or Prudential MY; Naluri published outcomes data; Malaysian Diabetes Association employer wellness literature.

[ASSUMED-2]: FKTP nurse monitoring labor per month for 80–100 PROLANIS patients: 2–4 hours/month for record review — to validate: time-motion study with PROLANIS coordinator nurses at klinik pratama in Jakarta or Surabaya.

[ASSUMED-3]: FKTP outreach labor per month for 100-patient PROLANIS roster with 20–30% requiring active outreach: 3–15 hours/month — to validate: interview PROLANIS coordinators; compare against Naluri coaching session hours documented in PMC 2024 study.

[ASSUMED-4]: TPA CDM report assembly labor: 2–8 hours per employer per quarterly CDM report — to validate: interview PMCare and AdMedika account management teams.

[ASSUMED-5]: TPA renewal labor per employer account: 8–20 hours per annual renewal cycle — to validate: interview PMCare, AdMedika, and OWLEXA operations/account management leads.

[ASSUMED-6]: PMCare/AdMedika/OWLEXA willingness to pay $3–$8/CDM-enrolled member/year for automated threshold-alert + outreach-dispatch module — to validate: willingness-to-pay interview with care management and product leadership at each TPA.

[ASSUMED-7]: Employer willingness to pay MYR 3–8/employee/year for real-time PDPA-compliant CDM population health dashboard — to validate: HR/HSE director interviews at Malaysian GLCs (Petronas, Telekom Malaysia, CIMB, Maybank) and large manufacturers.

[ASSUMED-8]: New panel clinic credentialing and onboarding timeline at Malaysian private TPA is currently 4–8 weeks — to validate: PMCare panel network management team.

[ASSUMED-9]: 20% of CDM panel clinics are underperforming relative to controlled-patient targets; no objective scoring triggers their review — to validate: PMCare internal clinic performance data; RPPT distribution across PROLANIS FKTPs from BPJS regional data.

[ASSUMED-10]: TPA willingness to pay $2–$5 per panel clinic per month for automated performance scoring dashboard — to validate: PMCare and AdMedika operations heads.

[ASSUMED-11]: Indonesia OJK COB mandate creates new cross-system data integration burden for private TPA CDM programmes — to validate: AdMedika and OWLEXA compliance teams; OJK final regulation timeline.
