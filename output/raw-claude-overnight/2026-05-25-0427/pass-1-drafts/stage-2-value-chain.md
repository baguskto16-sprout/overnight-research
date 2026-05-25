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
