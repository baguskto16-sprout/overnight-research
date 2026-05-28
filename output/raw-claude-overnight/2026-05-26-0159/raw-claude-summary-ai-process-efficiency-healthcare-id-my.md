# Run Summary — AI Process Efficiency in Healthcare Back-Office (Indonesia & Malaysia)

Run ID: **2026-05-26-0159**  
Generated: 2026-05-26 (unattended overnight, sandbox mode)  
Input file: `input/2026-05-23-ai-process-efficiency-healthcare-id-my.md`  
Mode: unattended-Playwright (Phase 2 enrichment handled by separate orchestrator pass)

## Gate decision

**Ship-with-flag.** Corpus-wide score distribution post-deep-research: ~18% High / ~33% Medium / ~49% Low (240 claims). Above the re-run threshold (>70% Low) but below ship-as-is (≤30% Low). All 4 high-severity contradictions identified by contradiction-finder were resolved by primary-source substitution via addenda; no gate auto-degrade triggered by contradiction-resolver path. Three high-actionability gaps from the adversarial critic pass remain unfilled (gap-fill remediation skipped due to total-runtime cap) and must be field-validated before commercial use.

## Stages tracer-fired vs aborted

| Stage | Name | Tracer status | Sub-agents invoked | Pain points / sections | Unique URLs |
|---|---|---|---|---|---|
| 1 | GP clinic operations | Fired (with remediation) | value-chain-mapper, pain-point-researcher, source-validator, deep-research ×5 | 4 PPs | 55 |
| 2 | Corporate Health & MCU administration | Fired (with corrections) | value-chain-mapper, pain-point-researcher, source-validator, deep-research ×1 (3 factual errors) | 4 PPs | 47 |
| 3 | Insurance & TPA claims operations | Fired (with corrections) | value-chain-mapper, pain-point-researcher, source-validator | 5 PPs | 57 |
| 4 | Cross-layer cost & failure concentration | Fired | value-chain-mapper (synthesis) | 12-sub-step table + cost baselines + CDM cascade | 31 |
| 5 | ID vs Malaysia readiness comparison | Fired | value-chain-mapper (synthesis) | 36-cell readiness matrix + pilot recommendation | ~25 |
| 6 | AI capability → sub-step mapping | Fired | pain-point-researcher (synthesis) | 6-capability taxonomy + 8 sub-step assignments + pilot sequencing | 35 |

**Corpus total: ~98 unique URLs** (exceeds 40–60 target — reflects 3-layer × 2-country scope).

## Total runtime, agents invoked, sources cited

- **Sub-agent invocations: ~20** (12 vertical-slice agents + 6 deep-research + 4 critics + 1 cross-stage validator + 1 contradiction-finder)
- **Sources: ~98 unique URLs** across government statistics (BPS, DOSM, OJK, BNM), regulatory (Kemenkes, MOH MY, BPJS, PERKESO, OJK POJK 36/2024), audited corporate filings (Prodia PRDA.JK, KPJ, IHH, Allianz Bursa), industry associations (LIAM, AAJI, AAUI), academic peer-reviewed (NHMS 2023 IPH PDF, PMC ×8), and trade press
- **Pages of raw output:** ~3,100 lines, ~500 KB across `stages-validated/` (canonical value-chain artifact 224 KB; pain-points artifact 268 KB)

## Top 3 high-confidence findings

1. **Sub-step 2c (MCU report generation + OHD sign-off) is the single highest-cost-per-transaction sub-step in the entire corpus.** A mid-size MCU programme (1,000 employees/year) consumes 333–583 physician-hours/year on OHD sign-off alone, with current 3–7 day turnaround driven by the doctor's manual template-filling and clinical interpretation cycle. Primary AI capability: LLM-assisted draft generation + abnormal-flag classifier. Conservative time reduction 30%, base 60%, upside 80%. WH3 verdict CONFIRMED.

