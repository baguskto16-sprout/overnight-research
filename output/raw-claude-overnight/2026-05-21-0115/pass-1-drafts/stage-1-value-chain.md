## Stage 1: Pre-dispatch — Vendor Procurement & Onboarding

### Description

The pre-dispatch stage is the workflow where shippers, freight brokers, and 3PLs select, vet, and formally onboard sub-carriers (truckers, owner-operators, forwarders) before handing them any cargo. It exists because the US broker market operates on principal-agent risk: a licensed broker assumes legal and financial liability for the carriers it places on loads, yet carrier legitimacy, insurance validity, safety scores, and beneficial ownership are easy to spoof or conceal. When this stage fails, the consequences include cargo theft via double brokering, regulatory penalties for moving freight with uninsured or suspended carriers, and OFAC/sanctions exposure if the carrier or its beneficial owner is a designated party. Between January 2022 and December 2025, the FMCSA revoked 15,419 broker operating authorities — nearly 59% of all active authorities during that period — driven largely by fraud-related failures at this stage.

---

### Activities

1. **Authority and safety-record pull.** Look up carrier USDOT/MC number in FMCSA SAFER, retrieve SMS BASIC scores, operating authority status, and crash/inspection history. Flag carriers with conditional or unsatisfactory safety ratings or BASIC percentile scores above threshold.

2. **Insurance certificate collection and verification.** Request certificate of insurance (COI) from carrier or RMIS; confirm coverage type (auto liability, cargo, general), coverage amounts, and that the broker is listed as an additional insured. Validate that the insurer is not itself sanctioned or insolvent.

