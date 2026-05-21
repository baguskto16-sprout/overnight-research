# Stage 6 Source Validation Summary
## Post-Incident: Claims, Insurance & Recovery

**Run:** 2026-05-20-1124
**Validated:** 2026-05-20
**Context:** Per-stage validation — priority stage for Tokio Marine + ID&E venture pitch
**Files scored:** `pass-1-drafts/stage-6-value-chain.md` + `pass-1-drafts/stage-6-pain-points.md`

---

## Scoring Distribution

| Confidence | Count | Share |
|---|---|---|
| High | 9 | 19% |
| Medium | 8 | 17% |
| Low | 30 | 64% |
| **Total** | **47** | **100%** |

**Gate decision: Ship-with-flag** (64% Low; threshold for ship-with-flag is 30–70% Low)

---

## What Is Solid

Nine claims are High confidence and form the structural backbone of the stage:

- **IUMI total cargo premium $22.64B** (primary-association, two corroborating sources — with PDF caveat below)
- **TT Club 2024 Annual Report financials** ($284.2M GWP, 93% retention) — primary-association, directly from the mutual's published annual report
- **Verisk CargoNet $725M theft losses, 3,594 incidents** — primary incident database, directly from Verisk's own statistics release
- **Tokio Marine Holdings FY2024 net income ¥695.81B, revenue ¥7.42T** — primary-filing, TSE-listed company's annual integrated report IR page
- **FMCSA 12,300 compliance reviews (2024)** — primary-gov (fmcsa.dot.gov)
- **BSI/TT Club 2025: 22% global cargo theft involves insider cooperation** — primary-association
- **ReCAAP ISC: Strait of Malacca piracy 108 incidents, 19-year high** — primary-multilateral (intergovernmental anti-piracy body)
- **BSI/TT Club 2025: Indonesia top-9 globally; 70% truck-based; Asia insider involvement elevated** — primary-association
- **IUMI Asia/Pacific +8.8% YoY growth (2024)** — primary-association (same IUMI press release, consistent figure)

---

## What Is Weak: Top 5 Claims for Deep Research

### 1. VC-MS-10 / PP6.2-6: Nirvana $1.5B valuation + Tokio Marine Future Fund investment (Priority: HIGH)

**Score: Low.** The $1.5B valuation for Nirvana Insurance's December 2025 Series D comes from Crunchbase news and TechCrunch — both secondary-news, neither an audited filing. No Form D is cited. More critically for the pitch: the claim that Tokio Marine Future Fund is a portfolio investor in Nirvana is sourced from CBInsights (data aggregator) and a 2022 BusinessWire announcement of the CVC fund launch — neither source directly confirms Nirvana's current portfolio status. This is the single most consequential claim in the document for the Tokio Marine + ID&E pitch and it has the weakest evidential chain in the entire artifact.

**Deep research action:** Search SEC EDGAR for Nirvana Insurance Form D filings (Series D, Q4 2025). Verify Tokio Marine Future Fund's Nirvana participation either through the EDGAR filing investor list or via Tokio Marine Holdings' own integrated report CVC portfolio disclosures.

### 2. VC-MS-1: IUMI 35.15% Asia/Pacific share and +8.8% YoY growth (Priority: HIGH)

**Score: Medium** — elevated to priority because of the NEEDS-ATTENDED-FETCH flag. The IUMI 2024 Stats Report PDF is the only authoritative source for 35.15% and +8.8%. The markitdown conversion failed; these figures are taken from IUMI's press release and a secondary IIMS trade summary. The entire SEA market size estimate ($7.96B) is derived from these figures. If the PDF shows different regional breakdowns, every market-sizing table in the pitch changes.

**Deep research action:** Attended Playwright fetch of the IUMI 2024 Stats Report PDF. Verify all four figures — $22.64B, 35.15%, +8.8%, China 17.6% — directly from the PDF statistics tables before presenting to Tokio Marine.

### 3. PP6.1-11: 73% recovery rate with real-time GPS alert vs <20% without (Priority: HIGH)

**Score: Low.** Single source: fleetrabbit.com, a fleet management vendor blog with no disclosed methodology. This is the quantitative anchor for the entire "detection gap costs $386M" calculation in Pain Point 6.1. No CargoNet, TAPA, or government agency has published this specific 73% / <20% split. The entire cargo detection-gap ROI argument rests on this unverified vendor blog statistic.