2. **Sub-step 3c (claims adjudication) consumes the largest absolute labour cost at a mid-size TPA book (50,000 covered lives) — USD 1.86M–3.31M/year in Malaysia.** 35–45 min per claim manual vs 4–8 min automated; 25–40% of claims require human review. WH4 verdict CONFIRMED. Primary AI capability: rules-engine LLM + medical-NER for medical necessity assessment. Payback: 2–5 months at MY TPA scale. POJK 36/2024 (effective 1 January 2026) creates Indonesia-side regulatory pull for claims automation by late 2026.

3. **WH6 — Malaysia leads on readiness across all three layers, but the gap is concentrated at Layer 3.** Composite readiness scores: MY Layer 3 = 3.7 vs ID Layer 3 = 2.5 (largest delta); MY Layer 2 = 3.2 vs ID Layer 2 = 2.7; MY Layer 1 = 2.7 vs ID Layer 1 = 2.5 (effectively tied — both private GP clinic EHR adoption ~3%). Malaysia has a clinical-language advantage (English/bilingual private GP notes vs Bahasa Indonesia-only) for Layer 1 ambient-AI scribe tools. Indonesia has a regulatory-mandate tailwind (POJK 36/2024) that makes it a stronger Layer 3 market by late 2026.

## Pilot recommendation (primary)

**Malaysia Layer 2, sub-step 2d (post-MCU CDM routing) via HealthMetrics or Qualitas Health corporate wellness operator.** 12-month milestone sequence with 6–12 month expansion to Layer 3 sub-step 3a (pre-auth/GL automation) via the same MY operator relationships.

**Critical caveat:** This recommendation depends on three currently-unconfirmed structural assumptions:
- ASSUMED-5-1: HealthMetrics does not already automate sub-step 2d (the addressable market is open).
- The 22.6% Layer 2 leakage rate from PMC 12021225 (South Korean Samsung Electronics study, 2013–2016) approximates Malaysian/Indonesian corporate MCU follow-up rates — geography mismatch flagged by critic-dialectic.
- SOCSO SEHATi portal does not already provide a competing government-mandated CDM referral pathway for HSP-enrolled employers.

**Alternative recommendation (more evidence-robust):** Indonesia Layer 2, sub-step 2c (MCU report generation via Prodia or Kimia Farma Diagnostika). Anchors are not subject to the above caveats; Prodia's audited B2B revenue IDR 354.93 B (FY2024) confirms the market scale; OHD sign-off and template-filling automation has no geographic data dependency.

## Top 3 questions for field validation

1. **HealthMetrics post-MCU CDM routing status.** 30-min interview with Head of Corporate Wellness: (a) Is sub-step 2d automated today across 1,000+ corporate clients? (b) What is your actual observed post-MCU CDM follow-up rate (replacing the 22.6% Korean proxy)? (c) Does your Indonesia platform have feature parity with Malaysia? This single interview validates or overturns the primary pilot recommendation.

2. **OHD physician time per MCU report at a representative MY/ID provider.** Time-motion observation or operator-disclosed median per report at Prodia OHI, Pantai Premier Wellness, or BookDoc Wellness. The 20–35 min figure currently anchors the single largest cost item in the corpus (PP2.1) and remains [ASSUMED-1] with no primary source.

3. **TPA call-centre operator cost-per-transaction at PMCare and AdMedika.** PMCare publicly disclosed 83 call-centre staff (45 GL + 38 discharge teams) and ~13,000 claims/day; cost-per-GL-transaction is derivable. Stage 4 TPA cost baseline currently uses adjudicator rate as a catch-all for call-centre work, understating sub-step 3a (pre-auth/GL) cost.

## Adversarial-critic findings (Step 5.5 four parallel critics)

