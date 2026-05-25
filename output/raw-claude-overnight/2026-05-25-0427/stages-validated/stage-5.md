# Stage 5 (validated) — Run 2026-05-25-0427

*Pass-1 drafts + any applicable deep-research outcomes. See pass-2-validation/stage-5.json for per-claim confidence.*

---

## Part A — Value chain (sub-step process map)

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

---

## Part B — Pain points

# Stage 5 Pain Points — Insurance/TPA: Pre-auth, Claims Submission & Adjudication (Sub-processes 3a + 3b + 3c)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Researched: 2026-05-25*

---

## Stage 5: Insurance/TPA — Pre-auth, Claims Submission & Adjudication

### Pain point 5.1

**Description:** Inpatient pre-authorisation (Guarantee Letter / GL) requests in Malaysia and Indonesia are resolved through a multi-step manual back-and-forth between hospital insurance desks and TPA/insurer clinical reviewers — consuming up to 6 hours for straightforward cases and 1–5 business days for complex ones. The clinical justification document is submitted as a PDF or fax, a TPA clinical reviewer (medical officer or trained nurse) reads it and applies clinical criteria manually, and any missing or ambiguous information triggers a Request for Additional Information (RFAI) that resets the clock. Malaysia's 2025 CodeBlue specialist survey (n=855) found 80% of hospital specialists had experienced delayed GL approvals, 67% had GLs revoked after patient admission had already begun, and 83% rated TPA claims officers' clinical competency as "little or no understanding" of the diagnosis or treatment under review. The process delays patient admission, strains hospital-TPA relations, and consumes FTE time at both the hospital insurance desk and the TPA's clinical review queue simultaneously.

**Who bears it:** TPA/insurer clinical review staff (FTE cost of manual review); hospital insurance desk nurses and medical social workers (document preparation, RFAI response); specialist physicians (who must provide additional clinical notes); patients (whose admission is delayed or denied).

**Estimated cost:**
- TPA clinical reviewer labor: At a Malaysian TPA employing medical officers at MYR 8,000–12,000/month (~$1,800–$2,700/month; ~$11–$17/hr), and each complex GL requiring 30–90 minutes of clinical review plus RFAI handling (60–120 min), the cost per reviewed GL event is $5–$34. For PMCare's estimated 22,000–35,000 medically reviewed hospitalisation cases/year (25–40% of 87,789 hospitalisation claims), this implies $110,000–$1.2 million/year in TPA clinical reviewer labor alone, before overhead. (1), (2) [ASSUMED-1]: to validate — confirm PMCare's actual proportion of hospitalization claims routed to clinical review queue vs. auto-approved.
- Hospital insurance desk labor: At 2–4 hours per GL request (document assembly, submission, RFAI response), and assuming a MY hospital insurance nurse at MYR 3,500–5,000/month (~$4.40–$6.28/hr), each GL event consumes $8.80–$25 in hospital labor. For a 200-bed private hospital handling ~30–50 admissions/day requiring GL, annual hospital-side GL labor is $96,000–$456,000. (3), [ASSUMED-2]: to validate with hospital insurance desk headcount data at KPJ or Pantai.
- Physician time lost to insurance administration: Malaysian specialists spend on average 2–5 hours/week on insurance paperwork and appeals (48% of 855 specialists in CodeBlue poll). At a specialist fee of MYR 15,000–25,000/month, this translates to $450–$1,875 per specialist per year in uncompensated administrative time, representing a hidden cost borne by the hospital or the specialist practice. (1)
- Patient harm / delayed care: 73% of specialists report patients experienced delayed treatment due to GL delays/denials; 40% reported worsening health outcomes. These are not easily monetized but represent the primary societal cost. (1)

**Willingness to pay:** Not sourced. [ASSUMED-3]: to validate — ask PMCare and Medilink operations and clinical leads whether they would subscribe to an AI-assisted GL pre-screening tool at $2–$5 per GL request processed; at 87,789 hospitalisations/year for PMCare, this implies $175K–$440K/year — within range given current manual review cost.

**Frequency:**
- 80% of private hospital specialists in Malaysia report experiencing delayed GL approvals or claims (CodeBlue n=855 poll, October 2025). (1)
- 67% of specialists report GLs revoked after patient admission/treatment. (1)
- 99% of specialists perceive insurer/TPA interference with clinical decisions, with 44% reporting interference "very often" and 44% "sometimes." (1)
- For Indonesia BPJS: inpatient claims pending rate reached 19.6% in October 2024 (vs. the < 10% standard); BPJS Indonesian Hospital Association (Persi) reports average pending rates reached 20–30% by end 2024. (4)
- AMA 2025 survey (US benchmark for comparison): physicians complete 39 PA requests per physician per week, consuming average 13 hours of physician + staff time/week; 94% report PA contributes to burnout. SEA context analogous but no equivalent survey published in MY/ID. (5)

