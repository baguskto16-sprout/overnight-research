# Stage 3 Validation Summary — In-Transit: Visibility & Monitoring

**Validation date:** 2026-05-20
**Context:** Per-stage validation (pass-2)
**Files scored:** `pass-1-drafts/stage-3-value-chain.md`, `pass-1-drafts/stage-3-pain-points.md`

---

## Scoring Distribution

| Confidence | Count | Percent |
|---|---|---|
| High | 11 | 15.7% |
| Medium | 9 | 12.9% |
| Low | 50 | 71.4% |
| **Total claims scored** | **70** | |

---

## Gate Decision

**Re-run recommended.** Three structural deficiencies require targeted deep research before this stage can ship: a misattributed source, a load-bearing claim with only vendor-marketing support, and the draft's incorrect "High" rating for Berg Insight data that should score Low.

---

## Override Triggers Fired

| Override | Claims Affected |
|---|---|
| Vendor-marketing-override | 22 claims — project44, FourKites, Shippeo, Motive, Tive, Controlant, Sensitech (via carrier.com), Overhaul, Parsyl, TransTRACK, Lytx, Descartes, Geotab (Wikipedia) |
| Aggregator-market-research-auto-downgrade | 5 claims — Mordor Intelligence, MarketsandMarkets, Grand View Research, Market Research Future |
| Niche-market-research-as-aggregator (Berg Insight) | 4 claims — VC-8 (INCORRECTLY RATED HIGH IN DRAFT), VC-9, PP3.4-freq-1, PP3.4-freq-5 |
| Single-trade-source | 7 claims |
| Chain-of-citations | 3 claims — Controlant Pfizer case study, WHO vaccines via vendor, Telit/Berg Insight |
| Press-release-only (no Form D) | 6 claims — Shippeo, Wakeo, Overhaul, Parsyl funding rounds |
| Misattributed-source (factual error) | 1 claim — PP3.2-cost-2 |
| Single-domain-override | 2 claims — Trucker Tools compliance benchmarks |

---

## URL Sample: 5 Spot Checks

**1. Berg Insight via GlobeNewswire (VC-8, VC-9, PP3.4-freq-1)**
Berg Insight is a niche private research firm, not in the rubric's named top-tier consultancy list. Citations are GlobeNewswire and BusinessWire press-release distributions of Berg Insight's paid-report summary data — not the report itself. Draft rated VC-8 as "High." Correct score is Low under the niche-market-research-as-aggregator override. The 17.5% SEA penetration figure — the most-cited SEA-specific metric in the entire stage — has no government statistics or multilateral corroboration.

**2. project44.com press release for project44 FY2024 revenue (VC-10, PP3.1-11)**
project44.com is auto-Low-vendor for project44's own revenue claim. project44 is a private company with no SEC 10-K. PRNewswire cross-distribution of the same press release does not constitute an independent source — it is the same press release on a different distribution channel. Score: Low.

**3. getlatka.com for Shippeo $22.3M ARR (VC-11)**
GetLatka collects revenue figures via CEO/founder phone interviews. It is not an audited data source. Draft correctly flagged "Latka self-reported" but still rated Medium. Under the vendor-marketing-override, CEO self-reported revenue on a third-party aggregator is effectively vendor self-reporting — no audit, no Form D, no SEC filing. Score: Low.

**4. iotforall.com for "IATA $35B pharmaceutical air cargo losses" (PP3.2-cost-2)**
CRITICAL SOURCE ERROR. Search confirmed the $35B figure originates from IQVIA Institute for Human Data Science (2019 Biopharma Cold Chain Logistics Survey), not from IATA. IATA's own published estimate for pharma air cargo temperature losses is $2.5B–$12.5B. The iotforall.com blog misattributes the IQVIA statistic to IATA. The claim in the pain-points file ("IATA estimates pharmaceutical air cargo temperature excursion losses at $35B/year") is factually incorrect in its attribution and must be corrected before publication.

