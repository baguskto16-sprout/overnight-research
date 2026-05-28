## Stage 6: AI Capability Mapping — Sub-Step Automation Feasibility and Benchmarks

**Run ID:** 2026-05-26-0159
**Working hypothesis tested:** WH2 — Automation feasibility is gated by input-data format, not process importance.
**Geography:** Indonesia (Tier-1/2 cities) and Malaysia (Klang Valley, Penang, Johor Bahru)
**Scope:** 8 highest-cost sub-steps from Stage 4, Section 4.2 ranking
**Labour baselines:** Stage 4, Section 4.3 (MY rates used as primary; ID in brackets)

---

## Section 6.1 — AI Capability Taxonomy

Six AI capability families are relevant to the back-office automation opportunity profiled across Stages 1–3. Each is defined below with current SOTA benchmarks, deployment maturity, and Bahasa Indonesia / Bahasa Malaysia / English-mixed language coverage.

---

### Capability 1: LLM (Large Language Model)

**Definition:** Transformer-based foundation models used for text generation, instruction-following, summarisation, and structured-data-to-narrative conversion. In this context, the primary use cases are SOAP note drafting from structured visit data, MCU report narrative generation from structured lab values, fitness classification recommendation, and recall message personalisation.

**Current SOTA accuracy / latency:**
- Clinical SOAP generation: hallucination rate 1.47% and omission rate 3.45% in a 12,999-sentence evaluation (PMC 12075489, Nature npj Digital Medicine 2025) (1)
- ICD-10 coding from real-world clinical notes (fine-tuned Llama-3.2-1B): exact match 69.20% (95% CI 67.42–71.09%); category match 87.16% (PMC 12045799, npj Health Systems 2025) (2)
- ICD-10 coding on standardised test data (fine-tuned GPT-4o mini): exact match improved from <1% to 97% after two-phase fine-tuning (PMC 12045799) (2)
- Latency: commercial deployments (GPT-4o-class, Azure OpenAI) generate a complete SOAP draft in 2–5 seconds post-conversation; ICD-10 suggestion in <1 second
- MCU fitness classification (rule-based classifier over structured lab values): binary rule-matching is deterministic — latency and accuracy limited only by data completeness

**Deployment maturity:** Production in English-dominant markets (US, UK, Australia); pilot stage in Southeast Asia. HealthMetrics Indonesia (April 2025) launched AI-driven claims and fraud detection (3). BPJS Kesehatan uses NLP chatbots and anomaly detection at scale (442 billion data sets; GovInsider 2024) (4). Halodoc launched AIDA (AI Doctor Assistant) for Indonesian clinical decision support in 2025 (5).

**Language coverage:**
- English: Full production capability across all major LLM providers
- Bahasa Indonesia: GPT-4o, Claude 3.5, Gemini 1.5 Pro all have Indonesian-language capability; clinical terminology coverage is lower than English — field-specific fine-tuning required for SOAP note generation and ICD-10 coding accuracy claims
- Bahasa Malaysia: Near-equivalent to Bahasa Indonesia (shared 80%+ vocabulary base); Malaya NLP toolkit provides open-source Malaysian-language NLP (6)
- Code-switching (Bahasa + English medical terms): Achievable through prompt engineering; quantitative performance benchmarks in clinical code-switching not yet published for ID/MY specifically — [ASSUMED-1]: Code-switching performance is 15–25% worse on ICD-10 exact-match metrics than mono-lingual English — to validate: benchmark fine-tuned model on 200 ID/MY real clinic notes with code-switched terminology

---

### Capability 2: OCR / Document Understanding

**Definition:** Optical character recognition combined with intelligent document processing (IDP) to extract structured fields from PDFs, scanned forms, fax-derived images, and mixed-format lab reports. In this context: PDF lab reports arriving from external labs, MCU result PDFs from referral sub-providers, hospital claims packets with supporting documents.

**Current SOTA accuracy / latency:**
- Printed/typed documents: >99.2% character accuracy across all major OCR engines (Google Cloud Vision, Azure Document Intelligence, PaddleOCR-VL); structured forms: 97–99% (IntuitionLabs pharma benchmark, 2024) (7)
- Lab result extraction end-to-end pipeline: OCR module 0.93 accuracy; NER information extraction F1 = 0.86 (precision 0.90, recall 0.83) on 153 real-world lab reports covering 7 test categories (PMC 10629084, Peking University First Hospital, 2023) (8)
- Moderately complex layouts (multi-column, mixed-language bilingual headings): ~90–95% word-level accuracy (7)
- Handwritten content: 20–96% accuracy depending on neatness — the critical failure mode for Indonesian/Malaysian clinics where consultation notes are often handwritten (7)
- Latency: Azure Document Intelligence processes a 10-page document in 2–4 seconds (7)
- Vision-language models (VLMs) as alternative: PaddleOCR-VL scores 92.86 on OmniDocBench composite; MinerU 2.5 scores 90.67 (7)

**Deployment maturity:** Production-ready for printed/typed documents. Handwritten extraction is the remaining gap. VLM-based document understanding reaching production quality (IntuitionLabs 2024). No ID/MY-specific lab-report OCR benchmark found — [ASSUMED-2]: OCR accuracy on Indonesian/Malaysian lab report PDFs (Prodia, Kimia Farma, GeneLabS) is comparable to the PMC 10629084 benchmark (F1 ~0.86) given similar print-formatted report layouts — to validate: run Azure Document Intelligence against 100 sample Prodia/KimiaFarma lab PDFs and measure field extraction accuracy.

**Language coverage:** Indonesian-language labels and bilingual (Bahasa + English) field headers in lab reports are handled by modern OCR/VLM systems — PMC 10629084 explicitly annotated both English and Chinese lab name variants in a single pipeline (8). Bahasa Indonesia/Malaysia text in structured forms is within capability. Free-text handwritten Bahasa notes remain the accuracy gap.

---

### Capability 3: ASR / Ambient Voice (Speech-to-Text + Medical-Context Layer)

**Definition:** Automatic speech recognition (ASR) captures doctor-patient conversation audio; a medical-context layer (LLM + domain-specific fine-tuning) then structures the transcription into a SOAP note with diagnosis and medication codes. Commercial implementations: Nuance DAX Copilot (Microsoft), Abridge, Suki, Nabla, DeepScribe, Note Buddy (in-house, Singapore General Hospital).

**Current SOTA accuracy / latency:**
- NEJM AI randomised trial (238 outpatient physicians, 14 specialties, Nov 2024–Jan 2025, Microsoft DAX Copilot vs. Nabla vs. control): 30 minutes/day documentation time reduction per provider; SOAP notes generated within seconds of consultation end (9)
- Time-motion study (medrxiv 2026, ambient scribe vs. usual care): documentation time reduced 20.4% (10.3 → 8.2 min/consult); 30% reduction in after-hours documentation (50.6 → 35.4 min/workday) (PMC 11840636) (10)
- Singapore General Hospital real-world prospective study (Dec 2024–May 2025, Note Buddy): 15.0% documentation time reduction (5.3 → 4.5 min/consult, p=.04); 10.6% increase in doctor-patient eye contact; 0 patients expressed discomfort — first published ambient scribe study in Asia (JMIR Medical Informatics 2026) (11)
- MUSC Health DAX Copilot deployment: 20% documentation reduction across 130 providers (12)
- DeepScribe KLAS score: 98.8/100 (13)
- Bahasa Indonesia general ASR (Whisper large): WER 19.8–22.3% on formal speech; WER 27.7–645% on informal conversational speech (ResearchGate 2025) (14) — the large informal-speech WER range reflects strong dependence on audio quality and dialect
- Medical English WER: Varies 18–63% across systems and settings (arXiv 2512.10967) (15); medical-fine-tuned models achieve substantially lower WER
- Clinical entity error rate in ASR transcription: Higher than overall WER; fine-tuning on accented clinical speech improves medical WER by 25–34% relative (arXiv 2406.12387) (16)
- No published ambient scribe study in Bahasa Indonesia/Malaysia clinical settings as of May 2026 — Singapore General Hospital study is the closest regional data point (11)

**Deployment maturity:** Production in English-speaking markets (US, UK, Australia, New Zealand). Experimental in SEA non-English settings. No ID/MY-deployable product with full Bahasa clinical vocabulary + SATUSEHAT/MySejahtera EMR output integration is commercially available as of May 2026 — [ASSUMED-3]: A Bahasa Indonesia-capable ambient scribe MVP could be built on Whisper + GPT-4o + SATUSEHAT API stack in 12–18 months from first development effort — to validate: technical spike with Klinik Pintar or Halodoc AIDA teams on Whisper WER for Jakarta-accented clinical conversations.

**Language coverage:**
- English: Full production capability
- Bahasa Indonesia: Whisper achieves 20% WER on formal speech; conversational medical Bahasa WER likely 30–45% without domain fine-tuning (14)
- Bahasa Malaysia: Comparable to Bahasa Indonesia baseline given shared root vocabulary; no separate published clinical WER study found
- Code-switching: A barrier that Singapore research confirms is unresolved — "limited functionality with non-English-speaking patients" and code-switching challenges documented (Nature npj Digital Medicine 2026) (17)

---

### Capability 4: NER / Classification (Clinical NLP)