**Evidenced or assumed:**
(1) CodeBlue, "Poll: Nearly All Specialists Perceive Insurer Interference With Clinical Decisions," October 2025 — https://codeblue.galencentre.org/2025/10/poll-nearly-all-specialists-perceive-insurer-interference-with-clinical-decisions/
(2) Faber Consulting / Malaysian Re, Malaysian Insurance Highlights 2025 — https://faberconsulting.ch/files/faber/pdf-pulse-reports/Malaysian%20Insurance%20Highlights%202025.pdf
(3) Malaysia nurse salary benchmark — https://malaysia.indeed.com/career/nurse/salaries
(4) Tempo.co, BPJS pending claims October 2024 — https://www.tempo.co/ekonomi/klaim-mandek-di-bpjs-kesehatan-melonjak-20-persen-rumah-sakit-kami-hampir-tenggelam-1193864; Kompas.id, "Klaim Tertunda BPJS Kesehatan Capai Rp 5 Triliun" — https://www.kompas.id/artikel/klaim-tertunda-bpjs-kesehatan-capai-rp-5-triliun-layanan-ke-masyarakat-bisa-terdampak
(5) AMA, 2025 Prior Authorization Physician Survey — https://www.ama-assn.org/practice-management/prior-authorization/fixing-prior-auth-nearly-40-prior-authorizations-week-way
(6) AIA Malaysia GL FAQ (process steps, 1-hour target) — https://www.aia.com.my/en/help-support/faq/claims-guarantee-letters.html
(7) Great Eastern Life Malaysia, Final GL within 75 minutes for straightforward cases — https://www.greateasternlife.com/my/en/customer-services/claims/medical-and-hospitalisation/health-care-card-and-guarantee-letter-gl.html
(8) BNM warning to insurers on GL delays, December 2025 (no fixed timeline set) — https://codeblue.galencentre.org/2025/12/bnm-tells-insurers-to-settle-medical-claims-promptly-prohibits-applying-unknown-exclusions/; https://www.insurancebusinessmag.com/asia/news/life-insurance/bnm-warns-insurers-over-delays-and-undisclosed-medical-exclusions-561142.aspx
(9) McKinsey (via FRANKI T): 30–50% reduction in processing time with AI automation — https://www.francescatabor.com/articles/2025/12/5/ai-amp-llm-automation-for-insurance-claims-prior-authorizations-and-administrative-workflows-in-healthcare
(10) InterPixels AI, APAC TPA automation ROI, 60–75% auto-adjudication rate in mature deployments — https://interpixels.ai/insights/health-insurance-claims-automation-roi-what-asia-pacific-tpas-can-realistically-expect/
(11) Medilink Global, Digitising the LOG Process — https://medilink-global.com/digitising-the-letter-of-guarantee--log--process

**Root Causes**

- **RC1: Clinical justification documents are submitted as unstructured PDF or fax, and no system extracts or structures the clinical evidence before the reviewer reads it.** The pre-authorisation form arrives as a PDF or fax; the TPA's clinical reviewer must read the specialist's letter in full, locate the diagnosis, planned procedure, clinical rationale, and relevant investigation results, and mentally map these against the TPA's medical policy library — all without a structured data layer. This is a document-reading task that consumes 30–90 minutes because no extraction layer exists between document receipt and clinical decision. In a structured data world, the reviewer would see: diagnosis = [coded], procedure = [coded], clinical criteria met = [yes/no per protocol] and would confirm or override in minutes. The structural reason this layer is absent is that neither hospitals nor TPAs have invested in a FHIR-structured clinical document exchange protocol that would carry this data; the PDF remains the lowest-common-denominator interoperability format in both markets.

- **RC2: TPA clinical reviewers lack specialist-level domain expertise in the procedures they review, making manual review slow and inconsistent.** The clinical review function at most Malaysian TPAs employs trained nurses or general practitioners — not the same specialty as the procedure under review. An ENT specialist's request for laryngeal surgery is reviewed by a nurse applying a clinical criteria checklist, not by another ENT. This creates a structural competency mismatch: 83% of Malaysian specialists (n=855) rate TPA clinical staff competence as "little or no understanding." The result is that reviewers either (a) apply criteria mechanically without clinical judgment, creating over-denial; or (b) over-approve to avoid confrontation, creating under-control. Neither outcome is structurally solvable by better training alone because no TPA has the budget to employ multi-specialty physician panels for every review category. AI-assisted clinical necessity screening — which has access to relevant clinical literature and can compare the request against similar approved cases — is structurally better suited to this task than a generalist reviewer.

- **RC3: The RFAI (Request for Additional Information) process is sequential rather than comprehensive, multiplying round-trip cycles.** When a TPA reviewer identifies one deficiency in a GL request, they issue an RFAI for that specific item. When the hospital responds, the reviewer may identify a second deficiency and issue a second RFAI. This sequential checking — rather than comprehensive first-pass review — is a structural feature of human cognitive processing: reviewers work through documents linearly. Each RFAI cycle adds 24–72 hours per round trip. A claim requiring 3 RFAI cycles accumulates 3–9 business days of delay before GL is issued. An AI system can review all required elements simultaneously and issue a single comprehensive RFAI, or better, identify the deficiency before submission and alert the hospital billing desk before the PAF is submitted.

- **RC4: No standardised digital pre-auth API exists between hospital systems and TPA/insurer platforms in either Indonesia or Malaysia.** In the US, CMS X12 278 transaction standard governs electronic prior authorisation. In Malaysia and Indonesia, no equivalent mandate exists; hospitals submit PAFs via whichever channel the TPA provides (portal, fax, email, phone) with no requirement for structured data. This forces TPAs to maintain phone hotlines and fax infrastructure alongside portals, fragments the reviewer's attention across channels, and prevents any automated clinical matching because the clinical data arrives in a format (free-text PDF) that requires a reading layer before any rule can be applied. The OJK Insurance Roadmap 2023–2027 identifies digitalization as a strategic pillar but does not mandate specific pre-auth API standards. BNM's December 2025 guidance required prompt GL settlement but did not define a digital submission protocol. [ASSUMED-4]: to validate — whether PhilHealth (Philippines) or NHIS (Korea) pre-auth API models offer transferable frameworks for MY/ID regulatory design.

