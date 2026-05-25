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