**Deep research action:** Search Verisk CargoNet publications and TAPA reports for documented recovery-rate-by-alert-latency data. If not findable, this claim must be downgraded to ASSUMED in the artifact.

### 4. PP6.5-2 (and PP6.2-3): $35B global pharmaceutical supply chain loss figure (Priority: MEDIUM)

**Score: Low** — no citation at all in PP6.5; in PP6.2, attributed to "Munich Re / Maersk / industry data" without a source URL. This figure appears twice in the document as a scale anchor for the parametric cold-chain insurance opportunity. Munich Re has published cargo loss sigma reports; if this figure comes from a named Munich Re publication, it would be primary-consultancy tier. If it comes from Maersk's own marketing, it is auto-low-vendor.

**Deep research action:** Search Munich Re publications for pharmaceutical cargo loss statistics. Search IQVIA, PhRMA, or WHO for published pharmaceutical supply chain loss estimates. Query: "pharmaceutical supply chain temperature excursion losses $35 billion Munich Re OR IQVIA OR WHO OR World Bank site:munichre.com OR site:iqvia.com".

### 5. PP6.3-3: FMCSA $51M median jury award for trucking liability (Priority: MEDIUM)

**Score: Low.** Single source: blog.gettransport.com, a trade blog. The $750,000 statutory minimum is verifiable from 49 CFR Part 387 (primary-gov), but the $51M jury award figure needs ATA, IIHS, or insurance industry association sourcing. The structural gap between $51M verdicts and $750K minimums is the core argument for the subrogation section, which is one of the strongest structural pain points in the stage.

**Deep research action:** Search trucking.org (American Trucking Associations), IIHS, or commercial trucking insurance publications for nuclear verdict / large jury award statistics. Search FMCSA directly for any published liability cost data.

---

## Priority Claim Verdicts (as requested)

| Claim | Score | Key Issue |
|---|---|---|
| IUMI $22.64B 2024 marine cargo premium | Medium | PDF not directly verified; data from press release + IIMS summary only |
| Asia/Pacific 35.15%, +8.8% YoY | Medium | Same PDF fetch failure; sub-figures not confirmed from PDF tables |
| Nirvana $1.5B valuation | Low | Secondary-news only; no Form D; press-release-only override |
| Tokio Marine Future Fund in Nirvana | Low | CBInsights aggregator + 2022 fund-launch press release only |
| Loadsure $11M Series A | Low | Vendor own site + investor PR; no Form D or Companies House filing |
| Parsyl $66M total funding | Low | Vendor own site + investor PR; no Form D |
| Cover Genius $80M Series E | Low | GlobeNewswire company PR only; no Form D or ASIC filing |
| Breeze funding / traction | Low | No Form D; trade press + vendor announcements |
| CargoNet 56% recovery rate | N/A | Figure does not exist in artifact; CargoNet explicitly states no public recovery rate |
| Malacca piracy +281% YoY 2025 | Medium | TT Club primary-association + ReCAAP cited; but date inconsistency in artifact (April 2025 vs April 2026) needs resolution; PDF not fetched |
| Carmack Amendment framework | Medium (structure) / Low (specific figures) | Statute exists as primary-legal but cited through law firm blogs; $1-2/pound figure from secondary-trade only |
| FAAAA preemption, 11th Circuit 2023 | Medium | Underlying court ruling is primary-legal but cited through Falvey Insurance Group blog |
| Tokio Marine 20-F / annual report | High (parent consolidated) / Low (TMHCC GWP) | Tokio Marine Holdings IR page is correct primary-filing; TMHCC GWP sourced from TMHCC marketing page — use parent company segment disclosures instead |

---

## URL Sample (5 of 88 unique sources)

