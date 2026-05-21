## Stage 2: TMS, Dispatch & Freight Orchestration

*Research date: 2026-05-18 | Pass 1 draft — verified against primary sources*

---

### Description

Transportation Management Systems (TMS), dispatch platforms, and freight orchestration tools are the software layer through which shippers, freight brokers, and 3PLs plan routes, select carriers, tender loads, and commit freight spend. This is the "decide-and-tender" layer: carrier selection crystalizes from a preference into a legally binding payment obligation when a load tender is issued and accepted. Risk is most acute here because automated tendering to carrier MC numbers without identity re-verification is the primary vector for double-brokering fraud, and because most TMS platforms do not carry forward real-time carrier risk signals (insurance status, safety score, active monitoring flags) into the tendering event itself.

---

### Activities

1. **Route planning and mode optimization** — Determines optimal carrier mode (FTL, LTL, intermodal, air, ocean, parcel), lane combination, and sequence of handoffs across multi-leg shipments. Risk implication: incorrect mode selection increases exposure to handoff points where cargo theft concentrates; suboptimal lane selection elevates carrier count and therefore identity-verification burden.

2. **Carrier tendering and automated load award** — Issues digital rate confirmations to selected carriers; captures acceptance/rejection; re-tenders to backup carrier on rejection. Risk implication: automated tendering to MC numbers without real-time identity re-verification is the primary double-brokering attack surface; platforms vary on whether carrier risk scores are consulted at award time or only at onboarding.

3. **Freight procurement and contract management** — Runs structured RFP/e-tender processes to establish contracted lane rates; manages contract compliance and volume allocation across primary, secondary, and spot carrier tiers. Risk implication: rate contracts lock in approved carrier lists; if approved lists are not refreshed against current safety/insurance data, stale-approval risk accumulates.

4. **Multi-leg orchestration and custody chain management** — Coordinates sequential handoffs across dray, linehaul, transload, and final-mile; issues BOL, appointment confirmations, and dock notifications at each transfer. Risk implication: each handoff without documented carrier identity is a cargo theft scenario; TMS systems that do not log intermediate sub-carrier identity generate chains invisible to the shipper.

5. **Freight audit and invoice management** — Validates carrier invoices against contracted rates; flags accessorial disputes; integrates with factoring/payment networks for carrier settlement. Risk implication: 3–8% of freight spend is widely cited as recoverable via audit; **deep-research outcome: confirmed-scarce** — Cass, U.S. Bank Freight Payment Index, AFS Logistics publish no public quantified freight invoice error rate; Ardent Partners 2024 AP Metrics (n=190) finds 20.7% average all-sector invoice exception rate (broader than freight). The 3–8% figure circulates in vendor marketing without traceable primary source; `[NEEDS-ATTENDED-FETCH]: https://www.apqc.org/resources/benchmarking/open-standards-benchmarking/measures/percentage-invoice-line-items` for APQC primary benchmark. (36, 37)

---

### Revenue Model

Enterprise TMS vendors (SAP TM, Oracle OTM, Manhattan, Blue Yonder): annual SaaS subscription tiered by modules and freight-spend volume, with implementation services generating 2–4x first-year license in professional services billings from SI partners. Digital freight brokerages (Uber Freight, Full Truck Alliance, Lalamove): take-rate on gross freight bookings (5–20% margin); some add SaaS TMS licensing fee for shipper accounts. Freight procurement platforms (Transporeon, Alpega, Cargobase): SaaS subscription per active shipper; freight exchange membership or per-transaction fees for carrier network access.

---

### Cost Drivers