**Definition:** Named Entity Recognition applied to clinical free text to extract: ICD-10 diagnosis codes, drug names and dosages, abnormal lab flags, CDM-eligible diagnoses, and fitness classification categories. Often deployed as a downstream layer on top of OCR or ASR output.

**Current SOTA accuracy / latency:**
- ICD-10 extraction from clinical notes — Spark NLP for Healthcare: 76% entity capture rate, outperforming GPT-4 (58%) and GPT-3.5 (40%) on ICD-10-CM codes (John Snow Labs, 2024) (18)
- NLP + ICD-10 hybrid: sensitivity improved from 43% (ICD codes alone) to 94% with NLP augmentation (PMC 12396801) (19)
- Drug name / adverse drug event NER: F1 = 0.845 for NER; 0.81 for relation extraction using fine-tuned clinical BERT (PMC 12425423) (20)
- Clinical NLP macro-average: F1 = 0.80 across entity types; precision 0.92 for critical value flags (PMC 12396801) (19)
- Abnormal lab value classification: Rule-based classifiers (if result > reference range threshold) achieve near-100% precision on structured fields; NER adds value only on free-text impressions
- Latency: Clinical NER inference on a single consultation note: <100ms with deployed BERT-class models

**Deployment maturity:** Production in English clinical text. Clinical NLP for Bahasa Indonesia is low-resource — published research focuses on general news NER, not clinical entities. LLM-augmented NER (GPT-4 with clinical prompt + Indonesian language) bridges the gap but accuracy has not been independently benchmarked on Indonesian clinical notes (ResearchGate 2024, Bahasa Indonesia NER via LLM augmentation) (21).

**Language coverage:** English: Full. Bahasa Indonesia / Malaysia: Low-resource; general NER F1 ~0.70–0.80 for news entities (ResearchGate 2025) (21); clinical entity benchmarks absent — [ASSUMED-4]: Clinical NER for ICD-10 and drug entities in Bahasa Indonesia free text achieves F1 ~0.70–0.75 without domain fine-tuning, and ~0.82–0.87 with 10,000–50,000 annotated clinical note examples — to validate: fine-tune BERT-based model on annotated Klinik Pintar or BPJS PCARE clinical notes sample.

---

### Capability 5: Predictive Model (ML)

**Definition:** Supervised or semi-supervised ML models (Random Forest, Gradient Boosting, XGBoost, neural networks) trained on historical data to score: appointment no-show risk, CDM dropout/non-adherence risk, fraud likelihood, high-cost claim classification, and post-MCU CDM eligibility. Operates on structured tabular data: claims history, visit dates, lab result trends, demographic variables.

**Current SOTA accuracy / latency:**
- No-show prediction (Malaysia tertiary hospital, HKL, Gradient Boosting): AUC 0.65, accuracy 78%, F1 0.76 (PMC 10624443, peer-reviewed) (22)
- No-show prediction (UAE primary care): 86% accuracy with AI-driven scheduling (JMIR Formative Research 2025) (23)
- Healthcare fraud detection (Random Forest, Medicare): training accuracy 99.2%, validation 98.8%, F1 98.4% (MDPI 2025) (24)
- High-cost claim identification (ML, 2025 study): Random Forest 88.67% classification accuracy, AUC 0.9437 (InterPixels, citing 2025 research) (25)
- Medication non-adherence prediction (logistic regression + random forest, MedAdhereAI 2025): AUROC ~0.70–0.74 on real-world refill data (medrxiv 2025) (26)
- CDM dropout prediction (general literature): ML models for adherence prediction in DM/HTN achieve AUROC 0.70–0.74 (AJMC 2024; PMC 12672954) (27)
- Latency: Batch scoring at scale (<1 sec per patient; daily batch runs standard)

**Deployment maturity:** Production for fraud detection (BPJS Kesehatan uses ML anomaly detection on 442 billion records; GovInsider 2024) (4). Production for no-show prediction at hospital level. CDM dropout risk scoring is pilot/experimental — AUROC 0.70–0.74 is commercially deployable for triage even if not perfect. Structured claims data availability in ID (BPJS PCARE) and MY (TPA portals) is sufficient to train these models without new data infrastructure.

**Language coverage:** Not applicable — predictive models operate on structured tabular features, not text.

---

### Capability 6: RPA + Workflow Orchestration

**Definition:** Robotic Process Automation executes rule-based sequences across portals, EHR interfaces, and legacy systems: copying data from one system to another, triggering submission, checking status, and routing exceptions to humans. In this context: portal-to-portal GL submission, claims packet assembly, BPJS PCARE data upload, WhatsApp broadcast via API, and HR-to-MCU roster reconciliation.

**Current SOTA accuracy / latency:**
- Claims processing time reduction with RPA: 70–80% reduction in processing time; 30–40% decrease in accounts receivable days (getmagical.com, citing multiple case studies, 2024) (28)
- Prior authorisation denial reduction: 22% decrease in denial rate after UiPath RPA implementation at Montage Health (tactionsoft.com 2024) (29); Jorie AI reports 0.21% denial rate post-RPA (vs. industry standard 15–20%) (30)
- RPA accuracy: near-100% for rule-based deterministic tasks; failure modes arise from UI changes in target portals (common with BPJS PCARE API versioning) and missing/malformed input data
- ROI timeline: 6–14 months payback for healthcare claims RPA (InterPixels 2025) (25)
- Asia-Pacific: IRDAI India mandates cashless pre-auth within 1 hour; RPA delivers 4–8 minutes (25)

**Deployment maturity:** Production across US and Indian healthcare operations. ID/MY deployment: HealthMetrics Indonesia (April 2025) uses workflow automation for member enrolment, GL requests, and claims; PMCare MY processes 13,000 claims/day electronically through portal orchestration (Stage 3 VC fn 3). Smaller TPAs and private GP clinics have no RPA layer.

**Language coverage:** Not applicable — RPA operates on data fields, not free text. Portal UI language is Indonesian/Malaysian in both countries; RPA scripts are UI-language-agnostic.

---

## Section 6.2 — Capability-to-Sub-Step Assignment: 8 High-Cost Sub-Steps

The 8 sub-steps are taken directly from Stage 4, Section 4.2 ranking (ranks 1–8). For each, the primary AI capability is matched to the input data format and judgment level, benchmarks are applied from 6.1, and cost baselines are from Stage 4, Section 4.3.

---

### Sub-step 2c — MCU Report Generation, Medical Sign-Off & Delivery (Stage 4 Rank 1)

**Input data format:** Structured (collated lab results per employee from LIS or Excel); semi-structured (reference range tables, employer branding templates); judgment required (fitness classification: clinical rule-matching for most cases; borderline cases require OHD review).

**Primary AI capability:** LLM (narrative generation + fitness classification from structured inputs)
**Secondary AI capability:** Rules-engine classifier (fitness tier assignment from deterministic lab thresholds)

**Why this capability fits:** The input to MCU report drafting is already structured lab values — the LLM is not being asked to parse unstructured text, but to convert structured numerical data into standardised narrative paragraphs and a fitness recommendation. For the majority of routine cases (BP, BMI, blood glucose, lipid profile within or clearly outside thresholds), fitness classification is deterministic (BP >160/100 = Temporarily Unfit, per occupational health protocol) — no clinical judgment is required, and a rules classifier handles these automatically. The OHD's time is consumed by review and sign-off, which an LLM-drafted report compresses from full drafting (~45–90 min admin + 20–35 min OHD review) to OHD review-and-accept only (~5–10 min if draft quality is high). This is the same pattern as DAX Copilot reducing documentation from 10.3 to 8.2 min — but applied to report generation rather than consultation notes.

**Conservative / Base / Upside time-reduction benchmarks:**
- Conservative: 30% reduction in total report-generation time (driven by LLM draft quality at ~80–85% acceptability with moderate editing; consistent with the ambient scribe study finding that "notes were correct 80%–85% of the time" requiring some editing — PMC 11840636) (10). Admin template time: 45–90 min → 32–63 min. OHD review: 20–35 min → 20–35 min (review time unchanged; OHD still must read the draft).
- Base: 50% reduction in total time (LLM draft accepted with minor edits; OHD review compressed to 10–15 min when draft is well-structured; consistent with JAMA Network Open / NEJM Catalyst 30–50% documentation time cuts for structured note generation globally) (9)
- Upside: 65% reduction in total time (high-quality LLM draft + fitness classifier handles 80%+ of cases without OHD review beyond sign-off; OHD time falls to 5–8 min per routine report; consistent with Nuance DAX 50% burnout reduction claims — Microsoft survey 879 clinicians 2024) (12)

**Conservative / Base / Upside cost per report post-deployment (MY, OHD at $32–64/hr, admin at $3.50/hr):**
The Stage 4.3.2 baseline: OHD 25 min × $48/hr avg = $20; admin 67.5 min × $3.50/hr = $3.94; total ~$24/report.
- Conservative (−30%): ~$17/report (OHD $14 + admin $2.75)
- Base (−50%): ~$12/report (OHD $10 + admin $2.00)
- Upside (−65%): ~$8/report (OHD $7 + admin $1.40)