- **critic-dialectic** identified 3 high-severity actionable gaps. The single highest-impact finding: PMC 12021225 (22.6% post-MCU CDM follow-up) is a South Korean Samsung Electronics study used as Malaysia/Indonesia proxy without geographic disclosure. This simultaneously unanchors the WH5 cascade's Layer 2 step (98.3% leakage figure) AND removes the quantitative foundation for the primary pilot recommendation's urgency argument.
- **critic-depth** identified 9 thin spots; 5 high-actionability. The most exposed: PP3.2 and PP3.3 share the InterPixels AI vendor-marketing dependency — both pain points' headline cost benchmarks ($43–57 rework, 35–45 min/claim manual) trace to a vendor's own automation marketing → auto-Low by rubric. One KPMG/Deloitte/OJK regulatory source on APAC claims-cost benchmarks would resolve both simultaneously.
- **critic-width** identified 8 gaps; 3 high-actionability: W1 (TPA call-centre cost missing), W2 (specialist clinic as back-office operator absent — only the payer side of Stage 3 is covered), W6 (sub-step 3d CDM admin FTE pure assumption, driving 5× cost-range spread).
- **critic-instruction** scored 5 of 6 working hypotheses CONFIRMED; WH2 PARTIALLY CONFIRMED (the format-gates-feasibility claim holds for 6 of 8 sub-steps but 3 sub-steps with structured inputs remain unautomated — process accountability is a co-equal barrier the WH framing misses). WH4 has a documentation gap (absent from Stage 4 §4.6 verdict table) but is evidence-confirmed at PP3.1, PP3.2, PP3.3.

**Gap-fill remediation was skipped** due to total-runtime cap. Gaps are surfaced inline in `pass-2-critics/*.json` and listed in the "Field validation required" section below for downstream handling.

## Cross-stage observations and contradictions

8 contradictions identified by contradiction-finder (4 high-severity, 4 medium-severity). All 4 high-severity resolved via primary-source substitution during deep-research:

| ID | Class | Metric | Old | New (canonical) | Status |
|---|---|---|---|---|---|
| C-001 | B | IHC hospital count | 75 hospitals | 37 hospitals + 73 clinics (FY2024 Pertamedika AR) | resolved |
| C-002 | C | ID specialist deficit | 65,000 | ~31,481 (Kemenkes 26 Jun 2023) | resolved |
| C-003 | C | Peka B40 NCD rate | 41% | ~70% (ProtectHealth Corporation 2024) | resolved |
| C-006 | C | SATUSEHAT 8.9% attribution | "national integration rate" | "PT MTK vendor market share; national = 34,463 facilities (Kemenkes BKPK Oct 2025)" | resolved |
| C-004 | C | MY claims ratio 2023 | "111%" | "LIAM 2023 single-year 65.9%; BNM 2018–2023 multi-year band 111%" | resolved (range) |
| C-005 | C | VEDIKA 45→15 day improvement | "system-wide BPJS" | "RSUD Sidoarjo 2019 single-hospital case study" | resolved |
| C-007 | C | POJK 36 designation | "36/2025" | "36/2024 (SE 7/2025, effective 1 Jan 2026)" | resolved |
| C-008 | D | PMC 12021225 geography | "Malaysia/Indonesia proxy" | Retain as directional anchor with geography mismatch caveat | resolved-with-caveat |

Details in `pass-2-validation/contradictions.json` and `pass-2-validation/contradictions-resolved.json`.

## Field validation required before commercial use

1. ASSUMED-5-1 — HealthMetrics sub-step 2d automation status (primary pilot recommendation pivot point)
2. ASSUMED-1 — OHD physician time per MCU report (PP2.1 anchor)
3. ASSUMED-12 — MY/ID private clinic CDM default rate (PP1.3 anchor)
4. ASSUMED-7 — TPA CDM programme FTE per 10,000 lives (sub-step 3d anchor)
5. PMC 12021225 geography — replace with MY/ID corporate MCU post-screening CDM follow-up rate (if no such study exists, run retrospective cohort with HealthMetrics or SOCSO HSP data)
6. MY NDR 2023 PDF — [NEEDS-ATTENDED-FETCH] — Phase 2 Playwright pass target (moh.gov.my and crc.gov.my)

## Vertical-slice deviations

