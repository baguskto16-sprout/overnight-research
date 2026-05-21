# Stage 4 Validation Summary

**Run:** 2026-05-20-1124
**Stage:** 4 — Multi-Leg Handoffs, Subcontractor Chain Integration & Control Towers
**Artifacts scored:** `pass-1-drafts/stage-4-value-chain.md`, `pass-1-drafts/stage-4-pain-points.md`
**Validator:** Source Validator (claude-sonnet-4-6), 2026-05-20

---

## Score Distribution

| Confidence | Count | Share |
|---|---|---|
| High | 9 | 19% |
| Medium | 18 | 38% |
| Low | 20 | 43% |

**Total claims scored:** 47 (excludes 8 ASSUMED-N tagged claims, all of which score Low by definition and represent data gaps rather than sourcing failures)

Gate threshold: Low > 30% triggers ship-with-flag. At 43% Low, this stage does not ship as-is.

---

## Override Triggers Fired

| Override | Claims Affected |
|---|---|
| Vendor-marketing override | 8 — FourKites, Shippeo, project44, TransmetriQ vendor-authored stats |
| Aggregator market-research auto-downgrade | 7 — Grand View, Mordor, MarkNtel, Future Market Insights, ZoomInfo |
| Chain-of-citations | 6 — Gartner/MIT via vendor blogs; CargoNet via logistics company blog |
| Single-trade-source (operating cost figures) | 5 — pricingnow.com pricing; bookyourcargo demurrage; truckingdive TIA estimate |
| Press-release-only | 3 — project44 revenue; Quincus valuation; Janio funding |
| Trade-press-only | 3 — trans.info on Gartner MQ; Logistics Management on Armstrong & Associates |
| Outdated-source (>3 years) | 2 — project44 Series F valuation (2022-vintage); Quincus Series B (2021) |
| APAC-as-proxy (geography mismatch) | 1 — Mordor $119.4B ASEAN road freight cited as SEA sub-carrier market |
| No citation | 1 — 22% control tower effectiveness figure in PP 4.6 body text |

---

## Five Sampled URLs — Findings

**1. McKinsey Supply Chain Risk Pulse 2025 — 95%/42% tier visibility**
Status: CONFIRMED HIGH. Web search independently verifies the 95%/42% figures from an n=100 survey at the live McKinsey URL. Minor issue: the value-chain footnote (1) uses a stale URL path (`supply-chain-risk-survey-2024`); pain-points footnote (5) uses the correct live path. The finding is solid. Score: High.

**2. project44 press release — 240,000+ carriers; >30% YoY revenue growth**
Status: CARRIER COUNT CONFIRMED; SOURCE SCORES LOW. The 240K figure is independently verifiable across project44's product pages and third-party reporting (web search shows 240K–245K). However, both the carrier count (capability claim) and the revenue growth rate are sourced solely from project44's own press release. Vendor-marketing override applies to the carrier count; press-release-only override applies to the revenue growth rate. Score: Low for both.

**3. Beacon.com 2025 ETA accuracy — 13.9% on-time; 47.4% arriving 3+ days late**
Status: FIGURES CONFIRMED FROM VENDOR REPORT; NO INDEPENDENT CROSS-VALIDATION FOUND. Web search confirms the beacon.com report exists and contains the cited figures. However, Beacon is an RTTVP vendor with a commercial interest in publishing unfavorable industry conditions. No independent source (Sea-Intelligence, BIMCO, Alphaliner, Drewry) was found cross-validating these specific percentages. Score: Low. Highest-priority deep-research target.

**4. NTT DATA 2026 30th Annual 3PL Study — 90% IT priority / 57% satisfied**
Status: FIGURES CONFIRMED; CITATION IS TO TRADE PRESS RATHER THAN PRIMARY STUDY. Web search confirms the 90%/57% figures appear in both the PR Newswire press release for the 30th Annual 3PL Study and secondary trade coverage (FleetOwner, Logistics Management). The study itself (NTT DATA + Penn State + Penske) is primary-association quality; the draft cites FleetOwner trade press for the 2026 edition rather than the direct study URL. The 2024 edition (footnote 9) is correctly cited directly. Score: Medium (trade press citation of a primary study). Can be upgraded to High by updating footnote to cite `3plstudy.com` or `us.nttdata.com/en/engage/2026-third-party-logistics-study` directly.

**5. ASEAN Single Window — $6.4B savings; 4M+ documents; 4-day transit reduction**
Status: CONFIRMED HIGH. Web search finds the $6.4B figure attributed to USAID IGNITE program and corroborated by US Mission to ASEAN, ASEAN.org, and Vietnamese Ministry of Industry and Trade. Two independent government-level sources. The methodology ($2,300/transaction average) is disclosed though not peer-reviewed. Score: High. No concern here.

---

## Top 5 Weak Claims for Deep Research

