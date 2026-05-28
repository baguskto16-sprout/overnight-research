## Stage 3: Insurance & TPA Claims Operations

**Role in the back-office flow:** Private health insurers and Third-Party Administrators (TPAs) sit between the clinical delivery layer (Stage 1: GP clinics; Stage 2: MCU/diagnostics) and the employer-payer, converting healthcare encounters into adjudicated claims, benefit decisions, and — in the CDM sub-step — ongoing enrolment management for chronic-disease programmes. They are the primary source of administrative friction that cascades back to hospitals and GPs.

---

### Activities (Sub-step decomposition)

#### Sub-step 3a — Benefit Verification & Pre-Authorisation

| Dimension | Detail |
|---|---|
| **Owner role** | Hospital admissions desk / GP clinic front desk (requestor); TPA call-centre medical officer or insurer pre-auth team (approver) |
| **Input format** | Patient insurance/medical card; NRIC/KTP (national ID); hospital/clinic pre-auth request form or electronic portal submission; draft diagnosis/proposed procedure code; specialist referral letter (for planned admissions) |
| **Output format** | Guarantee Letter (GL) — approval, conditional approval, or decline — issued by TPA/insurer via fax, email PDF, or portal notification; GL contains approved benefit amount, admission validity window, and approved ICD-10 code range |
| **Typical time per transaction** | Elective/planned admission (MY): commitment 75 minutes for straightforward GL after complete document receipt (Great Eastern); up to 6 hours in practice for complex cases (1). Cashless discharge authorisation (MY): 75 minutes committed, 3–4 hours actual (1). Pre-auth for cashless claims at partner hospital (ID): AdMedika SLA 45 minutes from complete document receipt, longer if billing revision required (2). Emergency admission: GL typically issued within 30 minutes of presentation (PMCare commitment) (3). |
| **Current automation level** | Low–Medium. Indonesia: AdMedika's AdCPS processes cashless claims electronically at 9,000+ partner facilities (4). Malaysia: MiCare, PMCare, and Medilink-Global operate portal-based GL systems; legacy fax still used by smaller panel hospitals not integrated with TPA portal. HealthMetrics launched AI-driven pre-auth in Indonesia (April 2025) (5). No standard API between hospital HIS/SIMRS and TPA pre-auth system exists in either market. |
| **Error / drop-off mode** | GL declined because patient's NRIC/policy number does not match active coverage in TPA system; ICD-10 code on pre-auth form rejected as excluded; GL issued against wrong diagnosis leading to discharge claim dispute; approximately 67% of Malaysian specialists surveyed report GLs revoked after treatment completion (6); delays of 48+ hours reported for inpatient GL approvals where insurer administrative staff cannot reach clinical reviewer (6) |

**Key sub-activities:**
1. Patient identity and policy eligibility check at hospital/clinic front desk (manual card swipe or portal query)
2. Pre-auth request compilation: proposed ICD-10 diagnosis, planned procedure, expected stay, estimated cost
3. Submission to TPA/insurer via portal, fax, or phone call (phone calls still common for complex cases in Indonesia and Malaysia)
4. TPA medical officer review and approval decision
5. GL issuance to hospital with benefit cap, validity window, and approved codes
6. Final GL (discharge GL) at end of inpatient stay — reconciling actual treatment vs. original pre-auth scope

---

#### Sub-step 3b — Claims Submission & Completeness/Resubmission Loop

| Dimension | Detail |
|---|---|
| **Owner role** | Hospital billing team or clinic admin (claim packager/submitter); TPA claims operations team (completeness checker, rejector); insurer claims intake (for non-TPA routed claims) |
| **Input format** | For cashless inpatient (ID/MY): itemised hospital bill, GL copy, discharge summary, supporting investigation reports, completed claim form — submitted as physical package (outpatient: usually within 30–45 days) or via TPA's electronic claim portal. For reimbursement: original receipts, itemised bill, diagnosis letter, completed claim form, medical records — submitted by policyholder by post, email scan, or insurer app. |
| **Output format** | Claim accepted for adjudication (reference number issued); or rejection notice with rejection code(s) specifying missing/incorrect documents or non-covered items; resubmission instruction |
| **Typical time per transaction** | Cashless claim packet preparation (hospital billing): 30–90 min per inpatient episode. Completeness check by TPA: same-day to 2 working days. Resubmission loop per rejection: 1–5 working days additional per cycle (insurer requests further documents or clinical clarification). Reimbursement claim adjudication target: 14–30 working days (Malaysia standard) (7); Indonesia insurers cite 30-day target. |
| **Current automation level** | Low–Medium. Cashless inpatient claims are largely electronic through TPA portals in both markets. Outpatient reimbursement claims remain primarily paper/email PDF — policyholder mails or scans original receipts. PMCare processes 13,000+ claims daily across all types (3). Medilink-Global ECCS 4.0 provides electronic clearing for 3,500+ providers (8). AdMedika serves 5.1M+ members across 9,000+ facilities electronically (4). |
| **Error / drop-off mode** | Missing or illegible original receipts (reimbursement claims); diagnosis code on bill does not match diagnosis code on GP letter; pre-existing condition exclusion invoked on first submission; claim filed after 30-day submission deadline; ICD-10/procedure code disputes between hospital coder and TPA — disputes over procedure unbundling common in Malaysia (6); claims "clawed back" up to 2–3 years after payment if post-payment audit identifies code mismatch (6) |

