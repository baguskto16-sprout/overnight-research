# Stage 2 Validation Report — TMS, Dispatch & Freight Orchestration

**Run ID:** 2026-05-17-2337
**Validated:** 2026-05-18
**Context:** Per-stage validation (pass-2)
**Files scored:** `pass-1-drafts/stage-2-value-chain.md` + `pass-1-drafts/stage-2-pain-points.md`

---

## Scoring Summary

| Confidence | Count | Percent |
|---|---|---|
| High | 12 | 24% |
| Medium | 12 | 24% |
| Low | 26 | 52% |

**Total claims scored:** 50
**Unique sources catalogued:** ~74 across both files

---

## What scored High (the strong core)

The High-confidence claims are concentrated in two areas:

**Audited primary filings (6 of 12 High claims):**
- WiseTech Global FY2025 ASX Appendix 4E — A$778.7M total revenue, A$682.2M CargoWise revenue, 98% recurring (source 7)
- E2open FY2024 investor-relations earnings release — $634.6M total, $536.8M subscription (source 8)
- Trimble Q4/FY2024 earnings release — $788.8M T&L segment, 19.7% operating margin (source 9)
- Uber Technologies FY2024 + Q1 2025 SEC earnings releases — $1.28B gross bookings, EBITDA trajectory (sources 11, 12)
- Full Truck Alliance FY2024 audited earnings — RMB 11.24B revenue, $428M net income (source 13)
- C.H. Robinson FY2024 10-K PDF (SEC CDN) — $17.7B revenue, 83K shippers, 450K carriers (source 15)

**Academic peer-reviewed (2 of 12 High claims):**
- Acocella & Caplice (2023), Journal of Business Logistics, DOI 10.1111/jbl.12333 — confirmed open access via MIT CTL. Grounds the structural procurement-execution gap claims in PP2.1 RC3, PP2.4 across all root causes. 70% of FTL contracts unused and 10–30% rejection cost premium are High confidence.

**Industry association (1 of 12 High claims):**
- TIA State of Fraud April 2025 (news.tianet.org) — confirmed published; grounds $402,344 average annual loss and 22% of companies losing $200K+ in six months. Elevated to Medium on TIA-member-survey basis (not independently audited losses), but the TIA itself is a primary-association source.

---

## What scored Medium

- Verisk CargoNet 2024 Annual Analysis (3,625 incidents, $202,364 average value, +27% YoY) — recognized industry cargo theft registry, not a government stats agency; single source; Medium. Web search CONFIRMED these figures match Verisk newsroom.
- Lalatech/Lalamove FY2024 ($1.59B revenue, $11.1B GTV) — secondary-news source (sahmcapital.com citing IPO filing data); underlying data confirmed via web search from IPO prospectus but not directly cited; Medium.
- WCO/WCOOMD magazine Indonesia NLE (14.29% logistics cost as % of GDP) — primary-multilateral/ministry source but single citation and see inconsistency flag below; Medium.
- IMDA Singapore Logistics IDP (S$6.8B value added, 86,300 employees) — primary-gov source but 2018 data; outdated-source override; Medium.
- BlackBuck/Zinka Logistics IPO — trade press (inc42.com) citing public filing; single secondary; Medium.
- Haulio funding ($7.8M, Temasek-backed) — DealStreetAsia; single reputable trade source; Medium.
- Kargo Technologies funding/acquisition — techcollectivesea.com; single trade source; Medium.
- Deliveree $30M raise — idnfinancials.com; single trade source; Medium.
- WiseTech/Trimble/E2open cost driver claims — two primary filings plus one auto-low-vendor (MANH newsroom); Medium aggregate.
- TIA fraud losses ($402,344 / $40,760) — primary-association but member survey without independent verification; Medium.
- Cargo theft 93% increase 2021–2024 / 1,475% strategic theft surge — Verisk CargoNet; Medium (same as above).
- Acocella & Caplice FTL contract unused 70%, rejection premium 10–30% — High (appears twice; counted once in High totals).

---

## Override Triggers Applied

### 1. Vendor-marketing override (18 claims — largest single driver of Low scores)

Every claim about a vendor's own product, customer count, Gartner positioning, or fraud-prevention performance sourced from that vendor's domain is auto-Low, including:

- **Gartner MQ 2025 positioning** — Oracle OTM 18th leader, SAP TM 11th leader, Manhattan 7th leader, Blue Yonder 14th leader, etc. — all sourced from vendor press releases on vendor domains (oracle.com, sap.com, manh.com, blueyonder.com, e2open.com, alpegagroup.com, pando.ai). The actual Gartner report is paywalled and tagged [NEEDS-ATTENDED-FETCH]. Vendor self-announcing their Gartner placement = auto-Low.
- **Highway Load Lock adoption** (1,050+ brokers, 70 of top 100) — highway.com vendor page
- **TriumphPay $113.58M prevented losses** — triumph.io/blog (TriumphPay's own blog about its own product's impact)
- **Uber Freight 60% fraud reduction** — uberfreight.com/blog
- **Descartes MacroPoint FraudGuard 2.0 capability claims** — descartes.com/resources/news
- **Transporeon** (1,400 shippers, 145,000 carriers, €48B freight) — transporeon.com
- **Cargobase** (G2 #6, SOC 2 Type II, revenue $2.4M) — cargobase.com/blog
- **Blue Yonder** (3,000 customers, 45M monthly shipments) — blueyonder.com
- **Manhattan Associates FY2024** revenue and APAC data — manh.com/newsroom (instead of SEC EDGAR 10-K)
- **Infios rebrand** claims — infios.com press release

**Note on Manhattan Associates:** The SEC EDGAR 10-K (accession 0000950170-25-016295, filed 2025-02-07) exists and confirms $1.04B total revenue and 32% cloud subscription growth. The draft cited the vendor newsroom URL, not the 10-K. Replacing the URL with the EDGAR filing URL requires no additional research and elevates this claim from Low to High.

### 2. Aggregator market-research auto-downgrade (6 claims)

All TMS and digital freight brokerage market-size figures use aggregator research firms exclusively:
- IMARC Group ($10.3B TMS 2024), Grand View Research, Precedence Research ($36.4B–$47.97B by 2033–2035), MarketsandMarkets ($4.8B US TMS), GMInsights — all auto-downgraded to Low.
- No cross-validation against IEA, World Bank, ADB, or top-tier consultancy authored report.

### 3. Chain-of-citations (4 claims)

- **Gartner TMS market $1.32B→$2.11B** — cited via TalkingLogistics trade blog; Gartner is paywalled; trade blog citing Gartner = 0 verifiable primary sources; scored Low despite draft labeling it High.
- **TMS utilization 30–40%, 43% frustration** — Nuvocargo vendor blog citing Gartner 2024 (paywalled) and Logistics Management Annual Survey (trade magazine).
- **McKinsey blind-handoff $95B figure** — transportandlogisticsme.com trade press attributing to McKinsey; McKinsey report not directly cited. Web search confirms McKinsey origin; if McKinsey report were cited directly, score elevates to High.

### 4. Trade-press-only (7 claims)

Key operating-cost and frequency figures sourced only from trade publications or vendor blogs:
- Freight invoice error rate 3–8% (supplychainbrain.com + avantiico.com)
- LTL damage rate 3.5% (tjocargo.com + accio.com)
- TMS migration failure 76% (transportmanagement.org — unverifiable domain)
- Modal integration cost €50K–€150K (transportmanagement.org)
- CSCMP 2024 State of Logistics $2.58T — cited via PR Newswire distribution, not report directly

---

## Internal Inconsistency Flags

**FLAG 1 — Indonesia logistics cost % of GDP contradiction:**
- value-chain.md Market Size table: **14.29% of GDP** (source 17: WCO magazine citing 2023 Australia-Indonesia Partnership survey)
- pain-points.md PP2.1 and PP2.2 SEA implication: **24% of GDP** with no source footnote
These are materially different figures. One may be 2023 data vs. an older base year; one may be for total logistics costs vs. logistics cost as a share of GDP using a different methodology. Must be reconciled and sourced before final gating.

**FLAG 2 — Freight invoice error rate inconsistency:**
- value-chain.md: "3–8% of freight spend is overpaid" (footnotes 36, 37)
- pain-points.md PP2.2: "3–7% of annual freight spend" (footnote 18)
Minor; should be consistent throughout.

**FLAG 3 — Manhattan Associates citation URL:**
- Draft cites manh.com/newsroom (auto-low-vendor); the audited 10-K is at EDGAR 0000950170-25-016295. No research needed — simply replace the URL.

---

## Top 5 Weak Claims for Deep Research (Priority Order)

### 1. Gartner TMS market size $1.32B→$2.11B [PRIORITY: HIGH]
- **Problem:** Cited via TalkingLogistics trade blog; Gartner paywalled; chain-of-citations
- **Impact:** Load-bearing market sizing; labeled High in draft but is actually Low
- **Suggested query:** `ARC Advisory Group transportation management systems market size 2024 annual revenue`
- **Action:** ARC Advisory Group publishes TMS market sizing reports that are more accessible than Gartner and are a recognized primary research firm for supply chain technology markets

### 2. TMS adoption rate among mid-market shippers (51% / 25%) [PRIORITY: HIGH]
- **Problem:** Vendor-commissioned survey (InMotion Global is a TMS vendor); N undisclosed; vendor blog corroboration only
- **Impact:** Core quantitative claim for PP2.2 (entire pain point hinges on the adoption gap)
- **Suggested query:** `CSCMP OR "Kearney" OR "Armstrong Associates" TMS adoption rate mid-market shipper 2024 survey`
- **Action:** CSCMP State of Logistics (Kearney as research partner) publishes technology adoption data; Armstrong & Associates publishes annual 3PL/shipper market studies; Descartes Systems Group (DSGX) disclosed in February 2025 a survey on transportation management that is more independently constructed

### 3. McKinsey blind-handoff $95B / 19% of US logistics costs [PRIORITY: HIGH]
- **Problem:** Trade press attribution to McKinsey; no direct McKinsey URL cited; chain-of-citations
- **Impact:** Headline cost figure for PP2.5 multi-modal orchestration section; $95B is a highly persuasive number
- **Suggested query:** `site:mckinsey.com logistics "handoff" OR "interaction points" shippers carriers cost`
- **Action:** Locate the specific McKinsey report; if found and cited directly, elevates to High and removes the ASSUMED-12 tag; alternatively the McKinsey Global Institute transport study (published approximately 2020–2022) may be the origin

### 4. Freight invoice error rate 3–8% [PRIORITY: MEDIUM]
- **Problem:** All sources are trade press or vendor blogs; this figure is cited in both files and used in cost calculations
- **Impact:** Supports PP2.2 and PP2.4 cost estimates; if incorrect, cost models overstate
- **Suggested query:** `Cass Information Systems freight audit benchmark invoice error rate 2024 OR 2023`
- **Action:** Cass Information Systems (a freight audit and payment company) publishes quarterly and annual freight benchmarks including billing error data; this is a recognized industry data publisher (primary-association equivalent for freight audit); alternatively, RCLCO or Deloitte logistics cost benchmarks may contain this figure

### 5. TMS implementation failure rate 76% [PRIORITY: MEDIUM]
- **Problem:** transportmanagement.org is an unverified content marketing domain; 76% is a high-impact claim with no traceable methodology
- **Impact:** Drives PP2.2 framing around implementation risk; if unsupported, the claim should be removed or heavily qualified
- **Suggested query:** `enterprise TMS ERP implementation failure rate success 2024 Panorama Consulting OR Gartner OR McKinsey`
- **Action:** Panorama Consulting Group publishes annual ERP implementation success/failure surveys; Gartner publishes TMS Critical Capabilities reports with implementation insights; either would provide a citable, methodologically transparent failure rate benchmark

---

## Gate Decision: SHIP-WITH-FLAG

**Reasoning:**

Stage 2's audited-filing core is strong — six primary-filing sources and one peer-reviewed academic source constitute a solid evidentiary foundation for vendor revenue claims and the structural procurement-execution gap. The Acocella/Caplice JBL 2023 paper is genuinely load-bearing and well-sourced.

The 52% Low rate is driven by two recoverable structural issues, not by substantive errors in the underlying research:

1. **Market sizing uses only aggregator research** (IMARC, Grand View, Precedence, MarketsandMarkets). This is a source substitution problem, not a methodology problem — the figures are broadly directionally consistent across aggregators; the issue is the citation tier.

2. **Vendor-produced statistics dominate pain-point frequency/cost sections.** Highway, TriumphPay, Locus, Uber Freight, Descartes, Truckstop, and C.H. Robinson are all cited from their own marketing surfaces to evidence claims about their own products or their own network's performance. This is the dominant source of Low scores and is structurally expected in a TMS stage where the vendors are also the most prolific publishers of fraud and performance data.

**Three specific remediation actions before final cross-stage validation:**
1. (Immediate, no research) Replace manh.com newsroom URL for Manhattan Associates with SEC EDGAR 10-K URL — elevates one High claim from Low at no research cost.
2. (Deep research target 1) Locate McKinsey blind-handoff source — elevates PP2.5 headline figure from Low to High.
3. (Deep research target 2) Replace InMotion Global vendor survey with CSCMP/Kearney or Armstrong & Associates TMS adoption data — elevates PP2.2's core frequency claim from Low to Medium or High.

The Indonesia GDP inconsistency (14.29% vs 24%) must be reconciled in the narrative before final output.

---

*Validation performed by Source Validator agent | Stage 2 only | Not final cross-stage*
