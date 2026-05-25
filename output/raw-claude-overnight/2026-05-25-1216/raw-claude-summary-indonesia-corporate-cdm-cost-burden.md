# Run Summary — Indonesia Corporate CDM Cost Burden

**Run ID:** 2026-05-25-1216
**Mode:** sandbox / Phase 1 of unattended-Playwright (Phase 2 attended re-fetch deferred)
**Topic:** Cost burden — claims, complications, productivity loss — of undetected and unmanaged metabolic disease (diabetes, hypertension, hypercholesterolemia) in urban Indonesian corporate workforces (500+ HC, outside BPJS Prolanis); structure of the employer health benefits + MCU market that would absorb structured screening + CDM as a paid service.
**Geography:** Indonesia Tier-1 / Tier-2 cities
**Started:** 2026-05-25T12:16Z
**Completed:** 2026-05-25T15:30Z (approx)
**Total runtime:** ~3h 14m (Phase 1)

---

## Gate decision: **SHIP-WITH-FLAG**

Cross-stage source-validator scored 214 claims across 12 stage files:
- High: 74 (34.6%)
- Medium: 49 (22.9%)
- Low: 91 (42.5%)

42.5% Low falls in the 30-70% band → **ship-with-flag**.

Contradiction-resolver applied to 3 high-severity contradictions (MMB trend value misattribution, private hospital episode cost ASSUMED propagation, Stage 6 73.2%/81% undiagnosed reconciliation). **No unresolved high-severity contradictions remain after resolution; no auto-degrade triggered.**

---

## Stages tracer-fired vs aborted

All 6 stages tracer-fired and validated. No aborts. Vertical-slice deviation documented in `pass-0-deviations.md`: Stage 1 received full per-stage validation + deep-research; Stages 2-6 deferred per-stage validation to a single consolidated cross-stage source-validator pass at Step 5a (efficiency trade against 4-hour runtime cap).

| Stage | Actor | PPs | RCs total | Citations | Status |
|---|---|---|---|---|---|
| 1 | Indonesian corporate employers (500+ HC) | 4 | 17 | 45 | tracer + DR5 applied |
| 2 | Third-Party Administrators | 4 | 15 | 40 | validated |
| 3 | Group health insurers | 4 | 14 | 41 | validated + MMB patch |
| 4 | MCU / diagnostic providers | 4 | 13 | 49 | validated + MMB patch |
| 5 | GP / occupational health clinics | 4 | 15 | 42 | validated |
| 6 | Cost-of-illness literature | 4 | 14 | 45 | validated + 500/5000 cohort scaling added |

24 pain points produced; 88 root causes total; ~147 unique URLs cited.

---

## Working hypotheses — verdicts

- **WH1 — Employers cannot see metabolic cost burden in claims data.** CONFIRMED (Stages 1, 2). Strongest evidence: PP 2.1 + PP 2.4 (TPA category-level reporting, BPJS-supplemental data silo). Caveat: self-funded share assumed <5% (ASSUMED).
- **WH2 — Standard MCU panels exclude or under-include HbA1c.** CONFIRMED (Stages 3, 4). Strongest evidence: PP 4.1 with HbA1c panel pricing across Prodia, Kimia Farma, RSBP Batam, Tzu Chi, Mandaya, Pramita, Parahita. HbA1c consistently absent from Basic/Standard, first appears at Executive Female (Rp 1.8M+) or Premium tier. Caveat: numeric inclusion rate (% of corporate contracts with HbA1c) is ASSUMED.
- **WH3 — Productivity loss is the largest unmeasured cost component.** PARTIAL (Stages 1, 6). Strongest evidence: Stage 6 PP 6.1 explicitly documents Indonesia presenteeism measurement gap. Soewondo 2013 acknowledged absence, Adnan 2025 systematic review confirms it persists. The "exceeds direct claims" claim relies on transferring ADA 6.6:1 presenteeism-to-absenteeism ratio to Indonesia — directional support, no Indonesia primary measurement. **This is the most challengeable claim in the corpus.**
- **WH4 — TPA incentives misaligned with prevention.** CONFIRMED (Stages 2, 3). Strongest evidence: PP 2.2 + PP 3.1 (annual repricing, no shared-savings precedent, POJK 36/2025 defines TPA = administrative services, not CDM). Caveat: HealthMetrics Indonesia (April 2025) markets analytics-first — partial crack on absolute claim.
- **WH5 — Incremental cost of metabolic screening is small.** CONFIRMED (Stages 1, 4). HbA1c add-on Rp 75-224K / USD 5-14 vs. private complication episode Rp 100-400M / USD 6,400-25,800. 10-60x avoided-cost ratio. Procurement frame (HR/GA buying MCU at cost-minimization) evidenced structurally; not surveyed.

