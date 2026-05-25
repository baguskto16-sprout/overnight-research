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
