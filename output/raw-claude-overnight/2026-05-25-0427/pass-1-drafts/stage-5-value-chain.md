# Stage 5 Value Chain — Insurance/TPA: Pre-auth, Claims Submission & Adjudication (Sub-processes 3a + 3b + 3c)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Mapped: 2026-05-25*

---

## Stage Description

Private health insurers and Third-Party Administrators (TPAs) executing benefit verification, pre-authorisation, claims submission intake, completeness checking, and adjudication for employer-sponsored health benefits across Indonesia and Malaysia. The unit of analysis is the individual claim transaction, decomposed from admission notification through payment settlement. This stage covers:

- **Indonesia:** BPJS Kesehatan (single national payer); private insurers: Allianz Life Indonesia, AXA Mandiri, Prudential Indonesia, Asuransi Sinar Mas, MNC Life, Sequis Life, AIA Indonesia; TPAs: AdMedika (Telkom subsidiary), OWLEXA Healthcare (Lintasarta), VESCO, Carepartners, Asuransi BCA TPA arm
- **Malaysia:** Life insurers: AIA Bhd, Allianz Life MY, Etiqa, Prudential Assurance MY, Great Eastern; TPAs: PMCare (pioneer/leading, >5,280 GP panel clinics, >RM1 billion annual payments), Medilink Global (ECCS 4.0, >15 million claims since 2011), MediExpress, IHM, MediPays, eHealthMD, Fullerton Health Malaysia

---

## Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Malaysia MHIT market volume (2023) | RM7,325 million (~USD 1.6 billion) | High | (1) |
| Malaysia medical inflation (2024) | 15% (vs. global average 10.1%) | High | (1) |
| PMCare annual claims payments (2024) | >RM2 billion (~USD 440M) | High | (2) |
| PMCare covered lives | 983,931 members (2024) | High | (2) |
| PMCare claims approved transactions/year (2024) | >4.2 million | High | (2) |
| PMCare claim denial rate | ~1.3% (41,444 denied claims worth RM23.5M in 2024) | High | (2) |
| Medilink ECCS cumulative claims processed | >15 million out/in-patient claims since 2011 | High | (3) |
| BPJS Kesehatan total FKRTL (hospital-level facilities) | 2,940+ hospitals accredited (2024) | High | (4) |
| BPJS Kesehatan pending claims (Oct 2024) | Rp575.4 billion (~USD 35M) pending in single month | High | (5) |
| BPJS Kesehatan pending claim rate (Oct 2024) | 19.6% of submitted claims pending; average for H2 2024 reached ~20–30% per Persi | High | (5) |
| Indonesia private health insurance market (TPA) | USD 5.32 billion projected by 2030, growing from smaller 2024 base | Medium | (6) |

---

## Sub-step Process Map

The table below decomposes the full insurance/TPA operational cycle into 12 sub-steps (S3a-1 through S3c-6). Each sub-step addresses all nine required dimensions.

---

### S3a-1: Eligibility & Benefit Verification (Pre-admission Check)

**Activity description:** When a patient presents at a panel hospital or clinic, the hospital admissions desk queries the TPA or insurer to verify: (1) whether the patient is an active member, (2) what the applicable benefit limits and sub-limits are, (3) what exclusions or waiting periods apply, and (4) whether the planned admission qualifies for cashless/direct-billing (GL) or requires reimbursement. In Malaysia, panel hospitals query via TPA portal (PMCare portal, Medilink ECCS, MediExpress system) or phone/fax to TPA hotline. In Indonesia for BPJS patients, the SEP (Surat Eligibilitas Peserta) is generated via VClaim/PCare API in real time; for private insurers, hospitals call or email TPA help desks or use proprietary portals.

**Owner / executor role:** Hospital admissions clerk (benefits query); TPA call centre agent or automated portal (eligibility response)

**Inputs:**
- Patient identity document (NRIC/MyKad in MY; KTP/NIK in ID)
- Insurance card / BPJS membership number
- Patient's stated reason for admission / referring GP's referral letter
- TPA/insurer portal login or phone access