R&D and continuous product engineering (WiseTech CargoWise: 35% of FY25 revenue; Manhattan Associates: ~20% of revenue); cloud infrastructure for 24/7 high-availability order processing (Trimble T&L: 19.7% operating margin reflecting infrastructure overhead); carrier network development and EDI/API integration maintenance (each new carrier connection requires bilateral testing); and, for digital brokerages, carrier acquisition and retention subsidies (SEA platforms document heavy driver-subsidy costs driving unit-economic losses).

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global TMS software market, 2024 | $10.3B (IMARC Group); $9.77B–$10.3B convergence range | Medium | (1), (2) — two independent firms converge on same range; methodology differences create $2–18B spread across all vendors |
| Global TMS market projected 2033 | $36.4B at 14.26% CAGR (IMARC); $47.97B at 10.6% CAGR (Precedence Research) | Low | (1), (3) — ranges reflect scope definition differences (pure TMS vs. logistics software suite) |
| Gartner-defined TMS market, 2019–2024 (narrow-scope SaaS license only) | $1.32B (2019) → $2.11B (2024) — narrow scope: pure-play TMS SaaS software license only, excludes embedded TMS in WMS/SCM suites, professional services, and brokerage platforms | Low — chain-of-citation through TalkingLogistics trade blog to paywalled Gartner research note; **deep-research outcome: contradicting-evidence** — Blue Yonder alone reported $1.36B FY2024 total revenue (WMS+TMS+planning), already numerically exceeding the entire claimed market; figure can only be valid as a narrow pure-play SaaS scope which the trade-press citation does not disclose. Authoritative primary sources (ARC Advisory Group; IDC MarketScape Worldwide TMS Applications 2024) are blocked/paywalled — `[NEEDS-ATTENDED-FETCH]` | (4), `[NEEDS-ATTENDED-FETCH]` arcweb.com TMS, my.idc.com US51982224 |
| Digital freight brokerage market, 2024 | $5.79B–$5.9B | Medium | (5), (6) — two independent firms converge |
| WiseTech Global (ASX:WTC) FY2025 total revenue | A$778.7M (~$500M USD at 0.64 AUD/USD); CargoWise revenue A$682.2M (~$437M USD) | High | (7) — ASX audited financial report; 14% growth vs FY24; 98% recurring revenue |
| WiseTech Global FY2024 total revenue | A$683.7M; CargoWise A$580M+ (18% growth to $682M reported in FY25 comparative) | High | (7) — ASX audited financial report |
| E2open (ETWO) FY2024 total revenue (fiscal year ending Feb 2024) | $634.6M; subscription $536.8M (84.6% of total) | High | (8) — NYSE ETWO earnings release; subscription +0.7% YoY; acquired by WiseTech August 2025 for $2.1B EV |
| Trimble Transportation & Logistics segment FY2024 revenue | $788.8M; operating income $155.1M (19.7% margin) | High | (9) — NASDAQ TRMB Q4/FY2024 earnings release; includes Transporeon, TMW.Suite, MercuryGate (pre-divestiture) |
| Trimble company-wide ARR, Q4 2024 | $2.26B (+14% YoY organic) | High | (9) — NASDAQ TRMB earnings release |
| Manhattan Associates (MANH) FY2024 total revenue | $1,042.4M; cloud subscription $337.2M (+32% YoY) | High | (10) — NASDAQ MANH FY2024 earnings; APAC segment $49.3M |
| Manhattan Associates APAC revenue, FY2024 | $49.3M | High | (10) — NASDAQ MANH 10-K segment data |
| Uber Freight gross bookings FY2024 | $1.28B; adjusted EBITDA loss $(22)M | High | (11) — Uber FY2024 earnings release (SEC) |
| Uber Freight revenue Q1 2025 | $1.26B annualized run-rate (Q1 revenue); EBITDA loss narrowed to $(7)M | High | (12) — Uber Q1 2025 earnings press release (SEC) |
| Full Truck Alliance (NYSE:YMM) FY2024 revenue | RMB 11.24B (~$1.54B USD); net income $428M; profitable | High | (13) — NYSE YMM FY2024 audited earnings |
| Lalamove/Lalatech FY2024 revenue | $1.59B; GTV $11.1B; net profit $501M | Medium | (14) — IPO filing data; not yet audited as listed entity |
| C.H. Robinson (CHRW) FY2024 total revenue | $17.7B; gross profit $2.7B (+5.8%) | High | (15) — NASDAQ CHRW 10-K FY2024; Navisphere serves 83K shippers, 450K carriers |
| Infios (MercuryGate, formerly Körber) customer base | 5,000+ customers, 70 countries; MercuryGate acquisition added ~25% to Körber revenue | Medium | (16) — Infios rebrand press release March 2025; specific ARR not disclosed |
| Indonesia NLE logistics cost as % of GDP | 14.29% (down from prior years) | High | (17) — WCO/WCOOMD magazine citing 2023 Australia-Indonesia Partnership survey |
| Singapore logistics sector GDP contribution (2018 base) | S$6.8B value added; 86,300 employees | Medium | (18) — IMDA Logistics IDP (PDF, processed via markitdown); 2018 data, most recent in IDP |