**Key sub-activities:**
1. Hospital billing team compiles claim packet: itemised bill, discharge summary, GL copy, investigation reports
2. Electronic or physical submission to TPA/insurer portal or mailing address
3. Completeness check against mandatory document checklist
4. Rejection or query letter generation specifying deficiency (first-touch rejection)
5. Hospital/clinic revises and resubmits corrected packet
6. Queue for adjudication once completeness confirmed
7. For reimbursement: policyholder self-prepares and submits via post, app upload, or agent

---

#### Sub-step 3c — Claims Adjudication

| Dimension | Detail |
|---|---|
| **Owner role** | TPA adjudication officer (benefit eligibility, line-item review); insurer medical reviewer (for complex/high-cost cases); fraud analytics team; TPA clinical staff (Indonesia: AdMedika has dedicated medical review; Malaysia: PMCare has 15 in-house doctors vs. 2–3 at most insurers) (3) |
| **Input format** | Complete claims packet (validated in 3b); policy schedule (benefit limits, exclusions, co-payment terms); historical claims record for policyholder (duplicate detection, utilisation pattern); diagnosis/procedure coding per ICD-10/CPT/local coding scheme; hospital fee schedule (for scheduled-procedure benefit caps) |
| **Output format** | Adjudication decision: approved amount (may differ from billed amount due to benefit cap, non-covered items, co-payment deduction, or scheduled-procedure limit); denial letter with reason code; partial approval with explanation; payment instruction to hospital or policyholder |
| **Typical time per transaction** | Straight-through cashless discharge: AdMedika target 45 min from complete document receipt (2). Adjudication end-to-end (Malaysia): 14–30 working days for reimbursement (7). Complex/high-cost cases involving medical review: 30–45 working days. PMCare issues GL within 30 min for admission authorisation and processes claims daily at 13,000 claim volume (3). |
| **Current automation level** | Medium (cashless/structured); Low (reimbursement/complex). Cashless inpatient: most large TPAs (AdMedika, PMCare, MiCare) use automated benefit-limit checking and duplicate detection against live member database. Complex cases requiring clinical judgement (clinical necessity, pre-existing condition determination, code disputes) remain manual. Fraud detection: BPJS Kesehatan employs ML-based fraud analytics for JKN (XGBoost, Random Forest, SVM studied) (9); private insurer fraud detection in ID/MY is predominantly rule-based pattern analysis. Indonesia POJK 36/2025 now mandates fraud detection systems and coordination of benefits for all private health insurers by Dec 2026 (10). |
| **Error / drop-off mode** | Incorrect benefit-limit application (policy schedule data not updated after product amendment); duplicate claim not caught (member claims at multiple providers in same episode); upcoding by hospital (diagnosis upgraded to higher DRG/severity tier); clinical necessity denial by non-clinically-trained staff leading to specialist pushback (6); coordination of benefits (COB) with BPJS Kesehatan not executed — POJK 36/2025 mandates COB integration but system connections not yet built at most insurers (10) |

**Key sub-activities:**
1. Automated eligibility verification (policy active, benefit not exhausted, waiting period passed)
2. Duplicate claim detection against member's utilisation history
3. Benefit limit and exclusion matching per line item
4. Co-payment deduction calculation (Indonesia: POJK 36/2025 sets 5% co-payment, max IDR 300,000 outpatient / IDR 3,000,000 inpatient)
5. Medical review referral for high-cost or clinically complex claims
6. Fraud flag review (pattern analysis — upcoding, unbundling, phantom billing, cloned claims)
7. Payment calculation and instruction generation
8. Adjudication outcome notification to hospital (cashless) or policyholder (reimbursement)

---

#### Sub-step 3d — CDM & Preventive Programme Administration

| Dimension | Detail |
|---|---|
| **Owner role** | TPA health management unit or insurer's wellness team (programme design, enrolment, monitoring); employer HR/benefits manager (employee-side coordination); panel GP or specialist clinic (clinical delivery); insurer actuarial team (renewal pricing, utilisation trend reporting) |
| **Input format** | Employer group policy schedule specifying CDM programme benefit; employee roster from employer (linked to group policy); claims data indicating CDM-eligible diagnoses (DM, HTN, dyslipidaemia, asthma — conditions identified through claims history); MCU results flagging at-risk employees (when MCU provider data is shared — rare; see Stage 2 findings); voluntary employee enrolment registration |
| **Output format** | CDM enrolment confirmation; programme participation tracker (visits completed vs. required frequency); annual employer utilisation report (disease prevalence, programme participation rate, cost trend); renewal pricing input (loss ratio per diagnostic group); alert to employer HR for employees not meeting participation targets |
| **Typical time per transaction** | Employer CDM programme setup: 1–2 weeks for roster import and panel GP network assignment. Per-employee enrolment: 15–30 min manual entry; automated if TPA's system has direct HR integration (rare). Monthly utilisation monitoring: batch automated from claims data. Annual employer utilisation report: 5–15 person-days for analyst depending on scope and data quality. |
| **Current automation level** | Low. CDM programme administration in both Indonesia and Malaysia is primarily managed through manual claims-data extraction (quarterly or annual batch runs). Continuous patient-level monitoring between claims events is not standard — programmes rely on claims data appearing as enrolment trigger, not on direct clinical monitoring. Integration between MCU results (Stage 2) and CDM enrolment (Stage 3d) is absent in most employer programmes — the two systems operate independently. HealthMetrics launched wellness benefits module in Malaysia/Indonesia in 2025 (5). PRU@Work (Prudential Malaysia) offers structured group CDM benefit with GP panel coordination (11). |
| **Error / drop-off mode** | Employees with CDM-eligible diagnoses not enrolled because condition identified at non-panel provider and claims data lag is 30–90 days; employer roster not updated when employee exits/joins causing benefits to persist for former employees; CDM participation rate below employer's contractual target because employees do not self-refer to panel GP; insurer's annual utilisation report does not identify emerging CDM risk until renewal — 12-month lag in cost signal; no real-time alert to employer HR when enrolled CDM employee misses required follow-up visit |