**Outputs:**
- Eligibility confirmation (active/inactive)
- Benefit schedule printout or portal screen (benefit limits, copay, deductibles)
- Exclusion flags (pre-existing conditions, waiting period status)
- Approval/decline for cashless GL pathway

**Typical time per transaction:** 10–30 minutes for Malaysia TPA portal verification (includes queue time, portal login, benefit schedule review); up to 2–4 hours if eligibility is uncertain and requires TPA call centre escalation. Indonesia BPJS SEP generation via VClaim: 2–5 minutes if online; longer during system outages. [ASSUMED-1]: to validate — time-motion study at panel hospital admissions desk at Pantai / KPJ (Malaysia) and RSUD Cikini (Indonesia).

**Volume per typical TPA per day:** PMCare: ~11,500+ approved transactions/day (4.2M/year ÷ 365). BPJS Kesehatan: ~500,000+ daily encounters across all FKTP and FKRTL facilities (86 million+ claims/year).

**Current automation level:**
- Malaysia: Higher; PMCare and Medilink ECCS 4.0 provide web portal eligibility checks; EDC card-swipe terminals at GP panel clinics. However, benefit schedule complexity (customized by employer) often requires manual cross-reference. Phone verification persists at smaller panel providers.
- Indonesia BPJS: Semi-automated via VClaim/PCare API; real-time SEP generation when systems are online. Private insurer eligibility checks in Indonesia are largely phone and email-based due to absence of standardized API connectivity across TPAs.

**Error / drop-off mode:**
- BPJS VClaim outage → manual paper SEP fallback; claim reconciliation issues downstream
- Patient's policy inactive (lapsed premium or employer non-payment) → patient must pay OOP or seek alternative facility
- TPA benefit schedule mismatch (employer-specific sub-limits not visible in portal) → admissions clerk manually calls TPA; delay of 30–120 minutes
- Non-panel hospital admission → automatic reimbursement routing; patient responsible for upfront payment

**AI capability that would address it:** Real-time eligibility API aggregation across multiple TPAs/insurers in a single query; LLM-based benefit schedule interpretation that converts dense policy language into plain-language summary for admissions clerk; automated pre-check that flags expected copay and coverage gaps before patient signs consent.

---

### S3a-2: Pre-Authorisation (Guarantee Letter) Request — Inpatient & Specialist

**Activity description:** For planned inpatient admissions or specialist procedures covered under managed-care schemes, the hospital must obtain a Guarantee Letter (GL) / pre-auth from the TPA or insurer before treatment proceeds. The hospital admissions or insurance desk completes a Pre-Authorisation Form (PAF), attaches the referring specialist's clinical justification, submits via TPA portal, fax, or email, and awaits approval. In Malaysia, AIA targets 1-hour approval for pre-planned procedures upon receipt of documents. Actual practice involves back-and-forth: TPA may request additional medical records, specialist notes, or ICD coding from the hospital before issuing. In Indonesia, BPJS inpatient GL (Surat Jaminan Pelayanan, SJP) is semi-automated for FKRTL via the INACBG system but requires diagnosis and procedure code submission; private TPA pre-auth is entirely manual, primarily phone + email or fax-based.

**Owner / executor role:** Hospital insurance desk nurse or medical social worker (PAF completion, document assembly, submission); TPA clinical reviewer or call centre agent (GL issuance decision); attending specialist (clinical justification letter)

**Inputs:**
- Pre-Authorisation Form (PAF) — hospital-completed, specialist-signed
- Clinical justification letter / specialist recommendation
- Lab/imaging results (if relevant to admission justification)
- Patient identity + policy number
- Referral letter from GP (for specialist admissions in managed-care schemes)

**Outputs:**
- Initial Guarantee Letter (IGL): GL with limit approval for admission (Malaysia norm: up to 6 hours)
- GL rejection letter: with specified reason (not medically necessary, exclusion applies, limit exhausted)
- Request for additional information (RFAI): TPA queries hospital for missing documentation — extends timeline by hours to days
- Final Guarantee Letter (FGL): issued at discharge; Great Eastern targets 75 minutes for straightforward FGL upon receipt of complete documentation