- **RC5: Incentive structures do not reward TPA efficiency in GL turnaround — TPAs are not financially penalised for slow or inconsistent GL decisions.** TPA fees in Malaysia are typically charged as a percentage of claims administered or a per-member PMPM fee — not a per-GL-event fee with SLA penalties. BNM's December 2025 directive requires "prompt settlement" but does not attach financial consequences to delays, and does not define a turnaround time SLA. This means a TPA that takes 5 business days to process a GL faces no direct financial consequence. Conversely, faster GL processing requires more clinical reviewer headcount (cost) without additional revenue. The structural fix — SLA-linked TPA fee structures or BNM-mandated turnaround time standards with financial penalties — has not been implemented in either market.

---

### Pain point 5.2

**Description:** The claims completeness and resubmission loop between hospitals/providers and TPA/insurer back offices is the highest-volume, lowest-value-added work category in TPA operations — estimated at 30–50% of back-office FTE in labor-intensive TPA environments. Claims fail completeness checks because submitted PDF packages are missing GL reference numbers, have mismatched diagnosis codes, lack itemized medication lists, or omit supporting investigation results. Each deficiency triggers a return cycle of 2–4 weeks. In Indonesia, BPJS Kesehatan's H2 2024 data shows 13–20% of submitted inpatient claims were "pending" (returned for incompleteness or coding issues) in any given month, peaking at 19.6% in October 2024 and costing hospitals Rp575.4 billion (~USD 35M) in that single month. In Malaysia private TPA, the 2024 reimbursement process for incomplete claims can take "30–60 business days" (per Indonesian insurer documentation patterns and Malaysian insurer FAQ equivalents). For Indonesian reimbursement claims, documentation explicitly states processing can extend to "30 to 60 business days" when documents are incomplete. The operational cost is borne on both sides: hospitals carry the accounts receivable burden of unpaid pending claims; TPAs bear the cost of repeated manual review cycles.

**Who bears it:** Hospital billing and medical records departments (resubmission labor, accounts receivable delay); TPA back-office claims staff (repeated review cycles per claim); hospital cash flow (pending claims represent working capital tied up); hospital physicians and coders (corrections to clinical notes and ICD coding).

**Estimated cost:**
- Hospital direct labor per resubmission cycle: At 30–90 minutes of billing clerk time per cycle (document location, correction, portal resubmission), at Indonesian hospital admin salary IDR 5–6M/month (~$1.78–$2.14/hr), each cycle costs $0.89–$3.20. For a hospital with 500 BPJS claims/month at 15% pending rate (75 pending claims × average 1.5 cycles × $2 per cycle), this is $225/month in direct resubmission labor, or $2,700/year per mid-size hospital. At Malaysian admin rates (~$2.79/hr), the per-cycle cost is $1.40–$4.20, rising to $315–$945/month for the same hospital scale. (1), (2)
- BPJS Kesehatan system-level pending claims value: Rp575.4 billion (~USD 35M) in pending claims in October 2024 alone — representing hospital receivables delayed by the resubmission cycle. This is a system-level cash-flow cost, not a direct labor cost, but the interest cost of delayed receivables (~10% annualized in Indonesia) implies a monthly interest burden of ~$290,000 for the hospital sector as a whole on pending claims in a typical month. (3)
- TPA back-office labor: US APQC benchmark (closest available proxy): manual claims adjudication costs approximately $20 per claim vs. pennies for auto-adjudicated claims; manual review accounts for a substantial portion of TPA opex. [ASSUMED-5]: confirm with PMCare or OWLEXA what share of back-office FTE is allocated to completeness checking and resubmission handling vs. first-pass adjudication. Hypothesis: 30–50% of back-office FTE.
- Claim void / revenue loss: Under Presidential Regulation 59/2024 (Indonesia), hospitals have 6 months maximum to resubmit or the claim becomes void — representing permanent revenue loss for any claim that misses this deadline due to incomplete documentation. (4)

**Willingness to pay:** Not sourced. [ASSUMED-6]: to validate — ask AdMedika and OWLEXA whether they would pay for an AI completeness classifier that catches missing documents before submission, reducing incoming deficiency rate by 50%; at ~$1–$3 per claim processed through the tool, with AdMedika's large claim volumes, ROI likely positive vs. manual review cost.

**Frequency:**
- BPJS pending claim rate: 13.10% (April 2024), 13.90% (May), 13.59% (June), 14% (August), 16.2% (September), 19.6% (October 2024) — all above the < 10% target standard. (5)
- Indonesian hospital study (Jurnal Kesehatan Tambusai, Q1 2024, Universitas Awal Bros): outpatient BPJS pending claims — 17.65% due to incomplete documents in January and February 2024; 23.53% due to inaccurate coding in February; 29.41% due to combined episode of care issues in January. (6)
- Indonesian Roojai/Manulife documentation: reimbursement processing extended to "30–60 business days" when documents incomplete (confirmed in Manulife Indonesia FAQ and general Indonesian insurer guidance). (7)
- Indonesia Airlangga University hospital study (MKMI 2023): BPJS pending claims at Airlangga hospital traced to four factors: incomplete documents, inaccurate coding, insufficient supporting examinations, and insufficient therapy evidence. (8)
- Peak Re Consumer Survey 2024: "38% of consumers contemplated making an insurance claim but ultimately decided against it" — with claims process complexity as primary reason; in Malaysia, 38% also cited claim process complexity. (9)
- US Premier Inc. benchmark (for structural comparison): claims adjudication costs providers $25.7 billion in 2023; 70% of denied claims are ultimately overturned — suggesting denial/resubmission cycle is a systemic, not exceptional, event. (10)

