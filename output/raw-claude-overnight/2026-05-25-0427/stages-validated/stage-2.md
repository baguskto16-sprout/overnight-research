# Stage 2 (validated) — Run 2026-05-25-0427

*Pass-1 drafts + any applicable deep-research outcomes. See pass-2-validation/stage-2.json for per-claim confidence.*

---

## Part A — Value chain (sub-step process map)

# Stage 2 — GP Clinic: Patient & Care Operations (Sub-processes 1b, 1c, 1d)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Mapped: 2026-05-25*

---

## Stage Description

Continuing from Stage 1 (consultation & clinical documentation, sub-process 1a), this stage covers the three operational sub-processes that run after the GP encounter: lab result management (1b), CDM patient recall and chronic-care follow-up (1c), and appointment scheduling and no-show management (1d). The executing actors are the same GP clinic team — GP, nurse/medical assistant, front-desk — supplemented by external lab chains (Prodia, Pramita, BioMed in Indonesia; Pathlab, Quest, BP Healthcare in Malaysia) and patient-engagement vendors (BookDoc, Halodoc, Naluri). These processes are structurally distinct from consultation and are the primary source of CDM patient leakage documented in the BPJS Kesehatan PROLANIS literature.

Do not re-read Stage 1 items (S1a-1 through S1a-11: registration, history retrieval, vitals, benefit verification, SOAP generation, ICD-10 coding, prescription, referral, EHR filing, billing submission). This stage picks up at the point where the consultation is complete.

---

## Sub-process 1b — Lab Result Management

### S1b-1: Lab Order Transmission to External Lab

**Activity description:** After the GP orders a lab test during or after consultation, the clinic must transmit the order to an external lab chain. In paper-based clinics, this means handing the patient a printed lab request form that they carry to the nearest Prodia / Pramita / BioMed / Pathlab branch. In some higher-digitized clinics, an electronic order is entered into the clinic's system (e.g., Klinify, eClinic), but integration with lab chains' LIS (Laboratory Information Systems) is non-standard at the primary care level. In Malaysia, BP Healthcare and Pathlab operate panel relationships with corporate clients (for MCU programmes) but single GP clinic integration at the order level is rare.

**Owner / executor role:** GP (decision) → front-desk or nurse (form generation and handover to patient)

**Inputs:**
- GP verbal or written instruction specifying test panels (HbA1c, lipid panel, renal function, FBS, etc.)
- Lab request form template (paper, or printed from clinic system)
- Patient identity document (to pre-fill on form)

**Outputs:**
- Printed lab request form handed to patient, OR
- Electronic order sent via clinic-to-lab portal (rare at primary care level)
- Patient verbal instruction: which lab branch to attend and timeframe

**Typical time per transaction:** 2–5 minutes (form generation + handover). No published ID/MY primary care time-motion data at this sub-step.

**Volume per typical clinic per day:** CDM patients constitute ~25–35% of a private GP panel (estimated from Indonesia PROLANIS enrollment base: 2.18M DM + 3.47M HT participants as of late 2024; Malaysia NHMS 2023: 15.6% DM, 29.2% HT prevalence in adults); a 300-patient panel clinic with 30% CDM burden sees approximately 18–30 patients with potential lab orders per day, though not every CDM visit triggers an order.

**Current automation level:**
- Indonesia: Almost entirely paper-based at klinik pratama level. Prodia Digital (U by Prodia) offers online ordering but is oriented to consumer/hospital segment, not individual GP clinic integration. SATUSEHAT FHIR R4 mandates lab result sharing but FKTP-level adoption of lab order HL7 messages is still in early stages.
- Malaysia: Pathlab and BP Clinical Labs operate LIS platforms but individual GP clinic order integration is not standard. Klinify (800+ doctors) does not publish lab-order EDI capability for independent labs.

**Error / drop-off mode:**
- Patient loses the paper request form → test not done until next visit
- Patient visits wrong lab branch that does not carry the required test → delay
- Clinician order is ambiguous (e.g., "blood sugar" without specifying FBS vs. RBS vs. HbA1c) → lab runs wrong panel
- No copy of the order retained by clinic → no systematic tracking of outstanding tests

**AI capability that would address it:** Auto-population of standard CDM test bundles based on diagnosis code and time since last test; electronic order transmission to lab LIS via HL7/FHIR message; clinic-side outstanding-order registry that flags unfulfilled orders at next patient contact.

---

### S1b-2: Sample Collection and Lab Processing

**Activity description:** Patient attends the lab branch (or home collection is dispatched in the case of Prodia/Pramita home-visit services). Sample is collected, labeled, and processed in the lab's LIS. Result is generated as a structured internal record in the LIS, then rendered to an output format for delivery — typically a formatted PDF report, occasionally a fax or portal entry. This step occurs largely outside the GP clinic and is not directly addressable by clinic-side automation; it is documented here to characterize the data-format handoff that creates the downstream parsing problem.

**Owner / executor role:** Lab phlebotomist (collection); lab technician (processing); LIS system (result generation)

**Inputs:**
- Patient identity + request form (paper or electronic from order step)
- Biological sample

**Outputs:**
- Structured result data within lab's internal LIS
- PDF result report (primary delivery vehicle for GP clinics in both ID and MY)
- In some cases: fax, or portal entry viewable by patient/GP

**Typical time per transaction:** 1–24 hours turnaround for routine panels (FBS, lipids); up to 72 hours for HbA1c at some branches.

**Current automation level:** Lab-side processing is highly automated (analysers, LIS). The bottleneck is the handoff format: PDF is the de facto delivery standard for standalone GP clinics who are not on the lab's electronic portal.

**Error / drop-off mode:**
- Sample mislabeled → wrong result attributed to patient
- Result PDF sent to wrong email / fax number → GP never receives it
- Patient does not collect physical result printout from lab → result stranded at lab, not reaching GP

**AI capability that would address it:** Not directly relevant at this sub-step; the AI opportunity is downstream in S1b-3 (parsing the PDF).

---

### S1b-3: Lab Result Receipt and Manual Parsing into EHR / Paper Record

**Activity description:** The critical bottleneck step. The lab result PDF (or fax, or physical printout brought by patient) arrives at the clinic. A nurse or front-desk staff must: (a) associate it with the correct patient record, (b) check which tests were ordered and confirm completeness, (c) manually read the result values and enter them into the relevant EHR fields or paper record, or simply file the PDF without data extraction. In clinics that record results only in paper folders, no structured data is captured — the result exists only as a filed document. In EHR clinics, staff may manually transcribe values (HbA1c, total cholesterol, LDL, creatinine, etc.) into structured fields, or may simply scan and attach the PDF without field population.

**Owner / executor role:** Nurse or front-desk admin (primary); GP (receives summary verbally or reviews filed document at next encounter)

**Inputs:**
- PDF lab report (emailed, WhatsApp-forwarded, faxed, or carried by patient)
- Paper patient folder or EHR record

**Outputs:**
- Filed PDF (always) — non-structured
- Manually transcribed result values in EHR fields (partial, where EHR exists and staff have time)
- Verbal summary to GP if result is flagged critical

**Typical time per transaction:** 3–8 minutes per result batch when manually transcribed; 1–2 minutes if only filing the PDF without data extraction.

**Volume per typical clinic per day:** Up to 20–40 lab result batches on active days for a busy CDM-mix clinic.