**Typical time per transaction:** Initial GL: 1–6 hours for straightforward planned admissions (panel hospital + complete documents). Emergency admissions: GL should be issued within 24 hours (standard practice). Complex cases with RFAI: 1–3 business days. [ASSUMED-2]: to validate with PMCare, Medilink operations staff on actual median GL turnaround.

**Volume per typical TPA per day:** PMCare: ~240 hospitalisation cases/day (87,789 hospitalisation claims/year ÷ 365). Across 4.2M total transactions, inpatient GL represents a fraction; most transactions are outpatient panel claims not requiring prior GL.

**Current automation level:**
- Malaysia: Most major TPAs (PMCare, Medilink, MediExpress) have portal-based PAF submission; some have mobile app submission. However, clinical review remains manual — a TPA clinical nurse or medical officer reviews clinical justification before issuing GL.
- Indonesia private TPA: Predominantly phone + fax/email-based; no standardized API for private TPA pre-auth in Indonesia. AdMedika and OWLEXA have proprietary online portals but hospital uptake is uneven; many hospitals still use fax for private insurance pre-auth.

**Error / drop-off mode:**
- Incomplete PAF (missing specialist signature, ICD code missing) → RFAI issued; 24–48 hour delay
- GL coverage limit set lower than expected treatment cost → hospital contacts TPA for GL top-up mid-treatment; requires second authorization cycle
- 67% of specialists in Malaysia (CodeBlue, 855-specialist survey, Oct 2025) report GLs revoked after patient admission/treatment — triggering claim disputes post-admission
- Clinical reviewer at TPA lacks specialist knowledge of the procedure being requested → 83% of specialists say TPA claims officers have "little or no understanding" of diagnoses/treatments

**AI capability that would address it:** LLM-based automated clinical justification extraction from specialist notes → structured PAF completion; rules-based auto-approval for low-clinical-risk, low-cost admissions; AI triage that routes straightforward cases to auto-approve lane and complex cases to clinical reviewer queue.

---

### S3a-3: Benefit Verification for Outpatient Panel Claims (GP & Specialist)

**Activity description:** For outpatient panel visits at GP clinics (Malaysia TPA-managed-care) or specialist outpatient departments, real-time benefit verification occurs at point of service via card swipe terminal (EDC) or portal lookup. This is faster than inpatient GL but still requires: (1) confirming membership active, (2) confirming the clinic/specialist is on the approved panel, (3) applying correct copay, (4) routing the claim to the correct payer (insurer vs. employer self-funded vs. TPA). For BPJS FKTP outpatient, SEP + SOAP notes generate the claim input; for private TPA panel GPs in Malaysia, the clinic submits a claim via TPA portal or Medilink ECCS at time of visit.

**Owner / executor role:** GP clinic receptionist (panel claim submission); TPA automated system (EDC swipe adjudication); hospital specialist billing clerk (specialist outpatient claim)

**Inputs:** Patient card / ID + membership number; clinic's TPA portal or EDC terminal; visit summary / diagnosis code (if required for claim tagging)

**Outputs:** Instant approval (EDC swipe → green light) or rejection (red light, manual follow-up); claim submission confirmation number; copay amount communicated to patient

**Typical time per transaction:** 2–5 minutes for EDC-based outpatient (Malaysia panel GP). Portal-based claim submission at GP level: 5–15 minutes if diagnosis coding required.

**Volume per typical TPA per day:** PMCare GP claims: ~8,767/day (3.2 million GP transactions/year); Medilink: high volume across 3,500+ provider network.

**Current automation level:** Higher for outpatient panel at major TPAs (EDC terminals widespread in Malaysia panel clinics). Indonesia private insurer outpatient verification remains portal-dependent with variable clinic adoption.

**Error / drop-off mode:** EDC terminal offline → paper claim fallback; late submission and potential rejection; membership active but employer has not notified TPA of employee status change → claim adjudicated but later reversed if employee terminated

