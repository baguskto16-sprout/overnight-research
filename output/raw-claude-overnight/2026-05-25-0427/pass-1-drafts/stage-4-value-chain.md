# Stage 4 Value Chain — MCU Reporting, Sign-off & Post-MCU Coordination (Sub-processes 2c + 2d)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Mapped: 2026-05-25*

---

## Stage Description

MCU vendor administrative, medical, and coordination staff executing sub-processes 2c and 2d for corporate health check programmes in Indonesia and Malaysia. Sub-process 2c covers the conversion of raw collated results (output of Stage 3) into signed individual reports and employer population summaries. Sub-process 2d covers the programme-continuity work that follows report delivery: routing abnormal results to follow-up care, tracking CDM enrolments, monitoring attendance, and managing the annual cycle.

The unit of analysis is the per-employee report cycle and the downstream follow-up event, aggregated to the level of a 1,000-employee campaign. Named actors in this stage include: Pertamedika IHC (Indonesia government-owned hospital group), BP Healthcare Group Malaysia (largest private diagnostic chain in SE Asia, POPE employer portal), Prodia OHI (Indonesia's largest private lab / corporate health), Sunway Medical corporate health arm, Qualitas Health Malaysia (300+ clinics, occupational health arm), Mediviron OHC arm, Naluri Malaysia (digital CDM coaching, employer channel), BookDoc Malaysia (corporate health screening + CDM routing), EPS RIA / Reliance Bumi Putra (FOMEMA panel operators).

---

## Market Context

| Metric | Value | Notes |
|--------|-------|-------|
| Indonesia health check-up market | USD 656M (2024), 9.9% CAGR | Grand View Research |
| Malaysia health check-up market | USD 284M (2024), 10.8% CAGR | Grand View Research |
| Corporate/enterprise MCU estimated share | 30–40% of both markets | Fastest-growing sub-segment |
| Prodia corporate client base | >2,000 companies, >500,000 employees/year | Prodia corporate page |
| BP Healthcare POPE corporate clients | Not publicly disclosed; 50+ branches MY | BP Healthcare POPE page |
| Malaysia MCU report TAT (general) | 2–4 weeks standard; 3–7 working days urgent | Fanruan / private clinic industry |
| Indonesia mining sector (Pertamedika, EPS RIA) | Annual MCU mandatory per KEPMENAKER / PP No. 50 | Indonesian OSH law |
| Malaysia medical surveillance obligation | Mandatory under USECHH regulations (DOSH) | DOSH Malaysia |

---

## Sub-step Process Map

### S4-1: Per-Employee Report Template Population

**Activity description:** Admin staff (medical records, data entry) takes the collated per-employee result set (output of Stage 3 — manually assembled or partially structured) and populates a Word/PDF report template. The template includes: personal information header, each test result against reference range, a fitness-for-work classification (Fit / Fit with Condition / Follow-up Required / Unfit), and a free-text medical opinion section. In most MCU vendors, this is still a fill-in-Word-template workflow, not auto-generated from structured data fields.

**Owner / executor role:** Medical records admin or clinical admin staff

**Inputs:**
- Collated per-employee result set (Paper printout, Excel row, or PDF bundle from Stage 3)
- Report template (Word .docx or PDF fillable form — vendor-specific)
- Reference range table (lab-specific, may differ by lab and patient age/sex)
- Fitness-for-work classification criteria (vendor SOPs, DOSH guidelines in MY, Permenaker guidelines in ID)

**Outputs:**
- Populated per-employee MCU report (Word or PDF, unsigned)
- Preliminary fitness classification flag (pending doctor review)

**Typical time per transaction:** [ASSUMED-1] 10–20 minutes per employee for Word template fill from a collated result set where all values are available and reference ranges are marked. For 1,000-employee campaign: 167–333 staff-hours. Validate: time-motion study with Prodia OHI or BP Healthcare admin teams.

**Volume per campaign:** 1 report per enrolled employee; a mid-size campaign = 500–5,000 employees.

**Current automation level:** Low. No MCU vendor in Indonesia or Malaysia has publicly documented automated narrative generation from structured results at scale. Permata Cibubur IS evaluation (2025) explicitly notes that report generation process is still manual template-fill. Prodia OHI and BP Healthcare both use proprietary portals (r-validation.prodia.co.id; POPE) for result viewing but there is no documented LLM-generated narrative layer.

**Error / drop-off mode:**
- Wrong reference range applied (age/sex mismatch between result source and template) → incorrect flag
- Copy-paste error on numeric values → downstream fitness classification error
- Missing results from one lab held up pending re-draw → partial reports released, requiring amendment later
- Template version mismatch between departments or campaign years → employer cannot compare reports

**AI capability that would address it:** LLM templated narrative generation: given structured result fields (test name, value, unit, reference range, sex, age), auto-generate the per-employee report body including a natural-language medical opinion summary. E-signature workflow integration eliminates the Word-export-sign-scan loop. The arXiv agentic LLM workflow for patient-friendly medical reports (2024) demonstrates technical feasibility; the fine-tuning literature (efficient LLM fine-tuning for medical documentation, arXiv 2024) establishes the pathway to domain-specific accuracy.

---

### S4-2: Physician Review and Sign-off

**Activity description:** A licensed occupational health physician (Dokter Hiperkes in Indonesia, Occupational Health Doctor registered with DOSH in Malaysia) reviews each populated report, confirms the fitness-for-work classification, flags any missed abnormal results, and signs (wet signature or stamp in most cases; e-signature adopted by a small minority of vendors). In batch MCU campaigns, this creates a sequential review queue: physician cannot begin until S4-1 is complete, and employer cannot receive reports until physician sign-off is complete.

**Owner / executor role:** Dokter Hiperkes (Indonesia) / Registered OHD (Malaysia)

**Inputs:**
- Populated per-employee report (from S4-1)
- Full result set (physician may re-check raw values against the populated template)
- Employer's job risk profile (determines what "Fit with Condition" means in context)

**Outputs:**
- Signed individual MCU report (PDF or paper)
- Any escalation flags for urgent findings (e.g., TB suspect, severe hypertension, mental health red flag)

**Typical time per transaction:** 3–10 minutes per report for physician review and sign-off under normal batch conditions. [ASSUMED-2] For a 1,000-employee campaign: 50–167 physician-hours = 6.25–20.9 physician working days. This is the primary physician-time bottleneck in the report delivery chain. Validate: time-motion at Pertamedika, Qualitas, or Columbia Asia OHD.

Benchmark context: UK occupational health report guide (occupationalhealthassessment.com) notes OH reports typically take 1–2 working days; US health system data shows physicians spend on average 49% of their day on EHR administration; for every 15 min of patient-facing work, ~9 min of charting occurs (EvidenceCare 2026).

**Current automation level:** None. E-signature adoption is minimal. BP Healthcare Doctor2U post (Facebook, 2024) advertises "Smart Medical Report" feature — indicating this is a differentiator being marketed, not industry standard. DOSH Malaysia requires OHD registration and physical or digital attestation; no regulatory barrier to e-signature exists under Electronic Signature provisions of the Digital Signature Act 1997.

**Error / drop-off mode:**
- Physician fatigue / time pressure on large batch → missed abnormal flags
- Incomplete collation reaching physician review → physician must return report to admin (sequential re-work)
- OHD shortage: DOSH directory lists 3,040 medical surveillances by OHDs in 2016; total registered OHD pool is limited; vendor accounts must queue for OHD availability → TAT inflation

**AI capability that would address it:** AI pre-screening flag layer — classification model alerts physician to high-risk results before they begin review, reducing cognitive load. E-signature workflow. The physician still makes the final judgment; AI shortens time-to-review per employee.

---

### S4-3: Individual Report Delivery

**Activity description:** Signed reports are delivered to: (a) the employee (typically email PDF or secure portal link; paper copy for shift workers without corporate email); (b) the employer HR coordinator (employer population summary + individual report access). Delivery channel mix in the region: email with PDF attachment (dominant), employer portal (BP Healthcare POPE, Prodia r-validation portal, Qualitas portal), WhatsApp PDF share, paper copies via courier for industrial/mining sites.

**Owner / executor role:** MCU vendor admin / client relations

**Inputs:**
- Signed per-employee report (PDF)
- Employer-provided employee email directory (often outdated — [ASSUMED-3])
- Employer portal login and data upload configuration

**Outputs:**
- Report delivered to employee + HR
- Delivery confirmation log (if portal-based) or bounce tracking (if email)

**Typical time per transaction:** [ASSUMED-4] 2–5 minutes per employee for email/portal delivery for a standard campaign. Bulk upload to portal cuts this; paper copy dispatch may be 10–20 min per employee including packaging.

**Current automation level:** Low–Medium. Portal delivery is the most automated channel but requires that the vendor's system has employer portal integration set up. Email PDF dispatch is semi-automated (mail merge) but requires a verified email list. Paper remains required for industrial workers without email.

**PDPA/UU PDP tension:** The report contains sensitive personal data (health data under Malaysia PDPA 2010 Section 4, Indonesia UU PDP 2022 Article 1). The employer receives only a fitness classification + population summary under best-practice PDPA interpretation; individual medical results should be delivered only to the employee. In practice, many employers receive full individual reports — a compliance gap confirmed by the Rechtsvinding 2024 review of Indonesia's MCU confidentiality law, which found "overlapping regulations, limited institutional capacity, and weak cybersecurity practices" in enforcement. The tension between employer's legitimate need-to-know (fitness for duty, FOMEMA status, mining DOT clearance) and employee privacy is structurally unresolved.

**Error / drop-off mode:**
- Incorrect employee email on file → report not received; employee cannot access their results
- Portal access configuration errors → employer HR cannot pull population data
- PDPA non-compliance: full individual reports sent to employer rather than fitness classification only

---

### S4-4: Employer Population Summary Generation

**Activity description:** The employer receives a population-level aggregate report summarizing the MCU results of all enrolled employees. This typically includes: count/percentage by fitness category (Fit / Fit with Condition / Follow-up / Unfit), distribution of abnormal findings by test type, top diagnoses, a trend comparison vs. the prior year's campaign (if any), and a list of employees requiring follow-up (name, employee ID, finding). This aggregate document is produced by: manually pivoting the per-employee result data in Excel, or using the vendor's portal analytics module (where one exists — BP Healthcare POPE, Qualitas).

**Owner / executor role:** MCU vendor account manager / clinical admin

**Inputs:**
- All per-employee result data (ideally in structured spreadsheet form; in practice often extracted from signed PDFs)
- Prior-year population data (for trend comparison — often unavailable if employee changed employer or vendor changed)
- Employer's job category / department tagging (to enable department-level risk breakdown)

**Outputs:**
- Employer population summary report (Excel pivot or Word/PDF summary)
- Follow-up list: employees needing GP/specialist referral

**Typical time per transaction (at campaign level):** [ASSUMED-5] 4–12 hours of admin time to manually pivot 1,000-employee result data into a population summary if done in Excel. For automated portal extraction (POPE-style), this drops to <1 hour. Validate: ask BP Healthcare POPE team and Prodia corporate account managers.

**Current automation level:** Low–Medium. BP Healthcare POPE portal explicitly documents aggregate employer reporting as a product feature; it is not clear whether this is generated from a structured database (auto) or manually assembled. Qualitas and smaller vendors likely use Excel-based manual pivoting. Prodia portal (r-validation) provides per-employee result viewing but the employer population summary format is not documented publicly.

**PDPA compliance requirement:** Under PDPA 2010 Malaysia and UU PDP 2022 Indonesia, the employer population summary should present only de-identified aggregate statistics (unless the employer has explicit written consent from employees for disclosure of identified results). The follow-up list by employee name sits in a grey zone: DOSH forms USECHH 1–4 in Malaysia require named employee data sent to the employer and DOSH — a statutory disclosure that creates a PDPA-compliant channel for identified occupational health data. Outside this regulated channel, identified data requires explicit employee consent.

**Error / drop-off mode:**
- Missing employees (incomplete MCU attendance) not clearly flagged in population summary → employer believes 100% compliance when 15–20% of employees did not attend
- Year-on-year comparison impossible if employee composition changed, prior vendor's data is in a different format, or prior-year reports were only on paper
- Department-level breakdown unavailable if employer did not pre-tag employees by cost centre / job category

---

### S4-5: Abnormal-Result Routing and Follow-up Coordination

**Activity description:** Employees classified as "Follow-up Required" or "Fit with Condition" must be directed to appropriate next-care venues: GP clinic, occupational health specialist, or (for new CDM diagnoses) a structured CDM programme. This routing step has no standardized automated workflow in the Indonesia/Malaysia MCU ecosystem. The MCU vendor's role typically ends at report delivery; the employer's HR coordinator must manage follow-up communication to employees and coordinate with the employer's panel clinic or TPA for CDM enrolment. Employees who do not self-initiate follow-up are effectively lost.

**Owner / executor role:** Employer HR / HSE coordinator (for routing); MCU vendor (limited to report flagging); employee (for self-initiation)

**Inputs:**
- Follow-up list from S4-4 (employee name, finding, recommended next step)
- Employer's panel clinic / TPA contact details
- Employee contact details

**Outputs:**
- Employee informed of abnormal finding (typically by email or via supervisor)
- Referral letter or panel clinic booking confirmation (if executed)
- CDM enrolment confirmation (if new DM/HBP/hyperlipidaemia diagnosed)

**Typical time per transaction:** [ASSUMED-6] 5–15 minutes per follow-up employee for HR to email/call employee, confirm referral booking, and log status. For a 1,000-employee campaign with 25% requiring follow-up = 250 employees × 10 min = 42 hours of HR time. Validate with HR coordinators at large employers in Malaysia (manufacturing, mining).

**Leakage rate:** Based on Singapore community screening analogy (PMC 2023, Singapore referral non-compliance ~25% for hypertension/hyperlipidaemia/hyperglycaemia) and French workplace glucose screening follow-up (PMC 2025, ~48% lost to follow-up despite repeated contact attempts), the leakage rate in Indonesia/Malaysia MCU follow-up is estimated at 30–60% of must-follow-up employees who do not present for GP or specialist follow-up. [ASSUMED-7] No Indonesia/Malaysia-specific follow-up compliance study for MCU abnormal findings found — all studies available are proxies.

**Current automation level:** Minimal. No MCU vendor in Indonesia/Malaysia has publicly documented an automated abnormal-result routing system with calendared follow-up reminders and non-responder escalation. Naluri Malaysia and BookDoc offer CDM coaching enrolment as a downstream product, but the handoff from MCU report to CDM enrolment is not documented as automated.

**Error / drop-off mode:**
- Employee receives follow-up list item by email but does not book GP visit → lost without escalation
- Employer HR does not have time or mandate to chase employees → follow-up tracking abandoned after 1–2 attempts
- CDM enrolment referral requires employee to navigate TPA panel clinic separately → enrollment rate drops from attrition at each step
- Mining/industrial sector DOT clearance pending while follow-up is incomplete → employer compliance risk

---

### S4-6: Annual Cycle Management and Year-on-Year Trending

**Activity description:** For employers running annual MCU programmes, the MCU vendor or employer HR should be able to compare current-year findings for each employee against prior-year findings to identify deteriorating trends (rising HbA1c, rising blood pressure, new abnormal lipid profile). In practice, this trending is rarely done at the vendor level because: (a) employees change employers, meaning year-on-year data is at a different vendor; (b) even within the same employer, the MCU vendor may have changed; (c) results are stored as PDFs in vendor portals with no persistent employee identity record linking year 1 to year 2.

**Owner / executor role:** MCU vendor analytics team (rarely has capacity); employer HR (lacks tools); DOSH/Kemenaker (receives USECHH forms but no longitudinal analytics function)

**Inputs:**
- Current-year per-employee structured results
- Prior-year per-employee structured results (often unavailable — paper archive or PDF in prior vendor system)
- Stable employee identity key (NIK in Indonesia, NRIC in Malaysia — consistent across employers in principle, but not used as a shared MCU record key in practice)

**Outputs (intended, rarely achieved):**
- Year-on-year trend report per employee
- Population trend report (is the company getting healthier or sicker?)
- Early warning list: employees whose markers are trending toward CDM threshold

**Current automation level:** Essentially absent outside large proprietary corporate accounts with dedicated occupational health functions (e.g., Pertamedika for Pertamina group employees). BP Healthcare POPE mentions "actionable information" but no documented year-on-year trending by employee ID. Indonesia medical records law (PMK No. 24/2022) places medical records ownership with the facility, not the patient — there is no patient-controlled longitudinal record in either market.

**Error / drop-off mode:**
- Employee leaves employer → all prior MCU data stays at prior employer/vendor; new employer must start from zero
- Employer changes MCU vendor → prior data in old vendor portal; not exportable in structured format
- Data exists at multiple vendors in PDF format → no identity resolution mechanism links individual employee records across silos

**AI capability that would address it:** Identity resolution layer using NIK/NRIC as stable key + longitudinal record store. LLM-assisted year-on-year narrative ("Your HbA1c has increased from 5.8 mmol/L in 2023 to 6.3 mmol/L in 2024, approaching the DM diagnostic threshold of 6.5 mmol/L. Recommended: retest within 6 months."). Directly tests WH5 and the broader data-portability structural problem.

---

## Preliminary Pain Points (for Stage 4 pain point file)

1. **PP4.1 — Manual report generation and physician sign-off bottleneck (S4-1 + S4-2):** Individual MCU reports are produced by Word template fill (10–20 min per employee admin time) followed by physician review (3–10 min per employee). For a 1,000-employee campaign this represents 220–500 person-hours in the report generation and sign-off chain. No MCU vendor in the region has documented automated narrative generation. Targets WH3.

2. **PP4.2 — Manual employer population summary with PDPA-unresolved data governance (S4-4):** Population summary is Excel-pivot or manual assembly; 4–12 hours per 1,000-employee campaign for vendors without a portal analytics module. Year-on-year comparison is near-impossible at most vendors. PDPA/UU PDP tension for employer access to individual findings is structurally unresolved. Targets WH3.

3. **PP4.3 — Abnormal-result follow-up leakage: 30–60% of must-follow-up employees never present for care (S4-5):** Based on Singapore and French workplace screening analogies, nearly half of employees flagged for follow-up do not complete the referral. No automated handoff to clinic/CDM programme with calendared reminders exists in the Indonesia/Malaysia MCU ecosystem. Directly tests WH5.

4. **PP4.4 — Year-on-year trending structurally impossible due to data siloed in vendor systems (S4-6):** Employee health records are owned by the facility (PMK No. 24/2022 Indonesia; medical records law Malaysia), not the employee or a shared infrastructure. When employees change employers or employers change vendors, longitudinal records are lost. No identity-resolution mechanism links year-on-year MCU data. Targets WH2 and WH5.

---

## Named Players at This Stage

| Player | Market | Role at Stage 4 |
|--------|--------|-----------------|
| Pertamedika IHC | Indonesia | Hospital group providing MCU and OHD services for Pertamina and third-party corporate clients; likely has internal K3RS database for population reporting |
| Prodia OHI | Indonesia | Corporate lab / MCU vendor; r-validation portal for per-employee result delivery; population reporting format not public |
| BP Healthcare Group | Malaysia | Largest private diagnostic chain; POPE portal provides aggregate employer reporting; Doctor2U "Smart Medical Report" feature |
| Qualitas Health Malaysia | Malaysia | 300+ clinics; occupational health arm; corporate health screening with employer summary |
| Mediviron OHC arm | Malaysia | Panel clinic network with occupational health capability; GP-based OHD function |
| Sunway Medical corporate health | Malaysia | Hospital-based MCU for corporate; executive health screening tier |
| EPS RIA / Reliance Bumi Putra | Malaysia | FOMEMA panel operators; fit/unfit binary outcome + FOMEMA portal reporting |
| Naluri Malaysia | Malaysia | Digital CDM coaching; receives follow-up cases from employer MCU programs; post-MCU CDM enrolment pathway (partially documented) |
| BookDoc Malaysia | Malaysia | Corporate health screening + GP/CDM booking; intended to close the MCU-to-follow-up loop |

---

*Output feeds into: pass-1-drafts/stage-4-pain-points.md*