**Current automation level:**
- Indonesia: Minimal. SATUSEHAT FHIR R4 mandates lab result resources be submitted to the national platform, but the mapping from PDF to FHIR fields requires middleware that most klinik pratama lack. PubMed literature identifies "absence of customized integration protocols" and "lack of earmarked budgets" as primary blockers. The most common workflow is patient-carried physical result + manual paper folder filing.
- Malaysia: Klinify and eClinique support manual result entry but do not automatically parse incoming PDFs from external labs. myHIX (health information exchange) is progressing in MOH hospitals but individual private GP clinic connectivity to lab LIS remains minimal.

**Error / drop-off mode:**
- Digit transposition in manual transcription (148 vs 184 mmol) → clinically unsafe value in EHR
- Result filed but not reviewed before next patient encounter → CDM threshold trigger missed
- PDF attached to wrong patient → misattributed result
- No structured data in EHR → CDM thresholds (HbA1c >9%, BP >160/100, LDL >3.4 mmol/L) cannot be auto-applied, triggering logic must be done manually at next visit

**AI capability that would address it:** OCR + LLM field extraction to populate structured EHR fields from incoming PDFs; rule engine applying CDM threshold flags immediately on result arrival; automatic routing of flagged results to GP inbox for urgent review; reconciliation check confirming all ordered tests returned results.

---

### S1b-4: GP Result Review and Threshold Decision

**Activity description:** GP reviews the filed or transcribed result and determines appropriate action: (a) no action — within target; (b) medication adjustment at next visit; (c) immediate patient contact for urgent results (e.g., HbA1c >12%, creatinine flagging CKD stage 3+); (d) recall booking for follow-up visit; (e) referral to specialist or hospital. In paper-based clinics, the result is placed in the folder for review at next contact, meaning days to weeks may pass before a GP reviews a critical value. In EHR clinics, the GP may get a notification but review discipline varies.

**Owner / executor role:** GP (primary decision)

**Inputs:**
- Lab result (filed PDF or EHR-structured values)
- Patient clinical history (CDM medications, prior HbA1c trend)

**Outputs:**
- Decision notation in patient record (free text, paper or EHR)
- Trigger for patient contact or recall booking (if urgent)
- Medication change instruction for next visit

**Typical time per transaction:** 2–5 minutes for routine review; 10–15 minutes if medication adjustment plan is documented.

**Current automation level:** Entirely manual. No CDM threshold alert system exists at the FKTP level in Indonesia beyond what individual clinic software might implement ad hoc. Malaysia's public clinic system (Klinik Kesihatan) has standardized protocols via the MediLib system, but private GP clinics have no equivalent mandatory alert layer.

**Error / drop-off mode:**
- GP never reviews result before next scheduled visit (weeks later) → delayed intervention for deteriorating CDM patient
- No action plan documented → next GP covering the clinic starts from scratch
- Referral indicated but not booked → patient defaults from care pathway

**AI capability that would address it:** Automated threshold screening on structured result data; LLM-generated action recommendation (e.g., "HbA1c 9.4% — consider intensification; last intensification 14 months ago"); priority queue for GP inbox based on severity; CDM referral trigger linked to specialist booking workflow.

---

### S1b-5: Patient Notification and Result Communication

