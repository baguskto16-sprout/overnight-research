# Stage 1 Validation Report — Vendor Procurement & Counterparty Risk
**Run ID:** 2026-05-17-2337
**Validation context:** Per-stage (Pass 2)
**Files scored:** stage-1-value-chain.md + stage-1-pain-points.md
**Validator:** Source Validator agent
**Date:** 2026-05-17

---

## Score Summary

| Confidence | Count | Percent |
|---|---|---|
| High | 17 | 23.6% |
| Medium | 16 | 22.2% |
| **Low** | **39** | **54.2%** |
| **Total** | **72** | 100% |

**Gate decision: RE-RUN RECOMMENDED**

54.2% of scored claims are Low confidence, exceeding the ship-as-is threshold. The core US cargo theft, legal, and regulatory claims are well-sourced. The problems are structural and clustered: vendor product statistics (all from vendor-own marketing surfaces), ASEAN market sizing (Mordor only), and several load-bearing cost figures (freight payment fraud, insurance compliance rates) that remain unvalidated assumptions.

---

## Override Triggers

### 1. Aggregator market research auto-downgrade (4 claims)
Claims: VC-1-market-TAM, VC-6-asean-road-freight, VC-7-asean-freight-logistics, PP1.2-market1-ASEAN-119B

GrowthMarketReports (for the global carrier onboarding TAM) and Mordor Intelligence (for all ASEAN market sizing) are private aggregator research firms. No ADB, World Bank, ITF, ASEAN Secretariat, or government statistics agency data was found to cross-validate any of these figures. All auto-Low regardless of how many Mordor URLs are cited.

### 2. Vendor-marketing override (17 claims)
Claims: All Highway product/operational statistics (914,719 fraud attempts blocked, 527,940 emails Q1 2026, 399 ownership changes, 5M+ loads, 1,050+ brokers), all RMIS/Truckstop self-reported stats, Carrier Assure DOT count, Carrier411 subscriber count, Transporeon network size, Trans.eu stats, Haulio network size.

The FTV Capital investor blog (ftvcapital.com) is treated as vendor-marketing-equivalent for all Highway claims: FTV is Highway's investor, the blog post cites Highway-supplied operational metrics with no independent verification, and the purpose of the content is investor promotion of a portfolio company. This is not an independent third-party source. All Highway statistics in the draft flow through either highway.com directly or ftvcapital.com — both are vendor-marketing surfaces for Highway claims.