**AI capability that would address it:** Real-time eligibility re-check at point of claim (not just at enrollment); AI-assisted ICD-10 coding at GP level (see PP1.2 cross-reference) that auto-tags diagnosis for clean claim submission.

---

### S3b-1: Claims Submission — Document Assembly & Channel Selection

**Activity description:** After an inpatient discharge or outpatient service episode, the hospital or clinic bills the TPA/insurer. For cashless/direct-billing claims, the hospital submits the claim package (itemized bill, discharge summary, investigation results, consent forms, PAF, GL reference number) via the TPA portal, EDC upload, or — in legacy workflows — fax or physical courier. For reimbursement claims (non-panel, emergency non-panel), the patient or provider submits a claim form with original receipts. In Indonesia, BPJS hospital claims are submitted monthly in batch via e-Klaim INA-CBG system; private insurer claims in Indonesia are submitted per-episode via insurer portal, email, or physical document courier. In Malaysia, panel hospital direct-billing claims go via TPA portal (PMCare, Medilink ECCS, Great Eastern portal, Manulife TPA portal); reimbursement claims are submitted by policyholders via insurer portal/app or physical branch.

**Owner / executor role:** Hospital billing / medical records clerk (claim document assembly, GL number lookup, portal submission); patient (reimbursement claim); insurer data entry clerk (for paper/fax claims)

**Inputs:**
- Itemized hospital bill (breakdown by procedure, medication, room, doctor fees)
- Discharge summary (diagnosis, procedures performed, clinical notes)
- GL number / pre-auth reference
- Original receipts (for reimbursement)
- Claim form (insurer-specific format)
- Investigation results supporting diagnosis

**Outputs:**
- Submitted claim with tracking number
- Acknowledgement receipt from TPA/insurer
- List of missing documents (if system detects incompleteness at submission)

**Typical time per transaction:** Portal submission: 20–45 minutes for a complete inpatient claim assembly and upload. Paper/fax submission: 60–90 minutes. Reimbursement claim assembly by patient: 60–180 minutes. Indonesia BPJS batch: monthly aggregation; billing department processes claims throughout the month.

**Volume per typical TPA per day:** PMCare: ~87,789 hospitalisation + 685,451 specialist + 3.2M GP claims annually = ~11,500+/day aggregate. BPJS Kesehatan: ~500,000+ encounters/day aggregated across facilities.

**Current automation level:**
- Malaysia panel hospitals: Direct portal submission is standard for major TPAs. Some hospitals (smaller private clinics, non-panel providers) still use fax or email with PDF attachments.
- Indonesia private insurers: Variable; larger hospital groups (Siloam, MRCCC) have portal integration; community hospitals and smaller klinik use email/fax. BPJS e-Klaim INA-CBG: mandatory electronic submission for accredited FKRTL, but batch monthly — not real-time.

**Error / drop-off mode:**
- Missing GL number on claim → automatic rejection for direct-billing claims
- Bill code mismatch between hospital billing system and TPA fee schedule → pended for manual reconciliation
- Document upload portal timeout for large PDF files → submission must restart; claim receipt not confirmed
- Incomplete itemization (medication codes not present, room type unspecified) → completeness check failure

**AI capability that would address it:** AI-based claim completeness checker at point of submission — reviews uploaded PDF bill against required fields and alerts hospital billing staff to missing items before submission is finalized; OCR extraction of itemized bill into structured claim fields (eliminating re-keying).

---

### S3b-2: Completeness Checking & Deficiency Notice

**Activity description:** Upon receipt of a claim package, the TPA or insurer applies a completeness check — a set of rules that verify whether all required documents are present, the GL reference is valid, the claim falls within the benefit period, and diagnosis codes are present. In automated systems (PMCare portal, Medilink ECCS), this check is rule-based and executes within seconds. In manual workflows (fax-received claims, email PDF submissions), a TPA back-office clerk reviews the package against a checklist. If deficient, a deficiency notice is issued — formally requesting the missing item(s). The hospital must source and resubmit. This cycle can repeat 2–3 times per claim if deficiency notices are issued sequentially rather than comprehensively.