**Priority 1 — PP41-2: 62% industry average RTTVP tracking rate**
Source: Shippeo.com vendor blog. Vendor-marketing override. This figure is the quantitative foundation of the "38-point gap" narrative driving Pain point 4.1 — the most important pain point in Stage 4. If the 62% baseline is vendor-manufactured, the gap narrative collapses.
Action: Search Gartner RTTVP Critical Capabilities 2024 or Eviden/Accenture for an independent industry tracking-rate benchmark. Query: `RTTVP "tracking compliance rate" OR "tracking rate" industry average 2024 Gartner OR Accenture OR McKinsey`.

**Priority 2 — PP43-1: 13.9% ocean ETA on-time (Beacon.com 2025)**
Source: Beacon.com vendor-authored report. Single source with vendor conflict of interest.
Action: Cross-validate with Sea-Intelligence Global Liner Performance Report or Alphaliner schedule reliability index. Query: `Sea-Intelligence "schedule reliability" 2025 ocean carrier on-time performance` or `BIMCO schedule reliability 2025 Q1 Q2`.

**Priority 3 — PP41-5: Gartner 34 manual system updates per disruption; MIT 25 emails per disruption**
Source: eMoldino vendor blog citing Gartner and MIT. Neither primary source is identified by report title or year. Chain-of-citations failure.
Action: Search directly for the Gartner supply chain control tower study that contains this statistic: `Gartner "34 system updates" OR "34 manual updates" supply chain control tower site:gartner.com`. If inaccessible, search MIT CTL working papers: `MIT "Center for Transportation and Logistics" disruption supply chain emails OR manual steps 2022 2023 2024`.

**Priority 4 — PP41-6 / PP42-3: Control tower pricing $200K–$500K+; implementation $2–15M**
Source: pricingnow.com anonymous Q&A aggregator. Single-trade-source override for a cost figure cited across three pain points.
Action: Search enterprise shipper 10-Ks for supply chain software vendor costs disclosed as SaaS line items. Query: `"project44" OR "FourKites" annual contract value 10-K "software subscription" site:sec.gov`. Alternatively: `supply chain visibility software annual cost Gartner Peer Insights 2024`.

**Priority 5 — PP45-1: ASEAN road freight $119.4B (Mordor Intelligence)**
Source: Mordor Intelligence auto-Low aggregator; ASEAN-level figure used as SEA sub-carrier proxy.
Action: Search World Bank Logistics Performance Index or ADB for ASEAN/SEA road freight data. Query: `ADB OR "World Bank" ASEAN OR "Southeast Asia" road freight logistics market size 2024 2025 site:adb.org OR site:worldbank.org`. Also check ASEAN Secretariat Connectivity Report.

---

## High-Confidence Anchors (9 High claims — do not require deep research)

| Claim | Source |
|---|---|
| McKinsey 95%/42% tier visibility (PP41-1, VC-1) | McKinsey authored report; independently verified |
| E2open FY2024 GAAP $634.6M (VC-8) | SEC Form 8-K, NYSE: ETWO |
| Descartes FY2025 services $590.2M (VC-9) | SEC Form 40-F, TSX/NASDAQ: DSGX |
| K+N Sea Logistics CHF 9.3B (VC-10) | K+N Annual Report 2024 |
| Maersk total revenues $55.5B (VC-11) | A.P. Moller-Maersk Annual Report 2024 |
| ASEAN Single Window $6.4B / 4M docs (VC-12, PP45-4) | Vietnamese MOIT + Singapore Customs (two primary-ministry sources) |
| NTT DATA 2024 3PL Study: 57% data quality / 68% control tower (PP42-4) | Direct NTT DATA URL cited |
| Gartner 2025: 60% supply chain digital adoption failures (PP46-1) | Gartner official press release |
| BSI/TT Club 2024 strategic theft / Indonesia share (PP44-3, PP45-3) | TT Club primary-association report |

---

## Gate Decision

**Recommendation: SHIP-WITH-FLAG**

Stage 4 contains 47 scored claims with 43% Low — exceeding the 30% threshold for a clean ship-as-is decision. The structural narrative is sound and the nine High-confidence anchors are well-sourced, but the stage relies too heavily on vendor-authored statistics for its core pain-point quantification. Three pre-ship actions are required:

1. Cross-validate the Beacon.com 13.9% ocean ETA accuracy figure with Sea-Intelligence or BIMCO schedule reliability data. If cross-validation fails, downgrade the claim language to "per Beacon.com analysis."

2. Source the 62% industry RTTVP tracking rate from a non-vendor source or flag it explicitly as a vendor-claimed figure with a disclosure that Shippeo is the source and has a direct commercial interest in this benchmark.

3. Either locate the primary Gartner report for the "34 manual system updates" figure (by report title and year, not via trade press) or remove it and replace with language that the disruption-coordination burden is substantial per multiple secondary accounts.

The eight ASSUMED-N claims are appropriately tagged with specific validation questions and represent genuine field-interview gaps rather than sourcing failures. These do not block shipping but should be disclosed to the reader as assumptions requiring primary-interview validation.

The market-sizing section is entirely Low-confidence (all aggregator sources); this is expected for a desktop research pass and is correctly disclosed in the draft itself.