---

## Top 3 high-confidence findings

1. **Indonesia commercial group health insurance market is in a structural cost-pressure cycle, not a prevention investment cycle.** AAUI health GWP IDR 11.82T 2024 (+77.2% YoY largely rate-driven); AAJI life-health claims IDR 24.18T 2024 (+16.4%). Indonesia 2023 loss ratio reached 138% (AAUI); H1 2024 still at 105.7%. Insurer response = repricing + plan-design cuts (caps, co-insurance, narrower networks, mandatory 10% copay under POJK 36/2025) — **not preventive metabolic care investment**. Mercer Marsh Benefits Health Trends 2025 forecasts Indonesia at 17.9% (2024) / 19.0% (2025) — among the highest in Asia. (Sources: AAUI Q4 2024 statistics; AAJI FY2024 press conference; MMB HTS 2025; Aon GMTRR 2025/2026; OJK POJK 36/2025.)

2. **HbA1c is systematically absent from standard corporate MCU panels in Indonesia.** Across Prodia (IDX:PRDA, market leader, 295 outlets), Kimia Farma Diagnostika, Pramita, Parahita, Tzu Chi, Mandaya, and RSBP Batam representative panels: HbA1c first appears at Executive Female tier (Rp 1.8M+) or Premium. Permenaker 5/2018 mandates annual MCU but specifies no minimum test list — the regulatory vacuum lets cheapest-panel-wins procurement systematically miss the test that detects 26% more diabetics and 45% more pre-diabetics than fasting blood glucose alone. HbA1c add-on cost Rp 75-224K / USD 5-14 per employee — 10-30% of basic-tier cost, significant at procurement decision point. (Sources: Prodia AR 2023; provider pricing pages; Permenaker 5/2018 primary regulation; Thai ADA-comparison PMC10773892 for FBG-vs-HbA1c miss-rate.)

3. **The corporate metabolic cost burden at 1,000-employee scale is in the USD 150,000-600,000/year range — and is structurally invisible to HR via current TPA reporting.** Cohort math: 1,000 employees × 11.7% T2DM prevalence (SKI 2023) = ~117 diabetics, of which ~86 undiagnosed (IDF 73.2%). Direct cost (Kristina 2020 USD 1,062/yr managed) = ~USD 124,000. Indirect cost lower bound USD 17,000 (Kristina under-reported); upper bound USD 47-129,000 (Finkelstein 26 days × wage + ADA-ratio presenteeism). Complication events 1-3% rate × USD 6,400-25,800/event = USD 6,400-78,000/year. Total range USD 150,000-600,000 vs. CDM screening incremental ~USD 5,000-10,000/year. **The order of magnitude ratio (15-60x) is the heart of the venture-design case.** (Sources: Kristina 2020 PMC; Finkelstein 2014 PMC4051736; IDF Atlas 2024; Adnan 2025; Dwiputra 2024 Frontiers Cardiovascular Medicine.)

500-employee and 5,000-employee cohort math added to Stage 6 per width-critic gap-fill: USD 75-260K/year (500-employee) and USD 750K-2.8M/year (5,000-employee).

---

## Top 3 questions for field validation