**Owner / executor role:** TPA back-office operations clerk (manual review) or TPA rules engine (automated check); hospital billing department (deficiency resolution and resubmission)

**Inputs:** Submitted claim package; TPA completeness rule set; GL reference database (to validate GL number is valid and not expired)

**Outputs:** Clean claim (passes to adjudication) or deficiency notice (returned to hospital with list of missing items and resubmission deadline)

**Typical time per transaction:** Automated completeness check: seconds to 2 minutes. Manual completeness review: 15–30 minutes per claim. Deficiency resolution and resubmission by hospital: 2–20 business days depending on what is missing (a simple document re-upload vs. a request for original specialist notes that are in physical records).

**Volume:** [ASSUMED-3]: percentage of submitted claims failing first-pass completeness check in Malaysia TPA context: estimated 20–40% based on Indonesia BPJS evidence (13–20% pending in H2 2024 for various document/coding issues) and US healthcare benchmark (30–40% of denied claims are due to administrative/completeness issues). To validate with PMCare/Medilink operations data.

**Current automation level:** Automated at major TPAs (PMCare, Medilink) for structured portal-submitted claims. Manual for fax/email submissions.

**Error / drop-off mode:** Sequential (rather than comprehensive) deficiency notices — TPA checks only Phase 1 items, passes back, then checks Phase 2 on resubmission — creates 2–3 round-trip cycles adding 4–8 weeks total. Hospital bears cost of repeated resubmission labor; TPA bears cost of repeated manual review cycles.

**AI capability that would address it:** Comprehensive deficiency detection in a single pass — AI reviews all required fields and documents simultaneously and issues a single comprehensive deficiency notice; NLP extraction from discharge summary to auto-populate missing ICD codes; completeness prediction model trained on historical deficiency patterns to pre-alert hospital before submission.

---

### S3b-3: Resubmission Cycle Management

**Activity description:** When a claim is returned with a deficiency notice, the hospital billing department must locate the missing document (original receipt from records department, additional clinical note from specialist, corrected coding from coder), compile a resubmission package, and resubmit via the same channel. Each resubmission cycle restarts the adjudication timeline. Multiple resubmissions are common for complex inpatient claims with missing specialist notes or coding disputes. In Indonesia, BPJS claims returned as "pending" must be corrected and resubmitted within a hospital's monthly billing cycle; uncorrected claims become void after 6 months per Presidential Regulation 59/2024.

**Owner / executor role:** Hospital billing clerk; hospital coder (for coding corrections); specialist doctor (for additional clinical documentation); TPA back-office (claim tracking)

**Inputs:** Original deficiency notice; sourced missing documents; corrected claim form or coding

**Outputs:** Resubmitted clean claim (or new deficiency notice if still incomplete)

**Typical time per transaction (resubmission cycle):** 2–4 weeks per cycle for a full resubmission; Indonesia BPJS: up to 30–60 business days in severe cases. Each round-trip = 1 resubmission cycle; some claims go through 2–3 cycles.

**Current automation level:** Very low. Manual tracking by hospital billing department via spreadsheet or basic billing system; TPA tracks via internal claim management system but typically cannot push proactive resubmission guidance to hospitals.

**Error / drop-off mode:** Claim void (never settled) if resubmission deadline missed — direct revenue loss for hospital; compounded by coding dispute where hospital coder and BPJS verifikator disagree on ICD code → claim returns in loop without resolution; specialist unavailable to provide additional clinical note.

**AI capability that would address it:** Automated resubmission tracking dashboard for hospital billing staff with deadline alerts; AI-assisted clinical note drafting to address RFAI without requiring specialist to write de novo; predictive model flagging claims likely to require additional documentation based on diagnosis + procedure pattern, enabling proactive document assembly before submission.

---

### S3c-1: Eligibility & Coverage Adjudication (Auto-Adjudication Fast Lane)