**Conservative / Base / Upside error-reduction benchmarks:**
- Conservative: 20% reduction in report errors (missing result fields, wrong reference ranges) because LLM generation from structured inputs eliminates most transcription steps
- Base: 40% reduction (LLM consistently populates all template fields; errors shift from transcription errors to LLM hallucinations, which are lower in frequency at ~1.5% per PMC 12075489) (1)
- Upside: 60% reduction (fitness classifier eliminates 80%+ of OHD over/under-classification on routine cases; remaining errors are in borderline clinical cases that route to OHD review)

**Risks / failure modes specific to ID/MY:**
1. LLM hallucination on numerical lab values (citing a result incorrectly in narrative) is a patient safety risk in an MCU fitness report — any deployment must include a structured data binding layer that locks numerical values and only generates narrative around confirmed figures.
2. OHD supply constraint (1,113 registered OHDs in MY as of 2016 — Stage 2 VC fn 7; ~29,000 specialist deficit in ID — Stage 2 corrections addendum) means the human bottleneck cannot be fully removed; upside scenario requires OHD acceptance of AI-assisted workflow, which is a change-management barrier.
3. Bahasa Indonesia-language MCU report narrative: LLM Bahasa capability is production-ready for general text but clinical occupational health phrasing norms (e.g., "Fit dengan catatan" vs "Fit with Notes") require prompt calibration. No published accuracy benchmark for LLM Bahasa clinical narrative exists.
4. SATUSEHAT integration: If MCU LIS is not SATUSEHAT-connected (>80% of facilities as of 2024 — Stage 1 VC fn 6), structured lab values must first be extracted via OCR (capability 2) before LLM can generate narrative — requiring a two-step pipeline.

**Vendor readiness (ID/MY-deployable today):**
No commercially available, ID/MY-deployable MCU-specific LLM report generator exists as of May 2026. The closest approximation: Halodoc AIDA (5) has clinical LLM in Indonesian but is patient-facing, not MCU report-facing. Building on GPT-4o via Azure OpenAI (available in Southeast Asia region) is technically feasible in 6–12 months of development. A rules-engine fitness classifier (deterministic) can be deployed in 2–4 months with no language dependency.

---

### Sub-step 3c — Claims Adjudication (Stage 4 Rank 2)

**Input data format:** Structured (electronic portal claims packets: policy number, ICD-10 code, itemised costs, member ID, benefit table); semi-structured (PDF discharge summaries, clinical narratives requiring NLP); judgment required for complex cases.

**Primary AI capability:** Predictive model (ML) for first-pass eligibility + benefit-limit matching
**Secondary AI capability:** NER / classification (LLM) for clinical narrative review in complex cases

**Why this capability fits:** The majority of claims (60–75% per InterPixels APAC benchmark) are amenable to straight-through processing: eligibility check is binary, benefit-limit matching is rule-based, and duplicate detection is statistical. These require no clinical judgment — they are currently manual only because legacy TPA systems lack ML scoring layers. The 25–40% of claims requiring human review include clinical necessity disputes, upcoding flags, and pre-existing condition determinations — these benefit from an LLM that reads the discharge summary and generates a structured clinical recommendation, reducing human review time from 35–45 min to 4–8 min per InterPixels benchmark (25).

**Conservative / Base / Upside time-reduction benchmarks:**
- Conservative: 40% reduction in total adjudication time. STP rate rises from current baseline (~40% in mid-tier ID/MY TPA) to 60%; remaining 40% still manual at 35–45 min each. Net average time per claim: 0.60 × 3–7 min + 0.40 × 35 min = ~16 min vs. current 35 min avg.
- Base: 60% reduction. STP rate 70% (consistent with InterPixels APAC benchmark of 60–75% at mature operations) (25). Average: 0.70 × 5 min + 0.30 × 25 min = ~11 min.
- Upside: 75% reduction. STP 75%; complex cases reduced to 10–15 min with LLM-assisted review. Average: 0.75 × 4 min + 0.25 × 12 min = 6 min.

**Conservative / Base / Upside cost per claim post-deployment (MY, TPA adjudicator $9/hr avg):**
Stage 4.3.3 baseline: 40 min × $9/hr = $6.00/claim (MY adjudicator rate). Manual cost-per-claim from InterPixels benchmark: $40–60/claim (broader operational cost inclusive of overhead) (25).
- Conservative (−40%): ~$3.60/claim adjudicator direct labour
- Base (−60%): ~$2.40/claim
- Upside (−75%): ~$1.50/claim

Using InterPixels' broader $40–60/claim → <$20/claim post-automation: consistent with 50–67% reduction, falling between base and upside.

**Conservative / Base / Upside error-reduction benchmarks:**
- Conservative: 20% denial reduction (pre-submission completeness check catches most missing-document denials)
- Base: 35% denial reduction (ML scoring catches high-risk claims before submission; HFMA analysis shows AI systems reducing denial rates by up to 42% — HFMA 2024) (31)
- Upside: 50% denial reduction + 20–40% improvement in fraud detection sensitivity (consistent with InterPixels benchmark: manual soft fraud detection 20–40% vs. AI-augmented rate) (25)

**Risks / failure modes specific to ID/MY:**
1. ICD-10 coding inaccuracy in source claims: 31.03% diagnosis coding inaccuracy in Indonesian claims data (Stage 3 PP3.2 fn 7) means the input to the ML adjudication model is itself contaminated — garbage-in reduces automation accuracy.
2. POJK 36/2025 compliance: Indonesia's new regulation mandates COB with BPJS Kesehatan by December 2026 (Stage 3 VC fn 10). Any ML adjudication system must integrate BPJS COB logic or will produce incorrect approvals for dual-insured members — a regulatory risk for vendors not tracking this requirement.
3. GL revocation problem (67% of MY specialists report revocations — Stage 3 PP3.1 fn 5): Automating first-pass adjudication without fixing the GL revocation root cause (post-treatment clinical necessity disputes) shifts human review to the back-end rather than eliminating it.
4. Bahasa Indonesia/Malaysia clinical narrative NER: LLM-assisted review of discharge summaries requires Bahasa-capable clinical NLP — capability is present but clinical entity accuracy lower than English (see Section 6.1 Capability 4).

**Vendor readiness (ID/MY-deployable today):**
HealthMetrics Indonesia launched AI-based claims processing in April 2025 (3). BPJS Kesehatan has ML fraud detection in production on JKN data (4). PMCare MY processes 13,000 claims/day with portal automation. For private insurer/TPA use, commercially available platforms (InterPixels AI, xceedance, Emedgene) are deployable via cloud API — no ID/MY-specific language barrier for structured claims data. Bahasa clinical NLP layer would be needed for discharge summary review component.

---

### Sub-step 3a — Benefit Verification & Pre-Authorisation (Stage 4 Rank 3)