**Evidenced or assumed:**
(1) Indonesian admin salary IDR 5–6M/month — https://id.jobstreet.com/career-advice/role/general-practitioner/salary
(2) Malaysian admin salary MYR 2,249/month benchmark — https://malaysia.indeed.com/career/nurse/salaries
(3) Tempo.co, BPJS pending Rp575.4 billion October 2024 — https://www.tempo.co/ekonomi/klaim-mandek-di-bpjs-kesehatan-melonjak-20-persen-rumah-sakit-kami-hampir-tenggelam-1193864
(4) Presidential Regulation 59/2024, 6-month resubmission deadline; Kompas.id — https://www.kompas.id/artikel/klaim-tertunda-bpjs-kesehatan-capai-rp-5-triliun-layanan-ke-masyarakat-bisa-terdampak
(5) Detik News, "3 Penyebab Klaim Pending BPJS Kesehatan" (monthly rates) — https://news.detik.com/berita/d-8107167/3-penyebab-klaim-pending-bpjs-kesehatan-dan-solusinya
(6) Farhansyah et al., "Faktor Penyebab Pending Klaim BPJS Kesehatan Rawat Jalan, Rumah Sakit X," Jurnal Kesehatan Tambusai, Sept 2024 — https://journal.universitaspahlawan.ac.id/index.php/jkt/article/download/33079/22918
(7) Manulife Indonesia reimbursement FAQ — https://www.manulife.co.id/id/layanan/faq/tanya-jawab-proses-reimbursement.html; Roojai.co.id claim rejection article — https://www.roojai.co.id/article/asuransi/persiapan-klaim-asuransi/
(8) Maulida et al., "Analisis Penyebab Pending Claim BPJS Kesehatan Rawat Inap Rumah Sakit Universitas Airlangga," MKMI (Universitas Diponegoro), 2023 — https://ejournal.undip.ac.id/index.php/mkmi/article/view/46178
(9) Peak Re Consumer Survey 2024 — https://www.peak-re.com/media/0mab4hfh/claims.pdf
(10) Premier Inc. newsroom, "Claims Adjudication Costs Providers $25.7 Billion" — https://premierinc.com/newsroom/policy/claims-adjudication-costs-providers-257-billion-18-billion-is-potentially-unnecessary-expense
(11) Alinea.id, hospital and BPJS pending claims background — https://www.alinea.id/gaya-hidup/rumah-sakit-dan-bpjs-kesehatan-di-balik-klaim-yang-tertahan
(12) ResearchGate, Airlangga University hospital BPJS pending claims analysis — https://www.researchgate.net/publication/367172576_Analisis_Penyebab_Pending_Claim_Berkas_BPJS_Kesehatan_Pelayanan_Rawat_Inap_Rumah_Sakit_Universitas_Airlangga

**Root Causes**

- **RC1: ICD-10 coding at hospital level is inaccurate and inconsistently applied, because coders and verifikators apply different coding guidelines without a shared authority.** The single largest source of claim incompleteness and pending claims in both markets is coding dispute or coding error. In Indonesia, BPJS verifikators and hospital coders frequently disagree on ICD-10 assignment because Kemenkes provides ICD-10 guidance, but BPJS provides its own INA-CBG coding protocol, and neither is fully consistent. Hospital coders are often underqualified (not all are DIII Rekam Medis graduates with INA-CBG certification) and are under time pressure. In Malaysia, ICD-10 coding at GP level for TPA panel claims is done by clinical assistants with limited coding training. The structural issue: no real-time feedback loop corrects coding at submission time — errors are discovered only when the claim is reviewed, days or weeks later.

- **RC2: Claims are submitted in unstructured PDF format, preventing automated completeness checking and requiring human reading of every submitted document.** The fundamental reason completeness checking consumes back-office FTE is that claims arrive as PDF packages — scanned bills, handwritten notes, PDF discharge summaries — rather than as structured data. A rules engine can check whether field X is populated in a structured claim record in milliseconds; it cannot check whether a handwritten discharge summary contains a diagnosis without an OCR+NLP layer. This data format constraint is a legacy of the healthcare document ecosystem: hospitals generate their records in whatever format their EMR or billing system produces, and PDF is the common denominator. No regulatory mandate in Indonesia or Malaysia requires structured FHIR-compliant claim document submission from private hospitals to private insurers/TPAs.

- **RC3: The completeness deficiency notice is issued sequentially rather than comprehensively, multiplying resubmission cycles.** When a TPA back-office clerk reviews a returned claim and identifies a missing receipt, they issue a deficiency notice for that receipt. When the hospital resubmits, the same clerk (or a different one) may identify a missing specialist letter and issue a second deficiency notice. This sequential processing reflects human cognitive workload management — a clerk reviewing 50 claims/day cannot conduct a fully comprehensive 30-field check on each — but it multiplies the number of resubmission cycles per claim from 1 to 2–3. Each additional cycle adds 2–4 weeks to settlement. AI-based completeness checking covers all required fields in a single pass.