**5. truckertools.com for 30–40% industry visibility compliance rate (PP3.1-freq-1)**
Trucker Tools is a competing RTTVP vendor that sells load-tracking software to freight brokers. The 30–40% "industry average" compliance figure — and the 80–90% shipper demand benchmark — appear exclusively on Trucker Tools' own marketing pages. The figure directly benefits Trucker Tools commercially by documenting the largest possible compliance gap that their product closes. No neutral third party (FMCSA, ATA, Gartner in a directly cited report, or peer-reviewed study) independently confirms this figure. Single-domain + vendor-marketing overrides apply. Score: Low.

---

## Top 5 Weak Claims — Deep Research Targets

### 1. PP3.1-freq-1 — Visibility compliance 30–40% industry average (PRIORITY: HIGH)

The entire Pain Point 3.1 cost structure ($800M–$1.6B broker revenue at risk) is anchored to this compliance-gap figure. It is sourced exclusively from Trucker Tools' own marketing pages with zero independent corroboration.

**Suggested searches:**
- FMCSA or ATA published data on load tracking compliance rates
- Gartner MQ 2024 RTTVP full report (gartner.com/en/documents/5298863) — analyst commentary may cite compliance benchmarks independently
- Academic search (Google Scholar): "freight visibility compliance rate carrier trucking"
- Interview target: ask operations directors at 3 mid-market freight brokers ($50M–$500M volume) for their internal tracking compliance dashboard figures

### 2. PP3.2-cost-1 — 15–25% insurance premium penalty for unverified cold-chain monitoring (PRIORITY: HIGH)

The most important cost quantification in Pain Point 3.2 is sourced from a competing IoT vendor's marketing blog (TagoIO). No actuarial or underwriting primary source is cited.

**Suggested searches:**
- IUMI (International Union of Marine Insurance) annual report or cargo premium rate statistics
- Lloyd's Market Association cargo policy premium data
- TT Club "Marine Cargo Insurance" publication or annual review
- Swiss Re sigma "World Insurance" report for pharmaceutical cargo risk premium bands
- Interview: Lloyd's syndicate underwriter covering pharma cargo (Chaucer, Beazley, BRIT) for rate differential between monitored and unmonitored cold-chain shipments

### 3. PP3.2-cost-2 — "IATA estimates $35B/year pharmaceutical air cargo excursion losses" (PRIORITY: HIGH — FACTUAL CORRECTION REQUIRED)

This is not a confidence issue — it is a factual source-attribution error. The $35B figure is from IQVIA, not IATA. Must be corrected regardless of confidence scoring.

**Required actions:**
- Replace "IATA estimates" with "IQVIA Institute for Human Data Science (2019 Biopharma Cold Chain Logistics Survey) estimates"
- Cite IQVIA 2019 report directly
- Add separate citation for IATA's actual published estimate ($2.5B–$12.5B for air cargo temperature losses) from IATA's pharma air cargo guidelines
- WHO PQS data for vaccine cold chain losses as supplementary primary-multilateral source

### 4. VC-8 / PP3.4-freq-1 — Berg Insight SEA fleet management penetration 17.5% (PRIORITY: HIGH)

Incorrectly rated "High" in the draft. Berg Insight is not in the top-tier consultancy list. The 17.5% SEA penetration figure is the most-cited SEA-specific metric in Stage 3 and it currently has only niche-market-research support via press release.

**Suggested searches:**
- BPS Indonesia: commercial vehicle registration statistics by vehicle category
- Thailand NESDC or Department of Land Transport: commercial vehicle registration data
- Malaysia DOSM: road transport vehicle statistics
- ASEAN Centre for Energy or ASEAN Secretariat: commercial vehicle fleet data
- ADB transport statistics for ASEAN commercial vehicle fleets
- Cross-check against Frost & Sullivan APAC fleet management report or McKinsey ASEAN logistics study

### 5. PP3.4-cost-1 — ASEAN road freight market $119.4B (2025, Mordor Intelligence) (PRIORITY: MEDIUM)

Mordor Intelligence is auto-Low aggregator. The $119.4B figure is the sole market-size anchor for the PP3.4 unmonitored-freight calculation ($98.7B × 82.5%).