Descartes.com capability and customer-count claims (as distinct from the audited financial results which are corroborated by Motley Fool's earnings transcript) also fall under this override.

### 3. Press-release-only override (3 claims)
Descartes MCP acquisition price and customer count claims: sourced only from Descartes own IR press release and GlobeNewswire wire distribution of that same release (not independent corroboration). Kargo Technologies 25,000 loads / 5,000 shippers: sourced from AirAsia/Teleport press release and a tech blog.

### 4. Single-trade-source override (5 claims)
RMIS "1 carrier every 12 seconds" statistic, "80% faster" efficiency claim, "97-98% carrier coverage": FreightWaves reporting RMIS self-claims — FreightWaves is one trade publication; multiple FreightWaves URLs count as one source. FMCSA procedural facts (MC number $300, one week, no biometric check) sourced from thetrucker.com and carrier-ok.com only — FMCSA.dot.gov is referenced but the specific procedural claim is not directly sourced from the government site.

### 5. Assumed-tag override (9 claims)
Nine claims explicitly tagged [ASSUMED-N] or without any credible source: SEA labor cost estimates ($4,000–$50,000), US broker labor cost estimates ($25,000–$60,000), insurance compliance rates (60–70% vs. 90%+), WTP estimates for SEA vetting tools ($200–$500/month) and integrated platforms ($800–$1,500/month), ASEAN insurance penetration (1–2% GDP), and Indonesia 4M vehicles figure (currently sourced from Sayari and Moody's blogs rather than BPS Indonesia).

### 6. Outdated-source flag (1 claim)
OECD Competition Assessment Reviews: Logistics Sector in ASEAN (2021) is 4+ years old. The regulatory fragmentation finding is structurally plausible and may still hold, but the specific OECD policy assessment has not been updated as of May 2026. Capped at Medium.

---

## Factual Discrepancies Found

**1. Armstrong & Associates $138B figure — projection vs. actuals**
The value-chain file cites $138B as "US 3PL market net revenues" from Armstrong & Associates source (9), implying 2025 actual. Armstrong's own 2025 report (confirmed by web search) shows $131.5B as 2024 actuals and projects 2025 figures. The $138B is Armstrong's 2025 prediction, not an actuals figure. This must be corrected: label it as "Armstrong 2025 projection" not "2025 actual." The $131.5B 2024 actual is cited in source (24) of the value-chain file, creating an internal contradiction between sources (9) and (24).

**2. Thailand LPI 2023 rank — 34th vs. 37th**
The value-chain file (footnote 11 context) says Thailand ranks 34th in the World Bank LPI 2023. The pain-points file (footnote 16) says Thailand ranks 37th. One of these is wrong. The World Bank LPI 2023 must be checked directly and both files corrected to match.

---

## High-Confidence Claims (anchor points)

These 17 claims are well-sourced and can be treated as reliable anchors:

- US + Canada cargo theft losses: $725M (2025), $454.9M (2024) — Verisk CargoNet + FBI IC3 (independent corroboration)
- US cargo theft incident counts: 2,646 confirmed (2025, +18%); 3,625 (2024, +27%) — CargoNet + NICB (independent corroboration)
- Average per-incident cargo loss: $273,990 (2025), $202,364 (2024) — CargoNet + NICB
- 25% of Q1 2026 cargo theft incidents are cyber-enabled — FBI IC3 PSA-260430 + TT Club/BSI 2024
- Montgomery v. Caribe Transport II ruling (unanimous, May 14, 2026, No. 24-1238) — supremecourt.gov primary opinion
- FinCEN CTA domestic entity non-enforcement (March 21, 2025) — fincen.gov regulatory release
- FBI IC3 PSA-260430 confirms organized criminal groups leveraging carrier account compromise — ic3.gov
- World Bank LPI 2023 SEA country rankings — World Bank primary source
- TT Club/BSI 2024 Cargo Theft Report: Asia hotspot identification, insider theft percentages — ttclub.com PDF confirmed
- TriumphPay $28.4B annualized payment volume; $100B+ cumulative; 50%+ of US brokered freight — Triumph Financial SEC-filed shareholder letter
- Roper Technologies Network Software (includes DAT) FY2024 net revenues $1,475.6M — Roper audited annual results
- Singapore LTA DataMall confirmed: no freight carrier licensing data in public API — LTA government portal

---

## Weak Claims for Deep Research (priority order)

### WC-1 (HIGH PRIORITY): Freight payment fraud $500M–$700M annually
**Claim:** Annual freight fraud payment losses (distinct from physical cargo): $500M–$700M
**Current source:** FTV Capital investor blog (Highway's investor) — auto-Low
**Why load-bearing:** Core cost quantification in pain point 1.1; the only figure distinguishing payment fraud from cargo theft losses
**Search query:** `freight payment fraud annual losses 2024 2025 "billion" site:tianet.org OR site:ir.triumph.io OR site:cscmp.org OR "TriumphPay" fraud loss`

### WC-2 (HIGH PRIORITY): Highway Q1 2026 fraud frequency statistics
**Claims:** 527,940 fraudulent emails blocked; 399 suspicious ownership changes; 169.6% ownership fraud increase; 89.6% identity theft increase; 551 international access attempts
**Current source:** Highway's own GlobeNewswire press release — auto-Low (vendor marketing)
**Why load-bearing:** These statistics are cited 6+ times across both documents and drive the frequency characterization for pain point 1.1
**Search query:** `Q1 2026 freight fraud statistics TIA Watchdog OR CargoNet quarterly OR FBI freight identity theft 2026 annual increase`

### WC-3 (HIGH PRIORITY): ASEAN/Indonesia road freight market size
**Claim:** ASEAN road freight $119.43B (2025); Indonesia $53.88B
**Current source:** Mordor Intelligence — auto-Low aggregator
**Why load-bearing:** Sole market sizing claim for the SEA opportunity framing in PP1.2 and PP1.4
**Search query:** `ASEAN road freight transport market size "Asian Development Bank" OR ADB OR "World Bank" OR "ASEAN Secretariat" 2023 2024 statistics`

### WC-4 (HIGH PRIORITY): Global carrier onboarding market TAM $1.62B–$4.38B
**Current source:** GrowthMarketReports — auto-Low aggregator
**Why load-bearing:** Primary market sizing for the entire stage; bottom-up triangulation incomplete
**Search query:** `carrier onboarding compliance platform market size McKinsey OR BCG OR Deloitte OR Gartner OR Trimble annual report Transporeon revenue 2024 2025`

### WC-5 (MEDIUM PRIORITY): Insurance COI compliance gap 60–70% vs. 90%+
**Claim:** Point-in-time COI verification achieves 60–70% compliance; real-time monitoring achieves 90%+
**Current source:** Tagged [ASSUMED-7]; oipinsurtech.com insurtech blog
**Why load-bearing:** Key differentiator claim for PP1.3 pain on fragmentation
**Search query:** `freight carrier insurance COI compliance rate point-in-time real-time monitoring data site:marsh.com OR site:aon.com OR site:rmis.com OR NICB report 2024 2025`

### WC-6 (MEDIUM PRIORITY): Nuclear verdict median $36M for trucking litigation
**Claim:** Trucking nuclear verdicts (>$10M) had a median of $36M in 2022
**Current source:** Insurance blog (beinsure.com) and law firm blog (mwl-law.com) — secondary only
**Why load-bearing:** Legal risk quantification anchor for PP1.1 post-Montgomery liability section
**Search query:** `ATRI "nuclear verdict" trucking median 2022 2023 site:atri-online.org OR "American Transportation Research Institute" nuclear verdict trucking "$36 million"`

### WC-7 (MEDIUM PRIORITY): BlackBuck IPO operational statistics
**Claim:** 963,345 truck operators transacted FY2024; 27.5% of all Indian truck operators; GTV ₹173,961.93M
**Current source:** zerodha.com (broker marketplace listing) + business-standard.com (news) — aggregator + secondary news
**Why load-bearing:** Primary evidence for India market size and BlackBuck's market position
**Search query:** `Zinka Logistics Solutions BlackBuck DRHP SEBI prospectus 2024 site:sebi.gov.in OR site:bseindia.com OR "red herring prospectus" 963345`

### WC-8 (MEDIUM PRIORITY): Indonesia 4M+ registered commercial vehicles
**Claim:** Indonesia has 4M+ registered commercial vehicles, predominantly owner-operated
**Current source:** Sayari resources page + Moody's blog — neither is BPS Indonesia
**Why load-bearing:** Structural foundation for the SEA fragmentation argument throughout PP1.2
**Search query:** `BPS Indonesia kendaraan bermotor niaga commercial vehicle registered 2022 2023 2024 site:bps.go.id`

---

## Source Quality Summary

**Unique domains cited:** 48 across both files

**Primary-tier sources confirmed and usable:**
- 6 government sources (FBI IC3, FinCEN, FMCSA reference, LTA DataMall, Kemenhub, Thailand DLT — the last two cited to document API absence)
- 2 multilateral (World Bank LPI, OECD ASEAN — latter outdated)
- 1 primary legal (US Supreme Court opinion)
- 3 primary filings (Triumph Financial SEC letter, Roper audited results, Descartes audited results via third-party transcript)
- 5+ primary associations (CargoNet/Verisk, TIA 2024, TIA 2025, TT Club/BSI, NICB, Armstrong — Armstrong figure has factual discrepancy)

**Sources that provide zero independent evidence:**
- Highway operational statistics: 100% from highway.com or ftvcapital.com (investor)
- RMIS operational statistics: 100% from FreightWaves reporting vendor self-claims or truckstop.com/rmis.com own site
- Carrier Assure, Carrier411, Transporeon, Trans.eu, TIMOCOM: own marketing surfaces only
- ASEAN market sizing: 100% Mordor Intelligence

---

## Gate Decision Rationale

**Re-run recommended.** The draft has a solid factual core (US cargo theft data, legal landscape, government regulatory actions) that scores well. The problem is structural: two entire sections of the value-chain map (Current Players — all vendor statistics) and one entire SEA pain-point cluster (market sizing) are almost entirely Low-confidence because they rely on vendor self-reporting and private aggregator market research respectively. The draft's own [ASSUMED] tags correctly identify 9 additional gaps.

Deep research targeting the 8 weak claims above — particularly WC-1 (freight payment fraud independent quantification), WC-2 (independent Q1 2026 fraud trend corroboration), and WC-3/WC-4 (ASEAN market sizing from primary sources) — would materially improve the score. Correcting the Armstrong $138B factual discrepancy and the Thailand LPI rank contradiction are pre-requisite edits regardless of deep-research outcomes.