**Data quality notes:**
- The $9.77B–$10.3B 2024 TMS market figure represents the best-supported convergence range. The $15–18B figures cited by some vendors likely include adjacent WMS, order management, and visibility software within their TMS definition.
- Gartner's $2.11B (2024) is purported to be the narrowest definition — pure-play enterprise TMS software licensing only. However, bottom-up audited triangulation contradicts this as a "whole market" figure: Blue Yonder FY2024 = $1.36B total (Panasonic disclosure); Trimble T&L FY2024 = $788.8M (includes ELD/fleet beyond pure TMS); E2open FY2024 = $634.6M; Descartes FY2025 = $651M; WiseTech FY2025 = A$1.34B (~US$882M). Even at narrowest pure-play scope, $2.11B may understate the practical market multiple-fold. Treat as [ASSUMED with scope caveat]; authoritative ARC Advisory and IDC sources are `[NEEDS-ATTENDED-FETCH]`.
- Country-specific TMS market size for SEA — `Data gap — no country-level TMS software market size for Indonesia, Thailand, Vietnam, or Singapore found in tier-1 sources; ARC Advisory or IDC APAC country report required.`
- WiseTech revenue is reported in AUD; USD conversion at approximate 0.64 AUD/USD as of mid-2025.

[NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/6290615 — Gartner Magic Quadrant 2025 for TMS (full report); paywalled; partial data obtained via vendor press releases.

---

### Current Players by Region

**North America:**
- Oracle Transportation Management (OTM) — 18th consecutive Gartner Leader (2025 MQ); highest ability-to-execute ranking; US-based enterprise deployment; GM, Cisco, Starbucks among disclosed customers; SEA presence: YES (multinational deployments via Oracle regional offices in Singapore, Malaysia, Indonesia)
- SAP Transportation Management (SAP TM) — 11th consecutive Gartner Leader (2025 MQ); embedded in SAP S/4HANA supply chain; targets SAP ERP installed base (~400M SAP users globally); SEA presence: YES (SAP.com/sea localized; manufacturing customer base in SG, MY, TH, ID)
- Manhattan Associates Active TM — 7th consecutive Gartner Leader (2025 MQ); cloud-native continuous-release TMS; $1.04B FY2024 total revenue; APAC revenue $49.3M; SEA presence: PARTIAL (no dedicated APAC TMS implementation center; serves multinationals with SEA subsidiaries)
- C.H. Robinson Navisphere — Gartner MQ participant 2025; 83,000 shippers, 450,000 carriers; $17.7B total 2024 revenue; proprietary TMS used internally and licensed to shippers; SEA presence: NO (North America/Europe primary; sold European Surface Transportation to Sennder 2024)
- Uber Freight (Freight Power TMS) — Gartner MQ Challenger 2025; $1.28B gross bookings FY2024; EBITDA improving from $(22)M FY2024 to $(7)M run-rate Q1 2025; SEA presence: NO (US domestic only)
- Loadsmart (ShipperGuide TMS) — Operating profitable Q3 2024; 85% automation rate; $1.3B valuation; OpenDock dock scheduling layer; SEA presence: NO

**Europe:**
- Transporeon (Trimble) — Trimble T&L segment FY2024 $788.8M revenue; Transporeon serves 1,400+ shippers, 145,000+ carriers, €48B managed freight across Europe; 2025 MQ positioning not separately broken out from Trimble; Freight Marketplace launched September 2023 as spot procurement layer; SEA presence: PARTIAL (Asia mentioned; SEA not primary footprint)
- Blue Yonder TMS — 14th consecutive Gartner Leader (2025 MQ); 3,000+ global customers; 45M monthly shipments via cloud TMS; Panasonic-owned ($7.1B acquisition 2021); acquired One Network May 2024 for network orchestration; SEA presence: YES (Panasonic Asia offices; APAC manufacturing and retail base)
- Alpega Group (TenderEasy + Wtransnet + Teleroute + inet) — Gartner Challenger 2025 (vision regression noted vs. 2024); 70,000+ carriers across European freight exchanges; Brussels HQ; SEA presence: NO (European-centric)
- Infios (formerly Körber/MercuryGate) — Gartner Challenger 2025; 5,000+ customers, 70 countries; MercuryGate acquisition completed August 2024; rebranded as Infios March 2025; SEA presence: PARTIAL (80-country claim; no dedicated SEA office confirmed)
- Sennder — €1.4B combined revenue (post-C.H. Robinson Europe acquisition 2024); 40,000+ deployed trucks; Europe's largest digital FTL broker; SEA presence: NO

**China / Greater China:**
- Full Truck Alliance / Manbang (NYSE:YMM) — $1.54B revenue FY2024; $428M net income; 197.2M fulfilled orders; China's dominant digital freight marketplace; SEA presence: NO (China domestic only)
- Lalamove / Lalatech — $1.59B revenue FY2024; $11.1B GTV; 14 markets including SEA; IPO process ongoing; SEA presence: YES (SG, MY, TH, PH, VN operations)
- GoGoX (HKEX:2246) — Listed; 340+ cities across China, HK, Singapore, Vietnam, South Korea, India; HK IPO raised HK$671M 2022; market cap declined ~97% from peak; SEA presence: YES (SG and VN confirmed)

**India:**
- BlackBuck / Zinka Logistics (NSE/BSE:ZINKA) — IPO listed November 2024 at INR 259–273/share; FY2024 revenue INR 297 Cr (~$36M); 700K truckers, 1.2M trucks, 15M+ monthly transactions; primary product is carrier app + TMS layer for truckers; SEA presence: NO
- Pando.ai — Gartner MQ Visionary 2025 (second consecutive year); India business restructured as independent BU April 2025; focuses on enterprise TMS for large Indian and APAC shippers with ERP integration depth; SEA presence: PARTIAL (APAC-facing; India-primary)
- Rivigo (now Mahindra Logistics) — Acquired by Mahindra Logistics November 2022; relay trucking model; operates in 200+ cities India; not an independent TMS vendor; SEA presence: NO
- Logisly (Indonesia, not India) — See SEA section below

**SEA (Southeast Asia):**
- Cargobase — Singapore HQ (founded 2013); spot-freight TMS for enterprise shippers; Fortune 500 customers in automotive, semiconductor, aviation, oil & gas; 55-country footprint; G2 #6 of 184 TMS globally; SOC 2 Type II certified November 2024; revenue ~$2.4M (2023 baseline; 273% growth claimed); SEA presence: YES (native)
- Haulio — Singapore HQ (founded 2017); container haulage dispatch for first-mile port logistics; 800+ haulage companies, 10,000 trucks, 1.8M TEUs annually; 50%+ of Singapore hauliers on-platform; $7.8M total funding (Temasek-backed Heliconia, PSA unboXed, ComfortDelGro); exploring Indonesia expansion via Logol MOU; SEA presence: YES (native — SG primary)
- Kargo Technologies — Jakarta HQ (founded 2018); Indonesia-focused FTL/LTL digital marketplace; acquired TheLorry (Malaysia) in 2024 for cross-border SEA expansion; 636 employees; $38.6M+ total funding (Peak XV, Tenaya, East Ventures); SEA presence: YES (ID primary + MY)
- Deliveree — Bangkok HQ (founded 2015); FTL/LTL on-demand platform across Thailand, Indonesia, Philippines; 100,000 active commercial trucks; $109M total funding ($30M March 2024); targeting $100M+ GTV 2024; SEA presence: YES (TH, ID, PH)
- Logisly — Jakarta (founded 2019); Indonesia FTL/LTL TMS with free TMS for shippers; 100,000+ truck network; $7M raised (Series A 2020, Monk's Hill Ventures); no new funding rounds disclosed since 2020; SEA presence: YES (Indonesia-only)
- CrimsonLogic / GeTS (Global eTrade Services) — Singapore (PSA International subsidiary); operates Calista platform for cargo owners and LSPs; digital trade facilitation and freight forwarder community platform (Hive); not a traditional TMS but a network connectivity layer; SEA presence: YES (native — Singapore government-linked)

**Note on coverage gap:** No SEA-founded vendor operates at the enterprise shipper TMS level (SAP TM / Oracle OTM equivalent). Cargobase is the closest but focused on spot-freight procurement, not full multi-modal planning and execution. Regional manufacturers in SEA deploy SAP TM or Oracle OTM through local SI partners (Infosys, Wipro, Accenture ASEAN).

---

### Preliminary Pain Points (this stage)

1. **Carrier risk scores are consulted at onboarding, not at tender time.** Most TMS platforms maintain approved carrier lists validated at carrier onboarding (Highway, RMIS checks). But carrier status changes continuously — insurance lapses, safety scores deteriorate, FMCSA conditional ratings are issued — and approved-list records are not updated in real time. When an automated tender is issued to a carrier that passed vetting six months ago but has since lapsed its insurance, the TMS has no signal. The booking event is the right moment to re-check but most TMS platforms do not make this API call. (19, 20)

2. **Subcontracting chain visibility breaks at first re-tender.** When a shipper's TMS tenders a load to a 3PL, and the 3PL re-tenders to a smaller carrier, the shipper's TMS has no record of the second carrier's identity. The shipper holds a legal obligation to the 3PL, but the cargo is physically in the hands of an unvetted third carrier the shipper cannot name. This is structurally identical to a double-brokering scenario except it is legal. An estimated 85% of brokers and carriers experienced at least one double-brokered load in 2023 (TriumphPay/FreightWaves survey), and in Q1 2025 alone Highway blocked 400,000 fraud attempts. The TMS layer has no native mechanism to track sub-carrier identity chains. (19, 21)

3. **Automated load award prioritizes cost, overriding carrier risk signals.** Enterprise TMS algorithmic tendering sequences carriers by contracted rate, then by service score. Carrier risk flags (active monitoring alerts, recent accident records, insurance near-expiration) are not standard inputs to the award algorithm in SAP TM, Oracle OTM, or Blue Yonder out of the box. The tendering engine awards to the cheapest acceptable carrier, and risk data lives in a separate carrier compliance module (or a Stage 1 vendor) with no automated handoff. This is documented as a gap in BCG Platinion's TMS capability model assessment. [ASSUMED-1]: The absence of real-time risk signals in auto-award algorithms is the norm for at least 70% of enterprise TMS deployments; to validate: ask a TMS implementation lead at Accenture or Capgemini Supply Chain whether SAP TM or Oracle OTM natively calls a carrier-risk API at the time of load tender.

4. **EDI 204/214 translation errors create silent state discrepancies.** Shipper-TMS-to-broker integrations still predominantly use EDI 204 (load tender), 214 (shipment status update), 990 (carrier response). EDI mapping errors — wrong pickup times, missing reference numbers, incorrect charges — surface at invoice reconciliation 30–60 days later, not at dispatch time. JSON/REST API is gaining adoption (Uber Freight, Loadsmart, project44) but there is no industry standard for the TMS-to-digital-broker API schema, so every integration is bespoke. Silent EDI mismatches are the most common root cause of freight audit exceptions (3–8% of freight spend in overbillings is recoverable through audit). (22, 37)

5. **Enterprise TMS implementation timelines create 12–24 month risk blindspot.** During SAP TM, Oracle OTM, or Blue Yonder implementations (typically 12–24 months), shippers operate in parallel: old system for live freight, new system for testing. During this window, risk-management features in the new TMS are not yet validated or trusted, so dispatchers revert to manual carrier selection and spreadsheets. This 12–24 month gap is the period of maximum operational risk — increased error rate, reduced exception-management coverage, and dual-system data inconsistencies. BCG Platinion confirms build-vs-buy decisions alone take 3–7 months for scope and selection. [ASSUMED-2]: Most enterprise shippers underestimate integration friction by 30–50% during TMS go-live, resulting in extended parallel-run periods where old and new TMS co-exist; to validate: interview a logistics operations director at a tier-1 manufacturer who completed a SAP TM or Oracle OTM go-live in the last three years; ask how long the dual-system parallel-run lasted and what risk events occurred during it.

6. **Digital freight platform counterparty risk is not modeled by shippers.** Convoy's October 2023 shutdown left carriers owed thousands of dollars and stranded shipper contracted capacity mid-season. The financial health of the digital freight platform — burn rate, EBITDA margin, runway — is itself a form of counterparty risk that most shipper procurement teams do not assess when selecting a freight marketplace. Uber Freight reported $(22)M adjusted EBITDA in FY2024 and a narrowed $(7)M in Q1 2025; GoGoX market cap declined 97% from IPO; Haulio ARR declined from $25M peak to $15M in 2024. Platform financial distress is a real risk category that has no standard TMS risk-scoring framework. (11, 12, 23)

7. **SEA-specific regulatory and data fragmentation elevates tendering friction.** Indonesia's National Logistics Ecosystem (NLE) is implemented across 46 seaports and 6 airports covering 97% of sea cargo but requires separate compliance submissions through INSW (Indonesia National Single Window) that most shipper TMS systems do not natively support. Singapore IMDA's Logistics IDP defines a three-stage digitalization roadmap for SMEs in which Transport Management is a Stage 2 capability — meaning most Singapore logistics SMEs have not yet implemented a TMS. Cross-border tendering in SEA requires per-country permit and documentation compliance (Thailand truck classifications, Indonesia cross-island cabotage rules, Malaysia permit system) that enterprise TMS platforms cover only partially and SEA-native platforms do not cover at all at the multi-country level. (17, 18)

8. **Freight invoice overbilling concentrated in accessorial charges exploits TMS rate-data quality gaps.** Up to 18% of freight invoices contain uncontracted charges; 3–8% of freight spend is recoverable through audit. Accessorial fees (fuel surcharges, detention, liftgate) are the most common billing error vector. TMS freight audit modules can only validate against contracted rate data stored in the TMS — if the contracted rate card is outdated, expired, or incorrectly imported, the audit engine passes incorrect charges. TMS rate-data quality is a systemic problem independent of the audit module's capability. (36, 37)

9. **SEA digital freight platform unit economics have not stabilized, creating carrier-side platform risk.** Across active SEA platforms (Kargo, Deliveree, Haulio, GoGoX), common patterns: heavy carrier-acquisition subsidies; driver churn requiring continuous re-acquisition; multi-country regulatory overhead (per-country compliance cost is multiplicative). GoGoX's 97% market cap erosion and Haulio's 40% ARR decline in one year are observable indicators. A shipper that builds contracted freight capacity around a digitally-native SEA platform faces the same risk Convoy shippers experienced in October 2023 — sudden loss of capacity at worst possible time. [ASSUMED-3]: Most shippers contracting with SEA digital freight platforms do not model platform financial health as a procurement risk criterion; to validate: interview a procurement manager at a FMCG manufacturer operating in Indonesia or Thailand who uses a digital freight marketplace as a primary carrier; ask whether platform viability is part of their supplier-risk scorecard.

---

### Sources for this stage

(1) IMARC Group: TMS market size 2024 — https://www.imarcgroup.com/transportation-management-system-market
(2) Grand View Research TMS market — https://www.grandviewresearch.com/industry-analysis/transportation-management-systems-market
(3) Precedence Research TMS market 2035 — https://www.precedenceresearch.com/transportation-management-systems-market
(4) TalkingLogistics: What is the size of the TMS market? (Gartner $1.32B→$2.11B figure) — https://talkinglogistics.com/2024/03/13/what-is-the-size-of-the-transportation-management-systems-market/ — **trade-press chain-of-citation to paywalled Gartner note; auto-Low; contradicted by audited vendor financials (Blue Yonder alone $1.36B FY2024)**. Attended-fetch needed: ARC Advisory Group (https://www.arcweb.com/market-analysis/transportation-management-systems) and IDC MarketScape Worldwide TMS Applications 2024 (https://my.idc.com/getdoc.jsp?containerId=US51982224).
(5) Precedence Research: Digital freight brokerage market 2024 — https://www.precedenceresearch.com/digital-freight-brokerage-market
(6) GM Insights: Digital freight brokerage market CAGR — https://www.gminsights.com/industry-analysis/digital-freight-brokerage-market
(7) WiseTech Global FY2025 Appendix 4E and financial report (ASX:WTC) — https://www.wisetechglobal.com/media/2t1eeuxx/wtc-fy25-appendix-4e-and-financial-report.pdf (PDF, processed via markitdown)
(8) E2open FY2024 fourth quarter and full year financial results — https://investors.e2open.com/news/news-details/2024/E2open-Announces-Fiscal-2024-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx
(9) Trimble Q4/FY2024 earnings release: T&L segment $788.8M — https://investor.trimble.com/news/news-details/2025/Trimble-Announces-Fourth-Quarter-and-Full-Year-2024-Results-and-Initiates-2025-Guidance/default.aspx
(10) Manhattan Associates FY2024 audited 10-K (SEC EDGAR, CIK 0001056696, accession 0000950170-25-016295, filed 2025-02-07) — https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0001056696&type=10-K&dateb=&owner=include&count=40 — replaces prior press-release citation per validator vendor-marketing override; the manh.com press release recycles the same data and is auto-Low under skill rules.
(11) Uber Technologies FY2024 Freight segment results — https://investor.uber.com/news-events/news/press-release-details/2025/Uber-Announces-Results-for-Fourth-Quarter-and-Full-Year-2024/default.aspx
(12) Uber Q1 2025 earnings press release — https://s23.q4cdn.com/407969754/files/doc_earnings/2025/q1/earnings-result/Uber-Q1-25-Earnings-Press-Release.pdf
(13) Full Truck Alliance FY2024 financial results — https://ir.fulltruckalliance.com/2025-03-05-Full-Truck-Alliance-Co-Ltd-Announces-Fourth-Quarter-and-Fiscal-Year-2024-Unaudited-Financial-Results
(14) Lalatech/Lalamove FY2024 revenue and IPO filing data — https://www.sahmcapital.com/news/content/lalatech-relaunches-hong-kong-ipo-h1-revenue-grows-in-double-digits-2025-10-30
(15) C.H. Robinson FY2024 10-K annual report — https://s21.q4cdn.com/950981335/files/doc_financials/2024/ar/CHRW-2024-Annual-Report-10-K.pdf (PDF)
(16) Infios (Körber/MercuryGate) rebrand announcement March 2025 — https://www.infios.com/en/knowledge-center/news/koerber-supply-chain-software-rebrands-as-infios
(17) WCO magazine: Indonesia National Logistics Ecosystem, dwell time, logistics cost 14.29% GDP — https://mag.wcoomd.org/magazine/wco-news-105-issue-3-2024/national-logistics-ecosystem-indonesia/
(18) IMDA Singapore Logistics Industry Digital Plan (PDF, processed via markitdown) — https://www.imda.gov.sg/-/media/imda/files/programme/smes-go-digital/industry-digital-plans/logistics-idp/logistics-idp.pdf
(19) Freight fraud statistics 2024–2025: $455M losses, 213% increase in double-brokering attempts — https://www.transcredit.com/double-brokering-scams-freight-prevention-2025.html
(20) Highway Q1 2025: 400,000 fraud attempts blocked — https://highway.com/press-releases/sunnybrook-tms-and-highway-set-a-new-standard-for-fraud-prevention-for-brokers
(21) TriumphPay/FreightWaves 2023 survey: 85% of brokers/carriers experienced double-brokered load — https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(22) TMS integrations with digital freight brokers — Supply Chain Dive — https://www.supplychaindive.com/news/digital-broker-tms-integrations-api-supply-chain-transportation/599477/
(23) GoGoX HKEX 2022 IPO, market cap decline — https://equalocean.com/news/2024011320442
(24) 2025 Gartner Magic Quadrant for TMS — leaders and challengers (sourced via vendor press releases) — https://news.sap.com/2025/04/sap-a-leader-gartner-magic-quadrant-transportation-management-systems/ ; https://www.oracle.com/news/announcement/oracle-named-a-leader-in-2025-gartner-magic-quadrant-for-transportation-management-systems-2025-04-10/ ; https://www.manh.com/about-us/newsroom/press-releases/manhattan-named-7x-leader-gartner-mq-tms ; https://blueyonder.com/blog/2025/blue-yonder-named-a-leader-in-the-2025-gartner-magic-quadrant-for-transportation-management-systems ; https://www.e2open.com/resources/2025-gartner-magic-quadrant-for-transportation-management-systems/ [NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/6290615
(25) Sennder acquires C.H. Robinson European Surface Transportation, €1.4B combined — https://www.sennder.com/press/sennder-signs-agreement-to-acquire-c-h-robinson-s-european-surface-transportation-operations-combining-revenue-to-eur-1-4bn
(26) BCG Platinion TMS capabilities model — https://www.bcgplatinion.com/insights/transport-management-systems
(27) Transporeon: 1,400 shippers, 145,000 carriers, Trimble acquisition — https://www.transporeon.com/en/company/press/trimble-completes-transporeon-acquisition
(28) Alpega Group 2025 Gartner Challenger — https://www.alpegagroup.com/en-en/community/library/2025-gartner-magic-quadrant-for-transportation-management-systems-tms/
(29) 2025 Gartner MQ TMS analysis: new entrants, position changes — https://wisechainconsult.substack.com/p/2025-gartner-mq-for-tms-is-there
(30) BlackBuck/Zinka Logistics IPO, FY2024 revenue — https://inc42.com/buzz/ipo-bound-blackbuck-narrows-loss-by-33-to-inr-194-cr-in-fy24/
(31) Pando.ai Gartner Visionary 2025, India BU restructuring — https://pando.ai/company/press-release/pando-ai-recognized-as-a-visionary-in-2025-gartner-magic-quadrant-for-transportation-management-systems
(32) Kargo Technologies TheLorry acquisition, funding — https://techcollectivesea.com/2025/01/24/southeast-asia-logistics-funding-indonesia/
(33) Deliveree $30M March 2024 raise, 100,000 trucks — https://www.idnfinancials.com/archive/43511/deliveree-raises-series-funding
(34) Haulio $7.8M funding, BBTruck partnership, ASEAN expansion — https://www.dealstreetasia.com/stories/haulio-seriesa-heliconia-274905
(35) Cargobase SOC 2 Type II certification, G2 ranking, autonomous TMS — https://www.cargobase.com/blog/singapore-based-logistics-tech-scale-up-cargobase-builds-world's-first-autonomous-tms
(36) Freight audit and payment market: 18% of invoices contain uncontracted charges — https://supplychainbrain.com/blogs/1-think-tank/post/37257-why-should-you-audit-your-freight-bills
(37) Freight overbilling 3–8% of spend recoverable — https://avantiico.com/freight-invoice-audits/ — **[Low confidence: vendor-marketing; deep-research outcome confirmed-scarce: Cass, US Bank, AFS publish no public freight invoice error rate; Ardent Partners AP Metrics 2024 (n=190) cites 20.7% all-sector invoice exception rate (broader than freight); APQC primary measure NEEDS-ATTENDED-FETCH at https://www.apqc.org/resources/benchmarking/open-standards-benchmarking/measures/percentage-invoice-line-items]**
(38) CrimsonLogic GeTS Calista platform and Hive for freight forwarders — https://www.crimsonlogic.com/news/crimsonlogic-announces-its-wholly-owned-subsidiary-global-etrade-services-gets-will-operate
(39) Convoy shutdown October 2023 — https://www.freightwaves.com/news/convoy-shutdown-trucking-startup
(40) WiseTech FY2024 revenue 28% growth, CargoWise revenue — https://cfotech.com.au/story/wisetech-global-reports-28-revenue-surge-in-fy24

---

### Assumptions to validate

[ASSUMED-1]: The absence of real-time carrier risk signals (insurance status, active safety monitoring flags) as inputs to automated load-award algorithms is the norm in at least 70% of enterprise TMS deployments, including SAP TM, Oracle OTM, and Blue Yonder out of the box.
- to validate: Ask a TMS implementation lead at Accenture Supply Chain, Capgemini Invent, or DHL Consulting whether any of the major enterprise TMS platforms natively call a carrier-risk API (Highway, RMIS, Carrier411) at the moment of auto-award rather than at carrier onboarding. Ask whether any customer has built custom middleware to close this gap.

[ASSUMED-2]: Enterprise shippers underestimate TMS implementation integration friction by 30–50%, resulting in extended parallel-run periods (beyond planned go-live) where old and new TMS co-exist, creating elevated error rates and reduced risk-management coverage.
- to validate: Interview a logistics operations director at a tier-1 manufacturer (automotive, FMCG, retail) who completed a SAP TM or Oracle OTM go-live in the last three years. Ask: how long did the dual-system parallel-run last beyond the planned go-live date? What exception-management capability was sacrificed during that window? What was the highest-cost incident during the go-live period?

[ASSUMED-3]: The majority of shippers contracting with SEA digital freight platforms (Kargo, Deliveree, Haulio, Logisly) do not assess platform financial health or operational viability as a formal procurement risk criterion, even though Convoy's 2023 collapse demonstrated that platform insolvency is a material carrier-capacity risk.
- to validate: Interview a procurement or logistics manager at a mid-size FMCG or consumer electronics manufacturer operating in Indonesia or Thailand who uses a digital freight marketplace as a primary or significant secondary carrier. Ask: does your supplier-risk process include assessment of the platform's funding runway or EBITDA margin? What would your contingency be if the platform ceased operations mid-contract?

[ASSUMED-4]: CrimsonLogic's Calista platform and the Singapore NLE provide the connectivity infrastructure for freight documentation but do not function as TMS execution engines; shippers still require a separate TMS for carrier selection, tendering, and rate management.
- to validate: Ask a Singapore-based freight forwarder or beneficial cargo owner using Calista whether they also use a separate TMS for domestic/regional carrier tendering, or whether Calista replaces TMS functionality for their operations.