- **RC4: Hospital billing departments have no real-time visibility into the status of submitted claims, preventing proactive resubmission before deadlines.** After submission, most hospital billing departments track claim status via periodic manual portal queries or wait for a deficiency notice to arrive by email/fax. There is no push notification system that alerts the hospital the moment a claim is pended, specifies the exact deficiency, and provides a pre-populated correction template. The operational consequence: claims can sit in a "pending" state for weeks before the hospital billing department is aware. By the time the 6-month resubmission deadline (Indonesia) or equivalent claim validity window approaches, some claims are forfeited. This is a structural information asymmetry between TPA and hospital.

- **RC5: The cost of the resubmission loop is embedded in hospital overhead and not line-itemized, removing the economic signal that would drive hospitals to invest in upstream claim quality improvement.** Hospital billing departments are cost centers; their operating cost is not visible as a per-claim metric. The managing director of a hospital billing department does not receive a "cost per clean claim" KPI; they receive a "total pending claim value" figure, which creates pressure to resolve pending claims but not to prevent them at origin. Without per-claim cost visibility, neither hospital management nor TPA management can calculate the ROI of investing in a point-of-submission completeness tool. The structural fix is ABC (Activity-Based Costing) per claims process sub-step — which most hospitals and TPAs in both markets do not operate.

---

### Pain point 5.3

**Description:** TPA and insurer medical review queues — the specialist physician or clinical nurse employed by the TPA to assess clinical necessity for complex pre-auth and claims decisions — are a structural bottleneck in both the pre-auth workflow (PP5.1 above) and post-submission claim adjudication. The reviewer's decision is highly consequential (determines whether a claim worth RM9,000–RM50,000+ is paid), yet is made by a generalist reviewer under time pressure, applying criteria imperfectly matched to the specialty, based on an unstructured PDF document. The result is both inconsistency (67% GL revocation rate after admission; 49.6% of appeals succeed "sometimes," per CodeBlue 2025 data) and slow throughput (1–5 business days per complex claim in medical review). In Indonesia, BPJS Kesehatan's September 2024 shift to computer-based verification — tightening the manual review standard — caused pending claims to jump from 14% to 19.6% within 6 weeks, confirming that manual review at scale is the binding constraint. The AI target is a triage model: auto-approve low-risk, low-cost, pattern-consistent claims; route high-risk or high-cost cases to the medical reviewer with a pre-populated clinical summary, reducing per-claim review time.

**Who bears it:** TPA/insurer medical review team (FTE cost, throughput constraint); hospitals (delayed payment, GL uncertainty); specialists (uncompensated time spent on clarification calls and appeal letters); patients (delayed or denied care).

**Estimated cost:**
- TPA medical reviewer FTE cost: A TPA medical officer at MYR 8,000–12,000/month (~$1,800–$2,700/month) reviewing complex claims at 4–8 claims/day (30–90 minutes each) costs the TPA $11–$17 per claim reviewed. For PMCare's estimated 22,000–35,000 medically reviewed hospitalisation claims/year, this is $242,000–$595,000 in medical reviewer labor per year. (1), [ASSUMED-7]: validate PMCare medical review team headcount.
- Inconsistency cost — reversed GL and appeal processing: 70% of denied US healthcare claims that are overturned on appeal (Premier Inc., 2023) implies a significant share of TPA clinical denials are incorrect, generating appeal processing cost on both sides. In Malaysia, where CodeBlue data shows 29.6% of appeals rarely succeed and 49.6% succeed only sometimes, inconsistency is structurally embedded. Each appeal cycle costs an estimated 60–120 minutes of hospital administration time plus 30–60 minutes of specialist letter preparation — at MYR 300/hour specialist equivalent, a contested appeal costs $70–$175 per event. (2)
- Cost of clinical errors resulting from rushed review: Not readily quantifiable in SEA context; US data documents cases where AI-assisted pre-auth denials led to patient harm (congressional oversight context). The structural cost here is the quality gap when reviewers are rushed and lack specialty expertise.

**Willingness to pay:** Not sourced. [ASSUMED-8]: to validate — ask major Malaysian insurers (AIA, Allianz, Prudential) whether they would pay $3–$7 per medical review event for an AI clinical pre-screening tool that reduces reviewer time by 50–70%; at 30,000 reviews/year for a large TPA, this implies $90K–$210K annual licensing, vs. $240K–$600K in reviewer FTE cost.

**Frequency:**
- 60–75% of APAC TPA claims auto-adjudicate; 25–40% require human medical review (InterPixels AI, 2026) — confirming medical review queue is a persistent operational condition, not an exception. (3)
- 83% of Malaysian specialists (n=855) rate TPA clinical reviewer competency as "little or no understanding" (CodeBlue, October 2025). (4)
- 67% of Malaysian specialists report GLs revoked after patient admission. (4)
- 48% of specialists spend 2–5 hours weekly on insurance paperwork and appeals — indicating the appeal/review loop creates substantial bilateral administrative burden. (4)
- BPJS: pending claim rate spiked from 14% to 19.6% in 6 weeks when BPJS tightened computer-based verification in September 2024 — confirming that more rigorous review (even rule-based) creates a throughput bottleneck at scale. (5)
- US AI adoption benchmark: 45% of insurers deploying AI for claim adjudication (McKinsey); 30–50% processing time reduction where implemented. (6)