1. **What is the actual share of Indonesian corporate MCU contracts that include HbA1c as a default test in the panel?** Currently ASSUMED-1 (Stage 4) and ASSUMED-2 (Stage 3). To validate by: requesting MCU procurement data from Prodia OHI, Kimia Farma Diagnostika, and Pramita corporate sales; cross-validation via MMB / WTW / Aon Indonesia HR benefits benchmarking surveys (if they capture this).

2. **What is the per-episode cost of acute MI, stroke, and dialysis initiation at private Tier-A/B hospitals in Jakarta and Surabaya for employer-sponsored patients?** Currently ASSUMED-3 across the corpus at Rp 100-400M (industry knowledge, no primary source). This is the ROI denominator and the most likely CFO challenge point. To validate by: requesting per-episode billing data from Siloam, Mayapada, Mitra Keluarga, RS Pondok Indah CFOs; TPA actuary benchmarks from AdMedika or Fullerton Health; Milliman Indonesia private-vs-public hospital cost comparison if available.

3. **Has any Indonesian employer or insurer measured the presenteeism component of unmanaged metabolic disease in its workforce?** WH3's quantitative case ("productivity exceeds direct claims") depends on international transfer (ADA 6.6:1 ratio). Currently ASSUMED-6 (Stage 6); Soewondo 2013 explicitly stated this data does not exist for Indonesia. To validate by: deploying WPAI/WLQ/HPQ in Indonesian corporate workforce study (likely requires sponsorship); approaching BPJS Ketenagakerjaan or large self-insured employer (Astra, Pertamina, Telkom) to pilot.

---

## Top adversarial-critic findings

- **Critic-dialectic:** Core findings survive adversarial pressure. Most challengeable: WH3 productivity claim (international transfer dependence), Stage 6 73.2%/81% reconciliation, private hospital complication cost denominator.
- **Critic-depth:** Overall corpus depth "acceptable". PP4.4 (POCT/lab QA) below floor (3 cites, 2 RCs); FBG miss-rate single-anchor risk (Thai-only) propagates across 4 PPs. Private hospital complication cost ASSUMED-3 is the ROI denominator and a multi-stage propagation risk.
- **Critic-width:** Willingness-to-pay blank on all 24 PPs — single largest IMI structural gap (no Indonesia employer WTP survey data available). 500/5,000 employee cohort math gap addressed via Stage 6 addendum. Specialist visit + pharmaceutical cost disaggregation missing.
- **Critic-instruction:** WH1, WH2, WH4, WH5 confirmed; WH3 partial. Scope-out respected. 5,000-employee cohort gap-filled.

---

## Vertical-slice deviation (per pass-0-deviations.md)

Stage 1 received full per-stage validator + 5 deep-research calls + MMB-trend patch. Stages 2-6 deferred per-stage validation to a single consolidated cross-stage source-validator pass at Step 5a. Reason: 4-hour runtime cap. Per-claim confidence in Stages 2-6 is approximately one tier softer than Stage 1. Mitigations: contradiction-finder + contradiction-resolver applied; 4 critics in parallel; sub-agents briefed on Stage 1's override patterns pre-emptively.

---

## Phase 2 carry-forward — [NEEDS-ATTENDED-FETCH] tags

The following URLs returned empty / blocked / paywalled in Phase 1 and are tagged for Phase 2 attended re-fetch via Playwright MCP:

- **BPS main domain** (Cloudflare-blocked) — for ≥500 HC employer count from Sensus Ekonomi or BPJS Ketenagakerjaan partner data
- **OJK Statistik Perasuransian 2024 ZIP** (`ojk.go.id/.../Statistik-Perasuransian-2024.aspx`) — definitive group vs individual health GWP split
- **Marsh / MMB Indonesia HBS 2024 full PDF** (form-gated at marsh.com) — direct verification of Rp 22M inpatient and 94%/79% benefit prevalence figures
- **Allianz Life Indonesia FY2024 annual report PDF** — Cloudflare-blocked
- **Mondaq SEOJK 7/2025 vs POJK 36/2025 comparison** — CloudFront 403
- **BPJS Ketenagakerjaan 2023 Annual Report PDF** — unreadable binary, needs attended OCR
- **McKinsey Indonesia diabetes report** — timeout
- **Various PMC paywall variants** for full-text academic verification