3. **Identity and beneficial ownership screening.** Cross-reference MC number, EIN, and principal contact against OFAC SDN list, BIS denied-party list, and beneficial-ownership graphs (Sayari, Moody's Orbis, or Dow Jones Risk Center) to detect shell entities, foreign-controlled fronts, or dormant authority purchased for fraud.

4. **Carrier packet collection and agreement execution.** Distribute and collect broker-carrier agreement, W-9, voided check for quick-pay setup, and any commodity-specific addenda (hazmat, refrigerated, flatbed). Historically done via emailed PDFs; automated platforms use digital forms with e-signature.

5. **Ongoing compliance monitoring.** Post-onboarding, continuously re-check carrier insurance, operating authority, and safety scores for lapses or changes. Alert broker when a carrier's COI expires, authority is suspended, or BASIC scores cross a red threshold. Re-screen against sanctions lists on a scheduled or event-driven basis.

---

### Revenue Model

Solution vendors charge **recurring SaaS subscription fees** (per-seat or per-carrier-lookup volume tiers for vetting SaaS) or **per-certificate transaction fees** (for insurance verification platforms like RMIS); 3PL-built portals are internal cost centers funded from brokerage margin.

---

### Cost Drivers

Primary cost drivers for solution vendors: **data-licensing fees** (FMCSA, insurance clearinghouses, sanctions list subscriptions), **engineering and compliance headcount** for data pipeline maintenance, **customer success** for broker onboarding, and **cloud infrastructure** for real-time API calls at scale; manual-process users bear **labor cost** (35–45 minutes per carrier packet) and **fraud loss exposure** averaging $402,344 per affected broker per year (TIA 2024).

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global carrier onboarding & compliance platform market (2024) | $1.42B–$1.62B | Low — commercial market research firms, no independent cross-validation | (1), (2) |
| North America segment (2024, largest region, ~43% of global) | ~$610M–$670M | Low — same source basis as global figure | (1), (2) |
| Asia Pacific segment (2024) | ~$340M | Low — single commercial source; no government or multilateral cross-check | (2) |
| Global CAGR projection (2025–2033) | 12.8%–13.1% | Low — commercial forecast only | (1), (2) |
| Global carrier onboarding & compliance platform market (2033 projected) | $4.11B–$4.38B | Low — 8-year commercial forecast, high uncertainty | (1), (2) |
| US freight brokerage industry total revenue (context proxy) | ~$19.2B–$51.7B (2023–2024, range reflects source variation) | Medium — multiple commercial sources, consistent order of magnitude | (3), (4) |
| US active freight brokerages (Q3 2024) | 26,653 | Medium — derived from FMCSA registration data | (5) |
| Average annual fraud loss per affected US broker (2024) | $402,344 | Medium — TIA survey of ~200 industry professionals, Feb–Aug 2024 | (6) |

**Data gap note:** No government statistics agency (BPS, MIDA, SingStat, BLS, Census) publishes a discrete market-size figure for carrier-vetting or carrier-onboarding software. The $1.4B–$1.6B global figure originates from Growth Market Reports and Dataintelo — commercial firms without disclosed methodology. A defensible bottom-up triangulation: ~26,650 active US brokers × estimated ~$5,000–$25,000 average annual spend on vetting/compliance software = $133M–$667M for the US alone (mid-point ~$400M). Adding Europe and APAC at lower penetration rates suggests a plausible global figure of $600M–$1.2B — consistent with the lower end of commercial estimates. Treat the market size row as Low confidence until a Gartner, IBISWorld, or government-adjacent source cross-validates it.

[ASSUMED-1]: The commercial market research firms (Dataintelo, Growth Market Reports) use consistent methodology and are not simply echoing each other's figures. — to validate: obtain the underlying methodology appendix from either report or commission an IBISWorld sector report on freight brokerage compliance software.

[ASSUMED-2]: The Asia Pacific carrier onboarding platform market ($340M, 2024) is growing at 16.2% CAGR, outpacing North America, driven by e-commerce and digitalization of logistics networks. — to validate: ask a regional logistics analyst (e.g., DHL Discover Southeast Asia team, or Mordor Intelligence) whether any country-level government statistics support this APAC figure.

---

### Solution Archetypes

#### Archetype A — Carrier-Vetting / Carrier-Identity SaaS

**What it does:** Real-time multi-source data aggregation (FMCSA SAFER/SMS, insurance clearinghouses, user-reported suspicion flags) to produce a risk score, identity verification, and ongoing compliance monitoring for carriers a broker is considering dispatching. The most sophisticated players (Highway) add behavioral fraud signals (phone-number spoofing detection, FMCSA contact-change alerts, email domain lookalike detection) layered on top of authority/insurance checks.

**Primary user:** Freight brokers (small-to-mid-market and enterprise), 3PLs with owned-carrier programs.

**Business model:** Recurring SaaS subscription, tiered by lookup volume or number of brokers/seats. Enterprise pricing is negotiated. No publicly disclosed per-carrier pricing from any player.

**SEA presence:** No. All major players (Highway, Descartes MCP, Carrier Assure, Truckstop RMIS, DAT OnBoard, Carrier411) are built on FMCSA/US DOT data and have no disclosed presence, customers, resellers, or local-regulation support in Southeast Asia as of May 2026. Their data infrastructure is structurally limited to North American regulatory databases.

---

#### Archetype B — Insurance Verification Platforms

**What it does:** Collects, validates, and continuously monitors carrier Certificates of Insurance (COIs). Interfaces directly with insurance clearinghouses and agencies to confirm coverage is current, amounts meet broker thresholds, and the broker is listed as an additional insured. RMIS claims to fulfill 98% of COI requests within 60 seconds via its database of carrier insurance records.

**Primary user:** Freight brokers and 3PLs (enterprise-tier historically, now mid-market via Truckstop integration).

**Business model:** Recurring service fee (per-broker subscription or per-certificate fee). Truckstop acquired RMIS in March 2021 for undisclosed consideration and integrated it into its Compliance-as-a-Service offering.

**SEA presence:** No. RMIS is a US-specific product reliant on the US insurance certificate infrastructure. No Asia Pacific coverage identified.

---

#### Archetype C — Sanctions / KYC / Beneficial-Ownership Screening

**What it does:** Screens carrier legal entities (and their principals) against OFAC SDN, BIS Denied Persons/Entity Lists, EU Consolidated List, UN sanctions, and adverse media. More sophisticated tools (Sayari) trace multi-layer corporate ownership structures across 250+ jurisdictions to detect foreign-controlled shell companies holding dormant MC numbers. OFAC issued specific maritime-shipping sanctions compliance guidance in October 2024 applicable to freight forwarders and logistics intermediaries.

**Primary user:** Enterprise shippers, 3PLs with regulated-industry customers (defense, pharma, food), freight forwarders handling international cargo.

**Business model:** Annual enterprise SaaS license (LSEG World-Check: $50,000–$500,000+/year; Dow Jones Risk Center, LexisNexis, and Sayari pricing not publicly disclosed). Data-feed licensing for integration into TMS/ERP.

**SEA presence:** Limited but present. LSEG World-Check covers 240+ countries and is used by financial institutions and logistics companies in Singapore and Malaysia. Dow Jones Risk Center and LexisNexis Risk Solutions have regional offices in Singapore. Sayari's supply-chain product is US-government-oriented; limited Southeast Asian commercial presence confirmed.

---

#### Archetype D — 3PL-Built Vendor Portals (In-House)

**What it does:** Large brokers and 3PLs build proprietary carrier portals that embed vetting, agreement execution, and ongoing compliance into their internal TMS ecosystems. C.H. Robinson's Navisphere platform connects ~83,000 shippers and ~450,000 contract carriers globally. RXO (post-Coyote acquisition, September 2024) operates a carrier network of ~115,000+ carriers across North America. Echo Global and Coyote (now absorbed into RXO) historically operated independent portals before consolidation.

**Primary user:** Internal logistics operations teams at enterprise 3PLs; carriers access the portal as a condition of being placed on loads.

**Business model:** Internal cost center; not sold as a product. Competitive moat for enterprise 3PLs: proprietary compliance data and carrier-relationship graphs are core differentiation.

**SEA presence:** C.H. Robinson and RXO operate in Asia Pacific, including Singapore and Malaysia, but their carrier portals are optimized for North American truck broker workflows. International freight forwarding carrier compliance is handled through different regulatory frameworks (local licensing authorities, not FMCSA).

---

#### Archetype E — Manual Workarounds

**What it does:** Spreadsheet-based carrier master lists maintained in Excel or Google Sheets; phone reference calls to prior brokers; WhatsApp group channels where brokers share "known good" or "suspected fraud" carrier information informally; broker rolodex (relationship history with specific owner-operators). This is not a legacy artifact — it remains the dominant workflow at small-to-mid brokerages with fewer than 10 employees (which constitute the majority of the ~26,650 active US brokerages by count, though a minority by revenue volume).

**Primary user:** Small freight brokers (<$10M revenue), owner-operated 3PLs, new-entrant brokers.

**Business model:** Zero software cost; cost is borne as labor (35–45 minutes per carrier packet, or 2–5 days for full manual onboarding) and fraud-loss exposure.

**SEA presence:** Dominant in Southeast Asia. Carrier vetting in Indonesia, Vietnam, Thailand, the Philippines, and Malaysia is primarily informal — broker relationships, WhatsApp groups among freight forwarding communities, and reputation networks. No equivalent to the FMCSA SAFER database exists across ASEAN for trucking compliance. The Land Transport Authority (LTA) in Singapore and Jabatan Pengangkutan Jalan (JPJ) in Malaysia maintain vehicle/operator registrations, but no integrated multi-source carrier-safety scoring system comparable to FMCSA SMS exists regionally.

---

### Named Players by Geography

**North America (US-primary):**

- **Highway** (Dallas, TX; founded 2022) — Category-defining "Carrier Identity" platform; 1,050+ broker customers including 70 of the top 100 US freight brokers; blocked 914,719 fraudulent email attempts in 2024, rising to ~1,987,000 in 2025; raised undisclosed growth equity from FTV Capital and Lead Edge Capital (August 2025). SEA presence: No.

- **Descartes MyCarrierPortal / Assure Assist** (acquired by Descartes Systems Group, September 2024, ~$24M upfront + up to $6M earn-out) — Carrier onboarding, risk monitoring, ongoing compliance for freight brokers and shippers. Integrated with Descartes MacroPoint FraudGuard. Parent Descartes (NASDAQ: DSGX) reported FY2025 total revenues of $572.9M across all segments. SEA presence: No discrete MCP presence; Descartes has broader APAC logistics tech coverage.

- **Truckstop RMIS** (Truckstop.com, Pocatello, ID; private, backed by ICONIQ Capital at ~$1B valuation) — Insurance certificate monitoring + carrier authority/safety compliance; combined RMIS + SaferWatch platform serves large enterprise brokers (Coyote, Echo, GlobalTranz, Penske) and mid-market; claims coverage of ~98% of all North American carriers. SEA presence: No.

- **Carrier Assure** (US; founded 2021) — Predictive A-F scoring using FMCSA, tracking, and user-reported data; integrated with Descartes MyCarrierPortal. Pricing: Individual (free, limited), Premium ($149/month), Enterprise (custom). Customers include DHL, Transfix, Legacy Supply Chain, Circle Logistics. SEA presence: No.

- **Carrier411** (US) — Legacy carrier safety database; monitors FMCSA compliance (SMS BASIC scores, safety ratings, insurance, CARB compliance) with alert service for brokers. No disclosed revenue or funding. SEA presence: No.

- **DAT Freight & Analytics** (Portland, OR; private; owned by Roper Technologies) — Introduced Carrier Management Suite with built-in carrier vetting integrated into DAT One load board (October 2025); also offers DAT OnBoard mobile carrier onboarding. Largest North American load board by volume. SEA presence: No trucking-specific product; DAT is a US load board.

- **C.H. Robinson / Navisphere** (Eden Prairie, MN; NASDAQ: CHRW; FY2024 revenue ~$17.6B) — In-house proprietary carrier portal covering ~450,000 contract carriers globally; not sold externally. SEA presence: Yes — C.H. Robinson operates freight forwarding in Singapore and Malaysia but the Navisphere truck-broker compliance module is North America-specific.

- **RXO** (Greenwich, CT; NYSE: RXO; acquired Coyote Logistics from UPS for $1.025B in September 2024) — In-house carrier network and onboarding for ~115,000+ North American carriers. SEA presence: No trucking-specific vetting product; RXO is a North American brokerage.

**Europe:**

- **Transporeon (Trimble)** (Ulm, Germany; acquired by Trimble in 2023 for ~€1.88B) — European carrier management, capacity sourcing, and onboarding platform connecting ~1,400 shippers and ~140,000 carriers primarily across Europe. SEA presence: Limited — no confirmed SEA-specific carrier compliance product.

- **project44** (Chicago, IL, but with EU operations; last funding: Series F, $420M, 2022, valuation ~$2.7B) — Supply chain visibility platform with carrier onboarding and compliance capabilities; stronger on in-transit visibility than pre-dispatch vetting. SEA presence: Has Singapore office; some APAC customers (Unilever, IKEA) but carrier-vetting module is not its primary product.

**KYC / Sanctions (Global):**

- **LSEG World-Check** (London; part of London Stock Exchange Group, LSE: LSEG) — Industry-standard KYC/sanctions screening database used by 10,000+ organizations including freight forwarders and trade finance firms; covers 240+ countries. Pricing: $50,000–$500,000+/year. SEA presence: Yes — LSEG has regional offices in Singapore, Malaysia, Thailand; World-Check is used by banks, freight forwarders, and insurers across the region.

- **Sayari** (Washington, DC; raised ~$40M Series C, 2022) — Beneficial ownership intelligence platform covering 250+ jurisdictions; used for freight forwarder and intermediary screening, particularly for OFAC/BIS enforcement. SEA presence: Limited commercial presence in SEA; primarily serves US government agencies and large financial institutions.

- **Moody's Analytics (Orbis/Maxsight)** (New York; NYSE: MCO) — Supplier risk and beneficial-ownership screening via Orbis database and Maxsight platform; includes UBO tracing for logistics counterparties. SEA presence: Yes — Moody's has offices across SEA including Singapore hub; Orbis data covers ASEAN registries.

- **Dow Jones Risk Center** (New York; News Corp subsidiary) — Sanctions, PEP, and adverse-media data feeds; integrated into supply chain compliance workflows via AEB and other logistics TMS vendors. SEA presence: Yes — Dow Jones has regional presence in Singapore; data feeds used by banks and large 3PLs in the region.

**SEA-Specific (local-market carrier compliance):**

No purpose-built carrier-vetting or carrier-identity SaaS platform for the SEA trucking market has been identified in research. The gap reflects the absence of a unified regulatory database equivalent to FMCSA SAFER across ASEAN. Carrier qualification in Indonesia, Vietnam, Thailand, and Malaysia relies on informal trust networks, WhatsApp groups, and relationship history. **Documented gap — field validation needed.**

---

### Preliminary Pain Points (this stage)

- **Manual onboarding speed creates competitive disadvantage.** Traditional carrier onboarding takes 2–5 days via emailed PDFs and phone follow-ups; one automation vendor documented a reduction from 3.5 days to under 2 hours when switching to automated workflows. In hot freight markets, this delay costs brokers loads to faster-onboarding competitors. (8)

- **Fraud is escalating faster than vetting tools can adapt.** Highway's Q4 2025 Freight Fraud Index found fraudulent email attempts grew 117% year-over-year (914,719 in 2024 to 1,986,995 in 2025); TIA found average broker fraud loss of $402,344/year in a 2024 survey of ~200 industry professionals. Identity theft — impersonation of legitimate carriers' MC numbers — is now the most common attack vector. (6), (7)

- **Insurance COI verification remains a manual bottleneck at small brokers.** RMIS automates COI collection and claims 98% fulfillment within 60 seconds, but this capability is typically priced for enterprise brokers. Small brokerages (<$10M revenue) still rely on emailed COIs that can be forged, with no real-time validity check. (9)

- **No equivalent vetting infrastructure exists for SEA trucking markets.** There is no ASEAN-wide carrier safety scoring system equivalent to FMCSA SMS. Carrier vetting in Indonesia, Vietnam, Thailand, and Malaysia depends on informal WhatsApp-group reputation networks and bilateral trust relationships, creating counterparty risk with no systematic mitigation tool available. (No source — documented gap; field validation required.)

- **Sanctions and beneficial ownership screening is largely absent in mid-market freight brokerage.** OFAC sanctions screening and beneficial ownership investigation are standard in financial services but largely absent from mid-market freight broker carrier vetting. OFAC issued maritime-shipping compliance guidance in October 2024 flagging freight intermediaries' exposure; most mid-market broker onboarding workflows have no sanctions-screening step. (10), (11)

---

### Sources for This Stage

(1) Dataintelo, "Carrier Onboarding Platform Market Research Report 2033," https://dataintelo.com/report/carrier-onboarding-platform-market — commercial market research firm; Low confidence on figures; no disclosed primary methodology.

(2) Growth Market Reports, "Carrier Onboarding and Compliance Platform Market Research Report 2033," https://growthmarketreports.com/report/carrier-onboarding-and-compliance-platform-market — commercial market research firm; consistent range with (1) but likely correlated, not independent; Low confidence.

(3) Zion Market Research, "U.S. Freight Brokerage Market Size, Share, Growth, Opportunities 2034," https://www.zionmarketresearch.com/report/us-freight-brokerage-market — commercial; estimates US freight brokerage at $19.2B in 2024. Cited for order-of-magnitude context.

(4) GM Insights, "Freight Brokerage Market Size & Share, Growth Trends 2032," https://www.gminsights.com/industry-analysis/freight-brokerage-market — commercial; estimates broader market at $51.7B in 2023. Cited for context alongside (3).

(5) ThinkFreight, "FMCSA Active Freight Brokerages in July 2024," https://thinkfreight.io/blog/fmcsa-active-freight-brokerages-in-july-2024 — derived from FMCSA registration data; 26,653 active brokerages as of Q3 2024. [NEEDS-ATTENDED-FETCH — returned 404; figure cited in secondary sources and cross-referenced against FMCSA A&I data at https://ai.fmcsa.dot.gov/RegistrationStatistics]

(6) Transportation Intermediaries Association (TIA), "State of Fraud in the Industry 2024 Report," summarized at https://www.freightcaviar.com/tia-2024-freight-fraud-report-an-average-of-400-000-in-losses/ — industry association primary survey (~200 respondents, Feb–Aug 2024); average fraud loss $402,344/broker. Medium confidence (self-reported, industry association).

(7) Highway, "Q4 2025 Freight Fraud Index," press release via GlobeNewswire, https://www.globenewswire.com/news-release/2026/01/26/3225705/0/en/Highway-Releases-Q4-2025-Freight-Fraud-Index-Revealing-The-Rise-of-Carrier-Involved-Theft.html — vendor-generated data from Highway's own platform; treat as directional, not independently verified. Low-Medium confidence (vendor data).

(8) DAT Freight & Analytics, "Best practices for carrier onboarding: What every broker should know," https://www.dat.com/resources/carrier-onboarding-guide — industry guidance document from load board operator; 2–5 day manual onboarding benchmark cited. Low-Medium confidence (vendor publication, not peer-reviewed).

(9) FreightWaves, "RMIS automates carrier compliance for brokers big and small," https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small — trade press article on RMIS capabilities; claims 98% COI fulfillment in 60 seconds. Low-Medium confidence (trade press quoting vendor claims).

(10) OFAC, "Sanctions Compliance Guidance for the Maritime Shipping Industry, October 2024," https://ofac.treasury.gov/media/933556/download?inline= — US government primary source. [NEEDS-ATTENDED-FETCH — returned 403; URL is authentic OFAC .gov domain; document confirmed existing via secondary legal press sources at (11)].

(11) Squire Patton Boggs, "OFAC Issues Additional Sanctions Guidance for the Maritime Shipping Industry," November 2024, https://www.squirepattonboggs.com/en/insights/publications/2024/11/ofac-issues-additional-sanctions-guidance-for-the-maritime-shipping-industry — law firm client alert summarizing OFAC October 2024 guidance; secondary but high-fidelity source on regulatory requirements for logistics intermediaries.

(12) FreightWaves, "Truckstop.com acquires carrier compliance firm RMIS," March 2021, https://www.freightwaves.com/news/truckstop-com-acquires-carrier-compliance-firm-rmis — trade press acquisition announcement; RMIS customer list and capability claims cited.

(13) Descartes Systems Group, "Descartes Acquires MyCarrierPortal," press release, September 18, 2024, https://www.descartes.com/resources/news/descartes-acquires-mycarrierportal — company IR press release; acquisition price ($24M + $6M earn-out) and platform description cited. Medium confidence (audited company, but no customer-count disclosure in this release).

(14) Highway, "Highway Secures Strategic Growth Equity Investment Led by FTV Capital," press release, August 2025, https://highway.com/press-releases/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital — company press release; 1,050+ broker count and 70-of-top-100 claim cited. Low-Medium confidence (vendor self-reported, no independent audit).

(15) Descartes Systems Group, FY2025 Q4 Financial Results (Form 6-K via SEC / GlobeNewswire), https://www.descartes.com/resources/news/descartes-announces-fiscal-2024-fourth-quarter-and-year-end-financial-results — audited public company filing; FY2025 total revenues $572.9M cited as parent-company context. High confidence (audited filing).

(16) LSEG, "World-Check — KYC Screening," https://www.lseg.com/en/risk-intelligence/screening-solutions/world-check-kyc-screening — vendor product page; 10,000+ customers cited. Low confidence for market-share claim (vendor's own site); pricing range ($50,000–$500,000+/year) cross-referenced via third-party comparison site SanctScan.app.

(17) RXO, "RXO Completes Acquisition of Coyote Logistics," September 2024, https://rxo.com/news/rxo-completes-acquisition-of-coyote-logistics/ — company press release; acquisition price ($1.025B) and carrier-network context cited.

(18) FreightWaves, "FMCSA says it has too little data to assess double-brokering fraud," https://www.freightwaves.com/news/fmcsa-says-it-has-too-little-data-to-assess-double-brokering-fraud — trade press reporting on FMCSA enforcement gap; 15,419 revoked broker authorities figure cited.

(19) DAT Freight & Analytics, "DAT introduces Carrier Management Suite, integrating carrier vetting into DAT One," October 2025, https://www.dat.com/company/news-events/news-releases/dat-introduces-carrier-management-suite-integrating-carrier-vetting-into-dat-one — company press release on product launch.

(20) CarrierAssure, Pricing page, https://www.carrierassure.com/pricing — vendor's own pricing page; Individual/Premium/Enterprise tiers confirmed, $149/month Premium price cited. Low confidence for competitive positioning claims; acceptable for confirming publicly stated pricing.

---

### Assumptions to Validate

[ASSUMED-1]: Commercial market research figures ($1.4B–$1.6B global carrier onboarding platform market) use distinct primary research and are not correlated echoes of the same syndicated survey.
- to validate: Obtain methodology appendix from either Dataintelo or Growth Market Reports, or commission an IBISWorld segment report. Ask any of the named players (Highway, Truckstop, DAT) whether they recognize the market-size figure as realistic.

[ASSUMED-2]: Asia Pacific carrier onboarding platform market is growing faster than North America (CAGR 16.2% vs. 13.1%) due to e-commerce-driven logistics formalization.
- to validate: Ask a regional logistics analyst or DHL Discover Indonesia/Vietnam team whether formal carrier compliance tools are actually being adopted at this rate, or whether growth projections are speculative.

[ASSUMED-3]: The dominant carrier vetting workflow in SEA is informal (WhatsApp groups, relationship history, broker rolodex) with no equivalent to FMCSA SAFER.
- to validate: Interview 3–5 freight brokers or 3PLs operating cross-border trucking in Thailand–Malaysia corridor and Indonesia domestic market. Ask whether they use any systematic digital tool for carrier qualification, or solely rely on relationship trust.

[ASSUMED-4]: Sanctions and beneficial ownership screening is largely absent from mid-market freight broker carrier onboarding workflows in North America.
- to validate: Ask compliance officers at 5 brokers with $10M–$100M revenue whether they have any OFAC/SDN screening step for new carrier onboarding, and whether it is automated or manual.

[ASSUMED-5]: Highway's claim that it serves "70 of the top 100 US brokers" (as of August 2025) represents meaningful market penetration in the enterprise segment and leaves the other 26,500+ smaller brokers as an addressable but largely untouched market.
- to validate: Cross-check Highway customer references; ask mid-market brokers ($5M–$50M revenue) whether they have evaluated Highway and why they did or did not adopt it.