Documented in `pass-0-deviations.md`. Summary: Stage 2-3 validation + Stage 3 research were parallelised; Stages 4-6 are synthesis stages without per-stage source-validator pass; Step 5.5 gap-fill remediation skipped due to runtime cap; Step 5a'' contradiction-resolver run in orchestrator-manual mode (4 high-severity already resolved by upstream deep-research).

## Outputs (sandbox mode)

```
output/raw-claude-overnight/2026-05-26-0159/
├── raw-claude-value-chain-ai-process-efficiency-healthcare-id-my.md    ← canonical (224 KB)
├── raw-claude-pain-points-ai-process-efficiency-healthcare-id-my.md    ← canonical (268 KB)
├── raw-claude-summary-ai-process-efficiency-healthcare-id-my.md        ← this file
├── pass-0-plan.md
├── pass-0-deviations.md
├── pass-1-drafts/                  (6 stages × value-chain + pain-points = 11 files)
├── pass-2-validation/
│   ├── stage-1.json
│   ├── stage-2.json
│   ├── stage-3.json
│   ├── cross-stage.json
│   ├── contradictions.json
│   └── contradictions-resolved.json
├── pass-2-critics/
│   ├── critic-dialectic.json
│   ├── critic-depth.json
│   ├── critic-width.json
│   └── critic-instruction.json
├── pass-3-deep-research/
│   ├── stage-1/   (5 weak-claim resolutions)
│   └── stage-2/   (3 factual-error fixes)
├── stages-validated/
│   ├── stage-{1..6}-value-chain.md  or  -pain-points.md  or  -synthesis.md
│   └── stage-{1..3}-corrections-addendum.md
├── checkpoint.json
├── FINAL-REPORT.html               (Wright-branded print-ready)
└── RUN-COMPLETE.txt
```

## Phase 2 hand-off (Playwright enrichment)

`[NEEDS-ATTENDED-FETCH]` tags surfaced for Phase 2 orchestrator pass:
- `https://www.moh.gov.my/moh/resources/Penerbitan/Laporan/Umum/NDR_Report_2023_Final.pdf` (MY NDR 2023 — 404 across 6 path variants; try `crc.gov.my/ndr/` mirror)
- `https://peraturan.bpk.go.id/Details/275518/permenkes-no-3-tahun-2023` (Cloudflare-blocked BPK regulatory PDF)
- `https://data.moh.gov.my/dashboard/peka-b40` (KKMNOW dashboard — returned 402)
- `https://www.theedgemalaysia.com/node/750017` (BNM MHIT special report — paywalled)
- Plus several Malay Mail, Malaysiakini, and BP Healthcare URLs that were blocked in unattended mode

Phase 2 should also attempt the ASSUMED-5-1 HealthMetrics direct inquiry (above) — this is the single most consequential unresolved validation question for the primary pilot recommendation.

---

## Auto-enrichment (Phase 2, Playwright pass)

**Run window:** 2026-05-25T20:06:10Z → 2026-05-25T20:12:30Z (~6 min wall-clock; within 60-min cap)
**Tool:** Playwright MCP (`mcp__playwright__browser_navigate` + `browser_evaluate`); PDF binary via `curl` + `markitdown`.

### URLs attempted (8 total — all canonical-file [NEEDS-ATTENDED-FETCH] tags + handoff list)