**Activity description:** For clean claims that pass completeness check, the TPA/insurer system applies adjudication rules: (1) verify membership was active on date of service, (2) confirm the treatment is a covered benefit (not excluded), (3) apply applicable sub-limits (e.g., specialist fee cap, daily room cap), (4) apply deductible or copay, (5) calculate net benefit payable. Claims meeting all eligibility criteria without clinical complexity flags route to auto-adjudication — a rules-based fast lane that settles the claim without human clinical review. In mature APAC TPA deployments, 60–75% of claims qualify for auto-adjudication (InterPixels AI, 2026). The remaining 25–40% route to medical review queue.

**Owner / executor role:** TPA adjudication rules engine (auto-lane); TPA eligibility database

**Inputs:** Clean claim package; membership eligibility database; fee schedule (TPA-specific); benefit grid (employer-customized)

**Outputs:** Adjudication decision: approved (amount payable), denied (with coded denial reason), or pended to medical review queue

**Typical time per transaction:** Auto-adjudication: seconds to minutes. Rules engine processes claims in near-real-time for portal-submitted, complete claims.

**Current automation level:** High for major TPAs with modern core systems (PMCare, Medilink ECCS 4.0, AIA Malaysia). Lower for smaller TPAs and Indonesian private insurers where adjudication rules are partially manual or embedded in legacy systems.

**Error / drop-off mode:** Auto-adjudication applies incorrect fee schedule version (employer contract updated but not yet propagated in system) → incorrect benefit calculation; duplicate claim flag triggers erroneously due to date-of-service input error → claim incorrectly pended; membership termination not yet updated in system → claim paid for terminated member.

**AI capability that would address it:** Real-time fee schedule synchronization with employer contract database; AI-based duplicate detection that checks clinical content not just claim metadata; ML model predicting which auto-adjudicated claims carry high probability of payment error (for post-payment audit flagging).

---

### S3c-2: Medical Review Queue — Clinical Necessity Assessment

**Activity description:** Claims not passing auto-adjudication are routed to a medical review queue staffed by clinical reviewers (typically nurses or medical officers employed by the TPA/insurer). The reviewer assesses: (1) whether the clinical justification supports the diagnosis and procedures billed, (2) whether the length of stay is medically appropriate, (3) whether specific high-cost items (implants, drugs, procedures) are medically necessary given the clinical picture. The reviewer consults clinical guidelines, the insurer's medical policy library, and sometimes calls the treating specialist for clarification. In Malaysia, CodeBlue's 2025 specialist survey found 83% of specialists rate TPA claims officers' clinical competency as "little or no understanding."

**Owner / executor role:** TPA medical officer / clinical nurse reviewer; specialist doctor at hospital (for clarification calls)

**Inputs:** Full claim package; patient clinical notes; specialist letter; TPA medical policy guidelines; clinical guidelines (e.g., MOH Malaysia Clinical Practice Guidelines)

**Outputs:** Medical review decision: approved as submitted, approved at reduced amount (partial approval with clinical basis), denied with clinical rationale, or pended pending specialist clarification

**Typical time per transaction:** 30–90 minutes per complex claim reviewed. Manual review queue: 1–5 business days from routing to decision.

**Volume:** PMCare: ~25–40% of inpatient claims routed to medical review (based on APAC benchmark that 60–75% auto-adjudicate). For PMCare's 87,789 hospitalisation claims/year, this implies 22,000–35,000 medical review events/year.

**Current automation level:** Low. Clinical review is largely manual. Some TPAs use rule-based screening to flag specific procedure codes (e.g., implants above fee schedule threshold, certain specialist procedures) for mandatory medical review; actual review remains human.

**Error / drop-off mode:**
- Reviewer lacks specialty knowledge → inconsistent decisions on clinical necessity; specialists report 48% of appeals eventually succeed (sometimes/rarely); 29.6% rarely succeed — indicating high inconsistency
- Reviewer requests additional documentation from specialist who is unavailable → review stalled for days
- GL revoked post-admission (67% of specialists in CodeBlue survey report this) → hospital has already delivered care but faces claim reversal; creates adversarial dynamic

**AI capability that would address it:** AI-assisted clinical necessity screening — LLM reads specialist notes and discharge summary, matches against clinical guidelines, generates structured recommendation (approve/deny/request clarification) for human reviewer sign-off; dramatically reduces per-claim review time while maintaining physician-in-loop.