**Evidenced or assumed:**
(1) Malaysian medical officer salary range — Faber Consulting 2025, DOSM Malaysia salary data; see also https://malaysia.indeed.com/career/nurse/salaries
(2) Premier Inc., claims adjudication 70% of denials overturned — https://premierinc.com/newsroom/policy/claims-adjudication-costs-providers-257-billion-18-billion-is-potentially-unnecessary-expense
(3) InterPixels AI, APAC TPA claims automation ROI — https://interpixels.ai/insights/health-insurance-claims-automation-roi-what-asia-pacific-tpas-can-realistically-expect/
(4) CodeBlue specialist poll, October 2025 — https://codeblue.galencentre.org/2025/10/poll-nearly-all-specialists-perceive-insurer-interference-with-clinical-decisions/
(5) Tempo.co, BPJS verification tightening September 2024 — https://www.tempo.co/ekonomi/klaim-mandek-di-bpjs-kesehatan-melonjak-20-persen-rumah-sakit-kami-hampir-tenggelam-1193864
(6) McKinsey via FRANKI T, AI insurance claims — https://www.francescatabor.com/articles/2025/12/5/ai-amp-llm-automation-for-insurance-claims-prior-authorizations-and-administrative-workflows-in-healthcare
(7) Brighton Health, claim adjudication and auto-adjudication — https://brightonhps.com/why-claim-adjudication-matters/
(8) Withum, auto-adjudication rate impact — https://www.withum.com/resources/unveiling-the-impact-of-auto-adjudication-rates-on-insurance-claims-processing/
(9) BNM instruction on prompt claims settlement, no fixed timeline set — https://www.insurancebusinessmag.com/asia/news/life-insurance/bnm-warns-insurers-over-delays-and-undisclosed-medical-exclusions-561142.aspx

**Root Causes**

- **RC1: The medical review function is staffed by generalist clinical reviewers who lack the specialist depth to assess complex cases efficiently, creating a bottleneck at the very step requiring the most judgment.** Most TPA/insurer medical review teams in Malaysia and Indonesia are staffed by trained nurses (registered nurses, not physicians) or general practitioners who apply clinical criteria checklists developed by medical directors. These reviewers cannot independently assess whether a neurosurgical procedure is clinically necessary for a given MRI finding, or whether a specific implant is the medically appropriate choice for a specific fracture pattern. The result: reviewers either over-apply criteria mechanically (generating incorrect denials) or escalate to a medical director for second opinion (creating queue depth). Staffing the medical review function with sub-specialist physicians for every claim category is not economically feasible for any TPA at current fee levels.

- **RC2: Clinical review decisions are made on unstructured documents without computational support for evidence-based decision-making.** The clinical reviewer reads a specialist letter (PDF, free text, often handwritten scan) and mentally compares it against clinical criteria and protocol documents stored in a separate system. No tool automatically extracts diagnosis, planned procedure, clinical indicators, and evidence of conservative treatment failure from the specialist letter and maps these to the applicable clinical criteria. The absence of this extraction-and-matching layer is the structural reason 30–90 minutes are required per complex review — the reviewer is doing the work that an LLM extraction pipeline could complete in seconds.

- **RC3: No audit trail of clinical review decisions exists at the case-similarity level, preventing systematic learning from past decisions and perpetuating inconsistency.** TPA medical reviewers make decisions on cases without systematic comparison to similar prior cases and their outcomes. A reviewer approving a total knee replacement for a 58-year-old with Grade 3 OA has no system alerting them to the fact that 85% of similar cases were approved at this TPA, or that 30% were later found to be premature upon post-pay audit. Without case-based learning, review decisions are idiosyncratic to the individual reviewer's training and cognitive load that day. This is the structural cause of the inconsistency documented in the CodeBlue specialist survey.

- **RC4: The appeal process for rejected GLs and claims is adversarial and labor-intensive rather than structured and algorithmic, making it an inefficient mechanism for correcting initial decision errors.** When a GL or claim is denied, the appeal process requires the hospital to assemble a formal appeal letter with clinical documentation, submit it to a different reviewer or medical director, and await a fresh decision. This process takes days to weeks and consumes 2–4 hours of hospital staff time per appeal. The structural alternative — a structured digital dispute resolution system where the specific denial criterion is stated and the hospital's clinical team responds directly to that criterion — does not exist in either market. The current appeal system is designed for a world of low claim volumes; it cannot scale efficiently.

---

### Pain point 5.4

**Description:** Duplicate claim and fraud detection in Indonesian and Malaysian TPA/insurer operations is largely manual, rule-based with narrow scope, or absent — meaning that structured fraud patterns (upcoding, claim fragmentation, provider network fraud, ghost claims) are systematically underdetected. In Indonesia, BPJS Regulation No. 67/2021 mandates a Tim Pencegah Kecurangan (Fraud Prevention Team) at both BPJS and facility level, but a 2025 Yogyakarta case study found inconsistent biometric verification at FKTP and absence of a local Internal Supervision Unit (SPI) as operational gaps. In Malaysia, a 2024 MACC/SOCSO case exposed a multi-million ringgit cartel submitting fabricated fracture diagnoses (upcoding) with 90-day medical certificates across a network of cooperating doctors — a pattern invisible to rule-based single-claim checks, detectable only through provider network graph analysis. The Indonesian upcoding literature (Depok BPJS branch study, Ambon BPJS branch study) documents systematic INA-CBG severity level inflation as a structural fraud vector throughout the JKN system. The pain is borne primarily by the payer (overpayment), ultimately by all premium-payers and taxpayers.

**Who bears it:** BPJS Kesehatan (fiscal loss from overpayment); private TPA/insurers (claims leakage); employers (higher premiums); ultimately taxpayers and policyholders.

