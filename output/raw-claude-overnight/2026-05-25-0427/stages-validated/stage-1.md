# Stage 1 (validated) — GP Clinic Consultation & Clinical Documentation (Sub-process 1a)

*Run ID: 2026-05-25-0427 | Pass 1 draft + 6 deep-research outcomes applied | Validated: 2026-05-25*

Confidence: post-DR, 6 weak claims re-researched. Major corrections applied to PP1.1 (documentation share — Malaysia QUALICO-PC contradiction), PP1.2 (FKTP-direct ICD-10 error rate 33–73% replaces 18% hospital proxy), PP1.3 (PMCare 1.3% outpatient denial replaces 67% specialist GL revocation), VC-MS-6 (8.9% labeled as single-vendor share + SATUSEHAT data added), GP salary ranges (DOSM/Jobstreet primary), MY clinic count (statutory registry confirmed). See pass-3-deep-research/PP1.1-cost-3.json, PP1.2-freq-1.json, VC-MS-6.json, PP1.3-freq-3.json, PP1.1-cost-1.json, VC-MS-2.json.

---

## Part A — Value chain (sub-step process map)

# Stage 1: GP Clinic Consultation & Clinical Documentation (Sub-process 1a)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Mapped: 2026-05-25*

---

## Stage Description

Private GP clinics executing outpatient consultations in urban Indonesia (Jakarta, Surabaya, Bandung, Medan) and Malaysia (Klang Valley, Penang, Johor Bahru). The unit of analysis is the individual patient encounter, decomposed into sub-steps from intake through post-consult filing. These clinics serve both walk-in acute care and enrolled CDM (chronic disease management) patients. In Indonesia, the majority participate in the BPJS Kesehatan JKN scheme as FKTP (primary-level facilities); in Malaysia, a substantial share are panel clinics under TPA/employer managed-care agreements.

---

## Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Private GP/primary clinics registered, Indonesia | ~15,311 (of which ~14,564 klinik pratama; 1,950 government-owned) | High | (1), (2) |
| Private medical clinics registered, Malaysia | 10,495 (2023 data) | High | (3) |
| Indonesia clinics integrated with BPJS Kesehatan JKN (FKTP) | ~7,606 (as of January 2024) | High | (2) |
| Indonesia total registered klinik (all ownership) | 17,261 (14,564 pratama + 2,697 utama) | High | (1) |
| Malaysia private clinic count growth trend | ~9,800 in 2022 → 10,495 in 2023 | Medium | (3), (4) |
| EMR adoption — Indonesia FKTP (revised post-DR) | **8.9% is single-vendor (PT MTK / Medeva) network share, NOT national.** Kemenkes SATUSEHAT publishes broader fasyankes integration: ~40,000+ EMR systems integrated as of late 2024 (target 60,000 by end-2024); BKPK Kemenkes Oct 2025 reports 34,463 fasyankes enrolled; PubMed analysis finds ~33,901 facilities tracked, 58% meeting submission thresholds Oct 2024. Note: Kemenkes does not publicly publish a FKTP-only clean EMR adoption figure — published numbers aggregate hospitals (96.9% integrated), puskesmas, and kliniks. | Medium (now multi-source) | (5), (5a), (5b), (5c) |
| EMR adoption — Malaysia government klinik kesihatan (post-DR) | **3% had digital health records as of Oct 2023** per PM Anwar Ibrahim's Budget 2024 speech and CodeBlue / US ITA reporting; RM150M allocated for expansion (5d), (5e). Private GP adoption (Klinify, TeleMe, MyClinic, etc.) is materially higher but **no verified national aggregate figure** exists in official sources. | Low–Medium (gov source for public side; private-GP figure remains scarce) | (5d), (5e), (6a) |
| Typical daily patient volume per private GP clinic (Indonesia) | 15–60 patients/day for small klinik pratama; chain clinics (e.g. Kimia Farma network) serve higher volumes | Low — range from case examples, no national average | [ASSUMED-1] |
| Typical daily patient volume per private GP clinic (Malaysia) | ~40–80 patients/day for typical GP clinic in urban area | Low — based on one Malaysian study of 60/day at a public clinic; private may vary | (7), [ASSUMED-2] |
| Annual visits per clinic (Indonesia, typical klinik pratama) | ~5,000–15,000 outpatient visits/year (250 working days × 20–60/day) | Low | [ASSUMED-1] |

Data gap — country-specific annual visit volume per private GP clinic for Indonesia and Malaysia requires primary data from Kemenkes fasyankes database or MOH health informatics division.

---

## Sub-step Process Map

The table below decomposes the full consultation cycle into 11 sub-steps (labeled S1a-1 through S1a-11). Each sub-step is addressed with all nine required dimensions.

---

### S1a-1: Patient Arrival & Queue Registration

**Activity description:** Front-desk staff records patient name, date of birth, identity document number (NIK in Indonesia, NRIC/passport in Malaysia), and reason for visit. Queue number is assigned. In BPJS clinics, patient membership number is captured and SEP (Surat Eligibilitas Peserta) verification is triggered. In panel clinics (Malaysia), the staff looks up the patient's TPA/employer coverage in a card swipe terminal or portal.

**Owner / executor role:** Front-desk staff (receptionist)

**Inputs:**
- Identity card (KTP/NIK for ID; NRIC/MyKad for MY) — physical card or photo
- BPJS card / insurance card / employer medical card — physical card (scan or visual check)
- Patient's verbal statement of reason for visit / symptoms

**Outputs:**
- Queue number (paper ticket or digital display)
- Paper registration form or basic EHR entry (name, DOB, ID, chief complaint)
- SEP document (Indonesia BPJS patients) — printed or digital via PCare/VClaim API
- Eligibility flag — confirmed / not confirmed (Malaysia panel clinics)

**Typical time per transaction:** 3–8 minutes (Indonesia: often manual paper entry; Malaysia: mix of paper + card terminal). [ASSUMED-2]: to validate: ask front-desk staff at 5–10 Jakarta/KL clinics to time the registration step with a stopwatch.

**Volume per typical clinic per day:** 20–80 registration events, depending on clinic size and BPJS vs. private mix. [ASSUMED-1]: to validate: request daily register logs from Kimia Farma Klinik or Klinik Mediviron for a sample month.

**Current automation level:**
- Indonesia: Mostly paper-based entry or basic clinic management software (Medeva, eClinic, KlinikPintar app). BPJS verification done via PCare portal (web-based). As of end-2024, <10% of FKTPs have full EMR (5).
- Malaysia: Mix. Panel clinics use TPA portal or EDC terminal for eligibility swipe. Many solo GP clinics still use paper + Microsoft Excel. Klinify (800+ doctors) and Medilink portal used in more digitized clinics (4), (8).

**Error / drop-off mode:**
- Patient ID not brought → visit cannot proceed for BPJS patients (they must return or pay out-of-pocket)
- BPJS membership lapsed / inactive → rejection at PCare API; staff must re-enter or escalate
- Staff manually keys wrong ID number → duplicate record created; downstream ICD-10 claim rejected
- TPA system downtime → paper fallback, claim submission delayed

**AI capability that would address it:** OCR on identity card (auto-populate fields); real-time eligibility API call with retry logic; classification of walk-in vs. follow-up to route to appropriate queue.

---

### S1a-2: Medical History Retrieval

**Activity description:** Nurse or front-desk staff retrieves the patient's past medical record before the doctor enters the consultation room. In paper-based clinics, this means physically locating the paper folder in a filing cabinet; in EHR clinics, pulling up the patient's profile in the clinic management system.

**Owner / executor role:** Nurse / clinic assistant

**Inputs:**
- Patient name / queue number
- Paper filing system (folder, date-indexed folder, or card box) — paper
- Clinic management system login — structured EHR field (if digitized)

**Outputs:**
- Paper medical folder placed in consultation room door slot, OR
- EHR profile displayed on doctor's workstation
- Nurse summary note (hand-written or verbally communicated) for known follow-up patients

**Typical time per transaction:** 2–5 minutes for paper retrieval (searching, locating, pulling); <30 seconds for EHR lookup. [ASSUMED-3]: to validate: time-motion study at paper-based vs. EHR clinic in Jakarta vs. KL.

**Volume per typical clinic per day:** Equal to total daily consultations (20–80).

**Current automation level:**
- Indonesia: Predominantly paper folders for older clinics; newer clinics on Medeva, eClinic, or KlinikPintar store digital records. Integration with SATUSEHAT national platform is mandated but adoption below 10% of FKTPs (5).
- Malaysia: Higher digital penetration; Klinify, eClinique, and SoftLink Clinic Solution common in urban private clinics. Paper still common in single-doctor clinics in suburbs.

**Error / drop-off mode:**
- Paper folder missing or misfiled → doctor consults without history; risk of duplicate medications, missed CDM status
- EHR record belongs to a different patient with same name → wrong data shown; requires manual verification
- No prior history exists (new patient, no referral letter) → full intake done ad hoc, adding 5–10 minutes

**AI capability that would address it:** Semantic search across free-text historical notes; LLM summary of past visits surfaced before doctor enters room; predictive flagging of CDM patients due for specific tests based on visit history.

---

### S1a-3: Pre-consultation Vitals Capture

**Activity description:** Nurse measures and records blood pressure, pulse rate, temperature, height/weight (BMI), and in CDM patients, blood glucose. Results are written on a paper triage sheet or entered into the clinic's EHR.

**Owner / executor role:** Nurse / medical assistant

**Inputs:**
- Verbal patient cooperation
- Physical measurement devices (BP cuff, thermometer, weighing scale, glucometer)
- Paper triage form or EHR vitals module

**Outputs:**
- Vitals record (paper form or structured EHR fields: systolic/diastolic BP, pulse, temp, weight, height, BMI, SpO2, glucose)

**Typical time per transaction:** 3–7 minutes (measurement + manual recording). Source: (7) reports registration-to-pre-consultation steps taking ~15 min total at a Malaysian primary care clinic (60 patients/day).

**Volume per typical clinic per day:** Equal to total consultations minus repeat-medication-only visits (~80–95% of total).

**Current automation level:**
- Widely paper-based across both countries. Some larger or chain clinics (e.g. Kimia Farma Klinik) have digital vitals input terminals. IoT-connected BP cuffs are rare in GP clinics but present in some corporate health check-up settings.

**Error / drop-off mode:**
- Manual transcription error: nurse writes 148 instead of 184 (digit transposition) — common with hand-written triage sheets
- Omitted vitals: glucose skipped for known diabetic if glucometer battery dead or supply shortage
- Data not transferred to doctor's notes → doctor does not see the BP result unless verbally communicated

**AI capability that would address it:** IoT-connected vitals devices auto-posting to EHR; OCR on handwritten triage sheets; alert if vitals fall outside CDM threshold (e.g., BP >180 or glucose >15 mmol/L triggers urgent flag).

---

### S1a-4: Insurance / Employer Benefit Verification (Panel Clinics / BPJS FKTP)

**Activity description:** For BPJS patients (Indonesia), clinic staff verifies patient membership status and FKTP assignment via PCare portal or bridging API before the doctor is called. For Malaysia panel/employer patients, staff swipes the medical card on a TPA EDC terminal or logs into the Medilink/PMCare web portal to check eligibility, benefit balance, and copay structure. For BPJS, the SEP (Surat Eligibilitas Peserta) is printed if eligible; for TPA, a real-time screen confirmation is printed or recorded.

**Owner / executor role:** Front-desk staff / clinic admin

**Inputs:**
- BPJS membership number (entered into PCare / VClaim) — structured field
- Insurance / employer medical card — physical card (swipe or manual entry of card number)
- TPA system or PCare portal — web portal / API

**Outputs:**
- SEP printed (Indonesia) or eligibility confirmation screen (Malaysia)
- Copay amount communicated to patient
- Claim reference number logged

**Typical time per transaction:** Indonesia BPJS: 2–5 minutes (PCare portal often slow or intermittently down, requiring retries). Malaysia TPA real-time: 1–3 minutes via EDC terminal when online; up to 6 hours for inpatient GL via traditional process (9).

**Volume per typical clinic per day:** 60–90% of total patient volume for BPJS FKTPs; varies widely in Malaysia (panel patients typically 30–80% of caseload for urban GPs).

**Current automation level:**
- Indonesia: PCare BPJS portal (web-based) + VClaim API for hospital bridging. API failure rates not publicly reported.
- Malaysia: Medilink-Global ECCS platform (EDC swipe + web portal), PMCare portal. Some clinics still call TPA hotline manually (8), (9).

**Error / drop-off mode:**
- BPJS status inactive (membership lapsed, employer has not paid) → rejection; patient must pay out-of-pocket and appeal separately
- Patient registered at a different FKTP (wrong clinic assignment) → rejection; referral to assigned FKTP needed
- TPA system offline → manual paper form; claim must be submitted later by fax or email; risk of non-payment if not submitted within the claim window
- Wrong benefit type claimed (e.g., dental on GP code) → TPA rejection at adjudication