---

### S3c-3: Duplicate Claim & Fraud Detection

**Activity description:** Before or during adjudication, claims are screened for duplicates (same patient, same date of service, same provider billing twice or billing to two payers) and for fraud indicators (upcoding of INA-CBG codes, phantom services, billing for non-rendered procedures). In Malaysia, the MACC in 2024 exposed a multi-million ringgit SOCSO fraud involving doctor networks submitting fabricated diagnoses (upcoding to fractures) with 90-day medical certificates. In Indonesia, BPJS Kesehatan identified claim manipulation, upcoding, and fragmentation as primary fraud vectors; BPJS Regulation No. 67/2021 mandates a Fraud Prevention Team (Tim Pencegah Kecurangan) at both BPJS and facility level. However, BPJS Kesehatan Yogyakarta case study (2025) found "inconsistent fingerprint biometric verification" and "absence of a local Internal Supervision Unit" as operational gaps in fraud control.

**Owner / executor role:** TPA fraud analytics team (rules-based or ML screening); BPJS Kesehatan verifikator + Fraud Prevention Team; OJK/BNM (regulatory oversight)

**Inputs:** Current claim + patient claims history; provider billing pattern database; INA-CBG code utilization benchmarks (BPJS); diagnosis-procedure pairing validation rules

**Outputs:** Clean flag (no duplicate/fraud indicator), duplicate flag (pended for reconciliation), fraud referral (claim suspended, case opened)

**Typical time per transaction:** Automated rules-based: seconds. Manual review of flagged cases: days to weeks.

**Current automation level:** Basic rules-based duplicate detection in major TPA systems. Fraud detection largely manual in Indonesia; BPJS computer-based verification tightened September 2024 (triggering 19.6% pending rate in October 2024 — confirming that tightening detection from manual to computer-based immediately exposed latent coding issues). AI/ML-based fraud detection nascent in both markets.

**Error / drop-off mode:** False positive duplicate flags for legitimate claims (legitimate same-day multi-service claims mistakenly flagged) → legitimate claim pended unnecessarily; upcoding goes undetected because it is within normal-looking code distributions (requires provider-level pattern analysis over time to detect); ghost claim detection relies on patient verification that does not happen consistently at FKTP level (BPJS Yogyakarta study: biometric verification inconsistent)

**AI capability that would address it:** Graph neural network fraud detection — maps relationships between patients, providers, diagnoses, and billing patterns to detect coordinated fraud rings invisible to rule-based systems; anomaly detection identifying providers whose INA-CBG code utilization deviates from peer group benchmarks.

---

### S3c-4: Fee Schedule Lookup & Payment Calculation

**Activity description:** For approved claims, the TPA/insurer calculates the amount payable by applying the applicable fee schedule (TPA-negotiated rates with provider network, or standard tariff list) against the itemized bill, applying copay / deductible / coinsurance, and confirming claim is within remaining annual benefit limit. For BPJS, payment is calculated per the INA-CBG package tariff for the assigned diagnosis group — not per-itemized bill. For private TPAs, fee schedules are employer-contract-specific and may include customized benefit grids.

**Owner / executor role:** TPA payment calculation module (automated); TPA accounts payable; BPJS claims settlement system

**Inputs:** Approved claim amount; applicable fee schedule; remaining benefit balance; copay/deductible configuration

**Outputs:** Payment advice (amount payable to provider; residual patient liability); electronic fund transfer instruction; EOB (Explanation of Benefits) to patient

**Typical time per transaction:** Automated payment calculation: seconds. EOB generation and dispatch: 1–3 business days. Actual payment to provider: 7–30 days post-approval (varies by TPA contract).

**Current automation level:** High for major TPAs and BPJS. Fee schedule lookup is automated; payment calculation is rule-based. Main friction: fee schedule version mismatches (employer contract update lag) and INA-CBG tariff disputes between hospital and BPJS verifikator.

**Error / drop-off mode:** Incorrect fee schedule version applied → payment shortfall; provider disputes payment amount post-settlement; BPJS INA-CBG code assigned at wrong severity level → underpayment to hospital (one driver of pending claim disputes).