**Estimated cost:**
- Global healthcare fraud benchmark: 3–10% of total health spending is estimated to be fraudulent (WHO estimate); applied to Indonesia's JKN annual claims (BPJS Kesehatan: ~Rp170+ trillion/year in benefit payments), 3–5% fraud implies Rp5.1–8.5 trillion (~USD 314–524 million) in annual fraud exposure in the JKN system alone. [ASSUMED-9]: no Indonesia-specific published fraud loss figure identified; WHO global benchmark applied. To validate with BPJS Kesehatan anti-fraud team data.
- Malaysia private health insurance fraud: No published aggregate figure; SOCSO fraud case (2024) described as "million-ringgit scheme" without specific total disclosed. Medical cost inflation in Malaysia reaching 15% in 2024 (vs. global average 10.1%) is partly attributable to over-consumption and over-billing patterns that blur the boundary between clinical choice and fraudulent billing. (1)
- Detection cost: Currently, BPJS Kesehatan employs an internal verifikator system + computer-based verification (tightened September 2024) + a Fraud Prevention Team per regulation. Private TPAs in both markets employ claims auditors but at low coverage rates. AI-based fraud detection at commercial scale is not yet deployed by any named Indonesian or Malaysian TPA.

**Willingness to pay:** Not sourced. [ASSUMED-10]: to validate — ask BPJS Kesehatan anti-fraud division and OJK whether they would procure or mandate an AI fraud detection platform; hypothesis: given BPJS scale and fiscal sustainability pressure, willingness to pay per flagged fraud case or as percentage of fraud recovered is plausible.

**Frequency:**
- BPJS Kesehatan Yogyakarta case study (2025): key fraud vectors documented in JKN practice: claim manipulation, upcoding, claim fragmentation — all present at Yogyakarta branch; biometric verification inconsistent; SPI absent at local level. (2)
- Upcoding analysis, BPJS Depok branch (Bina Generasi journal): systematic INA-CBG severity level inflation documented across multiple hospitals. (3)
- MACC/SOCSO Malaysia fraud case (2024): doctor network submitting fabricated fracture diagnoses across multiple clinics; "million ringgit scheme" exposed by Perkeso Anti-Fraud Intelligence. (4)
- Global AI fraud detection literature: graph neural network models for healthcare insurance fraud detection published in ACM SIGKDD 2025, PMC 2024 — confirming technical feasibility of graph-based provider network fraud detection. (5), (6)
- BPJS tightening verification September 2024: pending claims rose from 14% to 19.6% in one month — suggesting the computer-based verification caught a substantial volume of previously undetected coding anomalies that a manual verifikator had passed. (7)
- 43% of healthcare fraud cases are uncovered through reports (often from employees); fraud detected early results in 50% lower losses than cases identified later — confirming that reactive discovery (manual audit, whistleblower) is the dominant current detection mode in SEA. (8)

**Evidenced or assumed:**
(1) Faber Consulting / Malaysian Re, Malaysian Insurance Highlights 2025 (15% medical inflation) — https://faberconsulting.ch/files/faber/pdf-pulse-reports/Malaysian%20Insurance%20Highlights%202025.pdf
(2) BPJS Kesehatan Yogyakarta fraud prevention case study (At-Taradhi journal, 2025) — https://jurnal.uin-antasari.ac.id/index.php/taradhi/article/view/16732
(3) Upcoding analysis, BPJS Depok — https://ejurnal.biges.ac.id/kesehatan/article/view/220; ResearchGate — https://www.researchgate.net/publication/369679967_ANALISIS_KEJADIAN_UPCODING_BIAYA_PELAYANAN_KESEHATAN_DI_WILAYAH_KERJA_BPJS_KESEHATAN_CABANG_DEPOK
(4) Integrity Malaysia, MACC/SOCSO fraud case — https://www.integrity-malaysia.com/blog/health-care-fraud-lessons-from-malaysias-million-ringgit-scheme/
(5) PMC 2024, multi-channel heterogeneous graph for health insurance fraud — https://pmc.ncbi.nlm.nih.gov/articles/PMC11061682/
(6) ACM SIGKDD 2025, graph neural networks for insurance fraud — https://dl.acm.org/doi/10.1145/3711896.3737213
(7) Tempo.co, BPJS September 2024 verification tightening — https://www.tempo.co/ekonomi/klaim-mandek-di-bpjs-kesehatan-melonjak-20-persen-rumah-sakit-kami-hampir-tenggelam-1193864
(8) IJSRA 2024, fraud detection in healthcare billing — https://ijsra.net/sites/default/files/IJSRA-2024-2606.pdf
(9) Prepotif Journal, upcoding risk analysis JKN era — https://journal.universitaspahlawan.ac.id/index.php/prepotif/article/view/7864
(10) SwissCham Indonesia, healthcare fraud background — https://www.swisscham.or.id/news/resident-and-reality-healthcare-fraud
(11) BIMA Journal systematic review: AI in health insurance fraud detection — https://journal.pdmbengkulu.org/index.php/bima/article/view/1295

**Root Causes**