**AI capability that would address it:** Automated eligibility re-verification on arrival (API integration); predictive alert when BPJS status is likely to lapse (e.g., employer non-payment pattern); classification of benefit type by presenting complaint to pre-flag potential claim mismatch.

---

### S1a-5: Doctor Consultation — History-Taking & Symptom Elicitation

**Activity description:** Doctor enters consultation room, greets patient, reviews vitals and notes from nurse, asks chief complaint, and takes history (onset, duration, severity, associated symptoms, past history, medications, allergies). This is predominantly verbal, with the doctor simultaneously making hand-written or typed notes.

**Owner / executor role:** GP / doctor

**Inputs:**
- Patient verbal account of symptoms
- Nurse triage sheet with vitals (paper or EHR)
- Past medical history (paper folder or EHR display)
- Any patient-brought documents (discharge summary, referral letter, prior lab results — often paper or scanned PDF)

**Outputs:**
- Doctor's mental model of differential diagnosis
- Interim notes (hand-written in folder or free-text in EHR)
- List of investigations to order (if any)

**Typical time per transaction:** Consultation duration in Malaysian primary care: mean 18.21 minutes per patient (range not reported; public clinic, 60 patients/day) (7). Indonesia Puskesmas context: 5–6 minute consultations reported in one proof-of-concept study, reflecting high-volume load pressure (10). Private clinics likely 8–15 minutes. Global primary care research: 10–15 minutes is typical (7).

**Volume per typical clinic per day:** Equal to total consultations.

**Current automation level:** No AI tools currently in production use for this step in ID/MY GP clinic context. Doctor takes notes manually (paper or typed free-text). Ambient scribing tools (DAX Copilot, Abridge, Suki, Heidi) are deployed in Singapore academic hospital pilots but not in private GP clinics in ID/MY as of 2025. [ASSUMED-4]: to validate — ask 10 GP owners in Jakarta/KL whether they have tried any voice-to-text or ambient scribe tools.

**Error / drop-off mode:**
- Incomplete history due to time pressure → missed relevant chronic condition (e.g., current medication interaction with new prescription)
- Patient does not mention relevant symptom (language/literacy barrier) → wrong differential
- Doctor forgets to ask about allergies → adverse drug event risk

**AI capability that would address it:** Ambient voice capture + LLM real-time transcription (as demonstrated in Indonesian Puskesmas proof-of-concept using Whisper + GPT-3.5 for Bahasa Indonesia, achieving 10× documentation speed improvement) (10); patient-facing symptom intake chatbot (Bahasa / BM) to pre-populate history before doctor enters room.

---

### S1a-6: Clinical Examination (Vitals Review + Physical Exam)

**Activity description:** Doctor reviews vitals recorded by nurse, performs relevant physical examination (auscultation, palpation, percussion), and notes findings verbally or in writing.

**Owner / executor role:** GP / doctor

**Inputs:**
- Nurse-recorded vitals (paper or EHR)
- Physical examination findings (sensory/instrumental — verbal self-generated)

**Outputs:**
- Examination findings (free-text in folder or EHR)

**Typical time per transaction:** 2–5 minutes within the overall consultation window.

**Volume per typical clinic per day:** Equal to total consultations.

**Current automation level:** Entirely manual. Physical examination cannot be automated. Vitals already captured in S1a-3.

**Error / drop-off mode:**
- Doctor relies on nurse-recorded vitals without re-checking → transcription errors propagate into clinical decision
- Exam findings not recorded (time pressure) → omitted from SOAP note; medicolegal risk

**AI capability that would address it:** Ambient voice capture to auto-populate examination findings in EHR as doctor narrates; LLM alert if documented examination finding is inconsistent with stated diagnosis.

---

### S1a-7: SOAP Note Authoring & Clinical Decision

**Activity description:** After history and examination, the GP writes (or dictates) a Subjective–Objective–Assessment–Plan (SOAP) note. In paper-based clinics, this is hand-written in the folder. In EHR clinics, the doctor types free text (or structured fields) into the clinic system. The Assessment includes the working diagnosis and differential; the Plan includes investigations, medications, and referrals. This step is the highest-burden documentation task per encounter.

**Owner / executor role:** GP / doctor

**Inputs:**
- Mental model of diagnosis from S1a-5 and S1a-6
- Existing templates (if any) in EHR system
- Paper prescription pad (if prescription is to be handwritten)

**Outputs:**
- SOAP note: free text (paper) or structured + free text (EHR)
- Working diagnosis (later mapped to ICD-10 in S1a-8)
- Investigation order (if any)
- Referral trigger (if any, triggers S1a-10)

**Typical time per transaction:**
- Manual SOAP (paper): 5–10 minutes of writing per encounter (10)
- EHR typing: 8–16 minutes of EHR interaction per visit (global primary care benchmark) (11)
- Research reports clinicians spend 1.67× the consultation duration on documentation tasks in resource-constrained settings (10)
- Ambient AI scribe (global evidence): documentation time reduction of 50–70%, after-hours EHR time reduction from 2.7 hrs to <1.5 hrs/day for high-volume practices (12), (13)

**Volume per typical clinic per day:** Equal to total consultations. For a 40-patient clinic at 8 min/note = 320 minutes of GP documentation time per day — ~40% of an 8-hour working day.

**Current automation level:**
- Indonesia: Predominantly paper notes. In digitized clinics using Medeva/eClinic, doctor types free text. No ambient scribe tools deployed at scale.
- Malaysia: Mix. Klinify and eClinique offer structured SOAP templates; uptake not quantified but Klinify reports 800+ doctors using the platform (8). No ambient scribe in wide use.

**Error / drop-off mode:**
- Note left incomplete at end of busy session → clinical gap; risk if patient revisits with complication
- Copy-paste of prior note without updating → documentation does not reflect current encounter
- Illegible hand-writing in paper notes → pharmacist dispenses wrong dose; ICD-10 coder selects wrong code

**AI capability that would address it:** Ambient voice (LLM + ASR) generating draft SOAP note from conversation transcript (proven in Indonesia Puskesmas PoC, 10); LLM SOAP template auto-fill from structured vitals + chief complaint; structured note quality check (missing fields flagged before save).

---

### S1a-8: ICD-10 Coding

**Activity description:** After the SOAP note is finalized, the working diagnosis is mapped to an ICD-10 code. In BPJS clinics, accurate ICD-10 coding is required for claim submission via PCare; errors result in claim rejection. In Malaysian panel clinics, TPAs also require diagnosis codes for claims adjudication. This step is performed by the GP (if integrated into EHR) or by a back-office admin/coding clerk (in larger clinics or after-hours batch processing).

**Owner / executor role:** GP (in-line) or clinic admin / coding staff (batch)

**Inputs:**
- SOAP Assessment field or hand-written diagnosis (free text or paper)
- ICD-10 code lookup tool (dropdown in EHR, printed code book, or online search)

**Outputs:**
- ICD-10 code(s) assigned to the encounter (structured field in EHR or claim form)
- Primary and secondary diagnoses coded (if multiple conditions)

**Typical time per transaction:**
- Manual lookup from text note: 2–5 minutes per encounter if free text; faster if drop-down in EHR.
- LLM auto-coding from clinical notes: demonstrated F1 of 81–87% at category level in research settings; fine-tuned LLMs achieve 97% exact match on proprietary data (14).

**Volume per typical clinic per day:** Equal to billable consultations. For a 40-patient clinic, ~40 coding events per day, which is ~80–200 minutes/day if done manually per visit.

**Current automation level:**
- Indonesia: PCare BPJS portal has an ICD-10 drop-down; selection is manual. Medeva and eClinic have searchable ICD-10 lookup. No AI auto-coding deployed at scale.
- Malaysia: Klinify has ICD-10 selection; TPA claim forms require diagnosis code. Manual coding is standard. No AI auto-coding in use among private GP clinics.

**Error / drop-off mode:**
- Wrong ICD-10 code selected (especially for multi-symptom visits) → BPJS/TPA claim rejected; clinic must resubmit; delay in payment
- Unspecified or non-specific code used (e.g., R00–R99 symptoms instead of specific diagnosis) → pattern flagged by BPJS audit; clinic at risk of recoupment
- Coder selects code from memory without lookup → miscoding rate estimated at up to 20% in manual coding globally (14)

**AI capability that would address it:** LLM classification of free-text SOAP Assessment to ICD-10 code suggestion (auto-populated, GP confirms); multi-code suggestion for complex encounters; real-time flag if proposed code does not match presenting symptoms or prescribed treatment.

---

### S1a-9: Prescription Generation

**Activity description:** Doctor writes or generates a prescription for medications. In paper-based clinics, this is hand-written on a prescription pad. In EHR clinics, the doctor selects drugs from a formulary dropdown, enters dose/frequency/duration, and the system prints or displays the prescription. In BPJS clinics, the formulary is restricted to the BPJS formulary (FORNAS); private-pay patients can receive any registered drug.

**Owner / executor role:** GP / doctor

**Inputs:**
- Diagnosis (from S1a-7/S1a-8)
- Drug formulary (FORNAS for BPJS; clinic formulary for private)
- Patient's allergy record (from history or EHR)
- Paper prescription pad or EHR drug module

**Outputs:**
- Handwritten or printed prescription
- EHR medication record (if digitized)
- Dispensing instruction to in-clinic pharmacy / dispensary

**Typical time per transaction:** 2–5 minutes per prescription (1–4 drugs typical for a GP visit). Time dominated by writing / lookup + allergy check.

**Volume per typical clinic per day:** ~70–90% of consultations result in at least one prescription.

**Current automation level:**
- Indonesia: Mix of hand-written (small clinics) and EHR drop-down (Medeva, eClinic, KlinikPintar). BPJS PCare has FORNAS formulary integrated. Handwritten prescriptions still common outside Jakarta.
- Malaysia: Higher EHR adoption in urban clinics. Klinify and eClinique have drug libraries with dosing defaults. Many clinics dispense in-house, bypassing retail pharmacy step.

**Error / drop-off mode:**
- Handwritten prescription illegibility → pharmacist dispensing error; estimated 9.5% medication error rate in Indonesian hospital setting, 88% at prescribing phase (15)
- Drug not on BPJS FORNAS selected for BPJS patient → claim rejected or patient charged for out-of-formulary drug
- Allergy not flagged (paper folder, no allergy field in basic EHR) → serious adverse drug event risk
- Dose written ambiguously (e.g., "1×1" without specifying mg strength) → incorrect dispensing

**AI capability that would address it:** LLM formulary check (does prescribed drug match diagnosis + formulary?); allergy check alert (cross-reference patient allergy list against prescription); dose suggestion based on weight/age/renal function; auto-populate from SOAP Plan text.

---

### S1a-10: Referral Letter Generation (if applicable)

**Activity description:** When the GP determines the patient requires specialist or secondary care, a referral letter is generated. For BPJS patients, a mandatory rujukan (referral) form must be completed in PCare portal, specifying the destination facility and ICD-10 code. Private/panel patients receive a free-form referral letter (often a Word template printed on clinic letterhead). This step applies to approximately 5–15% of consultations.

**Owner / executor role:** GP (clinical content) + clinic admin (printing / portal submission)

**Inputs:**
- SOAP note (diagnosis, clinical summary)
- Patient ID and insurance details
- Destination hospital/specialist name
- PCare rujukan portal (Indonesia) or Word template (both countries)

**Outputs:**
- Printed or digital rujukan form (Indonesia BPJS)
- Referral letter (free-text Word/PDF, Malaysia private)
- Copy filed in patient record

**Typical time per transaction:** 5–15 minutes for BPJS rujukan (portal form with multiple fields + PCare API validation); 3–10 minutes for a typed referral letter from template. [ASSUMED-5]: to validate: time the rujukan steps in PCare portal at a sample FKTP.

**Volume per typical clinic per day:** ~5–15% of consultations (3–10 referrals per 60-patient clinic per day).

**Current automation level:**
- Indonesia: PCare portal (mandatory for BPJS rujukan); often takes longer due to portal load or API timeouts. Free-text letters still typed individually.
- Malaysia: Word template or in some cases EHR referral module. No structured interoperability between GP EHR and hospital receiving system.

**Error / drop-off mode:**
- PCare portal down → rujukan cannot be issued; patient cannot access secondary care under BPJS on that visit
- Incorrect diagnosis code on rujukan → destination hospital may reject or reclassify
- Referral letter too brief (no relevant history) → specialist repeats full history-taking; care continuity gap

**AI capability that would address it:** LLM auto-draft of referral letter from SOAP note (structured clinical summary, reason for referral, relevant history, current medications); template completion from EHR data; BPJS rujukan field auto-population.

---