**Activity description:** After GP review, the clinic must communicate the result to the patient. In most private clinics in Indonesia and Malaysia, this is done when the patient next attends — there is no systematic proactive notification. Some clinics send a WhatsApp message ("your results are ready, please come in") without sharing the values. A minority call the patient for critical results. Patient-facing portals (Prodia Digital's U app, some Klinify-attached patient portals) allow patients to view results directly, but this is not integrated back to the GP's action plan.

**Owner / executor role:** Front-desk or nurse (notification); GP (result explanation at follow-up)

**Inputs:**
- Decision notation from S1b-4
- Patient contact number (WhatsApp / phone)

**Outputs:**
- Patient WhatsApp or phone notification (if done proactively)
- Face-to-face result explanation at follow-up visit
- Follow-up appointment booking (if triggered)

**Typical time per transaction:** 1–3 minutes for a WhatsApp notification; 5–10 minutes for a phone call; no incremental time if deferred to next visit.

**Current automation level:** Minimal. No standard proactive notification protocol at FKTP level. BookDoc and Halodoc support appointment booking but not result-triggered recall workflows.

**Error / drop-off mode:**
- No proactive notification → patient unaware result is available → does not attend follow-up → CDM leakage
- Notification sent but patient does not respond → no escalation protocol in most clinics
- Result communicated verbally at next visit without documentation → no record of patient being informed

**AI capability that would address it:** Automated result-triggered WhatsApp/SMS notification workflow; tiered escalation (patient does not respond within 48h → nurse call; critical result → immediate phone flag); integration with recall booking (see sub-process 1c).

---

## Sub-process 1c — CDM Patient Recall & Chronic-Care Follow-up

### S1c-1: Overdue Patient Identification

**Activity description:** The clinic must identify which CDM-enrolled patients are overdue for a follow-up visit or scheduled lab test. Under PROLANIS (Indonesia), BPJS Kesehatan guidelines require at least monthly contact for enrolled participants and biannual HbA1c testing. In practice, this identification is almost entirely manual: a nurse reviews a handwritten register or scrolls through EHR patient lists, checking last-visit dates and lab-test timestamps. At many klinik pratama, there is no structured CDM register at all — PROLANIS participants are identified ad hoc based on familiarity rather than systematic query. In Malaysia's private panel clinics, no formal CDM programme mandate exists comparable to PROLANIS; follow-up is driven by GP discretion and patient self-initiation.

**Owner / executor role:** Nurse or clinic coordinator (primary); GP (supervision)

**Inputs:**
- Paper CDM register or EHR patient list with last-visit dates
- BPJS PROLANIS enrollment roster (Indonesia) — maintained locally, not auto-synced with BPJS PCare in most cases
- Calendar or date calculator (manual or spreadsheet)

**Outputs:**
- List of overdue patients (paper or informal mental note)
- Prioritized follow-up list (in well-run clinics)

**Typical time per transaction:** 30–60 minutes per week for a clinic with 50–90 PROLANIS-enrolled patients to produce an overdue list manually; [ASSUMED-1] to validate: time-motion study at 5 BPJS FKTP clinics in Jakarta/Surabaya. For Malaysia private clinics, this step is typically absent — no systematic recall identification occurs.

**Volume:** A 300-patient-panel clinic with 30% CDM proportion has ~90 CDM patients. Targeting monthly contact, ~22–25 are due per week.

**Current automation level:**
- Indonesia: BPJS PCare portal displays enrolled PROLANIS participants but does not generate automated overdue lists. Some clinics maintain Excel trackers. KlinikPintar and similar systems have basic patient-list views but no built-in recall engine.
- Malaysia: No formal system. Some clinics using Klinify may be able to filter by diagnosis, but recall scheduling is not a Klinify core feature.

**Error / drop-off mode:**
- Overdue identification step skipped entirely → patients never recalled → CDM leakage accumulates
- Register out of date → patients who have moved or switched FKTP still appear as active
- Only a subset of eligible patients enrolled in PROLANIS → recall targets only enrolled subset, missing diagnosed-but-unenrolled patients

**AI capability that would address it:** Automated overdue cohort query at day-start, triggered by: (a) days since last visit exceeds protocol threshold; (b) biannual HbA1c window open; (c) last BP reading above threshold with no follow-up recorded. Risk stratification layer prioritizes recall by last known control status.

---

### S1c-2: Recall Communication Dispatch

**Activity description:** Once overdue patients are identified, the clinic initiates contact. Under PROLANIS guidelines, SMS reminders are the specified channel; in practice, clinics have migrated to WhatsApp (group or individual) because of higher read rates. Some clinics maintain a WhatsApp group for each PROLANIS cohort (DM group, HT group) and broadcast activity schedules rather than doing individual outreach. Home visits are specified in PROLANIS guidelines but are rarely conducted due to staff shortages. The Pharmacognosy Journal study from Biru Health Center (2024) documents that some participants "do not have WhatsApp," creating a digital access gap. For non-responsive patients, nurses call by phone — typically 1–2 attempts before the patient is mentally written off.

**Owner / executor role:** Nurse (primary dispatch); front-desk (phone callback); GP (approves escalation for critical cases)

**Inputs:**
- Overdue patient list from S1c-1
- Patient contact details (phone/WhatsApp number) — often outdated
- Message template (informal, not standardized in most clinics)

**Outputs:**
- WhatsApp group broadcast or individual message sent
- Phone call log (paper)
- Home visit request (rare)

**Typical time per transaction:** 5–10 minutes per patient for individual WhatsApp + phone attempt; 2–3 minutes for broadcast message. For 20 overdue patients per week: ~1.5–3 hours/week of nurse time on recall dispatch alone. [ASSUMED-2] to validate: time-motion study at PROLANIS-active FKTPs.

**Current automation level:**
- Indonesia: No automation. WhatsApp is used personally by nurses on their own phones or the clinic's phone; no integrated WhatsApp Business API. BPJS PCare does not have outbound patient messaging capability.
- Malaysia: Some clinics use basic SMS broadcast services. Naluri (employer wellness platform) runs automated digital recall for corporate CDM programmes but does not integrate with private GP clinic workflows.

**Error / drop-off mode:**
- Phone number outdated → message undelivered, no fallback → patient not reached
- Broadcast messages ignored in group (group fatigue) → no response tracking
- No two-way confirmation → clinic does not know who responded until they show up (or don't)
- Nurse makes 1–2 call attempts, marks patient as unreachable → patient drops from tracking

**AI capability that would address it:** Automated WhatsApp Business API recall orchestration (individual, not group broadcast); two-way response tracking; non-responder escalation queue; natural language response parsing (patient replies "next week Friday" → auto-books appointment slot); channel fallback logic (WA → SMS → phone → flagged for home visit).

---

### S1c-3: Response Tracking and Appointment Booking

**Activity description:** When patients respond to recall communications, the clinic must record the response and book an appointment. In paper-based clinics, this is a manual note in the recall register. In better-resourced clinics, the appointment is entered into a scheduling book or basic clinic management system. The step also requires confirming whether the patient will also come for a lab test before the appointment (e.g., fasting blood draw for HbA1c) — requiring a two-step scheduling coordination (lab first, then GP follow-up). This coordination is entirely verbal in most settings.

**Owner / executor role:** Front-desk or nurse

**Inputs:**
- Patient response (WhatsApp, phone, walk-in)
- Appointment slot availability (paper scheduler or clinic system)

**Outputs:**
- Appointment booking entry
- Patient-facing confirmation (verbal or WhatsApp)
- Lab pre-appointment instruction (if applicable)

**Typical time per transaction:** 3–7 minutes per booking including confirmation.

**Current automation level:** Appointment booking tools (BookDoc, Halodoc, clinic management software) address booking once the patient initiates; they do not cover outbound recall-triggered booking. The missing link is the translation of a patient's recall response into an auto-generated appointment slot.

**Error / drop-off mode:**
- Patient responds but clinic cannot confirm slot quickly → patient disengages
- Lab pre-appointment instruction missed → patient shows up for GP but fasting blood not done → appointment must be rescheduled
- Booking noted on paper but not transferred to digital system → slot double-booked

**AI capability that would address it:** Automated slot allocation based on recall response; conversational appointment booking via WhatsApp; lab-first scheduling coordinator (ensures lab appointment precedes GP follow-up where HbA1c/lipids needed).

---

### S1c-4: CDM Employer / TPA Coordination (Malaysia Panel Clinics)

**Activity description:** For CDM patients covered under employer group medical benefits (Malaysia), the panel GP clinic must report CDM-relevant events to the TPA/MCO (e.g., diagnosis of new DM/HT, referral to specialist, escalation) and coordinate with employer HR (for wellness programme tracking, sick leave documentation, fitness-for-work certificates). This is done via email or the TPA portal — there is no standardized electronic CDM case management protocol. When a patient changes employer, their CDM history does not transfer automatically — the patient must carry physical records, or the new panel GP starts from scratch. Medical records in Malaysia remain legally the property of the clinic/hospital that created them; no national private-sector health information exchange exists.

**Owner / executor role:** GP (clinical decisions); front-desk or clinic admin (TPA portal reporting)

**Inputs:**
- Patient CDM event (new diagnosis, referral, medication change)
- TPA portal or email channel
- Employer HR contact (for wellness programme coordination — informal)

**Outputs:**
- TPA portal submission or email notification
- Employer wellness report (quarterly or annually, if contracted)
- Referral letter for specialist (carried by patient)

**Typical time per transaction:** 5–15 minutes per CDM coordination event (TPA portal submission + follow-up). [ASSUMED-3] to validate: interview panel GPs and TPA operations teams about time allocation per CDM case.

**Current automation level:**
- Malaysia: Medilink-Global ECCS, PMCare portal — these handle claims submission but CDM case management is not a portal feature. Employer wellness platforms (Naluri, Trustwork, Holistic) run parallel CDM programmes that do not integrate with panel GP records.
- No standardized API exists between GP clinic EHR and TPA case management systems.

**Error / drop-off mode:**
- TPA restricts lab investigations (e.g., HbA1c claimed on GP visit code) → GP cannot complete CDM monitoring without patient paying out-of-pocket
- Patient switches employer → new TPA, new panel list → old CDM records inaccessible → care discontinuity
- No CDM event reporting mechanism → TPA unaware of patient's CDM status → CDM not included in employer wellness dashboard → CDM benefit not activated

**AI capability that would address it:** Automated CDM event detection from EHR; structured CDM report generation for employer/TPA (quarterly or on-trigger); identity resolution across TPA/employer changes using national ID (MyKad) as anchor; patient-held portable CDM summary (FHIR-structured, employer/TPA agnostic).

---

## Sub-process 1d — Appointment Scheduling & No-Show Management

### S1d-1: Appointment Booking (Inbound Channels)

**Activity description:** Patients book GP appointments through multiple channels: walk-in (dominant in both markets), phone call, WhatsApp message to the clinic's number, or through a digital booking platform (BookDoc or Halodoc in Malaysia; Halodoc primarily telemedicine in Indonesia rather than in-person GP booking). Corporate/employer patients in Malaysia may have appointments arranged by HR/TPA via the TPA portal or health management system. The booking channel mix is not yet unified in most clinics — a patient may WhatsApp-book but then walk in at a different time, creating phantom slots.

**Owner / executor role:** Front-desk (phone/WA booking); digital platform (BookDoc/Halodoc backend); patient self-service (walk-in)

**Inputs:**
- Patient request (phone/WA/platform/walk-in)
- Available slot register (paper scheduler, whiteboard, or basic clinic management system)

**Outputs:**
- Appointment entry in scheduler
- Patient confirmation (verbal, WhatsApp message, or platform SMS)

**Typical time per transaction:** 2–4 minutes for phone/WA booking; near-zero for walk-in (patient joins queue directly). BookDoc-mediated bookings add platform processing but reduce front-desk time.

**Volume per day (300-patient panel clinic):** 20–80 patient interactions total (see Stage 1). Booked appointments may represent 30–60% of visits; remainder walk-in. [ASSUMED-4] to validate: request slot-utilization log from Klinify or BookDoc for 10 Klang Valley GP clinics.

**Current automation level:**
- Malaysia: BookDoc operates a booking platform with automated confirmations; Halodoc is primarily telemedicine-oriented in MY/ID. Some clinics use WhatsApp Business manually. No AI-powered dynamic slot management exists at GP clinic level.
- Indonesia: Halodoc in-person GP booking is a feature in some markets; KlinikPintar has appointment scheduling; PCare does not support patient-facing appointment booking.

**Error / drop-off mode:**
- Phone booking noted on paper but not transferred to the display board → slot confusion
- Walk-in surge exceeds booked capacity → long wait times → booked patients leave → empty slot created
- Double-booking (same slot booked by phone and platform) → overbooking conflict

**AI capability that would address it:** Unified booking layer across channels; real-time slot availability sync; overbooking detector; AI-assisted slot allocation weighted for CDM recall patients vs. acute walk-ins.

---

### S1d-2: Appointment Reminder Dispatch

**Activity description:** For advance-booked appointments (same-day walk-in does not apply), the clinic should send a reminder 24–48 hours before the appointment. In most GP clinics in Indonesia and Malaysia, this step does not occur systematically. Some individual clinicians send WhatsApp reminders manually. BookDoc sends automated reminders for bookings made through its platform. AIMAX Solutions (Malaysia) offers WhatsApp Business API reminder automation for clinics, but adoption is not widespread. The absence of systematic reminders is a documented contributor to no-show rates.

**Owner / executor role:** Front-desk (manual WhatsApp); automated platform (BookDoc, AIMAX)

**Inputs:**
- Tomorrow's appointment list
- Patient WhatsApp/phone numbers

**Outputs:**
- Reminder message dispatched
- Patient confirmation (if two-way channel)

**Typical time per transaction:** 1–2 minutes per reminder if manual; near-zero if automated.

**Current automation level:**
- Malaysia: BookDoc sends automated reminders for its bookings. AIMAX offers WhatsApp API reminders. MedoHMS offers WhatsApp/SMS reminder software for clinics. Adoption outside of BookDoc-using clinics is low.
- Indonesia: No structured reminder market at primary care level. Halodoc handles telemedicine appointment reminders internally. In-person GP bookings are typically walk-in or same-day, reducing the reminder window.

**Error / drop-off mode:**
- No reminder sent → no-show rate elevated by 5–10 percentage points versus reminded cohort (evidence from RCT literature)
- Manual reminder sent from nurse's personal phone → no systematic log → can't track who was reminded

**AI capability that would address it:** Automated WhatsApp Business API reminder at T-48h and T-2h; two-way confirmation parsing ("can't make it Thursday" → auto-triggers rebooking offer); predictive no-show scoring to prioritize high-risk patients for additional outreach.

---

### S1d-3: No-Show Detection and Slot Recovery

**Activity description:** When a booked patient does not attend at the scheduled time, the clinic should: (a) detect the no-show in real time (slot is empty after grace period), (b) attempt to contact the patient, (c) attempt to fill the slot with a waiting-list patient or walk-in. In practice, most GP clinics in the region do not have a formal no-show detection protocol. The empty slot is noted informally; the front-desk may call the patient once; the slot is typically lost unless a walk-in happens to arrive at the right time. No waiting-list management mechanism exists at the GP level.

**Owner / executor role:** Front-desk (detection + phone call attempt); nurse (may alert GP)

**Inputs:**
- Day's appointment schedule
- Real-time queue status (whether patient checked in or not)

**Outputs:**
- No-show flag (informal notation in scheduler)
- Phone call to patient (one attempt, typically)
- Walk-in invited to fill slot (opportunistic)

**Typical time per transaction:** 5–10 minutes of front-desk time per no-show (detection + call attempt + walk-in offer).

**Current automation level:** None in standard GP clinic operations. BookDoc does not offer post-no-show slot recovery tools at the GP level. No dynamic waitlist management product is documented for ID/MY GP primary care.

**Error / drop-off mode:**
- No detection → slot idle for full duration → revenue and capacity lost
- No-show not recorded → no pattern analysis possible → no data for predictive model
- Patient called, unavailable, slot lapses → wasted outreach time with no recovery

**AI capability that would address it:** Real-time no-show detection based on check-in system + grace period timer; automated patient outreach for rebooking (WhatsApp: "we noticed you missed your appointment — want to reschedule?"); dynamic waitlist notification to queued walk-in patients; no-show pattern logging for predictive model training.

---

### S1d-4: CDM-Specific Slot Optimization

**Activity description:** CDM follow-up appointments have structurally different slot requirements from acute walk-in visits: longer consultation time (10–20 min vs. 5–10 min for acute), possible nurse vitals extension (glucometer, BP tracking), and often a preceding lab test requirement (fasting blood draw). Most GP clinics do not distinguish CDM follow-up from acute slots in their scheduling — all appointments are assigned identically. This creates systematic underallocation of time for CDM patients and contributes to GP rushing chronic disease reviews.

**Owner / executor role:** GP (awareness of case type); front-desk (slot allocation); clinic management software (if used)

**Inputs:**
- Patient type flag (CDM follow-up vs. acute)
- Available slot register

**Outputs:**
- Extended slot allocated for CDM patients (in optimized practice)
- Standard slot allocated (current default)

**Typical time per transaction:** No incremental time — this is a configuration / protocol setting, not a per-patient action. The failure is the absence of the protocol.

**Current automation level:** None in standard GP clinic scheduling. No off-the-shelf GP scheduling tool in Indonesia or Malaysia differentiates CDM vs. acute slots.

**AI capability that would address it:** Patient-type-aware scheduling: when booking a CDM recall appointment, automatically allocate a 15-minute slot + nurse pre-consultation window; flag if preceding lab results are not yet returned (potential appointment deferral alert); optimize slot mix for clinic-day composition to balance CDM follow-up and acute capacity.

---

## Market Context Notes

**Lab chains — Indonesia:**
- Prodia: largest (500+ branches), operates U by Prodia consumer platform, has LIS, but no documented FHIR-native GP clinic integration
- Pramita: established in Surabaya, multiple branches, offers home collection
- BioMed (Bio Medika): national footprint, less digitized than Prodia
- Lab-to-GP result delivery is PDF-dominant at primary care level

**Lab chains — Malaysia:**
- Pathlab: established since 1974, operates LIS (BP Clinical Labs also has LIS), has panel relationships with corporates but not standardized GP clinic order integration
- Quest: operates in Malaysia (Quest Laboratories), similar profile
- BP Healthcare / BP Clinical Labs: LIS-enabled, primarily serves corporate MCU and hospital segments

**Patient-engagement vendors:**
- Naluri (Malaysia): employer-facing CDM coaching platform; does not integrate with individual GP clinic workflows; operates parallel to clinic
- BookDoc (Malaysia): GP clinic booking platform, 24+ specialties; automated reminders; no recall or CDM management layer
- Halodoc (Indonesia): primarily telemedicine; has in-person GP booking in some urban areas; no CDM recall engine
- AIMAX (Malaysia): WhatsApp Business API automation for clinic appointment reminders; point solution, not CDM-integrated

---

*Stage 2 value chain drafted. Proceed to pain points file for quantified pain analysis.*

---

## Part B — Pain points

# Stage 2 Pain Points — GP Clinic: Patient & Care Operations (Sub-processes 1b, 1c, 1d)

*Run ID: 2026-05-25-0427 | Pass 1 draft | Researched: 2026-05-25*

---

## Stage 2: GP Clinic — Patient & Care Operations

### Pain point 2.1

**Description:** GP clinics receiving lab results as PDF documents from external labs (Prodia, Pramita, BioMed in Indonesia; Pathlab, Quest, BP Healthcare in Malaysia) cannot automatically parse result values into structured EHR fields. Staff manually transcribe values — or simply file the PDF without data extraction — meaning CDM threshold logic (HbA1c >9%, BP >160/100 mmHg, LDL >3.4 mmol/L) cannot be applied systematically. Clinicians therefore miss or delay acting on out-of-range CDM results until the next patient encounter, which may be weeks away.

**Who bears it:** GP clinic operators (owner-GPs and clinic managers); patients with deteriorating CDM who receive delayed escalation.

**Estimated cost:**
- Staff time for manual transcription or filing: a multi-provider clinic handling ~1,500 lab result batches per month spends approximately 3–4 hours/week on result filing; at IDR 5,000,000–6,000,000/month (Indonesia nurse/admin salary) or MYR 2,249/month (Malaysia nurse salary), this equals approximately $55–95/month in direct labor per result-handling staff member — modest per staff member but scales with volume (1)
- Error-related rework cost: manual transcription generates 3–5% error rate on numeric fields; at ~45–65 USD cost per error incident requiring rework, a clinic handling 200 transcribed results/month incurs $270–$650/month in error-handling overhead (2)
- Opportunity cost — delayed CDM intervention: a patient whose HbA1c of 10.2% sits in a filed PDF for 30 days without GP action continues to accumulate complications risk; at the population level, Indonesia's BPJS Kesehatan spends more than IDR 30.5 trillion (approximately $1.88 billion) annually on DM and HT management, with "many patients uncontrolled" per Kompas.id reporting — unstructured result delivery is a contributor to delayed intervention and that cost (3)
- PROLANIS performance penalty: under BPJS Kesehatan's performance-based capitation (KBK), clinics that do not achieve RPPT targets lose a portion of the performance bonus; in December 2023 only 32% of 273 assessed FKTPs met the Level 4 RPPT target — missing the target is partly attributable to the clinic's inability to identify and recall uncontrolled patients from unstructured results (4)

**Willingness to pay:** Not sourced. [ASSUMED-5]: to validate — ask FKTP owner-GPs in Jakarta and KL what they currently pay for clinic management software and whether they would pay incremental $30–$80/month for automated lab result parsing integrated into their EHR.

**Frequency:**
- PDF is the de facto delivery format for GP clinic–lab result handoffs in both markets; no Indonesian or Malaysian primary care standard mandates structured electronic delivery to standalone GP clinics (5)
- Indonesia SATUSEHAT FHIR R4 mandate covers lab result sharing but implementation requires middleware absent at most FKTP: developer community analysis identifies "FHIR profile selection" and "mapping EMR data into standardized data" as top pain points; "limited IT staff with interoperability skills" and "absence of customized integration protocols" block FKTP-level structured lab integration (6)
- Malaysia myHIX (health information exchange) progresses in MOH hospitals but private GP clinic connectivity is not a documented rollout target for the near term (7)
- In a Malaysian public primary care 10-clinic study, only 2 of 10 clinics had complete on-site HbA1c testing; the other 8 depended on external lab referrals — all handled via paper or manual processes (8)

**Evidenced or assumed:**
(1) Staff salary data: Indonesia nurse/admin IDR 5–6M/month — https://id.jobstreet.com/career-advice/role/general-practitioner/salary; Malaysia nurse MYR 2,249/month — https://malaysia.indeed.com/career/nurse/salaries; lab result distribution labor benchmark (2 hrs/week) — https://www.rovinghealth.com/articles/healthcare-administrative-burden-manual-data-entry-150k
(2) Manual transcription error rate 3–5%, $45–65/incident rework — https://www.rovinghealth.com/articles/healthcare-administrative-burden-manual-data-entry-150k
(3) BPJS DM+HT total spend > IDR 30.5 trillion — https://www.kompas.id/artikel/en-biaya-diabetes-dan-hipertensi-capai-rp-305-triliun-banyak-pasien-yang-tidak-terkontrol [NEEDS-ATTENDED-FETCH — paywall]
(4) RPPT achievement: 32% of FKTPs met Level 4 by December 2023 — https://jurnal-jkn.bpjs-kesehatan.go.id/index.php/jjkn/article/view/273
(5) PDF-dominant delivery acknowledged in FHIR literature context — https://pmc.ncbi.nlm.nih.gov/articles/PMC7233102/
(6) SATUSEHAT FHIR developer pain points — https://pmc.ncbi.nlm.nih.gov/articles/PMC12036547/ (JMIR Formative Research 2025)
(7) myHIX background — https://link.springer.com/article/10.1186/s12911-021-01447-4 (BMC Medical Informatics 2021)
(8) Malaysia 10-clinic HbA1c on-site gap — https://pmc.ncbi.nlm.nih.gov/articles/PMC7160766/
(9) Indonesia SATUSEHAT interoperability evaluation — https://www.researchgate.net/publication/392464953_Evaluasi_Implementasi_SATUSEHAT_sebagai_Sistem_Interoperabilitas_Data_Kesehatan_di_Indonesia_Kajian_Literatur
(10) OCR + LLM extraction capability for lab reports — https://www.llamaindex.ai/insights/top-clinical-data-extraction-solutions-ocr
(11) Unstructured data proportion in healthcare (~80%) — https://www.netguru.com/blog/ocr-ai-medical-data-extraction

**Root Causes**

- **RC1: Lab chains deliver results to GP clinics in PDF because no structured electronic order/result channel exists at the primary care interface.** Lab LIS systems (Prodia, Pathlab) are designed for hospital and corporate MCU integration; individual GP clinic ordering volumes do not justify custom HL7/FHIR integration. The BPJS PCare API governs claim submission, not lab result delivery. No regulatory mandate requires labs to transmit results in structured format to standalone GP clinics — the SATUSEHAT FHIR mandate requires facilities to submit results to the national platform, not to each other. Until a structured GP-to-lab order channel is established, PDF will remain the default delivery vehicle.

- **RC2: Most GP clinic EHR systems at the klinik pratama level lack an inbound document parsing layer.** Clinic management systems adopted at FKTP (KlinikPintar, eClinic, Medeva) are designed around billing, prescription, and BPJS claim workflows; automated inbound document parsing — receiving a PDF and populating structured fields from it — is not a core feature. Clinics on these systems therefore fall back to manual transcription or attachment filing even when they have structured EHR fields available, because the bridge between the document and the field does not exist.

- **RC3: CDM threshold rule engines require structured input data; without parsing, automation is impossible.** A clinic cannot apply an automated rule ("if HbA1c >9%, flag for urgent GP review and trigger recall") unless HbA1c is stored as a structured numeric field with a timestamp. As long as results exist only as PDFs, any threshold check must be performed by the GP manually during the encounter — creating a structural dependency between review speed and human availability.

- **RC4: Staff at small clinics lack the technical capacity to implement workaround integrations.** The FHIR-based solution to this problem requires API integration, middleware configuration, and ongoing maintenance — tasks beyond the operational capacity of a 2–3 staff klinik pratama. No turnkey OCR/EHR integration product has achieved documented mass adoption at Indonesian FKTP or Malaysian private GP level; awareness and procurement pathways are absent.

- **RC5: Economic incentive for labs to invest in GP integration is weak.** Labs are paid per test by BPJS or the patient directly; the result delivery method does not affect lab revenue. GP clinics are small, geographically dispersed, and heterogeneous in their EHR choices — creating high integration cost and low economies of scale for labs to build standardized electronic result channels for this segment. The economic return from a structured result API sits with the GP clinic (reduced labor, better CDM performance bonuses) not with the lab — a classic misaligned incentive structure.

---

### Pain point 2.2

**Description:** CDM patient recall and chronic-care follow-up at FKTP/panel GP clinics in Indonesia and Malaysia is manual, inconsistent, and structurally incomplete. Overdue patient identification relies on nurse review of paper registers or informal memory; recall dispatch uses individual WhatsApp messages or one-way broadcast groups; response tracking is unstructured; non-responders are typically abandoned after 1–2 attempts. The result is systematic patient leakage from CDM pathways. Indonesia's BPJS data shows that of 7.4 million JKN-diagnosed DM patients, only 2.8 million (37.8%) regularly access FKTP; of 20.5 million JKN-diagnosed HT patients, only 5.6 million (27.3%) actively visit FKTP. This leakage drives poor RPPT scores (only 32% of assessed FKTPs met the controlled-patient target by end-2023) and ultimately elevates the nation's CDM complication burden.

**Who bears it:** GP clinic operators (PROLANIS performance bonus at risk); BPJS Kesehatan (complication-care costs); CDM patients (uncontrolled disease, preventable complications); Malaysia employers (unmanaged CDM driving medical claims).

**Estimated cost:**
- Nurse labor for manual recall: ~1.5–3 hours/week at a 300-patient-panel clinic with 90 CDM patients; at IDR 5M/month Indonesia (~$309/month, or ~$1.78/hr effective), this represents $10–$22/week in direct labor cost just for manual recall dispatch; at MYR 2,249/month Malaysia (~$484/month, or ~$2.79/hr effective), this is $16–$34/week (1)
- PROLANIS performance bonus at risk per FKTP: under KBK, RPPT underperformance reduces capitation; an FKTP with 1,000 enrolled BPJS participants receiving IDR 12,000/month capitation earns IDR 12 million/month base; performance adjustment can reduce or augment this by 5–15%; a clinic missing RPPT loses approximately IDR 600,000–1,800,000/month (~$37–$111/month) — not large per clinic but creates systemic underperformance across ~7,606 FKTPs (2)
- Population-level complication cost: Indonesia's total BPJS DM+HT expenditure exceeds IDR 30.5 trillion/year ($1.88B); the fraction attributable to avoidable complications from poor recall and follow-up is not cleanly separable from this figure, but PROLANIS program rationale explicitly links recall attendance to complication prevention; a 10-percentage-point improvement in FKTP utilization among diagnosed-but-not-regularly-attending DM patients would engage ~740,000 additional patients (3)
- Malaysia employer CDM cost: well-managed employer CDM programmes show significantly lower health claim costs; the Naluri Indonesia real-world study documented health deterioration in the no-coaching group, confirming that absence of structured follow-up leads to measurable outcome deterioration (4)

**Willingness to pay:** Not sourced. [ASSUMED-6]: to validate — ask FKTP owner-GPs in Jakarta and MSO operators in KL whether they would pay for a recall automation module and what the ceiling is (hypothesis: $20–$50/month per clinic if tied to demonstrable RPPT improvement).

**Frequency:**
- Only 32% of 273 assessed FKTPs met the Level 4 RPPT target (controlled CDM ratio) as of December 2023 — the majority of PROLANIS-active FKTPs are underperforming on this indicator (5)
- In East Java, only 34.3% of eligible T2DM patients enrolled in PROLANIS at all; of those enrolled, only 56.8% maintained regular attendance (6)
- 50% of Indonesian primary care providers report only 31–50% of their CDM patients achieve treatment targets; only 3.6% report 81–100% control rates (7)
- Malaysia NHMS 2023: DM prevalence 15.6%, of which 9.7% known; hypertension 29.2%, of which 17.3% known — a large undetected population and likely high drop-off even in the known/treated cohort (8)
- Malaysia NDR 2023: only 34.4% of tracked DM patients achieved HbA1c ≤6.5% target; mean HbA1c 7.7% nationally (9)
- Biannual HbA1c testing required under PROLANIS guidelines is documented as not completed at multiple facilities due to supply and scheduling constraints (10)
- PROLANIS scoping review (PMC 2025) documents: only 34.3% eligible enrolled; 56.8% regular attendance; WhatsApp non-participation and supply barriers as key recall failure modes (6)

**Evidenced or assumed:**
(1) Nurse salary benchmarks — Indonesia: https://id.jobstreet.com/career-advice/role/general-practitioner/salary; Malaysia: https://malaysia.indeed.com/career/nurse/salaries
(2) BPJS capitation rate — IDR 9,000–16,000/month/peserta, Permenkes No. 3/2023 — https://finansial.bisnis.com/read/20230115/215/1618221/melonjak-ini-detail-tarif-kapitasi-bpjs-kesehatan-2023
(3) BPJS utilization gap: 37.8% DM active FKTP; 27.3% HT active FKTP — https://www.kompas.id/artikel/en-biaya-diabetes-dan-hipertensi-capai-rp-305-triliun-banyak-pasien-yang-tidak-terkontrol [NEEDS-ATTENDED-FETCH — paywall]; also corroborated by Frontiers study: https://www.frontiersin.org/journals/health-services/articles/10.3389/frhs.2025.1715125/full
(4) Naluri Indonesia coaching real-world study — https://pmc.ncbi.nlm.nih.gov/articles/PMC11422728/
(5) RPPT achievement 32% of FKTPs (December 2023) — https://jurnal-jkn.bpjs-kesehatan.go.id/index.php/jjkn/article/view/273
(6) PROLANIS scoping review PMC 2025 (East Java 34.3% enrolled; 56.8% regular attendance) — https://pmc.ncbi.nlm.nih.gov/articles/PMC12538241/
(7) Indonesia primary care provider CDM control rates — https://www.frontiersin.org/journals/health-services/articles/10.3389/frhs.2025.1715125/full
(8) Malaysia NHMS 2023 — https://www.nature.com/articles/s41598-025-08311-9
(9) Malaysia NDR 2023 — 34.38% HbA1c ≤6.5% — https://pmc.ncbi.nlm.nih.gov/articles/PMC10576047/ (10-year cohort); search-verified 2023 NDR figure at https://www.moh.gov.my/moh/resources/Penerbitan/Laporan/Umum/NDR_Report_2023_Final.pdf [URL confirmed; content 404 on direct access — sourced via search result snippet]
(10) PROLANIS HbA1c testing gap — https://phcogj.com/article/2352
(11) Malaysia care coordination burden — https://pmc.ncbi.nlm.nih.gov/articles/PMC7585891/
(12) PROLANIS qualitative study (WhatsApp group recall) — https://japsonline.com/abstract.php?article_id=4435&sts=2
(13) PROLANIS P4H overview — https://p4h.world/en/documents/chronic-disease-management-programme-prolanis-in-indonesia

**Root Causes**

- **RC1: PROLANIS recall is assigned to nursing staff who carry concurrent clinical and administrative duties, creating systematic time competition that recall loses.** The PROLANIS guidelines specify that nurses should perform weekly missed-visit reporting and outreach, but in practice nurses at under-resourced FKTPs hold multiple concurrent programme responsibilities (maternal health, immunization, nutrition, CDM), so recall is deferred when clinical demand peaks. The Malaysian care coordination literature documents exactly this dynamic: care coordinators "stay back after operating hours to complete their visit checklist and conduct defaulter tracing," and explicitly report "losing their clinical skill due to additional administrative tasks." This is a structural time-allocation conflict, not a motivation problem.

- **RC2: No clinic-side system generates an automated overdue list, requiring recall to compete with clinical memory.** BPJS PCare portal displays PROLANIS enrollment data but does not generate actionable overdue alerts by patient. Clinic management software (KlinikPintar, eClinic) has patient lists but no built-in recall scheduling engine. The practical result is that recall is done by nurses who know their patients by face and informal familiarity — structurally limited to well-attended, familiar patients and systematically excluding the harder-to-reach defaulters who most need follow-up.

- **RC3: One-way broadcast recall (WhatsApp group) cannot confirm individual patient response or track non-responders, so non-attendance is invisible until it becomes a missed appointment.** The current WhatsApp group model — documented at Biru Health Center and the PROLANIS qualitative study sites — broadcasts activity schedules to a group; patients choose whether to respond. No mechanism exists to identify which individuals did not respond and escalate. This is a structural design limitation: broadcast is not recall. Individual outreach is too labor-intensive at scale without automation.

- **RC4: Patient contact information is frequently outdated, and no mechanism exists to maintain current contact data between encounters.** The Malaysian care coordination study documents this directly: "Sometimes patients change their phone number; old phone number is not updated...Sometimes patients are given phone numbers of their children." In the absence of a systematic patient contact maintenance mechanism, recall outreach reaches a shrinking proportion of enrolled patients over time. BPJS PCare does not maintain a live contact directory synchronized with FKTP patient records.

- **RC5: In Malaysia's private panel clinic setting, no formal CDM recall obligation exists — follow-up is entirely patient-initiated.** Unlike PROLANIS in Indonesia, Malaysia's private panel GP clinics operate under employer/TPA managed care contracts that define benefit coverage but impose no CDM follow-up protocol on the clinic. The TPA's interest is claims cost control, not proactive care; the employer's interest is productivity, not clinical outcomes. This creates a structural absence of any institutional mandate for clinic-side recall — the pain exists but no contractual lever drives correction.

---

### Pain point 2.3

**Description:** GP clinics in Malaysia and Indonesia experience no-show rates of 15–30% for booked appointments without systematic automated reminders or slot-recovery mechanisms. Idle slots represent direct revenue loss and capacity waste, and are magnified in CDM follow-up contexts where a missed visit delays chronic disease management. The region's high WhatsApp penetration makes automated reminder dispatch technically feasible, but most clinics still dispatch reminders manually or not at all.

**Who bears it:** GP clinic operators (lost revenue per idle slot); CDM patients (delayed follow-up); BPJS Kesehatan (PROLANIS attendance gap contributes to RPPT underperformance).

**Estimated cost:**
- Revenue loss per no-show (Malaysia): Malaysia private GP consultation fees are currently MYR 10–35 per visit (regulated under Private Healthcare Facilities Act Schedule 7, with proposed increases to MYR 50–150 pending); at current regulated fee midpoint of MYR 22 (~$4.75), a 20% no-show rate on 40 booked appointments/day = 8 missed slots/day = $38/day = ~$9,880/year at 260 working days — low per-unit due to price regulation, but the actual economic loss is higher because consultation fees are the floor, not the ceiling, and private paying patients pay above the regulated rate for comprehensive visits (1)
- Revenue loss per no-show (Indonesia): BPJS capitation is per-enrolled-member-per-month regardless of attendance, so the BPJS no-show revenue impact is not per-slot; for private-pay patients (out-of-pocket), klinik pratama consultation fees typically range IDR 50,000–150,000 ($3–$9 at IDR 16,200/USD); at IDR 75,000 midpoint, 8 missed slots/day = ~$37/day = ~$9,600/year — similar order of magnitude (2)
- Administrative cost of manual no-show handling: at 5–10 minutes of front-desk time per no-show (detection + call attempt + slot re-offer), 8 no-shows/day × 7.5 minutes = 60 minutes/day of front-desk time; at Indonesia front-desk salary ~IDR 4,000,000/month ($247/month), this is ~$20/month in direct labor cost for no-show management — modest alone but compounded by 260 days (3)
- Indirect cost — CDM visit missed: for a CDM patient whose controlled disease degrades during the missed follow-up gap, the eventual complication cost far exceeds the missed consultation fee. US VA data: mean no-show cost $196/patient per event including indirect costs (2008 data, US context — not directly applicable but benchmarks magnitude direction) (4)

**Willingness to pay:** Not sourced. [ASSUMED-7]: to validate — ask clinic owners what they would pay for a no-show reduction module (e.g., WhatsApp reminder + rebooking automation); hypothesis: $15–$40/month if reducing no-shows by 5–10 percentage points is demonstrated.

**Frequency:**
- Hospital Kuala Lumpur 2019: 28% no-show rate (69,173 of 246,943 outpatient appointments) — documented in PMC ML prediction study (5)
- Dietetic clinic, southern Malaysia tertiary hospital 2017: ~35% no-show rate (6)
- Global primary care no-show range: 15–30% (some settings up to 50%) — consistent with Malaysia data (7)
- No verified Indonesia GP clinic no-show rate found in English-language literature; Indonesia PROLANIS attendance study documents only 56.8% regular attendance among enrolled participants (6 data point from scoping review — approximates a 43% non-attendance rate for the enrolled cohort, though "regular attendance" definition differs from single-appointment no-show) (8)
- Evidence: SMS/text reminders reduce no-show risk by ~7% per additional reminder (RCT, primary care); targeted phone call reminders reduce no-show rate from 29.2% to 22.8% (5) — confirming that the gap is addressable with low-cost automation

**Evidenced or assumed:**
(1) Malaysia GP consultation fee range MYR 10–35 — https://codeblue.galencentre.org/2023/09/madani-medical-schemes-gp-consultation-fee-raised-by-rm5-programme-expanded-nationwide/; doctors' group calling for increase to MYR 50–150 — https://codeblue.galencentre.org/2025/03/doctors-group-demands-gp-fee-correction-to-rm50-to-rm150/
(2) Indonesia klinik pratama fee range — derived from BPJS tariff context (IDR 9,000–16,000 capitation) and private-pay context; no direct source found for private consultation fee floor; [ASSUMED-8] to validate: collect fee schedule from 10 Jakarta klinik swasta
(3) Front-desk salary Indonesia — https://id.jobstreet.com/career-advice/role/general-practitioner/salary (GP salary benchmark used as proxy; admin staff salary is lower)
(4) US VA no-show cost $196/patient — https://pmc.ncbi.nlm.nih.gov/articles/PMC4714455/ (US VHA context only; not directly applicable to ID/MY)
(5) HKL 28% no-show, ML prediction study — https://pmc.ncbi.nlm.nih.gov/articles/PMC10624443/
(6) Patient upfront payment to reduce no-show study (Malaysia), 35% dietetic clinic rate — https://pmc.ncbi.nlm.nih.gov/articles/PMC11436967/
(7) Global primary care no-show prevalence — https://pmc.ncbi.nlm.nih.gov/articles/PMC4714455/
(8) PROLANIS 56.8% regular attendance — https://pmc.ncbi.nlm.nih.gov/articles/PMC12538241/
(9) RCT: SMS reduces no-show by 7% per additional message — https://pmc.ncbi.nlm.nih.gov/articles/PMC9126539/
(10) Targeted phone call RCT: 29.2% → 22.8% — https://pmc.ncbi.nlm.nih.gov/articles/PMC5130951/
(11) AI no-show prediction tools overview — https://vervint.com/article/unlocking-operational-efficiency-how-provider-organizations-can-use-ai-to-predict-no-shows-and-optimize-scheduling/

**Root Causes**

- **RC1: Most GP clinics in Indonesia and Malaysia do not have a systematic appointment reminder workflow, because the dominant patient access mode is walk-in, not advance booking.** The GP clinic model in both markets historically operates as a walk-in service; advance booking is layered on top without redesigning the operational workflow. Because the majority of visits are walk-in, there is no tradition of pre-appointment outreach infrastructure, and no clinic management software in the region includes automated reminder dispatch as a default feature (as opposed to a premium add-on). The absence is structural, not a feature-by-feature gap.

- **RC2: GP clinic economics make a dedicated front-desk reminder workflow economically unattractive relative to simply absorbing no-shows.** At MYR 22 ($4.75) or IDR 75,000 ($4.63) per consultation, the revenue recovered per no-show prevented is small. A 5-minute phone call by a front-desk worker earning $247–$484/month costs ~$0.25–$0.45 in direct labor — making individual phone reminders marginally economic — but organizing a systematic daily reminder run requires workflow discipline that small clinics (1–3 staff total) cannot sustain. The result is that reminder calls happen when staff are available, not systematically. This creates a predictable structural gap that only low-cost automation can close economically.

- **RC3: No-show data is not captured systematically, preventing pattern analysis and predictive intervention.** The Malaysian ML prediction study from Hospital Kuala Lumpur (PMC 2023) was described as "the first predictive analytics research on appointment no-shows within Malaysia's healthcare system" — implying that structured no-show data does not exist at GP clinic level. Without historical data, no predictive no-show model can be trained and deployed for individual clinics. The absence of data is itself a structural barrier: data must be collected before it can be used.

- **RC4: The walk-in surge dynamic allows no-show slots to be partially absorbed naturally, masking the true economic cost.** A clinic with 20% no-shows and a full walk-in queue may rarely see idle slots because walk-ins fill the gaps. This creates a false signal: the clinic appears at capacity, but is actually running on a mixed implicit subsidy from walk-ins absorbing no-show gaps. The true cost — CDM patients who needed follow-up but didn't attend — is invisible in revenue terms and only visible in clinical outcome metrics (RPPT, HbA1c control rates), which most GP clinics do not track.

---

### Pain point 2.4 — Assessment

**Candidate:** Cross-party CDM coordination (clinic ↔ employer HR ↔ TPA) is fragmented; CDM-enrolled patients lose continuity when they switch employer or TPA.

**Assessment:** This pain point is real and structurally documented — the Malaysian care coordination literature, CodeBlue reporting on TPA fragmentation, and academic literature on continuity disruption from employer/panel switches all confirm it. However, it is partially evidenced at the GP clinic level and better evidenced at the TPA/insurer level (Stage 3). The core pain — TPA claim rejections interfering with CDM monitoring; patient record discontinuity on employer change — affects GP clinics but the structural fix (identity resolution, portable patient records) requires intervention across Stage 2, Stage 3, and potentially national health information infrastructure. Writing this as a full PP2.4 would largely duplicate Stage 3 content. **Decision: include as a structural note here and flag for full development in Stage 3 (TPA/insurer operations).**

Key evidence gathered, not to be discarded:
- Malaysia panel clinic TPA coordination burden documented — https://codeblue.galencentre.org/2023/10/the-middleman-in-the-health-care-industry-mco-tpa-hmo-dr-chang-chee-seong/
- TPA-clinic claim interference (clinical autonomy, medication restrictions) — same URL
- Care coordination qualitative study (nurse burden) — https://pmc.ncbi.nlm.nih.gov/articles/PMC7585891/
- Malaysia medical records law: records remain property of the facility, not the patient; no portability standard — https://www.rdslawpartners.com/post/ownership-and-access-understanding-medical-records-in-malaysia
- Continuity disruption from company insurance panel switching — https://pmc.ncbi.nlm.nih.gov/articles/PMC9602948/

These sources will be referenced in Stage 3 pain point development.

---

### New pain points not in original hypothesis

None surfaced beyond the three developed above. The original four hypotheses were: PP2.1 (lab parsing) — confirmed and developed; PP2.2 (CDM recall) — confirmed and developed; PP2.3 (no-show) — confirmed and developed; PP2.4 (cross-party CDM coordination) — confirmed as real but migrated to Stage 3 scope. No unexpected pain points surfaced from the literature review that were not already in the hypothesis set.

One finding worth flagging: the scale of the CDM patient engagement gap in Indonesia is larger than the hypothesis framing suggested. The BPJS data showing only 27–38% of diagnosed JKN CDM patients actively visiting FKTP (vs. the implied assumption that most enrolled patients were receiving reasonable follow-up) suggests that PP2.2 is a higher-order problem than the hypothesis framing ("inconsistent recall") captured — it is more accurately described as near-absent systematic recall for the majority of the CDM population.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Nurse time to produce weekly overdue list at PROLANIS-active FKTP is 30–60 minutes — to validate: time-motion study with 5 BPJS FKTP nurse coordinators in Jakarta/Surabaya.

[ASSUMED-2]: Weekly nurse time for individual WhatsApp + phone recall dispatch is 1.5–3 hours for a 300-patient-panel clinic with 90 CDM patients — to validate: time-motion study at PROLANIS-active FKTPs, logging time per recall attempt.

[ASSUMED-3]: TPA CDM coordination event takes 5–15 minutes of admin time per event — to validate: interview panel GPs and TPA operations teams in Klang Valley.

[ASSUMED-4]: Booked appointments represent 30–60% of total GP clinic visits in urban Malaysia; remainder is walk-in — to validate: request slot-utilization log from Klinify or BookDoc for 10 Klang Valley GP clinics.

[ASSUMED-5]: FKTP owner-GPs would pay $30–$80/month incremental for automated lab result parsing integrated with their EHR — to validate: fee sensitivity interview with 10 Jakarta/KL GP clinic owners.

[ASSUMED-6]: FKTP owner-GPs would pay $20–$50/month for a recall automation module tied to demonstrable RPPT improvement — to validate: willingness-to-pay interview with owner-GPs at PROLANIS-active FKTPs in Jakarta, Surabaya, KL.

[ASSUMED-7]: GP clinic owners would pay $15–$40/month for a no-show reduction module (WhatsApp reminder + rebooking automation) — to validate: fee sensitivity interview with GP clinic owners in KL and Jakarta.

[ASSUMED-8]: Indonesia klinik pratama private-pay consultation fees range IDR 50,000–150,000 ($3–$9) — to validate: collect fee schedule from 10 Jakarta klinik swasta directly.