**Key sub-activities:**
1. Employer group policy CDM benefit definition: eligible diagnoses, required visit frequency, panel GP list, benefit limits per condition
2. Claims-data-driven CDM eligibility identification (batch run against previous 12 months' claims)
3. Employee CDM enrolment: notification, consent, panel GP assignment
4. Ongoing visit-frequency monitoring against programme targets (typically quarterly HbA1c, monthly BP check for DM/HTN)
5. Employer utilisation report production (annual or semi-annual): disease prevalence, CDM participation, cost by condition
6. Premium renewal input: CDM programme loss ratio by diagnosis cohort
7. CDM benefit renewal negotiation between insurer and employer (annual)

---

### Revenue / Cost Economics

#### TPA Revenue Model

**Indonesia:**
TPA revenue is predominantly a per-member-per-year or per-claim-processing fee charged to insurer or self-insured corporate clients. AdMedika (the largest ID TPA) is a Telkom subsidiary — revenue not separately disclosed. Indonesia insurance TPA market valued at USD 1.66 billion in 2024, projected to reach USD 5.32 billion by 2030 at 20.6% CAGR (12).

**Malaysia:**
PMCare (oldest TPA, est. 1995): subscription fee structure, currently max MYR 36 per insured person annually (down from MYR 60 in 1995) plus fixed MYR 8 per approved patient transaction (not a percentage of claim) (3). PMCare's total claims handled in 2024 exceeded MYR 2 billion from 4.2 million approved transactions (3). This implies roughly MYR 75–90 million in PMCare administration fees at stated per-member and per-transaction rates [ASSUMED-1].

MiCare: >15 million members across Malaysia/Thailand/Philippines, 45+ insurer clients, 6,500 corporate clients (13). Revenue not disclosed.

**Revenue model in one line:** TPA — fixed subscription fee per insured member per year (MYR 36–60 in MY; IDR equivalent not publicly disclosed in ID) plus per-approved-transaction fee (MYR 8 in MY), charged to insurer or self-insured corporate client; insurer — premium income minus claims paid (loss ratio) minus administration expense ratio (AER, typically 15–25% of GWP for private health lines in SEA).

#### Insurer Economics

**Indonesia:**
- Health insurance GWP (private commercial): IDR 40.19 trillion (~USD 2.48 billion) in 2024, +43.01% YoY from IDR 26.26 trillion in 2023, and IDR 22.09 trillion in 2022 (OJK data via Validnews/Bisnis, cited from OJK press release Feb 2025) (14)
- Health insurance claims ratio: 71.23% in 2024 (improved from 97.52% in 2023 and loss-making levels in 2022–2023 due to post-COVID surge and "as-charged" product design); insurer-level improvement driven by repricing and product restructuring (14)
- AAJI reports health insurance claims (life insurer segment): IDR 24.18 trillion in 2024, +16.4% YoY; individual health IDR 15.29 trillion (+14.4%), group/collective health IDR 8.89 trillion (+20.1%) (15)
- Prudential Indonesia: health insurance claims IDR 5.4 trillion in 2023, +~19% YoY; total GWP IDR 19.88 trillion in 2023 (16)
- Mandiri Inhealth (now IFG subsidiary, majority-owned by PT Asuransi Jiwa IFG since June 2024): premium income IDR 3.43 trillion (2023, +15.84% YoY); IFG Life + Mandiri Inhealth combined claims IDR 10.6 trillion in 2024 to 890,000 beneficiaries; Mandiri Inhealth holds ~35% market share in Indonesia's group/collective health insurance segment per AAJI Q1 2024 data (17)

**Malaysia:**
- MHIT (Medical and Health Insurance/Takaful) total healthcare spending funded: MYR 6.75 billion (~USD 1.44 billion) in 2023; up from MYR 0.96 billion in 2003 (6x growth over two decades) (18)
- MHIT covered persons: 7.7 million as at 2023 (Bank Negara Malaysia) (18)
- MHIT claims cost inflation: +73% cumulative 2021–2023 vs. +21% premium growth in same period; 2023 claims ratio reached ~111% for many product lines (BNM data cited in LIAM 2024 report) (19)
- LIAM: health insurance claims payout (life insurance industry, 2024): MYR 8.9 billion, out of total benefit payouts MYR 16.8 billion (20)
- Prudential Malaysia: MYR 2.78 billion total claims paid in 2024; medical claims were largest component with top conditions — heart disease, breast cancer, cataract (21)
- Allianz Malaysia (combined general + life): GWP MYR 6.55 billion in 2023 (+8.7%); Allianz General holds 14.0–14.6% market share (22)
- Malaysia health insurance GWP (market research estimate): USD 915.44 million in 2024, projected 9.99% CAGR to 2030 (Grand View Research) (23)

**Cost drivers in one line:** Insurer — medical claims paid (loss ratio 71–111% across ID/MY 2023–2024), TPA administration fees (~3–7% of claims value), medical inflation (ID: 10.1% in 2024; MY: 12–15% in 2023–2024), fraud losses (magnitude not publicly disclosed for private segment), and regulatory compliance/digital integration investment (OJK POJK 36/2025 mandating fraud systems, COB, Medical Advisory Board by Dec 2026).

---

### Market Size

| Metric | Value | Confidence | Geography | Sources |
|--------|-------|------------|-----------|---------|
| Indonesia private health insurance GWP (commercial) | IDR 40.19 trillion (~USD 2.48B) in 2024; IDR 26.26 trillion in 2023; IDR 22.09 trillion in 2022 | High — OJK official data, cited by Bisnis.com / Validnews / Detik from OJK press release Feb 2025 | ID | (14) |
| Indonesia health insurance claims ratio | 71.23% in 2024 (vs. 97.52% in 2023) | High — OJK official data via Kontan, Bisnis, Antara (Mar 2025) | ID | (14) |
| Indonesia AAJI life insurer health claims paid | IDR 24.18 trillion in 2024 (+16.4% YoY) | High — AAJI official press release, Feb 2025 | ID | (15) |
| Indonesia total health insurance policies | 31.34 million policies (2024); 29.29 million (2023) | High — OJK via Validnews (2025) | ID | (14) |
| Indonesia insurance TPA market size | USD 1.66 billion (2024); projected USD 5.32 billion by 2030 (20.6% CAGR) | Low — Next Move Strategy Consulting market research firm; methodology not disclosed | ID | (12) |
| Mandiri Inhealth group health insurance market share | ~35% of Indonesia's group/collective health insurance segment (AAJI Q1 2024) | Medium — trade press citing AAJI data; not directly from AAJI primary report | ID | (17) |
| Mandiri Inhealth GWP | IDR 3.43 trillion in 2023 (+15.84% YoY) | High — Bisnis.com / IFG press release citing audited financials | ID | (17) |
| Malaysia MHIT total claims funded | MYR 6.75 billion (~USD 1.44B) in 2023 | High — Bank Negara Malaysia (cited by The Edge, BNM Special Report) | MY | (18) |
| Malaysia MHIT covered persons | 7.7 million individuals as at 2023 | High — Bank Negara Malaysia | MY | (18) |
| Malaysia health insurance GWP (market research estimate) | USD 915.44 million in 2024 (CAGR 9.99% to 2030) | Low — Grand View Research; single market research firm; methodology not disclosed; cross-check with BNM GWP figure needed | MY | (23) |
| Malaysia LIAM health insurance claims (life segment) | MYR 8.9 billion in 2024; MYR 8.9B out of total MYR 16.8B benefit payouts | High — LIAM press release Jan 2025 | MY | (20) |
| PMCare Malaysia annual claims handled | Over MYR 2 billion from 4.2 million approved transactions (2024) | Medium — PMCare CEO presentation at CodeBlue conference, Nov 2025 (not audited filing) | MY | (3) |
| Indonesia medical cost inflation (MMB) | 13.6% in 2023; 10.1% in 2024 (OJK) | Medium — MMB Health Trends 2024; OJK data (24, 14) | ID | (24), (14) |
| Malaysia medical cost inflation | 12.6% in 2023 (LIAM); forecasted 15% in 2025 | High — LIAM 2023 data, BNM-cited figures | MY | (19), (20) |

**Geography note — Malaysia MHIT GWP:** BNM data shows MYR 6.75 billion in healthcare spending funded through MHIT in 2023 (this is claims paid, not GWP). Grand View Research estimates Malaysia health insurance GWP at USD 915M (~MYR 4.3B) in 2024, suggesting loss ratio above 100% — consistent with the claims crisis context. The distinction between claims paid and GWP must be noted: the market has been loss-making on a technical basis. Cross-validation between GVR figure and LIAM's MYR 8.9B claims payout in 2024 implies effective loss ratio >100% at the GWP level cited; field validation needed.

---

### Current Players by Region

**Indonesia — Private Insurers (Health / Life with Health Riders)**

- **PT Prudential Life Assurance Indonesia (Prudential Indonesia)** — Largest private health insurer by premium income; GWP IDR 19.88 trillion in 2023 (total, majority life with health riders); health insurance claims IDR 5.4 trillion in 2023 (+19% YoY); operates PRUPriority Hospital network for cashless admissions; direct claims processing and TPA hybrid model (Halodoc digital health JV). Strong in Jakarta, Surabaya, Medan (16).
- **PT AIA Financial Indonesia (AIA Indonesia)** — Major health insurance player; GWP not separately disclosed (AIA Group reports USD 183M VONB from Indonesia segment); first insurer in Indonesia to integrate AI in agent recruitment (2023); operates cashless network through AdMedika and own systems; strong in employer group health segment (25).
- **PT Asuransi Jiwa Manulife Indonesia (Manulife Indonesia)** — Top-5 life insurer with significant health rider GWP; operates group health insurance for large corporates; uses TPA model for cashless hospital network (26).
- **PT Asuransi Jiwa Inhealth Indonesia / Mandiri Inhealth (now IFG Life subsidiary)** — Largest dedicated group/collective health insurer; GWP IDR 3.43 trillion (2023); ~35% market share in group health insurance segment; 1.8M+ participants; majority-owned by PT Asuransi Jiwa IFG since June 2024; primary insurer for government-linked enterprises and SOE workforce (17).
- **PT Asuransi Sinar Mas (Sinar Mas Insurance)** — Major general insurer (AA+ Fitch, stable); 179 branch offices/marketing points nationally; health insurance component within general insurance product line; 2023 general insurance premiums grew 15.3% to IDR 103.86 trillion (total group, not health-specific); strong in corporate employee benefit group health market (27).
- **PT Allianz Life Indonesia (Allianz Indonesia)** — International insurer with significant health rider portfolio; operates cashless claims at partner hospitals through AdMedika and Allianz internal system; serves multinational employer groups in Indonesia (28).

**Indonesia — Third-Party Administrators (TPAs)**

- **PT Administrasi Medika (AdMedika, Telkom Group)** — Largest TPA in Indonesia; est. 2002; 8,800+ partner healthcare facilities; 5.1M+ members; serves insurers and self-insured corporate clients; operates AdCPS (claims processing system) with 45-minute cashless discharge processing SLA; present across Indonesia, Malaysia, Singapore, India, China; part of TelkomMetra holding (4).
- **PT Asuransi Jiwa Inhealth Indonesia** — Functions as both insurer and TPA for corporate group health programmes; manages benefit administration for 1.8M+ participants; also acts as managed care organisation for large SOEs (17).
- **PT Medilink Digital Medika (Medilink Indonesia)** — Indonesian arm of Medilink-Global (Malaysian parent); provides TPA and international medical assistance; rebranded to HealthMetrics Indonesia in April 2025 following HealthMetrics' 2022 acquisition of Across Asia Assist Indonesia; serves 100+ insurers (Allianz, AXA, Tokio Marine), 3,000+ corporate clients, 15,000+ direct billing providers (5).
- **Garda Medika (PT Asuransi Astra Buana subsidiary)** — TPA and managed care for Astra Group employees and external corporate clients; strong in automotive and manufacturing sector workforce (12).
- **Mediplus / MedPlus** — Smaller TPA serving mid-market corporate clients; limited published operational data. [NEEDS-ATTENDED-FETCH]: https://www.mediplus.co.id for current network size and client count.

**Malaysia — Private Insurers (Health / Medical)**

- **AIA Malaysia (AIA BHD)** — Largest life insurer in Malaysia by VONB; health insurance is a major product line; AIA Group reports USD 183M VONB from Malaysia (+14% YoY in 2023); operates cashless panel hospital network with TPA hybrid via MiCare and own AIA Employee Benefits division; strong in employer group health and individual investment-linked health riders (25).
- **Allianz Malaysia (Allianz Life Insurance Malaysia + Allianz General)** — Market leader in general insurance (14.0–14.6% share); total GWP MYR 6.55 billion (2023, +8.7%); Allianz Life insurance revenue MYR 2.17 billion (2023); health insurance component within both general (hospitalisation surgical) and life (medical riders) lines; direct claims processing + MiCare for managed care (22).
- **Prudential Malaysia (Prudential BSN Takaful + Prudential Assurance)** — Major health insurer; claims paid MYR 2.78 billion in 2024; PRU@Work employer group health product with panel GP CDM coordination; medical claims 2022: MYR 1.46 billion (+33.9% YoY) (21).
- **Great Eastern Life Malaysia (Great Eastern)** — Major life insurer with significant health rider book; recently acquired AmMetLife (RM 1.121 billion acquisition) expanding scale; operates Great Eastern Takaful; GL processing standard 75 minutes for straightforward cases (1).
- **Etiqa Insurance and Takaful (Etiqa General Takaful + Etiqa Life)** — Maybank subsidiary; significant group employer health insurance; works with PMCare and MiCare as TPAs (29).
- **Tokio Marine Life Insurance Malaysia (Tokio Marine Malaysia)** — Mid-tier insurer with employer group health offering; uses MiCare for TPA services (29).

**Malaysia — Third-Party Administrators (TPAs / MCOs)**

- **PMCare Sdn Bhd (Sumitomo Group subsidiary)** — Oldest TPA in Malaysia (est. 1995); 352 staff; 15 in-house doctors; 83 staff in call centre (45 GL, 38 discharge); nearly 7,300 panel providers (5,280 GPs, 492 specialists/hospitals, 1,163 dental, 337 optical); MYR 2+ billion in claims processed from 4.2 million transactions in 2024; subscription fee max MYR 36/member/year + MYR 8/approved transaction; serves 2,000+ clients since inception; RM104M past-due receivables noted in 2024 (3).
- **MiCare HealthTech Holdings** — Regional TPA and managed care organisation; 15+ million members in Malaysia/Thailand/Philippines; 45+ insurers; 6,500 corporate clients; 5,000+ providers; serves Generali, Manulife, Tokio Marine, Progressive Insurance (13).
- **Medilink-Global** — TPA and benefit management solution; 20+ years track record in Malaysia, Singapore, China, Bangladesh, Indonesia; 3,500+ provider network; ECCS 4.0 electronic claims system; operates across multiple insurers (8).
- **HealthMetrics Sdn Bhd** — Digital-first TPA (est. 2015); launched AI-driven claims + fraud detection platform; 85% reported reduction in HR administrative tasks for corporate clients; on track to exceed USD 1 billion cumulative medical treatments by end 2025; present in Malaysia, Singapore, Indonesia (as of April 2025); ISO 27001 compliant (5).
- **MediExpress** — Mid-tier TPA (Sumitomo subsidiary alongside PMCare); serves mid-market employer group health clients in Malaysia (30).
- **Integrated Health Plans (IHP)** — TPA providing employee health benefits management, flexible enrolment, reimbursement claims, and panel provider management; serves both employer and insurer clients in Malaysia (31).

---

### Preliminary Pain Points (this stage)

1. **GL issuance delays of 48+ hours by non-clinically-trained insurer/TPA staff block timely treatment (MY/ID):** Approximately 67% of Malaysian specialists surveyed report GLs revoked after procedure completion; GLs declined based on "normal" test results despite clinical symptoms; hospital absorbs costs when approved GL is revoked post-treatment because insurer retroactively deems service unnecessary. Administrative personnel question standard clinical decisions (type of anesthesia, ward class) without medical expertise. This directly drives clinical harm and operational dispute cost between providers and insurers (6).

2. **Claims ratio crisis driven by "as-charged" product design and absence of real-time utilisation controls (ID/MY):** Indonesia health insurance claims ratio peaked at 97.52% in 2023 (OJK data) — effectively loss-making — before repricing reduced it to 71.23% in 2024. Malaysia MHIT claims cost rose 73% cumulative 2021–2023 vs. 21% premium growth. The root cause is that most private health products in both markets are "as-charged" with no standardised fee schedule — hospitals bill at discretion and TPA/insurer processes and pays without automated benchmarking. Manual adjudication cannot catch billing inflation fast enough (14), (18), (19).

3. **Coordination of benefits (COB) between BPJS Kesehatan and private insurers does not function in practice, enabling double-claiming (ID):** POJK 36/2025 mandates COB integration by December 2026, but the technical integration between private insurer systems and BPJS Kesehatan's data infrastructure is not built. Employees with both BPJS JKN and employer-sponsored private health coverage can claim the same episode through both systems. OJK cites this as a primary driver of claims inflation in the group health segment (10).

4. **CDM programme enrolment is claims-data-reactive, not prospective — high-risk employees are identified 30–90 days after condition onset (ID/MY):** CDM enrolment in employer health programmes relies on claims data appearing in the TPA system, which lags clinical reality by 1–3 monthly billing cycles. Employees identified at MCU as DM/HTN risk (Stage 2) are not automatically enrolled in insurer CDM programmes because MCU providers do not share structured results data with TPAs or insurers. The enrolment link between Stage 2 (MCU) and Stage 3d (CDM) is broken in both markets — a finding that emerges directly from the Stage 2 analysis of MCU result delivery workflows (Stage 2, sub-step 2d).

5. **Reimbursement claims require original physical documents — digital submission is incomplete and policyholder dropout is high (ID/MY):** Most private insurers in Indonesia and Malaysia still require original receipts and physical claim forms for reimbursement claims. Even insurers with mobile app submission (e.g., some Prudential/Manulife channels) require original itemised bills by post within 30 days. Policyholders who lose receipts or miss the 30-day window lose the claim. This creates a material coverage gap relative to policyholder expectations — the most common complaint driver in both markets (7).

6. **TPA platform fragmentation means no single view of member across GP, specialist, and MCU channels — fraud detection is inherently incomplete (ID/MY):** AdMedika's 8,800-facility network, PMCare's 7,300-provider network, and Medilink-Global's 3,500-provider network are each distinct — a member can receive care at providers on multiple TPA networks in the same claim episode. Cross-TPA member data sharing does not exist in either market. This creates structural blind spots for duplicate-episode detection and upcoding pattern identification. POJK 36/2025 in Indonesia mandates fraud detection systems but does not mandate cross-TPA data sharing (10).

7. **CDM employer reporting is annual Excel/PDF with no NCD risk stratification — employers cannot act on population health trends between renewals (ID/MY):** Employer utilisation reports from TPAs are produced annually (or semi-annually at best) as flat tables showing claims by diagnosis group. No employer receives real-time NCD risk stratification, year-on-year trend by department, or predictive cost modelling within the standard plan. This creates a 12-month decision lag between cost signals and employer action — directly analogous to the pain point identified in Stage 2 (MCU population summary in Excel with no automated risk stratification). The insurer/TPA CDM reporting and the MCU provider population report are produced independently by different entities with no data linkage.

8. **Claims rejection on first submission drives multi-week resubmission cycles, tying up hospital billing staff (ID/MY):** Procedural rejection reasons (missing document, incorrect code, incomplete form) on first submission are structurally common because there is no pre-submission checklist validation at the hospital's billing system level. Each rejection adds 1–5 working days. Malaysia's standard: 14–30 working days for reimbursement adjudication; Indonesia targets 30 days but resubmission cycles can extend this to 60–90 days in practice (7).

---

### Sources for this stage

(1) Great Eastern Life Malaysia — GL processing standard (75 min for straightforward Final GL; up to 6 hours for inpatient planned admission): https://www.greateasternlife.com/my/en/customer-services/claims/medical-and-hospitalisation/health-care-card-and-guarantee-letter-gl.html

(2) AdMedika — Cashless claims processing: 45-minute SLA from complete document receipt: https://asuransinow.com/admedika-mengenal-peran-tpa-dalam-klaim-cashless/

(3) CodeBlue — PMCare operational data (13,000 claims/day, 352 staff, 15 doctors, 7,300 providers, MYR 2B+ claims 2024, MYR 8/transaction fee, max MYR 36/member/year subscription, 30-min GL commitment, RM104M receivables): https://codeblue.galencentre.org/2025/11/pmcare-advocates-for-doctors-tpa-more-than-middleman/

(4) AdMedika — Company overview: 9,000+ facilities, 5.1M+ members, Telkom Group, est. 2002: https://www.admedika.co.id/en/about-us

(5) TechNode Global / HealthMetrics — HealthMetrics Indonesia launch April 2025, 100+ insurers, 3,000+ corporates, 15,000+ providers, USD 1B cumulative treatments target: https://technode.global/2025/04/21/malaysias-digital-third-party-administrator-healthmetrics-launches-in-indonesia/

(6) CodeBlue — "Deny, Delay, Revoke" Malaysia specialist survey: 67% experienced GL revocations, 48+ hour delays, non-clinical staff GL denials, claims clawbacks 2–3 years post-payment: https://codeblue.galencentre.org/2025/10/deny-delay-revoke-specialists-reveal-health-insurance-underbelly-in-malaysia/

(7) Sun Life Malaysia / Generali Malaysia — Reimbursement claims processing 14–30 working days (Malaysia standard), 30-day document submission deadline: https://www.sunlifemalaysia.com/life-moments/bright-facts/medical-claims-101-step-by-step-guide/; https://www.generali.com.my/claims/health-insurance

(8) Medilink-Global — ECCS 4.0, 3,500+ providers, GL digitisation process, 6-hour legacy GL timeline: https://medilink-global.com/digitising-the-letter-of-guarantee--log--process; https://www.medilink-global.com/

(9) PMC / academic — Machine learning algorithms for BPJS Kesehatan fraud detection (XGBoost+SMOTE best performer): https://ejurnal.seminar-id.com/index.php/bits/article/view/7349

(10) OJK / Lockton — POJK 36/2025: mandates fraud detection, COB with BPJS, Medical Advisory Board, digital integration by December 2026; co-payment 5% up to IDR 300,000 outpatient / IDR 3,000,000 inpatient: https://global.lockton.com/us/en/news-insights/indonesia-to-reform-health-insurance-products-for-enhanced-risk-management; https://www.milliman.com/en/insight/indonesia-health-regulations-ealert-key-updates

(11) Prudential Malaysia — PRU@Work employer group health product: https://www.prudential.com.my/en/enterprise/pru-at-work/

(12) Next Move Strategy Consulting — Indonesia insurance TPA market USD 1.66B (2024), USD 5.32B by 2030 (20.6% CAGR): https://www.nextmsc.com/news/indonesia-insurance-tpa-market

(13) MiCare HealthTech Holdings — 15M+ members, 45+ insurers, 6,500 corporates, 5,000+ providers, Malaysia/Thailand/Philippines: https://www.micarehealthtech.com/corporate.html

(14) OJK via Validnews/Bisnis/Antara (Feb–Jun 2025) — Indonesia health insurance GWP IDR 40.19T (2024), IDR 26.26T (2023), IDR 22.09T (2022); claims ratio 71.23% (2024) vs. 97.52% (2023); 31.34M policies (2024); medical inflation 10.1%: https://validnews.id/ekonomi/premi-asuransi-kesehatan-naik-pada-ojk-beri-penjelasan; https://keuangan.kontan.co.id/news/rasio-klaim-asuransi-kesehatan-turun-pada-2024-ojk-ungkap-penyebabnya; https://www.antaranews.com/berita/4933489/ojk-catat-nilai-premi-asuransi-kesehatan-naik-4301-persen-pada-2024

(15) AAJI — Indonesia life insurer health claims IDR 24.18T (2024), +16.4%; individual IDR 15.29T; group IDR 8.89T; total insured persons 154.64M: https://aaji.or.id/NewsEvent/industri-asuransi-jiwa-2024--tumbuh-positif,-kian-kokoh-melindungi-masyarakat; https://money.kompas.com/read/2025/02/28/194813026/industri-asuransi-jiwa-bayar-klaim-kesehatan-rp-2418-triliun-selama-2024

(16) Infobanknews / Statista — Prudential Indonesia health claims IDR 5.4T (2023, +19%); GWP IDR 19.88T (2023): https://infobanknews.com/prudential-catat-total-klaim-kesehatan-capai-rp54-triliun-di-2023/; https://www.statista.com/statistics/1424330/prudential-indonesia-gross-premium-income/

(17) Bisnis.com / IFG press releases — Mandiri Inhealth GWP IDR 3.43T (2023, +15.84%); IFG Life + Mandiri Inhealth claims IDR 10.6T in 2024 to 890,000 beneficiaries; Mandiri Inhealth 35% market share group health; >1.8M participants; majority acquired by PT Asuransi Jiwa IFG June 2024: https://finansial.bisnis.com/read/20250228/215/1843556/sepanjang-tahun-lalu-ifg-life-dan-mandiri-inhealth-bayar-klaim-rp106-triliun; https://ifg-life.id/berita-korporasi/press-release/ifg-life-dan-mandiri-inhealth-bayar-klaim-rp10-6-t-sepanjang-2024

(18) Bank Negara Malaysia (via The Edge / BNM special report) — Malaysia MHIT healthcare spending MYR 6.75B (2023, vs MYR 0.96B in 2003); 7.7M covered persons; claims increased 73% cumulative 2021–2023: https://theedgemalaysia.com/node/750017 [NEEDS-ATTENDED-FETCH: 403 returned]; BNM annual report reference: https://www.bnm.gov.my/bnm-annual-report

(19) LIAM / CodeBlue — Malaysia MHIT claims ratio 111% (2023); medical inflation 12.6% (2023); cumulative claims inflation 56% (2021–2023) vs. 21% premium growth; LIAM claims data: https://www.liam.org.my/images/liam/PR-Life-Insurance-Industry-performance-2023.Final.pdf (PDF); CodeBlue: https://codeblue.galencentre.org/2024/12/majority-health-insurance-premiums-rose-up-to-20-pc-this-year-bank-negara/

(20) LIAM press release Jan 2025 — Malaysia life insurance benefits paid MYR 16.8B (2024), health insurance MYR 8.9B: https://www.liam.org.my/news/press_details.aspx?ps=11158&ct=3; Bernama: https://www.bernama.com/en/news.php?id=2289248

(21) Prudential Malaysia — Claims paid MYR 2.78B in 2024; medical MYR 1.46B (2022, +33.9%); top conditions 2024: https://www.prudential.com.my/en/insurance-101/all-stories/medical-insurance-claims-data/; https://www.prudential.com.my/en/insurance-101/all-stories/prudential-insurance-claims-payout-2023/

(22) Allianz Malaysia — FY2023 results: GWP MYR 6.55B (+8.7%); Allianz General GWP MYR 3.0B (+13.1%); market share 14.0%; Allianz Life ANP MYR 757.6M (+14.6%): https://www.allianz.com.my/personal/media-hub/allianz-malaysia-fy23-strong.html

(23) Grand View Research — Malaysia health insurance GWP USD 915.44M (2024), CAGR 9.99% to 2030: https://www.grandviewresearch.com/industry-analysis/malaysia-health-insurance-market-report

(24) Mercer Marsh Benefits / Jakarta Post — Indonesia medical inflation 13.6% (2023); employer-sponsored health insurance medical cost drivers: https://pmc.ncbi.nlm.nih.gov/articles/PMC12425502/; https://www.thejakartapost.com/business/2024/03/05/rising-medical-costs-lead-to-surge-in-health-insurance-claims.html

(25) AIA Group — USD 183M VONB Malaysia (+14%); AIA Indonesia AI agent recruitment 2023; employee benefits group product: https://www.aia.com.my/en/our-products/employee-benefits.html

(26) Manulife Malaysia — TPA medical claims (MiCare and internal): https://www.manulife.com.my/en/individual/services/tpa-medical-claims.html

(27) Asuransi Sinar Mas — 179 branches, AA+ Fitch, general insurance GWP growth 15.3% (2023): https://www.sinarmas.co.id/media/tentang-kami/files/financial-files/annual-report-asuransi-sinar-mas-2024.pdf (PDF)

(28) Allianz Indonesia — Cashless claims with AdMedika TPA partnership: https://www.allianz.co.id/content/dam/onemarketing/azli/wwwallianzcoid/layanan/klaim/klaim-asuransi-kesehatan/V1-5-FAQ-Prosedur-Cashless.pdf (PDF)

(29) Hospital TPA panels — TPAs confirmed serving Etiqa, Tokio Marine: https://www.salamshahalam.com/insurance-tpa-list/; https://www.thomsonhospitals.com/patients-and-visitors/payment-mode-panel-insurance-tpa/

(30) New Straits Times — Sumitomo acquires PMCare and MediExpress (2019): https://www.nst.com.my/business/2019/04/475826/ekuinas-sells-mediexpress-and-pmcare-stakes-sumitomo

(31) Integrated Health Plans (IHP) Malaysia — Employee health benefits TPA: https://www.ihpmy.com/

(32) CodeBlue — PMCare claims volume 2017–2024 trend data (GP 2.9M→3.2M; specialist 505K→685K; hospitalisation 67K→87K; average GP RM131, specialist RM526, hospitalisation RM9,289): https://codeblue.galencentre.org/2025/11/a-tpas-medical-trend-average-rm9300-hospitalisation-rm131-gp-visit/

---

### Assumptions to validate

[ASSUMED-1]: PMCare's annual administration revenue is approximately MYR 75–90 million based on stated subscription fee (max MYR 36/member/year) × 983,931 active members (2024 unique patients accessing care, not total enrolled members) + MYR 8/approved transaction × 4.2M transactions. Actual enrolled-member base is larger than unique patients, so administration revenue is likely higher.
- to validate: Ask PMCare CFO or Sumitomo investor relations: "What is PMCare's total annual administration fee revenue? How many total enrolled members does PMCare carry vs. unique active claimants?"

[ASSUMED-2]: Indonesia private insurer TPA fee per claim is in the range of IDR 15,000–50,000 per transaction for domestic TPAs (AdMedika, Garda Medika) for standard cashless inpatient processing — inferred from Malaysia benchmark (MYR 8 ≈ IDR 27,000 at current rate) and AdMedika's Telkom-group context implying similar pricing.
- to validate: Ask AdMedika corporate sales team: "What is your standard per-claim fee for a mid-size corporate group health plan? Do you charge PMPM or per-transaction?"

[ASSUMED-3]: The first-submission rejection rate for reimbursement claims in Indonesia and Malaysia's private health insurance market is 15–25%, based on: (a) the qualitative evidence of document completeness issues described by insurers and the UGM study on cashless rejection causes; (b) analogy with BPJS Kesehatan first-submission rejection data which has been studied academically. No published statistic for private sector first-submission rejection rates exists in either market.
- to validate: Ask claims manager at 3 private insurers (Prudential Indonesia, AIA Malaysia, Allianz Indonesia): "What percentage of reimbursement claims are rejected on first submission? What is the most common rejection reason?"

[ASSUMED-4]: The Coordination of Benefits (COB) integration between private insurers and BPJS Kesehatan does not currently function in practice for the majority of dual-coverage policyholders — employees with both JKN and employer-sponsored private coverage can claim the same episode through both systems. POJK 36/2025 mandates COB but the technical integration is not built.
- to validate: Ask OJK/BPJS Kesehatan joint working group: "What percentage of private insurers have functioning API-level COB integration with BPJS today? What is the timeline for the remaining insurers under POJK 36/2025?"

[ASSUMED-5]: CDM programme enrolment in employer-sponsored health plans in both Indonesia and Malaysia reaches fewer than 50% of clinically eligible employees (those with DM, HTN, or dyslipidaemia identified in claims) because enrolment is claims-reactive, not prospective, and the 30–90 day claims lag means CDM-eligible employees are not identified until disease is established rather than at MCU-detected risk stage.
- to validate: Ask TPA health management units at PMCare and AdMedika: "Of employees who appear in claims with DM or HTN diagnosis codes, what percentage are actively enrolled in your CDM programme? How long after first DM/HTN claim does enrolment typically occur?"

[ASSUMED-6]: The share of Indonesia's private health insurance claims processed through a TPA (vs. directly by insurer) is approximately 60–75%, based on AdMedika's 5.1M+ member coverage and the stated market scale; no published TPA vs. in-house adjudication split exists for the Indonesian private market.
- to validate: Ask OJK or AAJI: "What proportion of private health insurance claims by volume are processed through registered TPAs vs. in-house insurer adjudication teams?"