### S1a-11: EHR / Record Filing, Billing Calculation, and Copay Collection

**Activity description:** After the consultation, the encounter record is finalized and filed. For paper clinics, the folder is returned to the filing system. For EHR clinics, the note is saved and the encounter closed. Billing is calculated (copay for BPJS, panel bill for TPA, or full fee for private-pay). Patient pays copay (cash or e-wallet). End-of-day batching: admin compiles claim reports for BPJS PCare submission (monthly) or TPA claim batch (per-claim or monthly, depending on TPA).

**Owner / executor role:** Clinic admin / front-desk staff

**Inputs:**
- Closed encounter note (paper or EHR)
- Copay table (BPJS fixed; TPA schedule of benefits; private fee schedule)
- Payment methods available (cash, e-wallet, credit card terminal)
- BPJS PCare report module or TPA claim portal

**Outputs:**
- Receipt issued to patient
- Encounter record filed (paper folder re-filed or EHR encounter closed)
- BPJS capitation / fee-for-service claim record (monthly batch to PCare)
- TPA claim submitted (per-claim or batch to Medilink/PMCare portal)

**Typical time per transaction:**
- Billing calculation + receipt: 2–4 minutes per patient
- Paper re-filing: 1–2 minutes
- BPJS PCare monthly claim compilation: a significant back-office task; one admin typically spends 2–4 hours/month per 500 BPJS patients preparing reports [ASSUMED-6]: to validate — interview BPJS FKTPs admin staff.

**Volume per typical clinic per day:** Equal to total consultations for billing; filing applies to all records.

**Current automation level:**
- Indonesia: Basic billing in paper or Excel; Medeva and eClinic generate invoices and BPJS claim reports. PCare has an online claim submission module. E-wallet acceptance (GoPay, OVO, Dana) growing but cash still dominant.
- Malaysia: Klinify, eClinique generate bills and TPA claim forms. Medilink and PMCare portals accept electronic claim submissions. Some clinics still submit by fax or email attachment.

**Error / drop-off mode:**
- Claim submitted with mismatched data (visit date, ICD-10, procedure code) → TPA rejection; admin must find the original note and correct
- Paper folder misfiled → cannot locate for BPJS audit or claim review
- BPJS claim data entry errors → monthly recoupment or claim underpayment; common per BPJS audit literature [ASSUMED-7]: to validate — ask BPJS FKTPs how often they receive monthly recoupment notices.
- Payment terminal offline → cash fallback; reconciliation errors

**AI capability that would address it:** Auto-generation of BPJS claim data from closed EHR encounter (eliminating manual re-entry); claim completeness check before submission (flag missing fields); classification of payment category from encounter data; pattern detection of frequent rejection codes to prompt process correction.

---

## Process Time Summary (One Average Encounter)

| Sub-step | Role | Estimated Time (min) | Automation Level (ID/MY) |
|----------|------|---------------------|--------------------------|
| S1a-1: Arrival & queue registration | Front-desk | 3–8 | Paper / basic EHR |
| S1a-2: History retrieval | Nurse | 2–5 (paper) / <1 (EHR) | Paper / basic EHR |
| S1a-3: Vitals capture | Nurse | 3–7 | Manual / paper |
| S1a-4: Insurance/benefit verification | Front-desk | 2–5 (ID) / 1–3 (MY) | Portal / EDC terminal |
| S1a-5: Consultation – history-taking | GP | 5–15 | Manual / verbal |
| S1a-6: Physical examination | GP | 2–5 | Manual |
| S1a-7: SOAP note authoring | GP | 5–16 | Paper / free-text EHR |
| S1a-8: ICD-10 coding | GP / admin | 2–5 | Manual lookup / EHR dropdown |
| S1a-9: Prescription generation | GP | 2–5 | Paper / EHR formulary |
| S1a-10: Referral letter (if applicable) | GP / admin | 5–15 | Portal / Word template |
| S1a-11: Filing, billing, claim | Admin | 4–6 | Paper / basic EHR / portal |
| **Total per encounter (ex-referral)** | | **30–77 min** | |

Note: The GP personally accounts for 16–46 minutes of this per encounter (sub-steps 5, 6, 7, 8, 9); the rest is distributed across nursing and admin roles. At 16 minutes of EHR interaction per patient visit (global benchmark), a 40-patient clinic requires ~640 minutes of documentation-related work across all staff per day (11).

---

## Revenue Model

Clinic revenue per encounter: BPJS capitation (fixed monthly per enrolled patient: ~IDR 6,000–10,000/member/month depending on age/sex) plus fee-for-service for non-capitation services; private-pay fee (IDR 50,000–150,000/consultation in Indonesia; MYR 20–80/consultation in Malaysia); TPA reimbursement per panel visit (MYR 25–60 inclusive of drugs in Malaysia). Clinics owning in-house dispensaries earn margin on drugs dispensed.

---

## Cost Drivers

Staff cost (GP salary IDR 6–20M/month in Indonesia; MYR 8,000–15,000/month for GP owner-operator in Malaysia), nursing/admin salaries (IDR 3.5–5.5M/month nurse; MYR 2,600–3,500/month nurse), drug stock/dispensary COGS (typically 40–60% of revenue for clinics dispensing in-house), clinic rent, utilities, and system/software subscription (EHR vendor fees).

---

## Named Clinic Chains / Chain Consolidators

**Indonesia:**
- **Kimia Farma Laboratorium & Klinik** — state-owned enterprise; 355 klinik pratama + 22 klinik utama as of mid-2023; 136 regencies/cities across 34 provinces (16)
- **Klinik Pintar** — tech-enabled primary clinic chain; ~22 locations as of Dec 2023, targeting 100+ by end-2024; operates its own clinic management app (KlinikPintar.id) used as SaaS by external clinics (17)
- **Halodoc (platform + clinic network)** — 3,300+ hospital partners and 20,000+ licensed doctors on platform; own clinic footprint not separately disclosed; major telemedicine and in-person channel (18)
- **Siloam Hospitals Group** — 66 satellite clinics (klinik) supporting its 41-hospital network (19)
- **Prodia** — primarily diagnostics/lab; satellite clinics at lab sites provide GP consultation component (from provider directory data) (20)

**Malaysia:**
- **Mediviron Group of Clinics** — 232+ clinics (as of 2024); largest standalone GP chain in Malaysia; 8 states on west coast Peninsular Malaysia (21)
- **Qualitas Health** — 351 healthcare facilities across Asia-Pacific as of 2024; major Klang Valley and Penang footprint; offers corporate medical solutions (22)
- **PMCare** — premier TPA/MCO with own panel clinic network; largest TPA by employer lives covered in Malaysia (23)
- **Medilink-Global** — TPA/MCO operating digital claims platform; EDC-enabled real-time eligibility at panel clinics nationwide (9)
- **DoctorOnCall / Care Clinics Group** — digital-first plus physical clinic model; TPA and insurance panel (24)

---

## EHR Vendors Active in Private GP Segment

**Indonesia:**
- **Medeva** (medeva.tech) — cloud-based SIM Klinik + RME; SATUSEHAT + BPJS PCare integrated; launched ~2023 (25)
- **eClinic** (eclinic.id) — cloud clinic management; BPJS and SATUSEHAT integration; prominent among klinik pratama
- **KlinikPintar app** (klinikpintar.id/aplikasiklinik) — used by Klinik Pintar own network and sold as SaaS to external clinics; medical record + BPJS PCare module (17)
- **Assist.ID** — clinic management system; BPJS and SATUSEHAT integration documentation published (25)

**Malaysia:**
- **Klinify** (klinify.com) — cloud clinic management; reported 800+ doctors; insurance billing module (8)
- **eClinique** — EHR + billing; common in urban private GP clinics
- **SoftLink Clinic Solution** — desktop-based; historically most common vendor in Hong Kong/Southeast Asia corridor; cited in adoption studies (6)
- **BookDoc** — teleconsultation + clinic management; MOH Malaysia-contracted for telemedicine services; used in panel clinic contexts (4)
- **kumoDoc** — clinic management with SATUSEHAT integration for clinics operating in both ID and MY (26)

---

## Preliminary Pain Points (This Stage)

1. **SOAP note authoring consumes 40–50% of GP's working time** — at 8–16 minutes of documentation per encounter (11), a 40-patient-day GP spends 320–640 minutes on notes alone; ambient scribing could recover 4–6 hours per day of productive clinical time.

2. **BPJS PCare portal and VClaim API instability creates front-desk bottlenecks** — eligibility verification timeouts or downtime force manual paper fallback, delaying patient flow and creating unclaimed encounters that must be re-entered post-hoc; extent of downtime is anecdotal, not publicly reported [ASSUMED-7].

3. **ICD-10 miscoding drives BPJS claim rejections and recoupments** — manual ICD-10 code selection from free-text diagnoses has estimated error rates up to 20% (14); for BPJS FKTPs, miscoding leads to claim rejection or BPJS audit; clinics often do not have a dedicated coder.

4. **Medical history retrieval in paper-based clinics adds 2–5 minutes per encounter and is error-prone** — misfiled folders, undated loose pages, and illegible hand-writing mean the doctor may consult without key chronic disease history; the information needed to make the CDM management decision is frequently not surfaced at point of care.

5. **Handwritten prescriptions generate downstream dispensing errors** — 9.5% medication error rate in Indonesian outpatient settings (88% at prescribing phase) (15); hand-written prescriptions are a specific driver; illegibility and ambiguous dosing are the most common failure modes.

6. **Insurance/TPA benefit verification delays slow patient flow for panel patients** — traditional GL process for inpatient can take up to 6 hours (9); even for outpatient real-time swipe, terminal downtime forces phone/email fallback; in peak clinic hours, this creates queue backup at the front desk.

7. **BPJS rujukan (referral) in PCare portal is multi-field and error-prone** — the mandatory online rujukan form requires the GP to re-enter patient data, diagnosis code, and destination facility; portal load under high volume causes timeouts; errors result in patient unable to access secondary care on that visit day.

8. **Free-text referral letters are not structured** — referral content is inconsistent; receiving specialists frequently lack key clinical context (current medications, recent labs, CDM enrolment status), forcing them to repeat history-taking; no interoperability standard enforced between GP EHR and hospital EHR in either country.

9. **CDM patients are not flagged proactively at check-in** — without a CDM alert module in EHR (rare in basic clinic systems), a known diabetic or hypertensive who presents for an acute complaint may not be prompted for their CDM follow-up; this is a measurable loss for both patient health and BPJS capitation management.

10. **Monthly BPJS claim batch compilation is a manual back-office burden** — admin staff must compile per-patient encounter data from PCare or manual entry into BPJS reporting templates; discrepancies between in-clinic records and PCare data (e.g., visit date, service code) cause claim underpayment; time estimate: 2–4 hours/month per 500 BPJS patients [ASSUMED-6].

11. **New patient intake data entry duplicates effort** — patient must verbally state information (and spell name/address) which front-desk staff manually enters; this information is then sometimes re-entered by the nurse on the triage sheet and again by the doctor in the SOAP; three separate manual entries of overlapping demographic/complaint data per new patient.

12. **Language and literacy gaps in intake** — Indonesian private clinics serve diverse language backgrounds (Javanese, Batak, Sundanese, etc.); patients with limited Bahasa Indonesia literacy may provide incomplete intake histories; GP must compensate with longer verbal history; non-standardized symptom vocabulary also creates free-text ICD-10 mapping ambiguity.

13. **Vitals recorded on paper triage sheet are not auto-transferred to SOAP** — even in clinics that use an EHR for SOAP notes, vitals are often entered on a separate paper form that the nurse hands to the doctor; the doctor must re-read and copy the values into the EHR; manual transcription introduces digit transposition errors (e.g., BP of 148/94 recorded as 184/94).

14. **End-of-day reconciliation between paper records and BPJS PCare claims is unreliable** — for clinics running hybrid paper+portal workflows, the daily paper register and PCare's online count can diverge; unreconciled visits are either unclaimed (revenue loss) or double-billed (audit risk).

15. **No structured follow-up scheduling logic for CDM patients leaving the consultation** — GP verbally tells patient to "come back in 3 months"; no automated appointment scheduling from the EHR; no recall trigger set; follow-up compliance depends entirely on patient motivation (and is low for asymptomatic hypertension/diabetes management per CDM literature).

---

## Sources for This Stage

(1) Kementerian Kesehatan Republik Indonesia, *Profil Kesehatan Indonesia 2023*, Pusat Data dan Teknologi Informasi Kemenkes, Jakarta, 2024. URL: https://kemkes.go.id/app_asset/file_content_download/172231123666a86244b83fd8.51637104.pdf (PDF, processed via markitdown)