- **RC1: Rule-based fraud detection applied to individual claims cannot detect coordinated provider network fraud, which is detectable only by analyzing relationships across multiple providers, patients, and claims simultaneously.** Current BPJS and TPA fraud detection primarily checks individual claims against single-claim rules: Is the diagnosis-procedure pairing valid? Is the claim duplicate? Does the billed amount exceed fee schedule? These checks cannot detect a pattern where 15 doctors across 10 clinics submit systematically elevated diagnoses for the same population of claimants over 6 months — the defining signature of organized healthcare fraud. The MACC SOCSO fraud case in Malaysia was detected through intelligence analysis, not claims system rules. Graph-based detection — which models relationships between entities (patients, doctors, clinics, diagnoses) as a network and detects community-level anomalies — is the technical solution, but requires a unified cross-facility claims database that does not currently exist at TPA level for private insurance in either market.

- **RC2: No cross-TPA or cross-insurer data sharing infrastructure exists, enabling fraud perpetrators to exploit the boundary between payers.** A fraudulent provider or patient can submit claims to multiple insurers or TPAs simultaneously, with no single entity having a complete view. In Indonesia, OJK's Insurance Roadmap 2023–2027 identifies digitalization and data sharing as priorities but does not mandate a cross-insurer fraud database. In Malaysia, BNM has not mandated claims data sharing for fraud intelligence. The structural barrier is competitive sensitivity: TPAs and insurers treat claims data as proprietary and commercially valuable; sharing it with competitors (even via a regulated clearing house) is resisted. Without cross-payer data, fraud patterns that span multiple payers are invisible to each individual payer.

- **RC3: Biometric patient verification at point of service is inconsistently implemented, allowing ghost claims (billing for patients who were not present) to persist.** BPJS Regulation mandates biometric fingerprint verification at FKTP level; the Yogyakarta 2025 case study found this to be "inconsistently implemented" in practice. The structural reason: fingerprint terminals require hardware that not all clinics have, and system downtime at peak hours causes staff to revert to visual ID check or waive verification entirely. Without reliable biometric verification at point of service, ghost claims (billing for a patient who did not attend) cannot be detected from claims data alone — the claim looks identical to a legitimate claim.

- **RC4: INA-CBG and private insurer fee schedules create systematic incentive misalignment that encourages diagnosis escalation (upcoding) without constituting overt fraud.** The INA-CBG package tariff system pays a fixed amount per diagnosis group, regardless of actual treatment cost. A hospital that treats a patient with a mild condition in a high-severity INA-CBG group receives a windfall; one assigned to the correct lower-severity group loses money on the case if actual costs exceeded the tariff. This structure — which is inherent to DRG-type payment systems globally — creates a systematic incentive for coding at the highest defensible severity level. The line between accurate severity coding and upcoding is ambiguous, and verifikators and hospital coders frequently disagree on where that line falls. This is not a binary fraud/not-fraud distinction; it is a structural misalignment between the payment model and the incentive it creates at the clinical-documentation interface.

---

### New pain points (not in original hypothesis)

**PP5.5 (surfaced during research): BPJS Kesehatan claim payment delays create hospital cash-flow crises — and the root cause is structural incompatibility between monthly batch claim submission cycles and hospital payroll/supply payment cycles.**

During H2 2024, BPJS pending claims reached Rp575.4 billion (~USD 35M) in a single month (October 2024). Indonesian Hospital Association (Persi) reported average pending rates at 20–30% of total claims by end of 2024 — confirmed by a private Sumatra hospital that delayed doctor salary payments in January 2025 due to BPJS pending claim cash flow constraint. Presidential Regulation 59/2024 gives hospitals 6 months to resubmit or lose the claim permanently. The BPJS claim submission cycle is monthly-batch; hospitals carry the full treatment cost from day of service until payment, which may be 45–75 days later under normal conditions and 4–6 months under pending conditions.

This is partially evidenced (pending claim statistics are evidenced; the cash-flow impact on hospitals is evidenced by Tempo/Alinea reporting; the AI target — predictive cash flow dashboard, automated resubmission tracking — is assumed). It is included here as it is a high-pain structural condition that the AI process efficiency hypothesis underweights.

---

### Assumptions tagged in this stage

[ASSUMED-1]: PMCare proportion of hospitalisation claims routed to clinical review vs. auto-approved — hypothesis 25–40%; to validate with PMCare operations team.

[ASSUMED-2]: Hospital insurance desk FTE per 200-bed private hospital handling 30–50 GL requests/day; to validate with KPJ Healthcare or Pantai Holdings operations.

[ASSUMED-3]: First-pass completeness failure rate for Malaysian TPA portal-submitted claims estimated at 20–40%; to validate with PMCare or Medilink operations data.

[ASSUMED-4]: Whether existing pre-auth API standards (US X12 278, PhilHealth, NHIS Korea) could serve as regulatory template for MY/ID mandated digital pre-auth; to validate with BNM FinTech office and OJK insurance digitalization team.

[ASSUMED-5]: 30–50% of TPA back-office FTE allocated to completeness checking and resubmission handling vs. first-pass adjudication; to validate with OWLEXA or AdMedika operations heads.

[ASSUMED-6]: TPA willingness to pay $1–$3 per claim for AI completeness classifier; to validate with AdMedika and OWLEXA technology/product teams.

[ASSUMED-7]: PMCare medical review team headcount; to validate with PMCare CEO or COO.

[ASSUMED-8]: Large insurer (AIA, Allianz, Prudential MY) willingness to pay $3–$7 per medical review event for AI pre-screening tool; to validate.

[ASSUMED-9]: BPJS Kesehatan fraud loss 3–5% of benefit payments (WHO global benchmark applied to JKN); to validate with BPJS anti-fraud division published data.

[ASSUMED-10]: BPJS Kesehatan / OJK willingness to procure AI fraud detection platform; to validate.
