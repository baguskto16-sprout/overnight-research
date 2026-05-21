# Stage 2 Validation Summary
**Stage:** Freight Procurement & Tendering  
**Files scored:** `pass-1-drafts/stage-2-value-chain.md`, `pass-1-drafts/stage-2-pain-points.md`  
**Validation date:** 2026-05-20  
**Validator:** Source Validator (per-stage context)

---

## Score Distribution

| Confidence | Count | Share |
|---|---|---|
| High | 18 | 23.4% |
| Medium | 9 | 11.7% |
| Low | 50 | 64.9% |
| **Total** | **77** | **100%** |

**Gate recommendation: REMEDIATE** — 64.9% Low confidence exceeds acceptable threshold for delivery. The draft has a credible factual spine but the majority of sourced claims do not survive override scrutiny.

---

## URL Sample Results (5 of 5 live — no 404s)

| URL | Claim | Result |
|---|---|---|
| news.tianet.org — TIA April 2025 State of Fraud | 22% of brokers lost >$200K; $800M industry losses | PASS — content confirmed |
| ttclub.com — BSI/TT Club 2024 Cargo Theft Report PDF | 18% strategic theft; 1,500% growth | PASS — confirmed April 2025 publication |
| 3plogistics.com — Armstrong & Associates 3PL estimates | US 3PL $307.9B 2024; 2.8% YoY growth | PASS — confirmed by independent trade sources |
| prnewswire.com — Overhaul FraudWatch launch | 14% flagged, $100M saved | PASS (live) — but auto-low-vendor override applies; vendor's own PR |
| oecd.org — OECD 2021 ASEAN Logistics PDF | Information asymmetry in ASEAN road freight | PASS (live) — but outdated-source override applies (5 years old); claim paraphrases rather than quotes OECD |

---

## Override Triggers

### Auto-Low-Vendor (22 claims)
The single most damaging pattern. Vendor product capability claims, performance metrics, and customer statistics are sourced from the vendor's own website, product pages, or vendor-distributed press releases.

Key examples:
- **Truckstop 57% fraud reduction** (VC-17) — sourced from `truckstop.com/product/risk-factors/`. No independent audit.
- **project44 4.1% cost reduction / 17% OTP improvement** (VC-18) — sourced from project44's own PR Newswire launch announcement and `carrierassure.com`. Neither is an audited third-party study.
- **Loadsure "80–90% of loads under/uninsured"** (PP2.3-1, PP2.4-1) — CEO claim from `loadsure.net` marketing article. This figure drives the entire underinsurance pain point narrative but has no independent insurer or regulatory validation.
- **Highway blocked 1,986,995 emails** (PP2.1-9) — Highway's own GlobeNewswire press release. Highway defines "blocked email attempt" with no published methodology.
- **Truckstop 2025 Broker Insights Survey — 86% name double brokering** (PP2.1-7) — sourced from `truckstop.com/press-releases/`. Truckstop conducted the survey about Truckstop's own market; potential selection and framing bias; not independently replicated.

### Aggregator Market Research Auto-Downgrade (6 claims)
All market-sizing figures for TMS, SEA road freight, and freight procurement software TAM derive from disqualified aggregators.

- TMS market $15.92B (MarketsandMarkets) — auto-Low
- TMS market $16.8B (Grand View Research) — auto-Low
- Freight procurement software $1.72B–$1.97B (DataIntelo, GrowthMarketReports) — auto-Low
- ASEAN road freight $119.4B (Mordor Intelligence) — auto-Low
- SEA 3PL market $26.6B (MarkNtel Advisors) — auto-Low
- ASEAN freight and logistics (Mordor, second citation) — auto-Low

**The corpus has no defensible market-sizing figure for TMS, SEA road freight, or freight procurement software TAM.** Transporeon revenue (~$207M, High confidence) remains the only calibrated primary data point for procurement platform scale.