(2) eHealth.co.id / Kemenkes fasyankes.kemkes.go.id database summary, "Data Kondisi dan Ketersediaan Fasilitas Kesehatan di Indonesia," 2023 as compiled per BPJS integration data (January 2024). URL: https://ehealth.co.id/blog/post/data-kondisi-dan-ketersediaan-fasilitas-kesehatan-di-indonesia/

(3) Ministry of Health Malaysia, *Health Facts 2024 (Reference Data for Year 2023)*, Planning Division, MOH Malaysia, November 2024. Private Medical Clinic count: 10,495 (data as of 31 December 2023). URL: https://www.moh.gov.my/images/04-penerbitan/health-facts/Health_Facts_2024_updt_23012025.pdf (PDF, processed via markitdown)

(4) Statista / MOH Malaysia, "Number of private medical clinics Malaysia 2015–2023," citing MOH KKM data. URL: https://www.statista.com/statistics/1464154/malaysia-number-of-private-medical-clinics/ [NEEDS-ATTENDED-FETCH: paywall]

(5) Satrio S., Aqid BM., "Deadline-Chasing in Digital Health: Modeling EMR Adoption Dynamics and Regulatory Impact in Indonesian Primary Care," *arXiv:2512.05381*, submitted December 2025. Data source: PT Medigo Teknologi Kesehatan (PT MTK). URL: https://arxiv.org/abs/2512.05381

(6) Luk W. et al., "Factors Associated With Adoption of the Electronic Health Record System Among Primary Care Physicians" (Hong Kong private primary care), *BMC Medical Informatics and Decision Making*, 2015; 15:14. PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC4288082/ [Note: Hong Kong data; used as directional proxy for urban private GP EHR adoption; Malaysia-specific figure not found in this pass]

(7) Ahmad BA, Khairatul K, Farnaza A, "An assessment of patient waiting and consultation time in a primary healthcare clinic," *Malaysian Family Physician* 2017;12(1):14–21. Mean consultation time 18.21 minutes; 60 patients/day at public primary care clinic in Gombak. URL: https://e-mfp.org/wp-content/uploads/an-assessment-of-patient-waiting-and-consultation-time-in-a-primary-healthcare-clinic.pdf (PDF, processed via markitdown)

(8) Klinify website / EB.fyi profile, "800+ doctors" claim. URL: https://klinify.com/ [NEEDS-ATTENDED-FETCH: connection refused]

(9) Medilink-Global, "Digitising the Letter of Guarantee (LOG) Process," Medilink corporate page, 2024. Quotes traditional GL process up to 6 hours. URL: https://medilink-global.com/digitising-the-letter-of-guarantee--log--process

(10) Khatim NA, Irfan AAA, Arief MM, "Using LLM for Real-Time Transcription and Summarization of Doctor-Patient Interactions into ePuskesmas in Indonesia: A Proof-of-Concept Study," *arXiv:2409.17054*, September 2024. Consultations 5–6 minutes; system achieves 10× documentation speed; clinicians spend 1.67× consultation duration on documentation. URL: https://arxiv.org/abs/2409.17054

(11) Rotenstein LS et al., "For each patient visit, physicians spend about 16 minutes on EHRs, study finds," citing *Annals of Internal Medicine* 2024 data via Fierce Healthcare. URL: https://www.fiercehealthcare.com/practices/for-each-patient-visit-physicians-spend-about-16-minutes-ehrs-study-finds; AMA summary: https://www.ama-assn.org/practice-management/digital-health/primary-care-visits-run-half-hour-time-ehr-36-minutes

(12) Rotenstein LS et al. 2024 AMA grant study: "Primary care physicians now average 2.7 hours of after-hours EHR work daily — nearly double what was measured in 2016." URL: https://poconoai.com/ehr-burden-research.html

(13) Systematic review: "The impact of using AI-powered voice-to-text technology for clinical documentation on quality of care in primary care and outpatient settings," *BMC Primary Care* / PMC, studies up to September 2024, 9 studies, 524 HCPs. URL: https://pmc.ncbi.nlm.nih.gov/articles/PMC12301838/

(14) LLM ICD-10 coding accuracy research: "Large Language Model in Medical Informatics: Direct Classification and Enhanced Text Representations for Automatic ICD Coding," arXiv 2411.06823; "Enhancing medical coding efficiency through domain-specific fine-tuned large language models," PMC 2024. Medical coding errors estimated up to 20%; annual US coding cost $18.2B. URL: https://arxiv.org/pdf/2411.06823; https://www.ncbi.nlm.nih.gov/pmc/articles/PMC12045799/

(15) Medication errors in Indonesian outpatient settings: PMC Indonesia medication error study — 9.5% error rate, 88% at prescribing phase; PLOS ONE Southeast Asia systematic review. URL: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0136545; https://pmc.ncbi.nlm.nih.gov/articles/PMC12648230/

(16) Kimia Farma Laboratorium & Klinik, "Kimia Farma Laboratory and Clinic Inaugurates 20 New Outlets," corporate press release July 2023. 355 pratama + 22 utama + 70 labs across 34 provinces. URL: https://www.kimiafarma.co.id/en/read/kimia-farma-laboratory-and-clinic-inaugurates-20-new-outlets

(17) Klinik Pintar / Nikkei Asia, "Indonesia's Klinik Pintar aims to add 100 digital-driven clinics," February 2023; CBInsights data (22 clinics end-2023). URL: https://asia.nikkei.com/business/health-care/indonesia-s-klinik-pintar-aims-to-add-100-digital-driven-clinics

(18) Halodoc / AWS Press, "Halodoc Brings Holistic Healthcare to More than 20 Million Indonesian Users," June 2023. 3,300 hospital partners, 20,000 licensed doctors. URL: https://press.aboutamazon.com/aws/2023/6/halodoc-brings-holistic-healthcare-to-more-than-20-million-indonesian-users-using-aws

(19) Siloam Hospitals Group, corporate website / Wikipedia. 41 hospitals, 66 clinics, 21 provinces. URL: https://www.siloamhospitals.com/en/klinik

(20) Prodia Digital, "Prodia Clinic Laboratory Branch Addresses." URL: https://prodiadigital.com/en

(21) Mediviron Group of Clinics, corporate website / Chegg case reference. 232+ clinics, 8 states. URL: https://mediviron.com.my/

(22) Qualitas Health Group, corporate overview / ZoomInfo. 351 facilities across APAC as of August 2024. URL: https://qualitashealthgroup.com/overview/

(23) PMCare, "Pioneer and leading Third Party Administrator (TPA) in Malaysia." URL: https://www.pmcare.com.my/

(24) Care Clinics Group Malaysia, TPA and insurance panel clinic. URL: https://careclinics.com.my/tpa-and-insurance/

(25) Medeva (medeva.tech), "SIM Klinik & RME Terintegrasi SATUSEHAT & BPJS Kesehatan." URL: https://medeva.tech/; eClinic: https://www.eclinic.id/

(26) kumoDoc, "Clinic Management Software System from Malaysia for GP Clinics & Doctors." URL: https://www.kumodoc.com/

(5a) Kementerian Kesehatan, "SATUSEHAT Raih AAAH Award 2024" — Kemenkes press release reporting 40,000+ EMR systems integrated across fasyankes (target 60,000 by end-2024). URL: https://www.kemkes.go.id/id/satusehat-raih-penghargaan-aaah-award-2024

(5b) BKPK Kemenkes, "Wajib Integrasi SATU SEHAT: Kemenkes Desak Percepatan RME di Fasyankes" (October 2025) — 34,463 fasyankes enrolled in SATUSEHAT. URL: https://www.badankebijakan.kemkes.go.id/en/wajib-integrasi-satu-sehat-kemenkes-desak-percepatan-rme-di-fasyankes/

(5c) PubMed, "Assessing EHR Implementation Fidelity Using the SATUSEHAT Dashboard," 2024–2025, finding 33,901 fasyankes tracked with 58% meeting submission threshold (October 2024). URL: https://pubmed.ncbi.nlm.nih.gov/40776145/