| # | URL | Classified as | Notes |
|---|---|---|---|
| 1 | iumi.com/news/press-release/steady-insurance-markets... | primary-association | IUMI's own press release; authoritative for headline figures; PDF not fetched |
| 2 | verisk.com/company/newsroom/cargo-theft-losses-surge... | primary-association | Verisk CargoNet 2025 Annual Statistics; primary incident database |
| 3 | news.crunchbase.com/ai/insurance-platform-nirvana... | secondary-news | Crunchbase news article; no Form D; insufficient for valuation/funding claims in pitch context |
| 4 | prnewswire.com/news-releases/overhaul-combines-its... | auto-low-vendor | Overhaul's own PRN release; vendor-marketing override applies to all Overhaul self-reported metrics |
| 5 | tokiomarinehd.com/en/ir/download | primary-filing | Tokio Marine Holdings IR page; correct source for FY2024 consolidated figures |

---

## Override Summary

| Override rule | Claims triggered |
|---|---|
| Vendor-marketing (auto-Low) | 19 claims |
| ASSUMED-tag | 12 claims (ASSUMED-1 through ASSUMED-12) |
| Press-release-only (no Form D / filing) | 5 claims |
| Aggregator market research auto-downgrade | 2 claims |
| Single-trade-source (quantified metric) | 7 claims |
| No citation (claim made without footnote) | 1 claim (Singapore $5B pharma exports in PP6.5) |
| Outdated source (>3 years) | 1 claim (payloadasia.com 2021) |
| NEEDS-ATTENDED-FETCH (PDF not verified) | 3 sub-figures within IUMI VC-MS-1 |
| Date inconsistency in artifact | 1 (BSI/TT Club report cited as "April 2025" in value chain vs "April 2026" in pain points) |

---

## Recommended Actions Before Pitch Use

**Attended fetch (blocking):**
1. IUMI 2024 Stats Report PDF — verify 35.15%, 8.8%, 17.6% directly from tables
2. TT Club/BSI piracy PDF — verify 281% and 108 incidents; resolve April 2025 vs April 2026 date discrepancy
3. SEC EDGAR Form D — verify Nirvana Insurance Series D (Q4 2025); confirm Tokio Marine Future Fund in investor list

**Deep research (strongly recommended before pitch):**
4. Replace Crunchbase/TechCrunch Nirvana citations with Form D filing or Tokio Marine's own integrated report CVC section
5. Replace fleetrabbit.com 73%/<20% recovery rate with TAPA, CargoNet, or government-sourced benchmark — or demote to ASSUMED
6. Locate primary source for $35B pharmaceutical supply chain loss figure (Munich Re sigma or IQVIA publication)
7. Replace blog.gettransport.com jury award figure with ATA or IIHS primary source
8. Cite 49 CFR Part 387 directly (primary-gov) for $750K carrier minimum instead of law firm blogs
9. Replace TMHCC GWP citation from tmhcc.com marketing page with Tokio Marine Holdings annual report segment disclosure

**Structural corrections:**
10. Remove payloadasia.com (2021) citation from PP6.4 — replace with ReCAAP ISC 2025 annual report already cited in the same pain point
11. Add footnote for Singapore $5B+ pharmaceutical exports claim in PP6.5 (no citation currently)
12. Resolve date inconsistency: the BSI/TT Club report is cited as "April 2025" in the value chain and "April 2026 edition" in the pain points

---

## Summary Paragraph

Stage 6 produced 47 scored claims across the value chain and five pain points. 30 (64%) score Low confidence, 8 (17%) Medium, and 9 (19%) High, placing the stage in the "ship-with-flag" band. The three weakest claim IDs driving the most pitch risk are VC-MS-10/PP6.2-6 (Nirvana $1.5B valuation and Tokio Marine Future Fund participation — Low, sourced from Crunchbase news and a CBInsights aggregator with no Form D or filing citation), VC-MS-1 (IUMI 35.15% Asia/Pacific share and +8.8% YoY — Medium only because the PDF verification failed, leaving granular sub-figures unconfirmed from the authoritative source), and PP6.1-11 (73% vs <20% recovery rate differential — Low, single fleet management vendor blog, no independent methodology). The recommendation is to complete three blocking attended-fetch actions — IUMI PDF, TT Club/BSI piracy PDF, and Nirvana Form D on SEC EDGAR — before using any figures from this stage in the Tokio Marine + ID&E venture pitch. The stage's structural arguments (SEA has no parametric cargo insurance, no theft recovery network, broken subrogation chain, and no telematics-native underwriting) are directionally sound and supported by primary-association sources where available, but the quantitative claims that would anchor a term sheet or market sizing discussion are undercooked and require the deep research actions above.