### Assumed Tags (15 claims)
The draft is transparent about uncertainty, tagging 15 claims [ASSUMED-N] across both files. All are auto-Low. The most consequential:
- **ASSUMED-4** (spot loads "3x theft rate" vs. contracted lanes) — cited in stage overview but no primary source exists. Must be resolved or removed before delivery.
- **ASSUMED-2** (fewer than 5% of brokers do per-load carrier identity checks) — key frequency claim for Pain point 2.1 with no validated survey data.
- **ASSUMED-1** (dispatcher labor cost $35–$50/hour) — used to calculate $18K–$50K/year cost; requires three-broker salary check.

### Chain-of-Citations (3 cases)
- **Gartner 2024 TMS MQ** (VC-5): All four cited URLs (oracle.com, news.sap.com, e2open.com, solutionsreview.com) trace to the same paywalled Gartner report. Three of four are auto-low-vendor (vendors citing their own Gartner recognition). One secondary-trade source remains. Score: Low.
- **Transfix Shield capability** (PP2.2-5): Three sources (prnewswire.com, globaltrademag.com, supplychainbrain.com) all originate from Transfix's own launch PR. Chain = 1 source (Transfix). Auto-low-vendor for capability claim.
- **400% double-brokering spike** (PP2.2-9): freightcaviar.com blog cites Truckstop data. Chain = 1 source (Truckstop, which is itself the vendor).

### Internal Inconsistency — MUST RESOLVE
**Strategic theft as % of all US incidents:**
- BSI/TT Club April 2025 (High confidence): **18%**
- transcredit.com 2025 (Low confidence): **35%+**

These figures appear in the same corpus without reconciliation. The High-confidence source (BSI/TT Club) should govern. The 35%+ figure from transcredit.com must be removed or footnoted with an explanation of the methodological difference (e.g., different time window, different incident definition).

---

## High-Confidence Spine — What Is Solid

The draft's factual backbone is well-sourced and survives scrutiny:

| Claim | Source | Why Strong |
|---|---|---|
| US 3PL market $307.9B (2024) | Armstrong & Associates | Primary research; industry standard |
| Strategic theft 1,500% growth 2022–2024; fictitious pickups 66/yr → 576 (2023) | CargoNet (Verisk) + BSI/TT Club | Two independent primary-tier sources |
| Strategic theft = 18% of US cargo theft incidents | BSI/TT Club April 2025 report | Named authored industry-body report |
| $202,364 average cargo theft per incident (2024) | CargoNet (Verisk) | Primary-association data |
| $454.9M total reported cargo theft losses (2024, +60% YoY) | Verisk/CargoNet newsroom | Public company primary disclosure |
| Uber Freight FY2024 revenue ~$5.17B | Uber SEC 8-K filings | Primary-filing |
| E2open FY2024 revenue ~$635M | E2open SEC Form 8-K | Primary-filing |
| Transporeon revenue ~€190M (2023); 25% YoY; 80% gross margin | Trimble investor relations | Primary-filing (NYSE:TRMB) |
| WiseTech/E2open acquisition $2.1B enterprise value (May 2025) | WiseTech corporate announcement | Confirmed by multiple independent sources |
| ASEAN Secretariat logistics digital economy framework (2024) | asean.org PDF | Primary-multilateral |
| BSI/TT Club — Indonesia 14% Asia incidents; 13% insider involvement | BSI/TT Club 2024 report | Primary-industry-body |
| TIA April 2025 State of Fraud — 22% lost >$200K; 65% increase in reports | TIA (industry association) | Primary-association |

---

## Top 5 Weak Claims for Deep Research

### 1. Internal inconsistency: 18% vs. 35%+ strategic theft share (PRIORITY: HIGH)
**Claim text:** PP2.3-10 cites "strategic cargo theft grew from <5% to 35%+ of all reported cargo thefts between 2022 and 2025"  
**Problem:** Contradicts BSI/TT Club 18% figure in the same corpus. transcredit.com is a single-trade-source blog with no named underlying dataset.  
**Action:** Remove transcredit.com figure. Confirm BSI/TT Club 2025 methodology for the 18% figure: search `site:ttclub.com OR site:bsigroup.com strategic cargo theft percentage 2024 methodology`.