(5d) CodeBlue / Galen Centre, "Budget 2024: Only 3% Of Malaysia Health Clinics Have Digital Health Records" (October 2023, citing PM Anwar Ibrahim's Budget 2024 speech). URL: https://codeblue.galencentre.org/2023/10/13/budget-2024-more-funds-for-digital-health-records-preventive-care/

(5e) US ITA, "Malaysia Digital Health Market Intelligence" (citing MOH ICT Masterplan; 3% government klinik kesihatan digital records figure). URL: https://www.trade.gov/market-intelligence/malaysia-digital-health

(6a) PMC, "Evolution of healthcare digitalisation policies in Malaysia," 2019 baseline showing 7% of Malaysian clinics had digital systems. URL: https://pmc.ncbi.nlm.nih.gov/articles/PMC12227897/

(27) Ab Rahman N. et al., "Time spent by primary care physicians" (Malaysian QUALICO-PC participation), *Human Resources for Health* 2019, PMC6829856 — private MY GPs allocate 95.4% of working hours to direct patient care. URL: https://pmc.ncbi.nlm.nih.gov/articles/PMC6829856/

(28) DOSM Malaysia, *Salaries and Wages Survey Report 2024* (PDF) — Professionals occupational category national median MYR 5,821/month; mean MYR 6,524; health sector industry median MYR 4,698. URL: https://www.dosm.gov.my (PDF, processed via markitdown)

(29) Sinsky C. et al., "Allocation of Physician Time in Ambulatory Practice," *Annals of Internal Medicine* 2016 — US ambulatory time-motion study finding 49.2% of office day on EHR/desk work (acknowledged as US benchmark; SEA contradicted by QUALICO-PC). URL: https://www.acpjournals.org/doi/10.7326/M16-0961

(30) Pramono et al., systematic review of 45 puskesmas-coverage studies, *Jurnal Rekam Medis dan Informasi Kesehatan*, 2021, doi:10.31983/jrmik.v4i2.7688 — puskesmas ICD-10 coding accuracy 26–45% (implied error rate 55–74%).

(31) CodeBlue, "PMCare TPA Disclosure" November 2025 — Malaysia's largest GP TPA covers ~5,280 panel clinics and ~984k members; ~1.3% outpatient claim denial rate 2025 YTD; ~99% claim approval full-year 2024.

---

## Assumptions to Validate

[ASSUMED-1]: Average daily patient volume at Indonesia klinik pratama is 20–60 patients/day for typical urban private clinics, extrapolated from case examples and BPJS panel capacity norms.
- to validate: Request daily patient register data (anonymized) from Kimia Farma Klinik or BPJS FKTP capitation assignment data; ask 10 clinic owners in Jakarta, Surabaya, Bandung.

[ASSUMED-2]: Average daily patient volume at Malaysian private GP clinic is 40–80 patients/day for typical urban clinic; the 60/patient figure from source (7) is a public clinic and may overstate or understate for private clinics.
- to validate: Ask 10 GP clinic owners in Klang Valley, Penang, Johor Bahru for their average daily count; cross-reference with Malaysian Medical Association member survey data if available.

[ASSUMED-3]: Paper history retrieval takes 2–5 minutes per encounter; EHR lookup takes <30 seconds.
- to validate: Time-motion study at 3 paper-based and 3 EHR-equipped clinics in Jakarta and KL; ask nurses to log retrieval time for 1 week.

[ASSUMED-4]: No ambient scribing tools are in production use in private GP clinics in Indonesia or Malaysia as of early 2025. The Singapore ambient scribe study is academic-hospital setting, not private GP.
- to validate: Survey 20 GP clinic owners/doctors in Jakarta and KL; ask whether they have used Nuance DAX, Heidi, or any local equivalent; check Klinify and Medeva roadmaps for planned ambient scribe integration.

[ASSUMED-5]: BPJS rujukan form completion in PCare portal takes 5–15 minutes per referral, based on reported portal complexity and multi-field requirement; not sourced from a timed study.
- to validate: Observe and time PCare rujukan workflow at 5 BPJS FKTPs in Jakarta or Surabaya; ask clinic admin how many referrals they process per day and how long each takes.

[ASSUMED-6]: BPJS claim batch preparation (PCare monthly claim compilation) takes 2–4 hours per month per 500 BPJS-enrolled patients, for a typical FKTP admin.
- to validate: Interview 5–10 FKTP admin/finance staff; ask for monthly time spent on BPJS claim data entry, error correction, and submission.

[ASSUMED-7]: BPJS PCare portal downtime is a material operational issue but downtime frequency is not publicly reported; the prevalence of paper fallback workflows is based on practitioner reports in non-peer-reviewed sources.
- to validate: Ask Kemenkes or BPJS Kesehatan for PCare uptime statistics; ask FKTP operators how often they revert to paper in a typical month.

---

## Data Gaps

- **National average daily patient volume per private clinic (ID and MY)**: No government statistics source publishes this metric. Requires primary survey or administrative data request.
- **Malaysia private GP EHR adoption rate (2023)**: No Malaysian government or industry association statistic found in this pass; 79.6% figure is from Hong Kong 2013 study. A Malaysia-specific figure requires access to the full KRI Digital Health Records in Malaysia report or MPCB (Medical Practice Control Branch) data.
- **Indonesia EHR adoption (non-BPJS subset)**: The 8.9% figure in source (5) covers one EMR vendor's network only; total FKTP EMR adoption across all vendors is unknown from public sources.
- **Sub-step-level time benchmarks for ID/MY private clinics**: All time estimates are sourced from Malaysian public clinic data, Indonesian Puskesmas PoC study, or US/global benchmarks. No private GP clinic time-motion study in Indonesia or Malaysia found in this pass.


---

## Part B — Pain points

# Stage 1 Pain Points: GP Clinic — Consultation & Clinical Documentation (Sub-process 1a)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Researched: 2026-05-25*
*Baseline clinic: 300-patient-panel GP clinic, urban Indonesia (Jakarta/Surabaya) or Malaysia (Klang Valley/Penang)*

---

## Stage 1: Private GP Clinic (Urban Indonesia & Malaysia)

### Pain point 1.1

**Description:** GP doctors in urban Indonesian and Malaysian private clinics spend a documentation burden that varies sharply by setting and EHR maturity. In Indonesian Puskesmas (the closest published SEA primary-care evidence base), documentation time runs 1.67× consultation duration (Khatim 2024 — see (8)), implying 8–10 minutes of doctor-side notes for a 5–6 minute encounter, i.e. documentation absorbs roughly 60% of doctor-touched time per encounter. In Malaysian private GP clinics, the QUALICO-PC primary-care physician survey (Ab Rahman 2019, see (15)) reports that GPs allocate 95.4% of working hours to direct patient care — implying residual administrative time is much smaller in that setting (paper-only, no EMR mandate). The pain is real but heterogeneous: the binding constraint in Malaysia today is *under-documentation* (notes too thin to feed downstream coding, audit, or AI tooling), whereas Indonesia's 2023 Permenkes 24/2022 mandate to integrate FKTP records into SATUSEHAT is now forcing formal EMR documentation where none existed, driving up doctor-time-on-documentation rather than reducing it. Input data format is predominantly free text and verbal. Target AI capability: **ambient voice capture + LLM clinical scribe** (SOAP auto-draft from consultation transcript) — value thesis differs by country: time-recovery in Indonesia post-SATUSEHAT mandate; documentation-enablement-for-structured-data in Malaysia.

**Who bears it:** GP / doctor (owner-operator or employed), in both Indonesia (klinik pratama FKTP and private-pay clinics) and Malaysia (solo GP and panel-clinic GP)

**Estimated cost:**

- **GP documentation labor cost, Indonesia (revised post-DR):** A private-practice GP in urban Indonesia earns IDR 7–13 million/month (Jobstreet/MetroTV/IDI 2024–2026; see (1), (16)); loaded cost at 1.3× = IDR 9–17 million/month = USD 560–1,050/month at IDR 16,200. Using Khatim 2024 Puskesmas evidence of 1.67× documentation/consultation ratio (see (8)), documentation absorbs ~60% of doctor-touched time per encounter; at clinic-day scope this translates to roughly 25–35% of GP working hours when 40 patients/day × 5–10 minutes doc each is set against an 8-hour workday. Documentation labor cost per GP = **USD 140–370/month** or **USD 1,680–4,440/year**; for a 300-panel clinic at 1.5 FTE GP, annual documentation labor cost = **USD 2,520–6,660/year** (Indonesia). Note this is materially lower than the original "40–50% of working time" assumption because PP1.1 deep-research found no published ID-specific private-GP documentation-time-share figure, and the 40–50% range derives from US data that does not transfer to SEA. See deep-research outcome PP1.1-cost-3.
- **GP documentation labor cost, Malaysia (revised post-DR):** Urban private GP earns MYR 5,000–10,000/month per DOSM 2024 Salaries & Wages Survey (Professionals median MYR 5,821; mean MYR 6,524; health sector median MYR 4,698) — see (4), (17); upper range covers high-volume owner-operator GPs. Loaded cost = MYR 6,500–13,000/month = USD 1,400–2,800/month at MYR 4.65/USD. Ab Rahman 2019 QUALICO-PC (see (15)) reports private MY GPs allocate 95.4% of working hours to direct patient care, implying ~4.6% admin/documentation time today — i.e. notes are minimal because there is no national EMR mandate. Documentation labor cost today is **USD 770–1,540/year** per 300-panel clinic (low), but this *under-documentation* state is the binding constraint, not over-documentation: it blocks structured data, coding, and any downstream AI. The Malaysia value thesis for ambient scribe is enablement (making documentation cheap enough to be routine), not time-recovery.
- **After-hours EHR bleed:** US primary care benchmark: physicians average 2.7 hours/day of after-hours EHR work (Rotenstein et al. 2024; see (6)); 91% of US office-based physicians spend time outside normal hours on documentation (CDC/MMWR 2021; see (7)). Indonesian Puskesmas study found 1.67x documentation-to-consultation time ratio (see (8)). Residual after-hours cost is meaningful but not separately quantified here due to absence of local data.
- **AI uplift benchmark (global):** Nuance DAX 2023 clinician survey: 7 minutes saved per encounter, 50% documentation time reduction (vendor claim; see (9)); independent Abridge implementation study (332 primary care physicians) found 18.6% reduction in note time (0.95 min/note; p<0.0001; see (10)); Singapore SGH real-world study (Dec 2024-May 2025) found 15% note time reduction (5.3 min -> 4.5 min; p=0.04; multilingual including Malay; see (11)). **Global benchmark. ID/MY private GP adoption is nascent; no local RCT found.**
- **Recoverable labor value (conservative):** At 18-50% documentation time reduction (range: Singapore RCT lower bound to vendor survey upper bound), recoverable GP time = 1.6-4.5 hours/day for a 40-patient clinic. At Indonesian GP loaded cost of USD 800-1,600/month, recovered time value = **USD 1,000-7,200/clinic/year**. This is a partial offset estimate, not a WTP figure.

**Willingness to pay:** Not sourced from ID/MY primary data. [Interview placeholder: ask GP clinic owner-operators in Jakarta and Klang Valley whether they would pay MYR 150-400/month for an ambient scribe integration to their existing EHR; ask what non-monetary friction (setup time, privacy concern, Bahasa language accuracy) they anticipate.]

**Frequency:**

- Documentation occupies 127.5 minutes of an 8-hour clinic day for primary care physicians (26.6% of scheduled clinic time); total EHR interaction 391.3 min/day (65% of 8-hour day) in US 2022-2023 data (2)
- Indonesian Puskesmas: documentation time was 1.67x consultation duration; for a 5-6 minute consultation, notes took approximately 8-10 minutes; manual SOAP authoring on paper estimated at 5-10 min/encounter (8)
- US primary care: 16 minutes 14 seconds EHR time per encounter on average (Fierce Healthcare / Annals IM 2024; see (3))
- EMR adoption in Indonesian FKTPs as of end-2024: 8.9% of 39,852 eligible facilities have full EMR (one major vendor PT MTK network data; see (12)) -- meaning more than 90% of FKTPs are paper-based, amplifying documentation burden
- 91% of US office-based physicians spend time outside normal hours on clinical documentation (CDC/MMWR 2021; see (7)); the Indonesian Puskesmas PoC confirms the same pattern applies in resource-constrained Indonesian settings (8)

**Evidenced or assumed:**

(1) SalaryExplorer Indonesia Doctor/Physician Salaries 2024: https://www.salaryexplorer.com/average-salary-wage-comparison-indonesia-doctor-physician-c101d13
(2) PMC -- "More Tethered to the EHR: EHR Workload Trends Among Academic Primary Care Physicians, 2019-2023": https://pmc.ncbi.nlm.nih.gov/articles/PMC11233089/ -- 391.3 min/day total EHR; 127.5 min/day notes
(3) Fierce Healthcare / AMA -- "For each patient visit, physicians spend about 16 minutes on EHRs": https://www.fiercehealthcare.com/practices/for-each-patient-visit-physicians-spend-about-16-minutes-ehrs-study-finds; AMA summary: https://www.ama-assn.org/practice-management/digital-health/primary-care-visits-run-half-hour-time-ehr-36-minutes
(4) Glassdoor Malaysia Doctor Salary 2024: https://www.glassdoor.com/Salaries/malaysia-doctor-salary-SRCH_IL.0,8_IN170_KO9,15.htm; PayScale GP Malaysia: https://www.payscale.com/research/MY/Job=General_Practitioner/Salary
(5) SalaryExplorer Malaysia Doctor/Physician Salaries 2024: https://www.salaryexplorer.com/average-salary-wage-comparison-malaysia-doctor-physician-c130d13
(6) Rotenstein et al. 2024, via EHR burden research: https://poconoai.com/ehr-burden-research.html
(7) CDC/MMWR QuickStats 2021 -- distribution of after-hours documentation hours, US office-based physicians 2019: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8675657/
(8) Khatim NA et al., "Using LLM for Real-Time Transcription and Summarization of Doctor-Patient Interactions into ePuskesmas in Indonesia," arXiv:2409.17054, September 2024: https://arxiv.org/abs/2409.17054 -- 1.67x documentation-to-consultation ratio; 10x documentation speed with AI; 5-6 min consultations at Puskesmas
(9) Nuance DAX Copilot -- 7 min/encounter saved, 50% documentation reduction (2023 clinician survey; vendor claim): https://news.nuance.com/2024-01-18-Nuance-Announces-General-Availability-of-DAX-Copilot-Embedded-in-Epic,-Transforming-Healthcare-experiences-with-Automated-Clinical-Documentation
(10) Abridge ambient scribe -- PMC 2025 primary care study (332 physicians): https://pmc.ncbi.nlm.nih.gov/articles/PMC12657781/ -- 18.6% note time reduction, 0.95 min/note saved, p<0.0001
(11) Singapore General Hospital ambient scribe real-world study, JMIR Medical Informatics 2026: https://medinform.jmir.org/2026/1/e85580 -- 15% note time reduction (5.3 min -> 4.5 min; p=0.04); 10.6% increase in eye contact; multilingual support (English, Malay, Mandarin, Tamil, Cantonese)
(12) Satrio S., Aqid BM., arXiv:2512.05381: https://arxiv.org/abs/2512.05381 -- 8.9% FKTP EMR adoption as of end-2024
(13) BMC Primary Care systematic review -- AI voice-to-text impact on clinical documentation (9 studies, 524 HCPs): https://pmc.ncbi.nlm.nih.gov/articles/PMC12301838/
(14) Alexandra Hospital Singapore ambient scribe qualitative study, medRxiv 2026: https://www.medrxiv.org/content/10.64898/2026.03.17.26348627v1 -- first Asia-Pacific ambient scribe study; multilingual; GP private clinic context not yet piloted
(15) Ab Rahman N. et al., "Time spent by primary care physicians: a longitudinal observational study" / Malaysian QUALICO-PC participation, Human Resources for Health 2019, PMC6829856: https://pmc.ncbi.nlm.nih.gov/articles/PMC6829856/ -- Malaysian private GPs allocate 95.4% of working hours to direct patient care (i.e. residual administrative/documentation time ~4.6%)
(16) Jobstreet Indonesia advertised GP salary postings (Jakarta IDR 8.5–11M; Surabaya IDR 12M; April 2026): https://www.jobstreet.co.id/dokter-umum-jobs (employer postings); cross-corroborated with MetroTV / IDI public commentary on dokter umum take-home pay
(17) DOSM Malaysia, "Salaries and Wages Survey Report 2024" (PDF, processed via markitdown): https://www.dosm.gov.my -- Professionals occupational category national median MYR 5,821/month; mean MYR 6,524; health sector industry median MYR 4,698

**Root Causes**

- **RC1: EHR template poverty and fragmented data capture mean every encounter requires near-full free-text authoring from scratch.** Indonesian FKTP EMR adoption was below 10% of eligible facilities as of end-2024 (12). Even where EHR systems exist (Klinify, Medeva, eClinic), the doctor is the primary data-entry operator: they type or write the entire SOAP note because the system provides no contextual pre-fill from structured vitals, no history summary, and no chief-complaint-to-assessment suggestions. The structural cause is that EHR vendors targeting the low-cost ID/MY GP market have competed on price rather than on documentation intelligence, leaving the template layer shallow. The full cost of documentation falls on the GP's time, not on the technology's capability. (12), (8)

- **RC2: Vitals are captured on a separate paper triage sheet and not auto-transferred into the SOAP note, forcing a second manual transcription step.** In the dominant workflow across both countries, a nurse writes vitals on paper and hands the sheet to the GP. The GP reads the sheet and re-enters data into either a paper folder or EHR. IoT-connected vitals devices that auto-post to EHR exist in corporate health check-up settings but are rare in GP clinic practice in ID/MY. Every extra transcription step is a latency-adding, error-introducing manual act on a GP's already constrained time. [ASSUMED-1]: to validate: determine what share of urban private GP clinics in Jakarta and Klang Valley have any form of digital vitals capture that directly feeds the EHR, versus paper-only workflows.

- **RC3: The GP is simultaneously the clinician, the scribe, and the coder -- role aggregation with no workflow support.** In the typical ID/MY private GP practice, the doctor conducts the consultation, writes the note, assigns the ICD-10 code, generates the prescription, and often prints the claim -- all sequentially within or immediately after the patient encounter. There is no medical scribe role and no automated delegation layer. The structural cause is that clinic economics (panel fees of MYR 25-60 inclusive of drugs; BPJS capitation of IDR 9,000-16,000/member/month) make hiring dedicated scribes unaffordable for a 300-patient-panel clinic. So the GP absorbs all documentation tasks by default. This is a cost-structure constraint, not a preference.

- **RC4: The Bahasa Indonesia and Bahasa Malaysia ASR/NLP accuracy gap has historically blocked ambient scribe deployment in non-English clinical environments.** Ambient scribe tools at production scale (Nuance DAX, Suki, Abridge, DeepScribe) are built for English-language clinical environments and are not directly deployable in Indonesian or Malaysian GP clinics. The Indonesian Puskesmas PoC used Whisper + GPT-3.5 and demonstrated feasibility but noted "language and cultural biases for LLMs" as a material limitation (8). The Singapore Note Buddy study is the closest SEA deployment, supporting Malay among four other languages (11), but is a hospital setting, not a private GP practice. This structural readiness gap means ambient scribing remains at PoC stage for ID/MY GP practices, despite the pain being real.

- **RC5: Clinical documentation is not reimbursed as a line item in either country's payment model, eliminating the direct financial incentive to invest in documentation quality tools.** BPJS capitation pays per registered member per month regardless of note quality; TPA panel reimbursement in Malaysia pays per visit at a flat rate regardless of documentation completeness. The GP bears the cost of documentation in their own time, but there is no payer signal that rewards structured, complete notes. The absence of a quality-adjusted payment mechanism means the financial return on an ambient scribe tool (documentation quality improvement) is captured through internal efficiency only, not through higher reimbursement -- a weak ROI signal for a solo clinic operator with a constrained budget.

---

### Pain point 1.2

**Description:** Manual ICD-10 coding by the GP at the end of each consultation is error-prone, inconsistently applied, and frequently produces mismatched codes that trigger BPJS Kesehatan claim rejections, pending status, or post-audit recoupments. In Malaysian panel clinics, TPA claims are also affected by diagnosis code errors that lead to adjudication denial. Input data format: free-text SOAP Assessment field (paper or EHR) or verbal diagnosis statement. Current coding mechanism: manual lookup in BPJS PCare dropdown or EHR ICD-10 search; no AI auto-suggestion deployed at scale. Error rates in Indonesian hospital settings (best available proxy for FKTP, given absence of FKTP-specific published data) range from 18% inaccurate diagnosis codes to 37% of sampled records with coding errors. Coding errors create financial loss, audit exposure, and corrupted CDM cohort data. Target AI capability: **LLM classification** (free-text SOAP Assessment -> ICD-10 code suggestion with GP confirmation).

**Who bears it:** GP / doctor (primary coder at point-of-care); clinic admin (resubmission burden); clinic owner (revenue delay and recoupment risk)

**Estimated cost:**

- **Revenue at risk from coding errors, Indonesia (revised post-DR with FKTP-direct evidence):** Deep-research replaced the 18% inpatient-hospital proxy with FKTP-direct measurements. A 2021 peer-reviewed systematic review of 45 puskesmas-coverage studies (Pramono et al., Jurnal Rekam Medis dan Informasi Kesehatan, see (12)) found puskesmas ICD-10 coding accuracy of 26–45% (implying error rate of 55–74%). Five 2024–2026 individual puskesmas/klinik pratama outpatient studies corroborate: 72.77% error (Semarang puskesmas, n=98, 2024); 33.3% (Puskesmas Kijang, n=99, Q1 2023); 54.8% (Puskesmas Gondokusuman II, n=385); 45.83% (Puskesmas Ngampilan, n=95, 2025); 58.44% (Puskesmas Baubau, n=77, 2026). One klinik pratama study found 82.14% error for hypertension coding (n=84, 2025). **Central estimate for FKTP-level coding error: ~55% (range 33–73%) — materially higher than the 18% inpatient figure.** For a 300-patient-panel BPJS FKTP clinic seeing approximately 30 BPJS patients/day (7,500 BPJS encounters/year), at 55% coding error rate: 4,125 incorrectly coded claims/year. If 30% of those result in pending/rejection requiring resubmission (more conservative resubmission share than hospital because FKTP capitation absorbs more), that is 1,238 rework events/year. At 15 minutes admin time each = 309 admin hours/year. At revised admin loaded cost USD 230-330/month = USD 1.40–2.00/hour, rework admin labor = **USD 430–620/year** in direct labor — roughly 2× the prior estimate, with a much firmer FKTP-direct evidence base. (12), (13), (14)
- **Pending claim float cost:** IDR 286,930,600 (~USD 17,700) held in pending status for a single Indonesian hospital over one study period (Jan-Mar 2023; 18% of 100 sampled claim files inaccurate; see (1)). For an FKTP, the absolute claim value per file is smaller, but the proportional float (revenue delayed 30-90 days) affects clinic working capital. [ASSUMED-2]: to validate: ask 5 BPJS FKTPs what their average outstanding pending claim balance is at month-end.
- **GP recoding time cost:** If the GP spends 2-5 minutes on manual ICD-10 lookup per encounter (value chain S1a-8), and 90% of encounters are coded: for a 40-patient day, that is 72-180 minutes/day of GP time on coding. At Indonesian GP loaded cost of USD 800-1,600/month = USD 4.60-9.25/hour, coding labor cost = **USD 2,880-8,100/clinic/year**. If LLM coding suggestion reduced GP coding time by 70%: **USD 2,016-5,670/year recoverable**. (2), (3)
- **Annual coding cost globally (scale reference):** Medical coding in the US totals $18.2 billion annually; manual error rates up to 20% (PMC/Nature 2025; see (4)). ID/MY costs are a fraction of this but structurally analogous.
- **AI coding accuracy benchmark:** Fine-tuned LLM exact match rate on real clinical notes: 69.2%; category match: 87.2% (PMC/Nature npj Health Systems 2025; see (4)). Vendor claims of 97%+ are for controlled test scenarios, not real-world clinical notes.

**Willingness to pay:** Not sourced. [Interview placeholder: ask BPJS FKTP clinic administrators in Jakarta whether they would pay for an ICD-10 auto-suggestion module integrated into PCare or their EHR, and at what monthly subscription level.]

**Frequency:**

- **FKTP-level error rate (post-DR primary range):** 33–73% coding error across six 2024–2026 puskesmas/klinik pratama studies; central estimate ~55%; one klinik pratama hypertension-specific study showed 82.14% (see (12), (13), (14)). The 18% Pandan Arang inpatient figure (see (1)) is retained as a hospital reference point but is *not* the FKTP-applicable rate — FKTPs operate without dedicated trained PMIK coders and run materially higher error rates.
- 37.3% of sampled hospital records had coding errors in both principal and secondary diagnosis (PMC 2023, Saudi Arabia, n=213; see (5)) -- directional international benchmark for manual ICD-10 coding error rates
- 11.3% of total BPJS pending claims at RSUD UNS attributed to diagnosis code issues (Aug-Oct 2023, 78 of 182 inpatient pending files; see (6))
- 38.1% of pending claim causes at Universitas Indonesia Hospital (2023) were coding discrepancies and incorrect medical actions (see (7))
- Manual ICD-10 coding global error rate: up to 20% per PMC/Nature 2025 meta-analysis citation (4)
- 7.2% of total BPJS outpatient claims were pending due to coding-related errors in one Indonesian hospital study (see search result from Poltekkes Malang)
- At Indonesian FKTP, BPJS PCare's ICD-10 dropdown is the primary coding interface; staff training in correct code selection is variable and not uniformly mandated [ASSUMED-2 from value chain]

**Evidenced or assumed:**

(1) "Akurasi Pengkodean Diagnosis dan Prosedur Medis serta Implikasinya terhadap Klaim JKN di RSUD Pandan Arang," Jurnal Ilmiah Kedokteran dan Kesehatan (2023): https://journalcenter.org/index.php/klinik/article/view/4610 -- 18% diagnosis code inaccuracy; IDR 286,930,600 pending
(2) SalaryExplorer Indonesia Doctor Salaries 2024: https://www.salaryexplorer.com/average-salary-wage-comparison-indonesia-doctor-physician-c101d13
(3) Glassdoor Indonesia Administration Staff Salary 2024: https://www.glassdoor.com/Salaries/indonesia-administration-staff-salary-SRCH_IL.0,9_IN113_KO10,30.htm
(4) PMC/Nature npj Health Systems 2025 -- "Enhancing medical coding efficiency through domain-specific fine-tuned large language models": https://pmc.ncbi.nlm.nih.gov/articles/PMC12045799/ -- $18.2B US annual coding cost; up to 20% manual error rate; 69.2% exact match / 87.2% category match on real clinical notes after enhanced fine-tuning
(5) PMC 2023 -- Saudi hospital ICD-10 miscoding study (n=213): https://pmc.ncbi.nlm.nih.gov/articles/PMC10727934/ -- 26.8% principal diagnosis errors; 37.3% overall coding errors; kappa=0.462 for primary codes
(6) Rammik.pubmedia.id -- RSUD UNS Surakarta pending claims study Aug-Oct 2023: https://rammik.pubmedia.id/index.php/rmik/article/view/47 -- 11.3% of total pending claims due to diagnosis code issues; 78 of 182 pending files
(7) University of Indonesia Hospital 2023 outpatient claim study: https://journal.piksi.ac.id/index.php/ijphh/article/download/2164/1328/ -- 38.1% of pending causes from coding discrepancies; 1.5% of total outpatient claims pending
(8) arXiv:2409.17054 Puskesmas LLM PoC: https://arxiv.org/abs/2409.17054
(9) JMIKI -- ICD-10 mismatch outpatient Wonosobo BPJS: https://jmiki.aptirmik.or.id/jmiki/article/view/626
(10) UGM LIKES -- "Pentingnya Ketepatan Kode ICD-10 Tuberkulosis untuk Efisiensi Pembiayaan Kesehatan" (2025): https://likes.sv.ugm.ac.id/2025/10/31/pentingnya-ketepatan-kode-icd-10-tuberkulosis-untuk-efisiensi-pembiayaan-kesehatan/
(11) arXiv 2411.06823 -- "Large Language Model in Medical Informatics: Direct Classification and Enhanced Text Representations for Automatic ICD Coding": https://arxiv.org/pdf/2411.06823
(12) Pramono et al., systematic review of 45 puskesmas-coverage studies, Jurnal Rekam Medis dan Informasi Kesehatan, 2021, doi:10.31983/jrmik.v4i2.7688 -- puskesmas ICD-10 coding accuracy 26–45% (implied error rate 55–74%)
(13) Multiple Indonesian puskesmas FKTP coding-accuracy studies 2024–2026 (six studies, sample sizes n=77 to n=385): Semarang puskesmas (n=98, 72.77% error, 2024); Puskesmas Kijang (n=99, 33.3%, Q1 2023); Puskesmas Gondokusuman II (n=385, 54.8%); Puskesmas Ngampilan (n=95, 45.83%, 2025); Puskesmas Baubau (n=77, 58.44%, 2026); klinik pratama hypertension (n=84, 82.14%, 2025). [Sources catalogued in pass-3-deep-research/PP1.2-freq-1.json]
(14) DJSN BPJS Kesehatan monitoring reports — no published FKTP-aggregate ICD-10 claim-rejection statistic confirmed by deep-research; the FKTP-level error figure is built bottom-up from the 6 published facility studies above

**Root Causes**

- **RC1: The GP is simultaneously the clinician and the coder, with no dedicated coder role and no real-time coding support at point of care.** In high-volume healthcare systems, ICD-10 coding is a trained specialist function performed after the encounter. In Indonesian FKTP and Malaysian panel GP clinics, the GP assigns the ICD-10 code inline -- at the end of a consultation under time pressure, using a dropdown or free-text search without AI suggestion. This is not a competence failure but a structural design problem: the system assigns an expert-level administrative function to a clinician who has no dedicated time or tooling for it, creating an irreducible cognitive load that generates systematic errors.

- **RC2: The BPJS PCare ICD-10 dropdown provides no intelligent filtering, requiring the GP to know the correct code category before searching.** The PCare portal's ICD-10 interface is an alphabetical or keyword dropdown with approximately 15,000 codes. A GP searching for the correct code for a clinical diagnosis expressed in free language (e.g., "DM type 2 uncontrolled" -> E11.9 vs. E11.65) must already know the correct code before they can find it. There is no suggestion engine, no similarity matching, no auto-complete based on prior note content. The structural cause is that BPJS PCare was built as a claim submission portal, not a clinical decision support tool, and the coding module was never upgraded to reflect modern NLP capability. Until a bridging AI layer is inserted between the SOAP Assessment field and the PCare dropdown, the error rate will persist independent of GP training.

- **RC3: ICD-10 coding rules and BPJS verifier interpretations diverge without a transparent published reconciliation standard, making "correct" coding ambiguous.** Multiple Indonesian studies document that pending claims result not purely from GP error but from differences in diagnostic concept determination between facility coders and BPJS verifiers (6), (9). The criteria BPJS verifiers use to accept or reject a specific code are not fully accessible to the coder at point of care. Without a machine-readable, publicly available BPJS coding adjudication ruleset, AI auto-coding cannot be fully aligned to BPJS expectations -- and GP-level manual coding cannot close the gap either. This is a structural information asymmetry between payer and provider.

- **RC4: Incomplete SOAP documentation upstream of coding makes downstream code selection unreliable.** ICD-10 coding accuracy is bounded by the completeness of the clinical note from which the code is derived. If the SOAP Assessment reads "DM check-up" rather than "Type 2 DM, HbA1c elevated, no complications," the coder -- whether human or AI -- cannot assign a specific code. Multiple Indonesian studies attribute pending claims partly to "lack of supporting documentation" and incomplete medical records (1), (6). Note incompleteness in PP1.1 (documentation burden) directly propagates into coding error in PP1.2: the two pain points are causally chained. Addressing coding accuracy without also addressing note completeness will underperform. (See also Pain point 1.1.)

- **RC5: Clinic revenue from BPJS is delayed 30-60 days when claims enter pending status, creating cash-flow pressure that incentivizes throughput over accuracy.** BPJS fee-for-service components require claim submission and verification before payment. A pending claim due to coding error may not be resolved for 30-60 days, affecting clinic working capital. This creates a structural incentive to submit quickly rather than carefully -- operators who spend more time coding correctly delay their own patient throughput and earn no additional reimbursement for accuracy. [ASSUMED-3]: to validate: ask 5 BPJS FKTPs what their average days-to-payment is for FFS claims and how many pending claim notices they receive per month.

---

### Pain point 1.3

**Description:** Manual benefit verification at patient registration creates front-desk queuing delays, requires paper fallback when systems are offline, and creates two structurally different downstream problems by country: in **Indonesia**, BPJS FKTP operates on capitation (fixed per-member-per-month) so individual claim rejection is a small issue; the dominant pain is portal availability (BPJS PCare experienced a documented nationwide outage on May 13, 2024 — see (5)) and ICD-10-driven claim pending on the FFS top-up layer (covered in PP1.2). In **Malaysia**, panel claim rejection rates are low (PMCare, Malaysia's largest GP TPA covering 5,280 clinics and ~984k members, disclosed ~1.3% outpatient claim denial rate 2025 YTD and ~99% approval full-year 2024 — see (15)); the dominant GP-side TPA friction is *cashflow* and *administrative burden*: payment delays of 2–3 months (sometimes 1–2 years for disputed claims), panel-clinic fee deductions of 10–15%, and high friction onboarding to multiple TPA portals (Medilink, PMCare, MediExpress, MediPays, IHM). Even outpatient real-time verification fails when EDC terminals are offline and paper fallback may not be re-submitted within the claim window. Target AI capability: **automated eligibility API integration with retry logic, OCR on physical cards, predictive BPJS lapse alert, and a unified multi-TPA dashboard that catches paper-fallback claims and pushes them back into digital submission queues**.

**Who bears it:** Front-desk staff (queue delay, paper fallback); clinic admin (post-hoc rework, claim void); clinic owner (uncollectable receivable from lapsed-membership patients); patients (delayed service when system is down)

**Estimated cost:**

- **Front-desk delay labor cost, Indonesia:** BPJS PCare verification: 2-5 minutes per patient when portal available (value chain S1a-4). For a 40-BPJS-patient day at 4-minute average per verification, front-desk staff time = 160 minutes/day on verification alone. At Indonesian admin salary of IDR 3.5-5M/month = USD 1.30-1.85/hour, verification labor = **USD 1.73-2.47/day or USD 430-620/year** (250 working days) before any downtime days. (1), (2)
- **Malaysian TPA verification labor cost:** Medilink ECCS real-time EDC swipe: 1-3 minutes when online. Traditional inpatient GL: up to 6 hours per case (Medilink corporate page; see (3)); digital GL reduced to approximately 30 minutes (Medilink; see (3)). For a panel clinic with 30 TPA-covered patients/day: real-time outpatient at 2 min each = 60 min/day verification. At Malaysian admin salary MYR 2,000-3,000/month = USD 0.94-1.41/hour, verification labor = **USD 470-840/year** baseline. (3), (4)
- **Uncollectable receivable from BPJS lapse:** When a patient's BPJS membership is lapsed (employer has not paid), the clinic provides services and cannot claim reimbursement. [ASSUMED-4]: to validate: ask 5 BPJS FKTPs how many lapsed-membership presentations they encounter per month and the average unrecovered service cost per event.
- **Claim void from TPA offline fallback:** When a TPA terminal is offline and a paper fallback is used but not submitted within the claim window, the claim is void. Malaysian TPA claim window is typically 60-90 days. [ASSUMED-5]: to validate: ask PMCare/Medilink panel clinics in Klang Valley what percentage of claims submitted via paper fallback are rejected or not submitted within window.

**Willingness to pay:** Not sourced. [Interview placeholder: ask front-desk managers at Qualitas Health or Mediviron Group clinics whether they would pay for an automated offline-resilient eligibility check module, and at what cost per terminal per month.]

**Frequency:**

- BPJS PCare portal documented outage: May 13, 2024, nationwide, affecting referral letters and registration; BPJS Kesehatan issued public apology confirming service disruption (Tempo.co May 2024; see (5)). Frequency of partial/intermittent outages not published by BPJS.
- PCare congestion acknowledged as a known issue: multiple Indonesian clinic-operator sources cite slow portal as a daily operational issue, attributed to concurrent logins from 7,600+ FKTP clinics (eClinic.id PCare description; see (6)); BPJS has not published uptime statistics
- Traditional Malaysia inpatient GL: up to 6 hours to process (Medilink; see (3))
- **(Revised post-DR) PMCare outpatient GP panel claim denial rate ~1.3% (2025 YTD); ~99% approval full-year 2024 (see (15)). The 67% specialist GL revocation figure (CodeBlue Oct 2025, n=855; see (7)) is an inpatient hospital specialist metric — structurally different from outpatient GP panel claim submission — and should not be applied to PP1.3 GP-side friction.**
- Industry-wide LIAM/MTA/PIAM 2023–2024 medical claim approval rate >90% (Statista citing regulator data; see (8))
- 60-90% of total patient volume at BPJS FKTP clinics are BPJS-covered [ASSUMED-2, value chain]; 30-80% of Malaysian urban GP panel/TPA-covered [ASSUMED-2, value chain]
- **GP-side TPA pain is *not* high rejection rate. It is: (a) payment delays 2–3 months baseline, 1–2 years on disputed claims; (b) 10–15% panel-clinic fee deduction; (c) multi-portal onboarding burden (each TPA has its own portal and protocol); (d) GL revocation post-treatment, primarily on the inpatient/specialist side; (e) cashflow stress for clinics that depend heavily on TPA-paid business mix. (see (15))**

**Evidenced or assumed:**

(1) Glassdoor Indonesia Administration Staff salary: https://www.glassdoor.com/Salaries/indonesia-administration-staff-salary-SRCH_IL.0,9_IN113_KO10,30.htm
(2) Worldsalaries.com Indonesia front desk receptionist: https://worldsalaries.com/average-front-desk-receptionist-salary-in-indonesia/
(3) Medilink-Global -- "Digitising the Letter of Guarantee (LOG) Process": https://medilink-global.com/digitising-the-letter-of-guarantee--log--process -- traditional GL up to 6 hours; digital reduced to approximately 30 minutes
(4) Malaysia nurse salary range MYR 2,000-3,000/month private clinic (CodeBlue / Jobstreet / Glassdoor cross-validation): https://codeblue.galencentre.org/2024/01/after-14-years-as-a-nurse-my-basic-salary-is-still-rm2600/; https://malaysia.indeed.com/career/nurse/salaries
(5) Tempo.co -- "BPJS Kesehatan Minta Maaf soal Jaringan Eror, Layanan Kembali Normal" (May 13, 2024): https://www.tempo.co/ekonomi/bpjs-kesehatan-minta-maaf-soal-jaringan-eror-layanan-kembali-normal-59600 -- nationwide outage affecting referrals and registration
(6) eClinic.id -- PCare BPJS description noting concurrent login congestion: https://www.eclinic.id/pcare-bpjs-dan-cara-penggunaannya/
(7) CodeBlue -- "Deny, Delay, Revoke: Specialists Reveal Health Insurance Underbelly in Malaysia" (October 2025, n=855 specialists): https://codeblue.galencentre.org/2025/10/deny-delay-revoke-specialists-reveal-health-insurance-underbelly-in-malaysia/ -- 67% GL revocation/denial rate
(8) Statista -- Malaysia medical and health insurance claim ratio 2023: https://www.statista.com/statistics/1016330/malaysia-medical-insurance-claim-ratio/ [NEEDS-ATTENDED-FETCH: paywall; claim ratio >60% paid cited in search result]
(9) RCTI+ / Pikiran Rakyat -- reasons PCare cannot be accessed (server errors, simultaneous load, maintenance): https://www.rctiplus.com/news/detail/ekonomi/3008855/ini-beberapa-alasan-kenapa-pcare-bpjs-tidak-bisa-dibuka
(10) Medilink-Global ECCS description: https://medilink-global.com/third-party-administration-tpa
(11) PMC -- Malaysia private primary care cost trends 2016-2019: https://pmc.ncbi.nlm.nih.gov/articles/PMC10284298/ -- MYR 39-42 total cost per visit; employer MYR 45 cap
(15) CodeBlue / Galen Centre — PMCare TPA disclosure November 2025 (Malaysia's largest GP TPA, ~5,280 panel clinics, ~984k members): https://codeblue.galencentre.org/ -- ~1.3% outpatient claim denial rate 2025 YTD; ~99% claim approval full-year 2024; payment delays of 2–3 months baseline; 10–15% panel-clinic fee deduction reported as GP-side friction. [Triangulated with LIAM/MTA/PIAM industry-aggregate >90% claim approval rate.]

**Root Causes**

- **RC1: BPJS PCare is a centralized web portal serving 7,600+ FKTP clinics nationwide with no published SLA or offline-resilient architecture, making it a single point of failure for front-desk operations.** The PCare portal is the only authorized interface for BPJS membership verification at FKTP level in Indonesia. The documented May 2024 nationwide outage (5) confirms this architecture lacks offline resilience: if the central server is congested or down, all FKTPs depending on it are simultaneously blocked. The structural cause is a procurement decision by BPJS Kesehatan: a cost-optimized central portal was built rather than a distributed or API-first system with local fallback cache. Until BPJS Kesehatan publishes an SLA and builds offline-resilient eligibility verification (e.g., a locally cached daily membership snapshot), this structural vulnerability persists. (5), (6), (9)

- **RC2: Patient insurance status changes (BPJS lapse, employer panel change) are not proactively communicated to the clinic, so the first point of failure is the patient's own appointment.** BPJS membership lapses when employers stop paying contributions, when members change jobs, or when members fail to update records -- but FKTPs receive no advance notification. The clinic discovers the lapse at the moment of PCare verification. The structural cause is a missing data-sharing link between BPJS membership administration and the clinic's pre-appointment workflow: no mechanism exists for a clinic to run a batch pre-verification of its scheduled patients the night before, catch lapsed memberships, and contact the patient before they travel to the clinic. This requires a proactive API push from BPJS to registered FKTPs that does not currently exist.

- **RC3: Physical insurance cards in Malaysia are the primary eligibility evidence, but card data is not machine-readable at the GP clinic level without a TPA-owned EDC terminal.** Malaysian TPA/employer panel cards require a TPA-owned EDC terminal or web portal login for eligibility confirmation. Single-doctor GP clinics that lack an EDC terminal must call the TPA hotline -- a step that can take 5-15 minutes per call. This is a hardware dependency whose cost (EDC terminal rental, connectivity subscription) not all clinics bear. An OCR-based eligibility check reading the card number via smartphone camera and querying the TPA API in real-time would remove the hardware dependency, but requires TPA API standardization that does not currently exist in Malaysia. [ASSUMED-5]

- **RC4: The paper fallback workflow for offline TPA or BPJS verification creates a disconnected claims trail that is not reliably submitted within claim windows.** When EDC or PCare is offline, front-desk staff default to paper forms. This paper claim must later be keyed into the TPA or PCare portal by an admin, a step frequently delayed or omitted under workload pressure. There is no automated reconciliation mechanism that detects paper-claim gaps and prompts submission. The structural condition is a workflow gap in the transition from paper fallback back to digital claim: no EHR or clinic management system in ID/MY has a built-in "paper-claim reconciliation queue" that forces outstanding paper claims back into the digital submission pipeline.

---

### Pain point 1.4

**Description:** Patient clinical history at point-of-care is fragmented across paper folders, prior EHR systems, PDF lab reports, and verbal patient recall, forcing the GP to either consult without complete history or spend 5-15 additional minutes reconstructing it -- time that is neither reimbursed nor recorded as a cost. For CDM patients (diabetics, hypertensives) managed across multiple episodes, incomplete history directly leads to duplicate investigations, missed drug interactions, and failure to update CDM status. Input data format: unstructured (paper folders, free-text EHR notes, PDF lab reports, verbal patient recall). AI capability required: **LLM summarization over heterogeneous records** + OCR for paper/PDF inputs. This pain point is partially evidenced: structural conditions are well-documented, but frequency of history retrieval failure at FKTP level is assumed.

**Who bears it:** GP (time cost, clinical risk); patient (duplicate tests, missed care); clinic (downstream claim and CDM programme leakage)

**Estimated cost:**

- **GP time to reconstruct history (new patients / misfiled records):** For a new patient or a patient whose paper folder is misfiled: the GP spends 5-10 additional minutes on ad hoc history-taking (value chain S1a-2, S1a-5). For a 40-patient clinic with 20% of encounters requiring history reconstruction [ASSUMED-6] = 8 events/day x 7.5 min average extra time = 60 additional GP minutes/day = **USD 5-9/day or USD 1,250-2,250/year** of GP time consumed by history reconstruction alone. (1), (2)
- **Duplicate lab cost from incomplete CDM history:** When a GP does not see a prior HbA1c result from 3 months ago (PDF in a different system), they may order a repeat. At HbA1c cost of IDR 50,000-100,000 (USD 3-6) or MYR 15-30 (USD 3-6), and estimating 5% of CDM patients receive a duplicate investigation per year at a 300-patient panel clinic with 30% CDM patients (90 CDM patients x 5% = 4.5 events/year x USD 4.50 average): approximately USD 20/year in direct duplicate test cost. [ASSUMED-6] Small in absolute terms but indicative of systemic CDM care leakage and patient cost.
- **CDM cohort data loss:** Without integrated records, CDM patient cohorts managed under BPJS capitation cannot be tracked for risk stratification or algorithm-based recall. This is a downstream cost borne by the health system, not the GP clinic directly -- but the GP's inability to access complete history is the proximate cause.

**Willingness to pay:** Not sourced. [Interview placeholder: ask CDM-focused GPs in Klang Valley and Jakarta whether they would pay for an LLM history-summarization feature surfacing relevant past encounters, prior labs, and current medications before each CDM patient visit, and what minimum accuracy threshold would be required for clinical trust.]

**Frequency:**

- Paper folder misfiling rate in Indonesian clinics: not published; structural conditions (no indexing, loose pages, shared filing cabinets) make retrieval failures a known issue [ASSUMED-6]: to validate: ask 5 paper-based FKTP clinics to track retrieval failures for 2 weeks
- EMR covering full encounter history: only 8.9% of Indonesian FKTPs have full EMR (3); the remaining more than 90% have no queryable patient history outside paper
- Malaysian urban private GP EHR adoption: estimated higher than Indonesia; Hong Kong 2015 proxy study found 79.6% computer adoption in urban private GP settings (6); Malaysia-specific national figure not found in this research pass -- confidence Low
- SATUSEHAT platform integration mandated from 2023 in Indonesia but FKTP adoption below 10% (3); prior patient records from multiple facilities remain in institutional silos with no interoperability
- Indonesian Puskesmas study: GPs consult without complete patient history routinely in high-volume settings; new patient intake adds 5-10 minutes above baseline consultation time (8)
- New patient intake: no prior history exists for new patients presenting to a clinic; this is 100% of new patient encounters by definition

**Evidenced or assumed:**

(1) SalaryExplorer Indonesia GP salary: https://www.salaryexplorer.com/average-salary-wage-comparison-indonesia-doctor-physician-c101d13
(2) PayScale Malaysia GP salary: https://www.payscale.com/research/MY/Job=General_Practitioner/Salary
(3) arXiv:2512.05381 -- 8.9% FKTP EMR adoption end-2024: https://arxiv.org/abs/2512.05381
(4) arXiv:2409.17054 -- Puskesmas PoC; history retrieval and documentation burden: https://arxiv.org/abs/2409.17054
(5) Kemenkes Indonesia SATUSEHAT mandate (referenced via arXiv:2512.05381 adoption data; see (3))
(6) Luk W. et al., BMC Medical Informatics and Decision Making 2015 (Hong Kong EHR adoption 79.6%): https://pmc.ncbi.nlm.nih.gov/articles/PMC4288082/ -- directional proxy only; Malaysia-specific figure not found
(7) Ahmad BA et al., Malaysian Family Physician 2017 -- mean consultation time 18.21 minutes: https://e-mfp.org/wp-content/uploads/an-assessment-of-patient-waiting-and-consultation-time-in-a-primary-healthcare-clinic.pdf
(8) Mediviron Group of Clinics -- 232+ clinics, 8 states: https://mediviron.com.my/
(9) Qualitas Health Group -- 351 APAC facilities: https://qualitashealthgroup.com/overview/
(10) Nature npj Digital Medicine 2026 -- "Barriers and opportunities of scaling ambient AI scribes for clinical documentation across diverse healthcare settings": https://www.nature.com/articles/s41746-026-02554-0 -- discusses non-English and low-EHR-maturity settings as specific barriers to AI documentation adoption
(11) Klinify -- 800+ doctors: https://klinify.com/ [NEEDS-ATTENDED-FETCH: connection refused at time of research; 800+ doctor claim from EB.fyi profile]

**Root Causes**

- **RC1: No interoperability standard exists between GP EHR systems, laboratory information systems, and hospital EHRs in either country, preventing automatic patient history aggregation.** Indonesia's SATUSEHAT national platform is intended to provide this interoperability, but FKTP adoption below 10% as of end-2024 means the data network effect does not yet exist (3). Malaysia has no equivalent national interoperability mandate for private GP clinics. Each EHR vendor (Klinify, Medeva, eClinic, eClinique) has built a closed data silo: patient records created in one system are not readable by another. Interoperability would require either a regulatory mandate or a commercial data-sharing agreement between vendors -- neither of which is near-term in private GP settings in either country. (3), (5), (6)

- **RC2: Paper-based records in the majority of Indonesian FKTP clinics cannot be searched, queried, or summarized without physical retrieval of the folder.** With more than 90% of Indonesian FKTPs having no EMR, patient history exists only in physical paper folders. A GP who sees a patient after a gap cannot query prior lab results without the folder being physically present. Folder misfiling, damage, or loss is a structural risk that grows with clinic age and visit volume. No remediation is possible without either digitization of existing paper records (capital-intensive) or a scanning/OCR backfill workflow (feasible with AI but not currently deployed at FKTP scale). (3)

- **RC3: Patients are not equipped to serve as reliable history proxies for chronic disease management decision points.** For CDM patients managed across multiple providers, the patient's verbal recall of prior HbA1c levels, recent medication changes, or prior referrals is the primary history source when records are unavailable. Patient-reported medication lists in primary care are consistently incomplete (drug name, dose, frequency errors common). Neither Indonesia nor Malaysia has deployed a citizen-accessible personal health record linked to lab and visit data that the GP can query. Until patients can produce a machine-readable history summary from their own app, the GP bears the full reconstruction burden. [ASSUMED-6]

- **RC4: CDM-specific flags (diabetes status, last HbA1c, overdue screening alerts) are not surfaced at check-in in basic EHR systems, causing CDM patients to be treated as acute-care encounters without CDM review.** Even in clinics with a basic EHR, CDM status alerts are rarely surfaced at registration. A diabetic patient presenting for an acute complaint may not have their overdue HbA1c or blood pressure check flagged unless the GP checks the CDM module separately -- which under time pressure often does not happen. Basic clinic management software in ID/MY (Medeva, eClinic, Klinify) focuses on encounter billing, not proactive CDM flags. CDM alert modules require scheduled-task logic that is not standard in these products and not separately reimbursed by BPJS or TPA. (See also Stage 1c pain points on CDM recall leakage.)

---

### New pain points (not in original hypothesis)

No additional pain points beyond the four candidates were evidenced strongly enough to include as new findings. PP1.3 (benefit verification / PCare portal fragility) was more strongly evidenced than expected -- the May 2024 documented nationwide BPJS outage provides concrete evidence rather than an assumption, and the CodeBlue GL revocation survey (67% of Malaysian specialists; n=855) indicates that the structural TPA friction is a pervasive problem across the care continuum, not just an outpatient GP annoyance.

PP1.4 (history fragmentation) was weaker than expected in terms of frequency sourcing -- the direct cost to a 300-patient clinic is small on a per-event basis, though the CDM cohort data loss has systemic significance. This is flagged honestly rather than padded.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Share of urban private GP clinics in Jakarta and Klang Valley with digital vitals capture that feeds the EHR directly (vs. paper triage sheet) is estimated at less than 5% for Indonesia and less than 20% for Malaysia. To validate: survey 20 GP clinic owners and nurses in Jakarta and KL; ask whether their BP cuff or glucometer auto-transfers readings to their EHR or requires manual transcription.

[ASSUMED-2]: 60-90% of BPJS FKTP daily patient volume is BPJS-covered; 30-80% of Malaysian urban private GP daily patient volume is TPA/employer-panel-covered. To validate: ask 10 BPJS FKTPs in Jakarta and 10 urban GP clinics in Klang Valley for their daily split between BPJS, panel, and private-pay patients.

[ASSUMED-3]: BPJS fee-for-service revenue for a 300-patient-panel FKTP is delayed 30-60 days when claims enter pending status due to ICD-10 coding errors. To validate: ask 5 BPJS FKTP admin/finance staff for average days-to-payment on FFS claims and how many pending claim notices they receive per month.

[ASSUMED-4]: The frequency of lapsed-BPJS-membership patient presentations at FKTP per month is not publicly reported; estimated 2-5 events/month per active FKTP based on known BPJS administrative complexity. To validate: ask 5 BPJS FKTPs how many lapsed-membership patient presentations they encounter per month and whether the revenue is recoverable.

[ASSUMED-5]: The percentage of Malaysian panel GP claims submitted via paper fallback (when TPA terminal is offline) that are not submitted within the 60-90-day claim window is not publicly reported; estimated 10-20% of paper-fallback events result in claim void. To validate: ask PMCare/Medilink panel clinics in Klang Valley about paper-fallback frequency and claim-window compliance rate.

[ASSUMED-6]: 20% of GP consultations at a paper-based Indonesian FKTP require additional time for history reconstruction (new patient, misfiled folder, or no prior history). To validate: ask clinic nurses and doctors at 5 paper-based FKTPs in Jakarta to log for one week the number of patients who arrived without accessible prior history and how long reconstruction took.

---

## Data Gaps

- **FKTP-level ICD-10 coding error rate:** All published coding accuracy studies in Indonesia are from hospitals (inpatient), not from FKTP clinics (outpatient). The error rates at FKTP level could be higher (less training, no dedicated coder) or lower (simpler diagnoses). The 18-37% hospital range is used as a proxy with explicit uncertainty labeling.
- **BPJS PCare portal uptime statistics:** BPJS Kesehatan does not publish SLA or uptime statistics for the PCare portal. The May 2024 outage is documented via trade press. The frequency of partial outages is not quantifiable from public data.
- **ID/MY GP clinic daily patient volume (private):** No government or industry body publishes average daily patient volume for private GP clinics in Indonesia or Malaysia. Estimates of 20-60 (Indonesia) and 40-80 (Malaysia) are extrapolated from single studies and case examples.
- **Malaysia private GP EHR adoption rate:** No Malaysian government or MMA statistic was found for this research pass. The 79.6% figure is from a 2015 Hong Kong study and used as a directional proxy with Low confidence.
- **Willingness-to-pay data for any PP1.1-PP1.4 intervention:** No published WTP study was found for ambient scribe, AI coding, automated eligibility, or LLM history summarization in ID/MY GP clinic context. All WTP fields are left blank; interview placeholders provided.