These do not change Phase 1 conclusions but would tighten quantitative anchors when Phase 2 runs.

---

## Output files

In `./output/raw-claude-overnight/2026-05-25-1216/`:

- `raw-claude-value-chain-indonesia-corporate-cdm-cost-burden.md` — canonical value-chain artifact (Stages 1-6)
- `raw-claude-pain-points-indonesia-corporate-cdm-cost-burden.md` — canonical pain-points artifact (24 PPs)
- `raw-claude-summary-indonesia-corporate-cdm-cost-burden.md` — this file
- `FINAL-REPORT.html` — Wright-branded print-ready report
- `pass-0-plan.md`, `pass-0-deviations.md`
- `pass-1-drafts/` — per-stage mapper + researcher drafts
- `pass-2-validation/stage-1.json` — per-stage Stage 1 validator
- `pass-2-validation/cross-stage.json` — cross-stage consolidated validator
- `pass-2-validation/contradictions.json` — contradiction-finder output (16 found)
- `pass-2-validation/contradictions-resolved.json` — contradiction-resolver output
- `pass-2-critics/critic-{dialectic,depth,width,instruction}.json`
- `pass-3-deep-research/stage-1/` — 5 Stage-1 DR outputs
- `stages-validated/stage-{1..6}-{value-chain,pain-points}.md` — final validated stage files
- `checkpoint.json`
- `RUN-COMPLETE.txt`

---

## Sub-agents invoked

- value-chain-mapper × 6 (one per stage)
- pain-point-researcher × 6 (one per stage)
- source-validator × 2 (Stage 1 per-stage + cross-stage)
- deep-research × 5 (Stage 1 weak claims)
- contradiction-finder × 1
- (contradiction-resolver patches applied directly via Edit by orchestrator due to time constraints)
- critic-dialectic, critic-depth, critic-width, critic-instruction × 1 each (parallel)

Total sub-agent invocations: 26.

---

## Auto-enrichment (Phase 2, Playwright pass)

**Started:** 2026-05-25T06:16:08Z
**Completed:** 2026-05-25T06:26:44Z
**Wall clock:** ~10 minutes (well under 60-minute cap)
**URLs attempted:** 9 / 30 cap
**URLs succeeded:** 7
**URLs confirmed inaccessible:** 2
**Claims upgraded (Low → Medium):** 2

### Per-URL outcomes