### 2. Loadsure "80–90% of loads under/uninsured" (PRIORITY: HIGH)
**Claim text:** "Up to 80–90% of loads are under or uninsured" — central to Pain point 2.4's entire cost narrative  
**Problem:** Auto-low-vendor. CEO claim from vendor's own marketing material. No independent underwriter, regulator, or industry association corroborates this specific figure.  
**Action:** Search for FMCSA motor carrier insurance adequacy data, TT Club cargo underinsurance research, Swiss Re cargo market data, or Insurance Information Institute motor truck cargo statistics. Query: `cargo underinsurance freight US "per conveyance" FMCSA OR "TT Club" OR "Swiss Re" OR "Insurance Information Institute" 2023 OR 2024`.

### 3. Q1 2025 average theft value $273,990 (PRIORITY: HIGH)
**Claim text:** "Average value per theft rose to $273,990 in 2025, up 36% from 2024" — critical escalating-cost evidence in PP2.2  
**Problem:** Sourced only from itsupplychain.com (secondary-trade). The underlying data source for this figure is not identified in the draft. If this traces to CargoNet or BSI, cite the primary.  
**Action:** Query `"$273,990" OR "273990" cargo theft 2025 Q1 site:cargonet.com OR site:verisk.com OR site:ttclub.com OR site:bsigroup.com`. Also check the BSI/TT Club 2025 interim report or CargoNet Q1 2025 press release.

### 4. Highway fraud volume metrics (PRIORITY: HIGH)
**Claim text:** Highway blocked 1,986,995 fraudulent email attempts in FY2025 (117% YoY); Q2 2025 showed 135% spike in MC ownership changes  
**Problem:** Auto-low-vendor (Highway's own GlobeNewswire press releases). No third-party audit or independent methodology validation for what constitutes a "blocked email attempt" vs. a legitimate email screened.  
**Action:** Search for FreightWaves, TIA, or FMCSA coverage independently citing Highway's fraud index figures. Query: `Highway "freight fraud index" 2025 independent OR analysis OR FMCSA site:freightwaves.com OR site:tianet.org OR site:truckingdive.com`. If unavailable, the figures should be cited as "Highway self-reported" with a vendor-source caveat.

### 5. Gartner 2024 TMS MQ leader positions (PRIORITY: MEDIUM)
**Claim text:** Oracle 17th consecutive year as Gartner MQ TMS Leader; SAP 10th consecutive year  
**Problem:** All four citations trace to the paywalled Gartner report via vendor PRs (auto-low-vendor for oracle.com/news and news.sap.com). Only one secondary-trade URL (solutionsreview.com) provides independent coverage.  
**Action:** Access Gartner 2024 TMS MQ via institutional license, or cite the solutionsreview.com summary with the caveat "per vendor announcements and trade press summary." Alternatively, the Forrester Wave for Transportation Management Systems (if published 2023–2025) provides an independent analyst quadrant that is not paywalled for summary-level citations.

---

## Summary Paragraph

Stage 2 contains 77 scored claims across value-chain and pain-point artifacts. 64.9% of claims score Low confidence — the dominant failure modes are pervasive auto-low-vendor sourcing for product and market metrics, and aggregator auto-downgrades for all market-sizing figures. The three top weak claim IDs requiring immediate deep research are **PP2.3-10** (18% vs. 35%+ internal inconsistency — must be resolved before delivery), **PP2.4-1/PP2.3-1** (Loadsure "80–90% underinsured" claim driving the entire underinsurance pain point with no independent validation), and **PP2.2-2** ($273,990 per-incident figure sourced from a trade blog without tracing to the underlying primary data source). Recommendation: **REMEDIATE** — do not ship as-is. The cargo theft statistics spine (CargoNet, BSI/TT Club, Armstrong & Associates, Uber/E2open SEC filings, Trimble IR) is High quality and publishable; the vendor metric layer and all market-sizing TAM figures require either primary-source replacement or explicit confidence caveating before the corpus can be delivered.

