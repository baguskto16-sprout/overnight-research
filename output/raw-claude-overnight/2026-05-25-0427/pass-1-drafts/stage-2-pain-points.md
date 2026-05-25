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