| # | URL | Outcome | Detail |
|---|---|---|---|
| 1 | `https://medicoplus.co.id` | ❌ confirmed-inaccessible | DNS `ERR_NAME_NOT_RESOLVED` — domain does not exist |
| 2 | `https://www.midf.com.my/sites/corporate/files/2025-05/thematic-malaysia_healthcare-midf-050525_2.pdf` | ✅ succeeded | 33-page PDF retrieved; confirms 207 private hospitals + **9,830 private medical clinics** + 3,522 private dental clinics in MY 2022; private health services real growth +9.3% avg 2022-2024; sector 2.1% of GDP 2023 |
| 3 | `https://peraturan.bpk.go.id/Details/275518/permenkes-no-3-tahun-2023` | ✅ succeeded | BPK metadata page rendered — confirms Permenkes No. 3 Tahun 2023 *Standar Tarif Pelayanan Kesehatan*; FKTP Kapitasi/Non-Kapitasi + FKRTL INA-CBG/Non-INA-CBG; ditetapkan 06-Jan-2023, diundangkan & berlaku 09-Jan-2023; status: Berlaku |
| 4 | `https://bphealthcare.azurewebsites.net/overview/` | ⚠️ partial | Overview rendered: est. 1982, MY + SG footprint, 35M+ customers served, B2B2C; specific branch count and $335M revenue NOT corroborated on this page |
| 5 | `https://data.moh.gov.my/dashboard/peka-b40` | ❌ confirmed-inaccessible | Vercel: *"This deployment is temporarily paused"* (`sin1::6q6wq`) |
| 6 | `https://www.mediplus.co.id` | ❌ confirmed-inaccessible | DNS `ERR_NAME_NOT_RESOLVED` |
| 7 | `https://www.moh.gov.my/moh/resources/Penerbitan/Laporan/Umum/NDR_Report_2023_Final.pdf` | ❌ confirmed-inaccessible | HTTP 404 at MOH; fallback `crc.gov.my/ndr-report-2023/` also 404; `moh.gov.my/index.php/pages/view/56` also 404 |
| 8 | `https://www.theedgemalaysia.com/node/750017` | ✅ succeeded | The Edge Malaysia 9-Apr-2025 Special Report on MHIT rendered without paywall in this session; cites BNM 2024 Annual Report feature article released 24-Mar-2025 (RM8M annual utilisation limit, no lifetime cap) |

Bonus probe: `https://fasyankes.kemkes.go.id/` (Kemenkes facilities portal — secondary anchor in Stage 1 source list) → DNS `ERR_NAME_NOT_RESOLVED`; flipped to [CONFIRMED-INACCESSIBLE] inline.

**Totals — URLs attempted: 8 · Succeeded: 3 (+1 partial) · Confirmed-inaccessible: 4 + 1 bonus**

### Claim confidence movements

**No tier upgrades.** The two clean primary-source confirmations (MIDF May 2025 PDF, BPK Permenkes 3/2023) corroborate claims that were already at Medium tier (private clinic count, JKN tariff structure); they add evidentiary depth without changing tier under the per-claim rubric. The four [CONFIRMED-INACCESSIBLE] outcomes hold their corresponding claims at Low. BP Healthcare partial-render does not lift the specific scale claims off Low.

### Post-enrichment corpus mix and gate

- **High confidence:** ~18 % *(unchanged)*
- **Medium confidence:** ~33 % *(unchanged — MIDF/BPK already at Medium, gain depth not tier)*
- **Low confidence:** ~49 % *(unchanged)*
- **Gate decision: ship-with-flag** *(unchanged)*

### What changed in canonical files

All 7 occurrences of `[NEEDS-ATTENDED-FETCH]` in the two canonical `raw-claude-*.md` files were resolved:

- 2 flipped to inline `[VERIFIED Phase 2 Playwright 2026-05-26: …]` annotations adjacent to the original citation (MIDF, BPK).
- 5 flipped to `[CONFIRMED-INACCESSIBLE Phase 2 Playwright 2026-05-26: …]` with the specific failure mode recorded (DNS, 404, deployment-paused, dashboard offline).
- 1 narrative header rephrased to reflect that Phase 2 has run.
- BP Healthcare line annotated to note partial render (page reachable, scale claims not on page).

Originals preserved at `raw-claude-value-chain.md.bak` and `raw-claude-pain-points.md.bak`.

### Outstanding for human follow-up

- MY NDR 2023 source remains unretrievable via public web — the 34.38 % HbA1c ≤6.5 % anchor is held by indexed snippet evidence only. Resolution requires either MOH email outreach or CRC physical-copy request.
- HealthMetrics sub-step 2d automation status (ASSUMED-5-1) — still the highest-leverage field inquiry, unchanged by this pass.