**AI capability that would address it:** Automated fee schedule synchronization across TPA systems; AI-based INA-CBG assignment validation (supporting hospital coders and TPA verifikators).

---

## Summary: Automation Level by Sub-step

| Sub-step | Indonesia | Malaysia | Primary gap |
|----------|-----------|----------|-------------|
| S3a-1: Eligibility verify (outpatient) | Medium (BPJS VClaim automated; private varies) | High (EDC + portal) | Private insurer API gaps in Indonesia |
| S3a-2: Pre-auth / GL (inpatient) | Low (private: phone/fax; BPJS: semi-automated) | Medium (portal + manual clinical review) | Clinical review remains manual in both markets |
| S3a-3: Outpatient panel claim submission | Low–Medium | High | Indonesia private insurer portal adoption |
| S3b-1: Claim document assembly | Low (Indonesia); Medium (Malaysia large hospitals) | Medium | PDF-heavy, no structured extraction |
| S3b-2: Completeness check | Low (manual for most) | Medium (automated for portal claims) | Comprehensive vs. sequential deficiency detection |
| S3b-3: Resubmission cycle | Very Low | Very Low | No automation; pure manual cycle |
| S3c-1: Auto-adjudication | Medium | Medium–High | 60–75% auto-rate achievable; most below that |
| S3c-2: Medical review queue | Very Low | Very Low | Entirely manual; high inconsistency |
| S3c-3: Fraud/duplicate detection | Low (mostly manual) | Low | ML-based detection nascent |
| S3c-4: Payment calculation | High (BPJS INA-CBG automated; TPA automated) | High | Fee schedule synchronization gaps |

---

## Sources

(1) Faber Consulting / Malaysian Re, Malaysian Insurance Highlights 2025 — https://faberconsulting.ch/files/faber/pdf-pulse-reports/Malaysian%20Insurance%20Highlights%202025.pdf

(2) CodeBlue, "A TPA's Medical Trend: Average RM9,300 Hospitalisation, RM131 GP Visit" (PMCare CEO interview, November 2025) — https://codeblue.galencentre.org/2025/11/a-tpas-medical-trend-average-rm9300-hospitalisation-rm131-gp-visit/

(3) Medilink Global ECCS 4.0 — https://www.medilink-global.com/eccs

(4) BPJS Kesehatan official data; Kemenkes FKRTL accreditation — https://bpjs-kesehatan.go.id/

(5) Tempo.co, "Klaim Mandek di BPJS Kesehatan Melonjak 20 Persen" (October 2024) — https://www.tempo.co/ekonomi/klaim-mandek-di-bpjs-kesehatan-melonjak-20-persen-rumah-sakit-kami-hampir-tenggelam-1193864

(6) NextMSC, Indonesia Insurance TPA Market 2025–2030 — https://www.nextmsc.com/report/indonesia-insurance-tpa-market

(7) CodeBlue, "Poll: Nearly All Specialists Perceive Insurer Interference With Clinical Decisions" (October 2025) — https://codeblue.galencentre.org/2025/10/poll-nearly-all-specialists-perceive-insurer-interference-with-clinical-decisions/

(8) AIA Malaysia, FAQs: Claims & Guarantee Letters — https://www.aia.com.my/en/help-support/faq/claims-guarantee-letters.html

(9) InterPixels AI, "Health Insurance Claims Automation ROI: What Asia-Pacific TPAs Can Realistically Expect" (May 2026) — https://interpixels.ai/insights/health-insurance-claims-automation-roi-what-asia-pacific-tpas-can-realistically-expect/

(10) RedCover MY, Letter of Guarantee process — https://www.redcover.com.my/insurance-letter-of-guarantee/

(11) OJK, Roadmap for the Development and Strengthening of the Indonesian Insurance Industry 2023-2027 — https://ojk.go.id/en/berita-dan-kegiatan/info-terkini/Pages/Roadmap-for-the-Development-and-Strengthening-of-the-Indonesia-Insurance-Industry-2023-2027.aspx