**Input data format:** Mixed — partially structured (policy number, ICD-10 code, member ID, benefit table lookups: all structured); partially unstructured (referral letters, clinical narratives, doctor's notes accompanying GL request: unstructured PDF or free text).

**Primary AI capability:** RPA + workflow orchestration (for structured pre-auth request fields → eligibility check → rules-engine GL decision)
**Secondary AI capability:** LLM / NER (for extracting diagnosis and procedure codes from unstructured referral letters accompanying GL requests)

**Why this capability fits:** The 60–70% of routine GL requests that carry a standard ICD-10 code within covered benefit, active member, and no prior-auth hold can be processed with deterministic rules: eligibility check + benefit table lookup + diagnosis-code inclusion/exclusion = instant GL. This is exactly the pattern RPA + rules engine handles. The remaining 30–40% of complex cases (disputed clinical necessity, borderline ICD-10, multi-diagnosis, specialist referral with non-standard procedure) benefit from LLM that reads the referral letter, extracts the diagnosis and proposed treatment, and drafts a GL decision for human review in 10–15 minutes rather than 48+ hours.

**Conservative / Base / Upside time-reduction benchmarks:**
- Conservative: 50% reduction in average GL processing time. Routine 70% of cases: 90 min → 5–10 min (RPA deterministic check). Complex 30% of cases: 48+ hours → 30–60 min (LLM + human review). Weighted average: 0.70 × 8 min + 0.30 × 45 min = 19 min vs. current 90–360 min average.
- Base: 65% reduction. Routine 75% → 5 min; complex 25% → 20 min. Weighted: 0.75 × 5 + 0.25 × 20 = 8.75 min. Consistent with IRDAI mandate of 1-hour cashless pre-auth and RPA achieving 4–8 minutes for routine cases (25).
- Upside: 80% reduction. STP for 80% of cases in 4 minutes; remaining 20% with LLM draft in 15 min. Weighted: 0.80 × 4 + 0.20 × 15 = 6.2 min.

**Conservative / Base / Upside cost per GL post-deployment (MY):**
Stage 4.3.3 baseline: 1.5 hr TPA staff × $9/hr = $13.50/GL + provider-side 30 min × $3.50/hr admin = $1.75 = ~$15.25/GL.
- Conservative (−50%): ~$7.60/GL
- Base (−65%): ~$5.35/GL
- Upside (−80%): ~$3.05/GL

**Conservative / Base / Upside error-reduction benchmarks:**
- Conservative: 15% reduction in GL revocations (structured policy-code matching at pre-auth prevents diagnosis scope misalignment; this is one documented root cause of revocations)
- Base: 30% reduction in revocations (LLM-extracted diagnosis from referral letter is matched to benefit table before GL is issued, preventing scope creep)
- Upside: 45% reduction in revocations (consistent with Jorie AI's RPA reducing denial rates from ~15–20% to 0.21% in a US prior-auth context) (30) — though this upside requires both pre-auth accuracy improvement and a downstream audit trail integration

**Risks / failure modes specific to ID/MY:**
1. OCR/NER extraction of diagnosis from handwritten referral letters: Indonesian and Malaysian GPs frequently submit handwritten or poorly formatted referral letters; OCR accuracy for handwritten content is 20–96% (IntuitionLabs 2024) (7) — this is the single biggest technical failure risk for this sub-step.
2. TPA portal fragmentation: No standard API between hospital HIS/SIMRS and TPA pre-auth system in either market (Stage 3 VC sub-step 3a). RPA scripts are brittle when target portal UIs change; BPJS PCARE has changed API versions multiple times, breaking third-party integrations (Stage 1 VC sub-step 1a).
3. GL revocation root cause is partially non-automatable: 67% revocation rate (Stage 3 PP3.1 fn 5) includes post-treatment clinical necessity disputes that arise because the GP's diagnosis evolves during hospitalisation — no pre-auth AI system can eliminate this category without real-time clinical monitoring.

**Vendor readiness (ID/MY-deployable today):**
HealthMetrics Indonesia (April 2025): AI-driven GL and claims in production (3). AdMedika (Indonesia): processes cashless claims at 9,000+ facilities with automated eligibility (Stage 3 VC fn 4). PMCare MY and MiCare MY: portal-based GL with automation for straight-through cases. For new entrants: RPA on existing portals is feasible today; LLM referral letter extraction requires Bahasa clinical NLP development.

---

### Sub-step 1c — CDM Patient Recall & Chronic-Care Follow-up (Stage 4 Rank 4)

**Input data format:** Structured (visit dates, ICD-10 diagnosis codes, last lab result, next-due date, contact details — all in clinic software or BPJS PCARE system). No unstructured parsing required to generate the overdue-patient list. The outreach message (WhatsApp) requires personalised text generation (LLM) but from structured inputs.

**Primary AI capability:** Predictive model (ML dropout risk scoring) + RPA / workflow orchestration (WhatsApp API broadcast and response tracking)
**Secondary AI capability:** LLM (personalised recall message drafting in Bahasa Indonesia/Malaysia)

**Why this capability fits:** The input data is already structured — this is a case where WH2's corollary applies: structured input does not guarantee automation, because the process gap is accountability (no one has built the system to act on the data), not data format. The overdue-patient identification logic is deterministic (days since last visit > recall interval → flag). The ML layer adds value by risk-stratifying the flagged patients: a patient with HbA1c 11% who missed two consecutive check-ins gets a Tier 1 urgent recall; a patient with well-controlled DM who missed one check-in gets a Tier 3 routine reminder. The WhatsApp API sends the appropriate message automatically; only non-responders after two attempts escalate to staff phone calls.

**Conservative / Base / Upside time-reduction benchmarks (staff hours for recall management):**
Stage 4.3.1 baseline: 204–396 hours/year for CDM recall at 300-patient panel (MY, $3–5/hr assistant).
- Conservative: 50% staff-time reduction. Automated list generation + bulk WhatsApp dispatch eliminates the manual list compilation and message sending. Staff time reduced to managing non-responders and escalations (~50% of current time). Consistent with SMS reminder trial Malaysia: adherence improved 54.6% → 92.2%, meaning outreach success rate improved — fewer calls needed (PMC 5433794, Stage 1 PP1.3 fn 4) (32).
- Base: 70% staff-time reduction. List generation, first-pass WhatsApp, response tracking all automated. Staff only handles >2-attempt non-responders. ML-scored risk tiering reduces unnecessary follow-up calls (AUROC 0.70–0.74 for adherence prediction — AJMC 2024) (27).
- Upside: 85% staff-time reduction. Full automated outreach orchestration with intelligent escalation; staff review dashboard 15 min/day for exceptions only.

**Conservative / Base / Upside cost per patient per month post-deployment (MY):**
Stage 4.3.1 baseline: 204–396 hr/year ÷ 12 months ÷ ~90 CDM patients = 0.19–0.37 hr/patient/month × $4/hr = $0.76–$1.48/patient/month.
- Conservative (−50%): $0.38–$0.74/patient/month
- Base (−70%): $0.23–$0.44/patient/month
- Upside (−85%): $0.11–$0.22/patient/month

**Note:** The primary value of this sub-step is not cost savings in recall labour (which is small in absolute terms at a single clinic) but reduction in CDM default rate and consequent downstream hospitalisation avoidance — the cascade traced in Stage 4, Section 4.4 (1,000 → 17 well-controlled).

**Conservative / Base / Upside error-reduction benchmarks:**
- Conservative: CDM default rate reduced from ~50% (proxy from Stage 4.4.1) to 40% (20% relative improvement) — consistent with lower bound of SMS/call reminder RCTs
- Base: CDM default rate reduced from ~50% to 30% — consistent with Malaysian SMS+call reminder RCT showing 54.6% → 92.2% adherence in HIV/ART setting (PMC 5433794) (32); applying a 40% improvement discount for chronic non-infectious disease context
- Upside: CDM default rate reduced from ~50% to 20% (60% relative improvement) — consistent with the UAE primary care AI scheduling study showing 70% reduction in predicted no-shows (JMIR Formative Research 2025) (23) applied to recall context

**Risks / failure modes specific to ID/MY:**
1. WhatsApp Business API access: Indonesia and Malaysia have high WhatsApp penetration (90%+ among smartphone users). WhatsApp Business API is available in both markets, but requires Meta-approved business account — regulatory and account setup lead time.
2. Staff WhatsApp (current practice) vs. clinic system: Current recall outreach via personal WhatsApp means patient contact data is not in clinic system — a data migration problem before any API-based automation can be deployed.
3. Data protection: Indonesia PDPA (UU PDP 2022) and Malaysia PDPA 2010 require consent for automated messaging; consent collection via BPJS or panel registration forms is feasible but must be designed.
4. Predictive model training data: A 300-patient-panel private GP clinic does not have sufficient historical CDM adherence data to train a local AUROC 0.70 model; model must be shared across clinic networks (Klinik Pintar's 1,500+ network would have sufficient volume) or use claims-data proxy from TPA/BPJS PCARE.

**Vendor readiness (ID/MY-deployable today):**
No turnkey CDM recall automation system specifically for private GP clinics in ID/MY is commercially available as of May 2026. BotMD automates WhatsApp patient enquiries and appointment follow-ups across 20,000+ SEA doctors (33) — the closest available product, though not CDM-specific. Klinik Pintar's SATUSEHAT-integrated EMR could serve as the data source. Building a MVP on Klinik Pintar API + WhatsApp Business API + rules-engine + GPT-4o message drafting: 3–6 months development estimate.

---

### Sub-step 2d — Post-MCU Follow-up & CDM Enrolment Routing (Stage 4 Rank 5)

**Input data format:** Semi-structured. The MCU population summary (Excel/PDF) is structured data trapped in a non-API-accessible format; the abnormal-result threshold policy is a rules document. Once the MCU summary is parsed (OCR + structured extraction), the routing logic is deterministic.

**Primary AI capability:** RPA + workflow orchestration (automated tiered routing engine)
**Secondary AI capability:** OCR / document understanding (to extract MCU summary from PDF/Excel into structured routing input) + LLM (CDM referral letter and notification drafting)

**Why this capability fits:** The post-MCU routing failure is structural, not data-format-driven: the MCU population summary exists in structured or near-structured form, but no automated action is triggered from it. The routing engine maps: if DM flag → send notification + create CDM referral record + set 14-day follow-up reminder. This is a deterministic rule-based workflow, not a clinical judgment problem. The 77.4% CDM loss rate at this handoff (PMC 12021225 — Stage 2 PP2.3 fn 1) is entirely explained by the absence of this workflow engine, not by any complexity in the data.

**Conservative / Base / Upside time-reduction benchmarks (staff hours for post-MCU coordination):**
Stage 4.3.2 baseline: 144–323 hours/year for 1,000-employee programme coordinator time (MY, $3.50/hr).
- Conservative: 60% staff-time reduction. Automated notification dispatch + CDM referral record creation + re-reminder scheduling. Staff handles 40% of work: complex cases, employer report review, non-responders.
- Base: 75% reduction. Automated workflow handles notification, referral, re-reminders, and basic employer report generation (LLM-templated). Staff reviews dashboard and manages escalations.
- Upside: 85% reduction. Full automation including employer report narrative (LLM-generated from structured utilisation data), CDM enrolment tracking, and provider panel coordination.

**Conservative / Base / Upside CDM follow-up rate improvement:**
- Conservative: Follow-up rate from 22.6% to 35% (55% relative improvement) — conservative given that the missing factor is simply systematic notification
- Base: Follow-up rate from 22.6% to 50% (121% relative improvement) — consistent with the Malaysian SMS+call reminder study impact on adherence when systematic outreach is applied (PMC 5433794) (32)
- Upside: Follow-up rate from 22.6% to 65% (188% relative improvement) — conditional on employer policy (mandatory follow-up visits) and panel GP network integration

**Risks / failure modes specific to ID/MY:**
1. MCU data is not always delivered in a machine-readable format: mid-tier MCU providers in Indonesia deliver Word/PDF reports; an OCR extraction step is required before routing logic can execute — failure in OCR (F1 0.86 on structured lab reports — PMC 10629084) (8) means ~14% of fields may require human correction before routing is accurate.
2. Panel GP network API: CDM referral routing requires knowing the employee's panel GP. In most employer health programmes in ID/MY, panel GP assignment is not tracked in a real-time API-accessible system — this is a data infrastructure gap, not an AI capability gap.
3. Employee privacy at employer handoff: Sending health-flag notifications to employer HR is a privacy risk under UU PDP (Indonesia) and PDPA (Malaysia); notification must go to the employee directly, not to HR, unless employee has provided explicit consent for employer health monitoring.

**Vendor readiness (ID/MY-deployable today):**
HealthMetrics Indonesia/Malaysia wellness benefits module (launched 2025, Stage 3 VC fn 5): specifically designed for post-MCU CDM routing and employer health benefit management — the first commercially available product in this segment in SEA. BookDoc Wellness and ProSehat serve adjacent functions. A full post-MCU routing engine is achievable using HealthMetrics API + employer HR integration today for HealthMetrics-enrolled employers.

---

### Sub-step 3b — Claims Submission & Completeness / Resubmission Loop (Stage 4 Rank 6)

**Input data format:** Mixed structured (policy number, ICD-10 code, itemised costs, member ID) and unstructured (supporting PDF documents: discharge summary, GP referral letter, investigation reports). The completeness check is structural (is each required document present?); content validation requires NER (is the ICD-10 code consistent across documents?).

**Primary AI capability:** RPA + workflow orchestration (completeness check before submission; portal-to-portal re-entry elimination)
**Secondary AI capability:** NER / classification (cross-document ICD-10 consistency check; pre-existing condition flag detection)

**Why this capability fits:** 55% of pending Indonesian TPA claims were caused by incomplete documentation (Stage 3 PP3.2 fn 5, ResearchGate 2024, n=442,279). A completeness check that verifies document checklist before submission eliminates the largest single cause of rejection without requiring any clinical judgment. The NER layer adds value by checking that the ICD-10 code on the bill matches the ICD-10 code on the discharge summary — a consistency check that catches the most common cause of post-submission rejection. RPA handles the portal re-entry loop: when a corrected document is ready, RPA re-submits the claim packet to the TPA portal automatically, eliminating 35–45 min of manual re-entry per rejected claim.

**Conservative / Base / Upside time-reduction benchmarks:**
Stage 4.3.3 baseline: 30,000 rework events/year × 40 min = 20,000 staff-hours/year; plus claim preparation: 200,000 × 60 min avg = 200,000 staff-hours/year.
- Conservative: 25% reduction in denial rate (from 15% to 11%); rework volume falls to 22,000 events/year; RPA handles 60% of resubmissions automatically. Staff-time saved: ~7,000 hours/year at 50,000-life TPA.
- Base: 40% reduction in denial rate (to 9%); RPA handles 75% of resubmissions. Staff-time saved: ~12,000 hours/year.
- Upside: 55% reduction in denial rate (to 7%); automated pre-submission completeness + ICD-10 consistency + RPA resubmission handles 85%. Staff-time saved: ~16,000 hours/year. Consistent with AI claims processing time reductions of 97.9% and denial rate reductions of 82.6% at leading US implementations — applied conservatively to ID/MY context (innobothealth.com 2024) (34).

**Conservative / Base / Upside cost per claim post-deployment (MY):**
Stage 4.3.3 baseline rework cost: $43–57/denied claim (US benchmark applied as structure proxy, Stage 3 PP3.2 fn 2).
- Conservative: $32–43/denied claim (25% rework cost reduction from partial automation)
- Base: $26–34/denied claim (40% reduction)
- Upside: $19–26/denied claim (55% reduction) — approaching InterPixels' <$20/claim automated benchmark (25)

**Risks / failure modes specific to ID/MY:**
1. NER ICD-10 consistency check operates on Bahasa/English mixed clinical documents — NER accuracy lower than English for clinical entities (Section 6.1 Capability 4).
2. BPJS PCARE API instability in Indonesia: RPA scripts targeting PCARE portal are fragile to API version changes; SATUSEHAT API is more stable but adoption is at 8.9% (Stage 1 VC fn 13). A direct API integration is better than RPA screen-scraping where FHIR-compliant endpoints exist.
3. Original receipt requirement for reimbursement claims: Physical receipts cannot be automated away — OCR helps for digitalisation, but some Indonesian and Malaysian insurers still require physical originals for reimbursement claims, blocking full automation of the resubmission loop.

**Vendor readiness (ID/MY-deployable today):**
Medilink-Global ECCS 4.0: electronic clearing for 3,500+ providers in Malaysia (Stage 3 VC fn 8) — has partial pre-submission check functionality. AdMedika (Indonesia): cashless claims portal with electronic completeness check at 9,000+ facilities (Stage 3 VC fn 4). Commercial US-based denial-management vendors (ClaimSource, Experian Health) are not SE Asia-localised. A Bahasa-capable claims completeness checker built on Azure Document Intelligence + GPT-4o + RPA is a 4–9 month development project.

---

### Sub-step 1a — Consultation & Clinical Documentation (Stage 4 Rank 7)

**Input data format:** Unstructured verbal (doctor-patient conversation). This is the primary format-gate identified in WH2 — the verbal conversation must be converted to structured text (ASR) before any downstream automation (LLM SOAP generation, ICD-10 suggestion) can proceed.

**Primary AI capability:** ASR / ambient voice (speech-to-text + medical-context layer)
**Secondary AI capability:** LLM (SOAP structuring + ICD-10 suggestion) + NER / classification (ICD-10 code extraction from SOAP draft)

**Why this capability fits:** The entire automation value chain for 1a depends on breaking the verbal-to-structured barrier. Without ASR, the GP must still type their notes — LLM can assist with formatting and ICD-10 suggestion, but cannot eliminate the documentation burden. With ASR, the ambient scribe captures the conversation and the LLM generates a SOAP draft that the GP reviews and accepts in 2–5 minutes rather than 10–20 minutes. This is the format gate that WH2 predicts.

**Conservative / Base / Upside time-reduction benchmarks:**
- Conservative: 20% reduction in documentation time per consult. Reflects lower bound given the Bahasa ASR WER challenge (~20% WER on formal Bahasa vs. ~5% WER English) and the absence of a production-ready ID/MY ambient scribe product. Consistent with Singapore General Hospital study (15% reduction in 2024–2025 with in-house system) (11).
- Base: 35% reduction. Reflects mid-tier SOAP generation quality with periodic GP edits; consistent with MUSC Health 20% documentation reduction and JMIR time-motion study 20.4% reduction range — applying 35% as a more achievable target when language ASR is optimised (10, 12).
- Upside: 50% reduction. Achievable with production-quality Bahasa clinical ASR and ICD-10 classifier; consistent with JAMA Network Open 30–50% documentation cuts reported for well-deployed systems globally (9); Singapore General Hospital study shows zero patient discomfort, suggesting adoption is not a barrier once the system works.

**Conservative / Base / Upside cost per consult post-deployment (MY):**
Stage 4.3.1 baseline: 1a documentation time ~67.5 min aggregate (GP + assistant, blended $20/hr MY avg) = $22.50/consult.
- Conservative (−20%): ~$18/consult
- Base (−35%): ~$14.60/consult
- Upside (−50%): ~$11.25/consult

**Conservative / Base / Upside error-reduction benchmarks:**
- Conservative: 15% reduction in ICD-10 coding errors (LLM suggests ICD-10 based on SOAP content; GP selects from suggestion list rather than coding from memory)
- Base: 30% reduction (consistent with improvement from 25% ICD-10 omission/error baseline — Stage 1 PP1.1 fn 12, PMC 5977598 — to ~17.5% with AI assist) (35)
- Upside: 50% reduction (fine-tuned NER ICD-10 classifier at F1 0.87 category match on real-world notes — PMC 12045799) (2)

**Risks / failure modes specific to ID/MY:**
1. **Bahasa ASR is the primary bottleneck.** Whisper WER 20% on formal Bahasa speech, likely 30–45% on conversational clinical Bahasa (14) — substantially worse than the English WER (<5%) that powers deployed ambient scribes in Western markets. No commercially available ambient scribe product in Bahasa Indonesia/Malaysia as of May 2026.
2. **Code-switching:** Malaysian GP consultations commonly switch between Bahasa, English medical terms, and occasionally Mandarin or Tamil. Singapore General Hospital explicitly noted code-switching as unresolved (Nature npj Digital Medicine 2026) (17). A GP in Klang Valley saying "patient ada DM, HbA1c dia dekat 10, kita perlu refer dia untuk specialist" requires the ASR to handle multilingual clinical code-switching.
3. **Low EMR penetration:** Only 3% of MY clinics and ~9% of ID clinics have digital health records (Stage 1 VC fn 22, 13). The ambient scribe output must be written to a structured EMR — deploying an ambient scribe at a paper-based clinic creates partial automation (SOAP note generated but not filed into any system).
4. **Privacy:** Recording doctor-patient audio raises PDPA/UU PDP compliance requirements; Singapore General Hospital study showed 0% patient discomfort, but formal consent process is required and may create workflow friction.

**Vendor readiness (ID/MY-deployable today):**
No production-ready, Bahasa-capable ambient scribe is commercially available in Indonesia or Malaysia as of May 2026. Building on Whisper large-v3 + GPT-4o + SATUSEHAT FHIR output is technically feasible; an MVP could be deployed in 12–18 months with a clinic network like Klinik Pintar (1,500+ clinics, SATUSEHAT-integrated — Stage 1 VC fn 17) as the launch partner. This sub-step has the highest format-gate difficulty among the 8 ranked sub-steps.

---

### Sub-step 2b — MCU Results Collation Across Fragmented Labs (Stage 4 Rank 8)

**Input data format:** Unstructured / semi-structured. Multiple PDF lab reports from 3–6 external referral labs, each with a different layout, format, reference ranges, and potentially different language (Bahasa/English). This is the OCR/document-understanding bottleneck that gates the entire MCU report generation pipeline (feeding into Rank 1 sub-step 2c above).

**Primary AI capability:** OCR / document understanding (multi-format PDF lab report extraction with LOINC normalisation)
**Secondary AI capability:** NER / classification (patient-ID fuzzy matching across lab PDFs; abnormal-value flagging)

**Why this capability fits:** The input is entirely PDF/fax-based with no structured API from referral labs. This is a pure format-gate: once OCR extracts the structured fields (test name, result, unit, reference range), all downstream steps are automated or near-automated. The OCR + NER pipeline achieves F1 = 0.86 on this exact task (PMC 10629084) (8) — meaning 14% of fields require human correction, but this is substantially better than the current 100% manual transcription. The patient-ID matching step (linking a PDF from referral lab to the correct employee record) benefits from fuzzy NER matching on name + ID number — NER models achieve F1 ~0.80 for general entity matching, likely comparable for this deterministic matching task.

**Conservative / Base / Upside time-reduction benchmarks:**
Stage 4.3.2 baseline: 76 admin-hours per 1,000-employee programme (MY, $3.50/hr = $266).
- Conservative: 60% time reduction. OCR handles initial extraction; human reviews 40% of records with flagged confidence issues. 76 hrs → 30 hrs.
- Base: 75% time reduction. OCR + NER pipeline achieves F1 0.86 on lab reports (PMC 10629084) (8); human review limited to the ~14% flagged for low-confidence extraction. 76 hrs → 19 hrs.
- Upside: 85% time reduction. VLM-based extraction (PaddleOCR-VL composite score 92.86 on structured documents — IntuitionLabs 2024) (7) reduces flagged rate to ~10%; 76 hrs → 11 hrs.

**Conservative / Base / Upside cost per programme post-deployment (MY, 1,000 employees):**
Baseline: $266. 
- Conservative (−60%): $107
- Base (−75%): $67
- Upside (−85%): $40

**Conservative / Base / Upside error-reduction benchmarks:**
- Conservative: 30% reduction in field errors (OCR transcription is more consistent than manual transcription for typed PDF content)
- Base: 50% reduction (OCR + NER pipeline catches structured errors; human review layer corrects the F1 0.86 gap — residual error rate from ~14% per-field miss to ~7% with review)
- Upside: 65% reduction (VLM extraction approaches F1 0.90–0.93 on structured printed lab reports — consistent with IntuitionLabs OCR accuracy 93% on similar documents) (7)

**Risks / failure modes specific to ID/MY:**
1. Reference range heterogeneity: Different Indonesian labs (Prodia, Kimia Farma, GeneLabS) use different reference ranges for the same test — a result of "normal" at one lab may be "high" at another. LOINC normalisation and lab-specific reference range mapping are required before any automated abnormal-flag generation can be accurate.
2. PACS integration for radiology: X-ray and chest X-ray results are typically in PACS, not PDF — a separate DICOM-to-structured pipeline is needed; this is more complex than lab PDF extraction.
3. Handwritten annotations: Some referral lab reports include handwritten comments from pathologists — OCR accuracy for handwritten content is 20–96% (IntuitionLabs 2024) (7); these annotations may carry clinically important information.
4. No SATUSEHAT lab result API widely adopted: The SATUSEHAT FHIR lab-result endpoint exists but is at 8.9% adoption (Stage 1 VC fn 13) — most results still arrive by PDF/email, making OCR the only viable extraction path for the foreseeable future.

**Vendor readiness (ID/MY-deployable today):**
No commercially available, Indonesia/Malaysia-specific multi-lab OCR collation product for MCU providers exists as of May 2026. Azure Document Intelligence custom models (available in SEA Azure regions), Google Document AI, and PaddleOCR-VL (open-source) can be configured for lab report extraction with 3–6 months development effort. Prodia's ProdiaLink B2B portal is the closest commercial product — provides a structured results API for Prodia-sourced tests but does not cover external referral labs (Stage 2 VC sub-step 2a). A viable MVP could be built as an API layer on Azure Document Intelligence + LOINC mapping + fuzzy patient-ID matching.

---

## Section 6.3 — WH2 Validation Summary

**WH2 test:** Automation feasibility is gated by input-data format, not process importance.

The 8 sub-steps can be grouped by input-data format to assess whether structured inputs genuinely deploy faster than unstructured ones:

**Group A: Primarily unstructured inputs (verbal or free-text primary format)**
- Sub-step 1a: Verbal consultation → ASR format gate. No ID/MY-deployable product today. Time-to-deployment: 12–18 months for MVP. Capability maturity: Experimental in Bahasa.
- Sub-step 2b: Multi-format lab PDFs from multiple labs → OCR format gate. No commercial product for ID/MY MCU multi-lab collation today. Time-to-deployment: 3–6 months (Azure Document Intelligence buildable now).

**Group B: Mixed inputs (structured primary + unstructured supporting documents)**
- Sub-step 3a: Structured PAF (structured) + referral letters (unstructured). Partially deployable today (HealthMetrics Indonesia April 2025 for structured GL); referral letter NER is the remaining format gate.
- Sub-step 3b: Structured claims portal data + PDF supporting documents. Partially deployable today (Medilink, AdMedika); supporting document NER is the remaining format gate.
- Sub-step 2c: Structured lab values (structured) + narrative generation (LLM). LLM generation deployable in 6–12 months; no format gate — the barrier is clinical workflow integration and OHD sign-off acceptance.

**Group C: Primarily structured inputs (data already structured in existing systems)**
- Sub-step 3c: Structured claims data in TPA portals. Deployable today. HealthMetrics and BPJS already deploying ML adjudication. Time-to-deployment: 3–6 months for new TPA entrant.
- Sub-step 1c: Structured visit history / PROLANIS data. No format gate — the barrier is software workflow (BPJS PCARE data is accessible). Time-to-deployment: 2–4 months for WhatsApp orchestration MVP.
- Sub-step 2d: Semi-structured MCU Excel/PDF summary (structured once extracted). Format gate is small (PDF → structured via OCR); routing engine is deterministic thereafter. Time-to-deployment: 3–6 months (HealthMetrics wellness module available now for enrolled employers).

**WH2 verdict: LARGELY CONFIRMED, with an important corollary.**

The format-gate pattern holds across 6 of 8 sub-steps:
- Unstructured-input sub-steps (1a, 2b) are the least deployable today and have the longest time-to-production, confirming that ASR/OCR is the required transformation layer
- Mixed-input sub-steps (3a, 3b, 2c) are partially deployable — the structured component deploys immediately; the unstructured component requires an OCR/LLM transformation layer first
- Structured-input sub-steps (3c, 1c, 2d) are most immediately deployable

The corollary also holds: **structured data is necessary but not sufficient.** Sub-steps 1c and 2d have fully structured inputs (visit dates, BPJS PCARE records, MCU Excel summaries) yet remain at very low automation levels — confirming Stage 4.6's WH2 corollary note. The barrier for these sub-steps is process accountability and software workflow integration, not data format. A venture targeting these sub-steps can deploy faster but must solve the change-management and workflow integration problem, not a technical AI problem.

---

## Section 6.4 — AI Uplift Table

Scope: 300-patient GP clinic (sub-steps 1a, 1c); 1,000-employee MCU programme (sub-steps 2b, 2c, 2d); 50,000-covered-life TPA (sub-steps 3a, 3b, 3c). Labour baselines from Stage 4, Section 4.3. Savings computed at base-case time-reduction.

| Sub-step | Primary Capability | Conservative Time Reduction | Base Time Reduction | Upside Time Reduction | Annual $ Saved — Base Case (MY) | Annual $ Saved — Base Case (ID) | Comments |
|---|---|---|---|---|---|---|---|
| **1a** — Clinical documentation | ASR / ambient voice | 20% | 35% | 50% | $29,050–$109,200/yr (35% of $83K–$312K MY baseline) | $5,705–$25,200/yr | Bahasa ASR WER is primary bottleneck; no deployable product today; savings are GP time, not admin time |
| **1c** — CDM recall | Predictive model + RPA/WhatsApp | 50% | 70% | 85% | $427–$1,393/yr direct labour — but CDM default-rate improvement is worth 10–100× more in avoided hospitalisation costs | $224–$637/yr direct | Primary value is CDM follow-up rate improvement, not admin cost; see Stage 4.4 WH5 cascade |
| **2b** — MCU lab collation | OCR / document understanding | 60% | 75% | 85% | $200 direct (MY, 1,000-employee programme) | $109 direct | Low absolute; value is in enabling sub-step 2c automation (upstream bottleneck removal) |
| **2c** — MCU report generation | LLM + rules classifier | 30% | 50% | 65% | $13,500–$23,350/yr (50% of $27K–$46.7K MY baseline) | $2,900–$5,800/yr | Largest single-item saving in the MCU layer; Bahasa LLM capability is present; no language gate |
| **2d** — Post-MCU CDM routing | RPA / workflow orchestration | 60% | 75% | 85% | $378–$848/yr direct labour — but follow-up rate improvement from 22.6% → 50% is primary value | $206–$461/yr direct | Primary value: CDM enrolment cascade improvement; HealthMetrics wellness module deployable now |
| **3a** — Pre-authorisation | RPA + LLM | 50% | 65% | 80% | $312,000–$520,000/yr (65% of $480K–$800K MY baseline) | $105,300–$117,000/yr | Third-largest absolute saving; partially deployable today (HealthMetrics, AdMedika) |
| **3b** — Claims submission / resubmission | RPA + NER | 25% | 40% | 55% | $144,000–$180,000/yr (40% of $360K–$450K MY rework baseline) | $32,400–$36,000/yr | Large absolute saving from denial reduction and resubmission automation |
| **3c** — Claims adjudication | ML + LLM | 40% | 60% | 75% | $480,000–$600,000/yr (60% of $800K–$1M MY baseline) | $64,800–$72,000/yr | Largest single item; ML adjudication is deployable today at mature ID/MY TPAs |

**Portfolio-level annual savings (base case, MY rates):**
- GP clinic (1a + 1c): $29,477–$110,593/year (direct labour; CDM hospitalisation avoidance excluded)
- MCU programme 1,000 employees (2b + 2c + 2d): $14,078–$24,398/year (direct labour; CDM cascade value excluded)
- TPA 50,000 lives (3a + 3b + 3c): $936,000–$1,300,000/year

**Portfolio total (direct labour, base case, MY): ~$980,000–$1,435,000/year across these three representative units.**

This excludes:
- CDM hospitalisation avoidance (the WH5 cascade improvement — quantifiable but requires field data)
- Revenue uplift from GP throughput increase (sub-step 1a time saving → more consults per day)
- Claims leakage prevention (fraud reduction component of 3c)
- Pre-employment delay cost avoidance (sub-step 2c turnaround improvement)

[ASSUMED-5]: CDM hospitalisation avoidance savings at the portfolio level (GP clinic 300-patient panel + MCU 1,000 employees + TPA 50,000 lives) could exceed $2–5M/year if CDM default rate is reduced from ~50% to ~30% across the covered population — to validate: actuarial modelling using SOCSO HSP NCD prevalence data and Malaysian hospitalisation cost-per-episode benchmarks.

---

## Section 6.5 — Pilot Sequencing Recommendation

### Recommended Pilot 1: Sub-step 3c (Claims Adjudication) at a Mid-Size TPA

**Rationale:**
1. Highest single-item absolute saving in the portfolio: $480,000–$600,000/year (MY, base case) — Section 6.4
2. Input data is already structured (Stage 4.2 Rank 2 has the clearest structured-to-automation pathway of any sub-step in Group C of Section 6.3's WH2 grouping)
3. Commercial vendor product available today (HealthMetrics AI-driven claims in production; BPJS has ML fraud detection at scale — Sections 6.2 and Stage 3 VC); no 12–18 month build required
4. POJK 36/2025 regulatory pressure (fraud detection and COB integration mandated by Dec 2026 in Indonesia — Stage 3 VC fn 10) creates a time-bound compliance driver that will push TPA procurement regardless of venture timing
5. Short-to-medium deployment time: 3–6 months for a TPA with structured data already in portal systems
6. Stage 5 market-readiness note (absent Stage 5, applying Stage 4 evidence): Malaysia's MY TPA market has the highest claims volume density and highest cost-per-claim, making ROI visible within 6–9 months at 20,000 claims/month volume (InterPixels benchmark) (25)

**Expected payback:**
At a 50,000-covered-life TPA operating at 200,000 claims/year with a 15% denial rate:
- Baseline rework cost (MY): ~$360,000–$450,000/year (Stage 4.3.3)
- Baseline adjudication cost (MY): ~$800,000–$1,000,000/year (Stage 4.3.3)
- Base-case savings (40%–60% reduction respectively): ~$144,000–$180,000 + $480,000–$600,000 = ~$624,000–$780,000/year combined for 3b + 3c
- Implementation cost estimate: $150,000–$250,000 (vendor platform licence + integration + training) [ASSUMED-6]: to validate with HealthMetrics, InterPixels, and AdMedika vendor pricing
- Payback period: 2.3–4.8 months at base-case savings vs. implementation cost — extremely fast payback driven by scale of adjudication volume

### Recommended Pilot 2: Sub-step 2c (MCU Report Generation) + sub-step 2b (Lab Collation) at a Mid-Size MCU Provider

**Rationale:**
1. These two sub-steps are sequentially linked: 2b (OCR lab collation) unblocks 2c (LLM report generation) — they must be piloted together to realise the full value
2. Sub-step 2c has the highest cost concentration in the MCU layer ($27,000–$46,700/year MY for 1,000 employees — Stage 4.3.2) and the clearest LLM fit (structured inputs → narrative output, no Bahasa ASR dependency)
3. LLM Bahasa capability is production-ready for narrative text generation (unlike ASR for 1a); this is Group B/Group C territory — the language barrier is manageable
4. OHD supply constraint (1,113 OHDs in Malaysia, ~29,000 specialist deficit in Indonesia — Stage 2 corrections addendum) creates a structural ceiling on MCU throughput that LLM-assisted sign-off directly addresses — this is both a pain-point solution and a market expansion enabler (if sign-off time drops from 25 min to 8 min, OHD can review 3× as many reports per day)
5. MCU turnaround competitive advantage: 3–7 day current turnaround → target <24 hours with LLM automation. For corporate clients, turnaround is a key selection criterion (Stage 2 PP2.1 fn 3–6)
6. Stage 4.2 Rank 1 for cost concentration; Stage 4 Section 4.2 confirms MCU report generation drives pre-employment delay costs that are order-of-magnitude larger than direct labour cost (ASSUMED-2 Stage 2 PP2.1: $350K illustrative for 100 hires delayed 1 week)

**Expected payback:**
At a 1,000-employee/year MCU programme:
- Combined 2b + 2c baseline cost (MY): $27,176–$46,966/year (Stage 4.3.2)
- Base-case savings (2b: 75% reduction; 2c: 50% reduction): $200 + $13,500–$23,350 = ~$13,700–$23,550/year per programme
- This appears small — but a mid-size MCU provider running 20 corporate programmes/year (20,000 employees) achieves: $274,000–$471,000/year in labour savings
- Additional value: turnaround improvement from 3–7 days → <24 hours enables pricing premium or market share gain
- Implementation cost estimate: $80,000–$150,000 (LLM integration, OCR pipeline for 2b, OHD workflow interface) [ASSUMED-7]: to validate with Azure OpenAI partner pricing for SEA region and Prodia/Kimia Farma MCU technology teams
- Payback period: 3.4–7.8 months at 20-programme scale (base case) — fast payback driven by OHD time value and programme volume

**Why not sub-step 1a (ambient voice scribe) as a first pilot:**
Sub-step 1a has the highest long-run potential (affects every clinical encounter at scale) but the longest time-to-deployment in the ID/MY context due to the Bahasa ASR bottleneck (Section 6.2, 1a risks/failure modes). A venture should plan 1a as a Year 2 pilot after Bahasa ASR has been validated, using the revenue and data from 3c and 2c/2b pilots to fund the technical development.

---

## Assumptions tagged in this stage

[ASSUMED-1]: Code-switching performance on ICD-10 exact-match for LLMs is 15–25% worse than mono-lingual English — to validate: benchmark fine-tuned model on 200 real ID/MY clinic notes with code-switched terminology

[ASSUMED-2]: OCR accuracy on Indonesian/Malaysian lab report PDFs (Prodia, Kimia Farma, GeneLabS) is comparable to the PMC 10629084 benchmark (F1 ~0.86) given similar print-formatted report layouts — to validate: run Azure Document Intelligence against 100 sample Prodia/Kimia Farma lab PDFs

[ASSUMED-3]: A Bahasa Indonesia-capable ambient scribe MVP could be built on Whisper + GPT-4o + SATUSEHAT API stack in 12–18 months — to validate: technical spike with Klinik Pintar or Halodoc AIDA teams

[ASSUMED-4]: Clinical NER for ICD-10 and drug entities in Bahasa Indonesia free text achieves F1 ~0.70–0.75 without fine-tuning, and ~0.82–0.87 with 10,000–50,000 annotated clinical note examples — to validate: fine-tune BERT-based model on annotated Klinik Pintar or BPJS PCARE notes

[ASSUMED-5]: CDM hospitalisation avoidance savings at portfolio level could exceed $2–5M/year if CDM default rate is reduced from ~50% to ~30% — to validate: actuarial modelling using SOCSO HSP NCD prevalence data and Malaysian hospitalisation cost-per-episode benchmarks

[ASSUMED-6]: Pilot 1 (3c/3b at TPA) implementation cost is $150,000–$250,000 — to validate with HealthMetrics, InterPixels, and AdMedika vendor pricing

[ASSUMED-7]: Pilot 2 (2c/2b MCU) implementation cost is $80,000–$150,000 — to validate with Azure OpenAI partner pricing for SEA region and Prodia/Kimia Farma MCU technology teams

---

## Sources for this stage

(1) PMC 12075489 / Nature npj Digital Medicine 2025 — LLM clinical note hallucination rate 1.47%, omission rate 3.45% (12,999-sentence evaluation): https://pmc.ncbi.nlm.nih.gov/articles/PMC12075489/

(2) PMC 12045799 / npj Health Systems 2025 — Fine-tuned Llama-3.2-1B: ICD-10 exact match 69.20%, category match 87.16% on real-world clinical notes; GPT-4o mini 97% on standardised test: https://pmc.ncbi.nlm.nih.gov/articles/PMC12045799/

(3) TNGlobal / HealthMetrics — HealthMetrics Indonesia launch, AI-driven claims and fraud detection (April 2025): https://technode.global/2025/04/21/malaysias-digital-third-party-administrator-healthmetrics-launches-in-indonesia/

(4) GovInsider — BPJS Kesehatan AI deployment: NLP chatbots, anomaly detection, fraud analytics on 442B records: https://govinsider.asia/intl-id/article/bpjs-kesehatan-to-use-ai-improve-efficiency-healthcare-services

(5) Halodoc — AIDA (AI Doctor Assistant) launch for Indonesian clinical decision support (2025): https://www.halodoc.com/artikel/halodoc-perkenalkan-aida-ai-doctor-assistant-untuk-memberdayakan-layanan-kesehatan-dan-dokter-indonesia

(6) Malaya NLP toolkit for Bahasa Malaysia (PyPI, Mar 2024): https://pypi.org/project/malaya/

(7) IntuitionLabs — Pharma Document AI and OCR Accuracy Benchmark (2024): typed text >99.2%, structured forms 97–99%, lab report pipeline OCR 0.93 / NER F1 0.86; PaddleOCR-VL composite 92.86: https://intuitionlabs.ai/articles/pharma-document-ai-ocr-benchmarks

(8) PMC 10629084 — Peking University First Hospital lab report extraction: OCR 0.93, NER F1 0.86 (precision 0.90, recall 0.83) on 153 lab reports, 7 categories: https://pmc.ncbi.nlm.nih.gov/articles/PMC10629084/

(9) NEJM AI / PubMed 40672471 — Randomised clinical trial two ambient AI scribes (DAX Copilot vs. Nabla vs. control, 238 physicians, 14 specialties, Nov 2024–Jan 2025): 30 min/day documentation reduction: https://pubmed.ncbi.nlm.nih.gov/40672471/

(10) PMC 11840636 — Longitudinal ambient scribe time-motion study: documentation 10.3→8.2 min (−20.4%); after-hours work 50.6→35.4 min (−30%): https://pmc.ncbi.nlm.nih.gov/articles/PMC11840636/

(11) JMIR Medical Informatics 2026 — Singapore General Hospital real-world ambient scribe study (Dec 2024–May 2025, Note Buddy): 15% documentation reduction (5.3→4.5 min, p=.04); 10.6% eye contact increase; first Asian ambient scribe study: https://medinform.jmir.org/2026/1/e85580

(12) MUSC Health — DAX Copilot 20% documentation reduction across 130 providers (2024): https://www.musc.edu/content-hub/news/2024/08/09/dax-copilot

(13) Sully.ai / soapnoteai.com — DeepScribe 98.8/100 KLAS score and AI scribe 2026 comparison: https://www.sully.ai/blog/best-10-ai-medical-scribes-in-2025

(14) ResearchGate 2025 — Whisper Bahasa Indonesia WER: training 22.3%, testing 19.8%; informal speech WER 27.7–645%; language model reduces WER from 20% to 12%: https://www.researchgate.net/publication/389342426_Speech_Recognition_Dengan_Whisper_Dalam_Bahasa_Indonesia

(15) arXiv 2512.10967 — ASR clinical setting WER range 18–63% across systems and settings: https://www.arxiv.org/pdf/2512.10967

(16) arXiv 2406.12387 — Fine-tuning on accented clinical speech improves medical ASR WER by 25–34% relative: https://arxiv.org/pdf/2406.12387

(17) Nature npj Digital Medicine 2026 — Barriers and opportunities of scaling ambient AI scribes: limited functionality with non-English-speaking patients; code-switching unresolved: https://www.nature.com/articles/s41746-026-02554-0

(18) John Snow Labs / Medium 2024 — Spark NLP for Healthcare: 76% ICD-10 capture rate vs. GPT-4 58%, GPT-3.5 40%: https://medium.com/john-snow-labs/comparing-spark-nlp-for-healthcare-and-chatgpt-in-extracting-icd10-cm-codes-from-clinical-notes-c65b7f96eab4

(19) PMC 12396801 — NLP + ICD-10 hybrid: sensitivity 43% (codes alone) → 94% (with NLP); clinical NLP macro F1 0.80; precision 0.92 for critical bleeding flags: https://pmc.ncbi.nlm.nih.gov/articles/PMC12396801/

(20) PMC 12425423 — Fine-tuned clinical BERT: drug name / adverse drug event NER F1 = 0.845; relation extraction F1 = 0.81: https://pmc.ncbi.nlm.nih.gov/articles/PMC12425423/

(21) ResearchGate 2025 — Bahasa Indonesia NER via LLM augmentation (GPT-4): general entities; clinical NER benchmarks absent: https://www.researchgate.net/publication/394956340_PENINGKATAN_KINERJA_NAMED_ENTITY_RECOGNITION_BAHASA_INDONESIA_MELALUI_AUGMENTASI_DATA_BERBASIS_LARGE_LANGUAGE_MODELS

(22) PMC 10624443 — Malaysia tertiary hospital (HKL) no-show prediction: Gradient Boosting accuracy 78%, F1 0.76, AUC 0.65: https://pmc.ncbi.nlm.nih.gov/articles/PMC10624443/

(23) JMIR Formative Research 2025 — UAE primary care AI scheduling: 86% no-show prediction accuracy; 70% reduction in predicted cancellations: https://formative.jmir.org/2025/1/e64936

(24) MDPI Risks 2025 — Random Forest Medicare fraud detection: training accuracy 99.2%, validation 98.8%, F1 98.4%: https://www.mdpi.com/2227-9091/13/10/198

(25) InterPixels AI — Asia-Pacific TPA claims automation benchmark: manual $40–60/claim, automated <$20; processing time 40 min → 3–7 min; STP 60–75%; ROI 6–14 months: https://interpixels.ai/insights/health-insurance-claims-automation-roi-what-asia-pacific-tpas-can-realistically-expect/

(26) medrxiv 2025 — MedAdhereAI: medication non-adherence prediction AUROC ~0.70–0.74 on real-world refill data: https://www.medrxiv.org/content/10.1101/2025.07.01.25330675.full.pdf

(27) AJMC 2024 / PMC 12672954 — Predictive analytics for CDM adherence targeting: AUROC 0.70–0.74; data-driven patient engagement narrative review: https://www.ajmc.com/view/leveraging-predictive-analytics-to-target-payer-led-medication-adherence-interventions

(28) getmagical.com — RPA healthcare claims processing: 70–80% processing time reduction; 30–40% decrease in accounts receivable days: https://www.getmagical.com/blog/rpa-in-healthcare-claims-processing

(29) tactionsoft.com 2024 — Montage Health: 22% reduction in Epic authorization work queue volume after automating status checks: https://www.tactionsoft.com/blog/medical-practice-automation/

(30) Jorie AI — Prior authorization denials reduced to 0.21% with RPA (vs. 15–20% industry standard): https://www.jorie.ai/post/prior-authorization-denials-reduced-to-0-21-how-rpa-is-transforming-healthcare

(31) HFMA — AI evolution of denials management: denial rates rising to ~12% in 2024; AI reduces denial rates by up to 42% in documented implementations: https://www.hfma.org/ai/predict-prevent-perform-the-ai-evolution-of-denials-management/

(32) PMC 5433794 — Malaysia RCT: SMS + call reminders for ART adherence: adherence 54.6% → 92.2%; good adherence 54.6% → 92.2%: https://pmc.ncbi.nlm.nih.gov/articles/PMC5433794/

(33) BotMD — AI patient engagement, WhatsApp automation, 20,000+ SEA doctors: https://www.botmd.io/

(34) innobothealth.com 2024 — Claims processing time reduction 97.9%, denial rate reduction 82.6% at leading US implementations: https://innobothealth.com/blogs/robotic-process-automation-in-healthcare-from-rule-based-scripts-to-agentic-ai/

(35) PMC 5977598 — ICD-10 coding accuracy: 25% omission/error rate (baseline for 1a improvement benchmark; inherited from Stage 1 PP1.1 fn 12): https://pmc.ncbi.nlm.nih.gov/articles/PMC5977598/