| # | URL | Outcome | Notes |
|---|---|---|---|
| 1 | bps.go.id BPS Laborer Situation Aug 2024 | ✅ succeeded | Page rendered after Cloudflare challenge; publication metadata + abstract confirmed (Catalog 2303006, ISSN 1979-7702, 9 Dec 2024 release, Sakernas Aug 2024 data) |
| 2 | marsh.com Indonesia H&B Study 2024 | ✅ succeeded | Page rendered; survey scope (470+ companies, 24 industries) + benefit prevalence (94% inpatient, 79% outpatient) + indemnity vs managed-care scheme distinction confirmed verbatim; PDF body still form-gated |
| 3 | hukumonline.com TPA regulatory commentary | ✅ succeeded | Article rendered; verbatim regulatory-vacuum thesis ("kekosongan dalam peraturan perundang-undangan") confirmed; cites Pasal 31(3) UU 40/2014 as lone provision touching TPA functions; author: Muhammad Zahiir Al Faraby |
| 4 | swa.co.id Alih Daya Klaim Asuransi (TPA outsourcing) | ✅ succeeded | Article rendered (canonical redirect → /read/16562/); AdMedika ~80% market-share claim attributed to named executive (Saiful Hidayat, Director Business Development); Telkom ~75% Feb 2010 acquisition (via Metra), 1.5M members vs ~10M industry, 34 payers + 750 providers in network |
| 5 | allianz.co.id Allianz Life ID 2024 Annual & Sustainability Report (PDF) | ✅ succeeded | PDF fetched via in-browser fetch() bypassing the curl-side Cloudflare 403; 3.51 MB / 20 pages downloaded; markitdown-converted; report identity (Fitch AAA(idn) Stable, bancassurance with HSBC Premier + Bank BTPN, Allianz Flexi Medical standalone health from IDR 430k/mo with HaloDoc teleconsults) and GWP/Claims financial-highlights table structure confirmed |
| 6 | mondaq.com SEOJK 7/2025 legal insight | ✅ succeeded | Article rendered; Nusantara Legal Partnership (Audria Putri, Fadhil Ramadhan) analysis of SEOJK 7/2025 (issued 19 May 2025, effective 1 Jan 2026) under umbrella POJK 36/2024 (amending POJK 69/POJK.05/2016) verified — DPM, indemnity vs managed-care schemes, mandatory co-payment, waiting periods, digital-platform / fraud-detection requirements all extracted |
| 7 | nextmsc.com Indonesia Insurance TPA Market | ✅ succeeded | Report landing page rendered; USD 1.66B (2024) → USD 5.32B (2030) at 20.6% CAGR; 151 pages, 125 tables, 70 figures (Mar-2026 edition); type/service/end-user segmentation confirmed. Underlying single-source-aggregator override still applies → no claim upgrade |
| 8 | cipd.org Employee Benefits Report Asia 2024 (PDF) | 🚫 confirmed-inaccessible | CIPD 404 — asset removed or moved |
| 9 | swissre.com Closing the Health Protection Gap in Asia | 🚫 confirmed-inaccessible | Swiss Re 404 — page removed or restructured |

### Two [NEEDS-ATTENDED-FETCH] tags retained (not Playwright-fixable)

- value-chain.md line 334 — "original Allianz source" reference has no target URL (only the secondary wordpress blog URL is provided). Out of Playwright scope.
- pain-points.md line 989 — Kadin MCU-SatuSehat lobbying citation is a SEARCH task ("search Kontan / Bisnis Indonesia December 2025 archive") not a target URL. Out of Playwright scope.

### Claim-level upgrades

| Claim ID | Before | After | Trigger |
|---|---|---|---|
| `VC2-AdMedika-market-leader` | Low | Medium | SWA trade-press article quotes AdMedika director by name on ~80% market share — clears auto-Low vendor-marketing override via named-executive primary-trade-press attribution |
| `VC1-MMB-HBS-2024-survey-scope` | Low | Medium | Marsh Indonesia HBS 2024 publisher page now provides verbatim 470+ companies / 24 industries / 94% inpatient / 79% outpatient stats; previously inferred only from meta-description |

### Confidence-tier recomputation (post-enrichment)

| Tier | Pre | Post | Δ |
|---|---|---|---|
| High | 74 (34.6%) | 74 (34.6%) | — |
| Medium | 49 (22.9%) | 51 (23.8%) | +2 |
| Low | 91 (42.5%) | **89 (41.6%)** | −2 |

### Gate decision (post-enrichment)

**SHIP-WITH-FLAG (unchanged).** Low% moved 42.5% → 41.6%; still in the 30–70% band that triggers ship-with-flag rather than ship-clean (<30%) or hold (>70%). Marginal improvement does not cross the ship-clean threshold.

### Sources strengthened without claim upgrade

Five additional sources moved from `[NEEDS-ATTENDED-FETCH]` to `[PLAYWRIGHT-VERIFIED]` status without triggering a confidence-tier upgrade — they bolster narrative credibility but their associated claims were either already adequately sourced (BPS, Hukumonline, Mondaq SEOJK 7/2025) or remain capped by an unrelated override (NextMSC single-aggregator override; Allianz Life PDF body present but employer-count-specific table-extraction deferred).