**Suggested searches:**
- World Bank ASEAN logistics and transport sector data
- ADB (Asian Development Bank): ASEAN freight transport statistics
- ASEAN Secretariat annual report: intra-ASEAN trade logistics volumes
- McKinsey Global Institute or BCG on ASEAN logistics market sizing
- BPS Indonesia GDP by sector (transportation and warehousing) as a country-level floor

---

## Source Quality Summary

| Category | Sources Found | Notes |
|---|---|---|
| Primary-gov | 1 (FMCSA) | Adequate for US carrier fleet-size distribution only |
| Primary-multilateral | 1 (ReCAAP ISC) | Excellent for SEA piracy data; absent for market sizing |
| Primary-consultancy | 2 (Munich Re authored report, PwC Indonesia) | Munich Re is narrow; no McKinsey/BCG/Deloitte/Bloomberg NEF authored report cited |
| Primary-filing | 3 (Samsara 10-K, Karooooo 20-F, Samsara S-1) | Good for the two public companies; private vendors have no filing coverage |
| Primary-association | 2 (BSI/TT Club, Verisk CargoNet) | Strong for cargo theft data; absent for telematics/insurance |
| Primary-academic | 1 (PMC11244810) | Narrow applicability |
| Auto-low-vendor | 22 claims | Dominant source pattern; most vendor metrics have no independent verification |
| Aggregator market research | 5 claims | All auto-Low; no primary-source cross-validation provided |

**Critical absence:** No ASEAN government statistics agency source. No ADB or World Bank source. No IATA-published (not third-party attributed) source. No Gartner report directly cited — only vendor marketing versions of Gartner MQ placements.

---

## Cross-Cutting Issues

**Gartner MQ vendor positioning:** Four vendors' Gartner MQ placements (project44 "Leader #1," FourKites "Leader 4th consecutive," Shippeo "Leader first time," Overhaul "Challenger") are all sourced from the individual vendor's own press releases and marketing pages, not from the Gartner-published document at gartner.com/en/documents/5298863. This is auto-Low-vendor for each. The Gartner MQ 2024 RTTVP report exists and is the appropriate citation; the draft uses vendor marketing versions instead.

**Private company revenue claims:** project44, FourKites, Shippeo, Wakeo, Motive (pre-IPO), Overhaul — none of these private companies has a SEC 10-K. Their revenue and ARR figures are sourced from vendor press releases, CEO interviews, or trade press. All score Low under vendor-marketing-override. The stage correctly identifies these limitations in some places but not consistently.

**SEA-specific data gap:** The stage correctly identifies a SEA data gap but ironically has the same data gap in its own source base — all SEA-specific market sizing and penetration data flows through Berg Insight (niche market research, auto-Low), with no ASEAN government statistics, no ADB/World Bank multilateral source, and no top-tier consultancy authored SEA logistics report cited.

---

## Paragraph Summary

Stage 3 scored 70 claims across both files: 11 High (15.7%), 9 Medium (12.9%), and 50 Low (71.4%). The three highest-priority weak claims are PP3.1-freq-1 (visibility compliance 30–40% sourced only from competing vendor Trucker Tools' marketing site, zero independent corroboration), PP3.2-cost-1 (15–25% insurance premium penalty sourced only from IoT vendor TagoIO's blog, no actuarial source), and PP3.2-cost-2 (the "$35B IATA estimate" which is a factual misattribution — the figure comes from IQVIA 2019, not IATA, and must be corrected before publication regardless of confidence scoring). A fourth structural issue is the draft's incorrect "High" rating for VC-8 (Berg Insight SEA fleet data): Berg Insight is a niche private research firm, not a top-tier consultancy, and the citations are press-release distributions of paid report summaries — the correct score is Low, and the 17.5% SEA penetration figure (the most-cited SEA metric in Stage 3) has no government statistics cross-validation. Gate recommendation is re-run-recommended: the compliance-gap narrative (Pain Point 3.1's primary cost rationale), the cold-chain insurance penalty (Pain Point 3.2's primary cost rationale), and the misattributed $35B figure must all be resolved before the stage can ship.
