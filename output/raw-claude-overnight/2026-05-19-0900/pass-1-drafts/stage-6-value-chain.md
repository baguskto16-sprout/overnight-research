# Stage 6 — Incident Response, Claims & Insurance (Solution Layer)

*Drafted: 2026-05-19 | Research depth: WP pass-1*

---

## Stage 6: Incident Response, Claims & Insurance — Solution Categories

### Description

This stage covers the tools, platforms, and service providers that activate when a logistics risk event occurs or is imminent: insurers and MGAs that price and transfer cargo risk, parametric platforms that trigger automatic payouts, claims-management software that processes and closes losses, and physical security services (escorts, recovery) that prevent or recover stolen cargo. Collectively, these providers determine how fast and completely shippers, carriers, and logistics operators are made whole after a loss event.

---

## Solution Category A — Cargo Insurance Platforms (Traditional + Digital MGA)

### Description

MGAs, Lloyd's coverholders, and specialist marine insurers that underwrite per-shipment or annual cargo policies. The digitally-native sub-segment (Loadsure, Parsyl) prices each shipment dynamically using sensor data and AI rather than blanket annual open-cover policies.

### Activities

1. Underwrite and bind all-risk or named-peril cargo policies on a per-shipment or annual open-cover basis.
2. Price risk dynamically using telematics, sensor, and freight-data feeds (digitally-native MGAs) or through traditional marine underwriters (Lloyd's syndicates, club mutuals).
3. Issue certificates of insurance embedded within TMS, freight broker, and 3PL platforms via API integration.
4. Administer first-notice-of-loss (FNOL), survey, and settlement workflows — either internally or via delegated claims administrator (DCA) authority from Lloyd's.
5. Report aggregate loss experience to reinsurance capacity providers and Lloyd's syndicates to maintain underwriting authority.

### Revenue Model

Premium income on a risk-adjusted per-shipment or annual open-cover basis; MGA platforms retain 10–20% gross margin on premium passed through to capacity provider, plus potential claims-handling fee under delegated authority.

### Cost Drivers

Reinsurance/capacity cost (dominant), technology platform maintenance, DCA compliance and Lloyd's coverholder audit fees, claims adjuster labor, and loss ratio exposure on retained risk layers.

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global marine cargo insurance premiums (2024) | USD 22.64 billion | High | (1), (2) |
| Cargo as share of total marine premiums | 57.23% of USD 39.92B total | High | (1) |
| Asia/Pacific share of global cargo premiums | 35.15% (~USD 7.96B, 2024) | High | (1) |
| China's share of global cargo premiums (largest single market) | 17.6% (~USD 3.99B) | High | (1) |
| Lloyd's share of global cargo premiums | 9.7% (~USD 2.20B) | High | (1) |
| SEA Insurance Claims Software market (2024) | USD 8.14 million | Low — single trade research source; claims software only, excludes premiums | (3) |
| Asia Pacific marine cargo insurance market (2025) | USD 8.7 billion | Medium — single source; consistent with IUMI regional share | (4) |
| Global cargo insurance market (2024) | USD 15.2–22.64 billion | Medium — range across multiple sources using different segment definitions | (5), (1) |

*Data gap: Country-specific cargo premium breakdowns for Indonesia, Malaysia, Thailand, Philippines not separately published in IUMI data; SEA aggregate figure requires field validation with regional P&C insurance associations.*

### Current Players by Region

**Global / Lloyd's Market:**
- TT Club (Through Transport Mutual Insurance) — mutual insurer for transport operators, ports/terminals; GEP USD 284.2M (2024); AM Best A-; operates Mutual reinsured at Lloyd's; global membership, regulated in Singapore and Hong Kong (1)
- Tokio Marine Kiln (TMK) — Lloyd's Syndicate 1880, leading marine underwriter; Singapore APAC hub; provided capacity backing for Loadsure MGA (6)
- Marsh Specialty / MarshCargo — specialty marine broker + parametric MGA; arranges Lloyd's capacity, USD 50M port-blockage parametric facility (2024); global distribution (7)
- Parsyl — US/London insurtech; Lloyd's Syndicate 1796 ("Essential Consortium"); perishable cargo focus (food, pharma); USD 20M Series C (Jan 2024); headquartered Denver + London (8)
- Loadsure — London-based insurtech MGA and Lloyd's coverholder; per-shipment API; USD 11M Series A; Tokio Marine Kiln as capacity partner; launched Europe 2024 (9)

**Asia Pacific / SEA:**
- Tokio Marine Indonesia (PT Asuransi Tokio Marine Indonesia) — marine cargo insurance product line in Indonesia (10)
- Chubb — expanded marine in 10 Asian nations (Korea, China, HK, Taiwan, Vietnam, Thailand, Malaysia, Singapore, Indonesia, Japan) from 2023 onward (4)
- Sompo International — Asia Pacific marine cargo operations (11)
- Allianz Global Corporate & Specialty (AGCS) — established HK since 1983; leading corporate cargo underwriter across APAC (4)

*Data gap: Named local-market MGA players in Indonesia, Malaysia, and Thailand require field validation; no publicly disclosed premium or market-share data for SEA-specific cargo insurtech platforms.*

### Preliminary Pain Points (this stage)

- Traditional annual open-cover policies price cargo on blended fleet averages, systematically underpricing low-risk shipments and overpricing high-risk ones — creating adverse selection pressure and leaving per-shipment risk pricing as an unsolved problem. (9)
- Claims cycle times under traditional indemnity insurance average 18–90 days for complex or disputed losses, creating extended working-capital gaps for carriers and shippers who front cargo values. (7)
- Survey and loss-adjustment processes for cargo in remote SEA corridors (Sulawesi, Borneo, inner-island Philippines) are expensive and slow due to surveyor scarcity; claims are often settled at a discount to avoid adjustment costs. [ASSUMED-1]
- Underinsurance is endemic: per Loadsure, a significant share of freight moves with no cargo insurance or with grossly inadequate declared values; broker intermediaries lack technology to identify the gap systematically. (9)
- Lloyd's coverholder/DCA compliance requirements (binding authorities, premium reporting, bordereaux) create high overhead for small MGA platforms seeking to distribute in multiple jurisdictions simultaneously. (9)
- Cargo insurance penetration in SEA remains low, with many SME shippers relying on carrier liability limits (which often exclude Acts of God, theft by employee, and temperature excursions) as de facto "insurance." [ASSUMED-2]
- e-commerce return-insurance schemes, particularly in China, are distorting global cargo premium flows and creating loss ratio uncertainty for cargo syndicates underwriting APAC risks. (1)
- Tokio Marine + ID&E integration creates a potential conflict of interest: the same group pricing cargo risk and advising on logistics infrastructure could face pressure to under-reserve on correlated exposures. [ASSUMED-3]

### Assumptions to validate

[ASSUMED-1]: Survey and loss-adjustment in remote SEA corridors is both expensive and leads to discounted settlements.
- to validate: Ask a marine claims manager at a Singapore P&I club or Lloyd's agency: "What is the average cost of survey for an inland cargo claim in eastern Indonesia vs. Singapore? How often do you settle below declared value to avoid survey?"

[ASSUMED-2]: SEA SME shippers rely on carrier liability as de facto insurance rather than stand-alone cargo cover.
- to validate: Ask a freight forwarder or 3PL in Jakarta or Kuala Lumpur: "What percentage of your SME customers purchase standalone cargo insurance versus relying on your standard carrier liability limits?"

[ASSUMED-3]: Tokio Marine + ID&E vertical integration creates conflict-of-interest concerns among buyers.
- to validate: Ask a risk manager at a large SEA shipper: "Does having your cargo insurer also advise on your logistics infrastructure change how you trust their claim settlements?"

---

## Solution Category B — Parametric Cargo Insurance

### Description

Insurance products that pay out automatically on occurrence of a pre-agreed trigger event (port delay, temperature exceedance, weather index, route diversion) without requiring loss adjustment or damage documentation. Payout speed is the core value proposition: 48 hours to 7 days vs. weeks/months for traditional indemnity.

### Activities

1. Define parametric triggers tied to observable, third-party-verified data (AIS vessel tracking, weather stations, port arrival feeds, IoT temperature sensors).
2. Quote and bind per-shipment parametric coverage embedded within TMS or broker platforms via API.
3. Monitor trigger conditions in real time and auto-execute claim payments when thresholds are breached.
4. Model basis risk (gap between parametric payout and actual loss) and disclose it transparently to buyers.
5. Source reinsurance and ILS capital markets capacity for large portfolios of parametric triggers.

### Revenue Model

Premium per shipment or annualized contract; MGA retains underwriting margin while passing peak exposure to reinsurance capacity; some platforms (Arbol) also monetize as a climate data analytics service to reinsurers.

### Cost Drivers

Technology platform (data feeds, trigger monitoring, auto-payment rails), reinsurance cost, basis-risk capital retention, data licensing (satellite, weather, port AIS), and model validation overhead.

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global parametric insurance market (2024) | USD 15.9 billion (all perils, all segments) | Medium — multiple market research sources converge on similar range | (12), (13) |
| Global parametric insurance market (2025 estimate) | USD 18.94–19.4 billion | Medium | (12) |
| Global parametric market CAGR (2024–2035) | 9.7–13.1% depending on source | Low — significant spread across analyst estimates | (12), (13) |

*Data gap: No country-specific or segment-specific (logistics/cargo) parametric insurance market size exists in published sources. The global figure above spans agriculture, property/cat, aviation, and supply chain — cargo-specific parametric is a small fraction. Field validation required for SEA market penetration.*

### Current Players by Region

**Global:**
- Parsyl — food/pharma cold-chain parametric via Lloyd's Syndicate 1796; ColdCover Parametric product; Series C USD 20M (Jan 2024); US + London (8)
- Arbol — climate-indexed parametric; USD 60M Series B (April 2024); supply chain throughput disruption coverage for agriculture and logistics; New York HQ (14)
- Descartes Underwriting — Paris-based MGA; climate parametric; USD 200M+ GWP target (2024); expanding beyond cat into cyber and specialty; awarded MGA of Year 2024 (15)
- Skyline Partners — London Lloyd's Lab graduate; InsDex geospatial parametric platform; Spire Global satellite data partnership for marine/shipping triggers (16)
- Marsh/Otonomi partnership — parametric marine cargo delay coverage; AI-assisted trigger based on AIS arrival data; per-shipment and annualized options; 48-hour payout standard (7)

**SEA:**
- No SEA-headquartered parametric cargo platform identified in research. [ASSUMED-4]
- International platforms (Parsyl, Marsh/Otonomi) can technically serve SEA but no local distribution partnerships identified in public sources.

### Preliminary Pain Points (this stage)

- Basis risk — the gap between parametric trigger payout and actual economic loss — remains the primary buyer objection; a shipment delayed 11 days pays out while a shipment delayed 9 days in a damaged condition does not. (7)
- Parametric triggers calibrated to developed-market port databases (US, Europe, Singapore) have sparse or unreliable AIS/port-arrival data for smaller Indonesian, Philippine, or Vietnamese ports, undermining trigger accuracy. [ASSUMED-5]
- Reinsurance capacity for parametric cargo in SEA corridors is limited; most capacity sits in cat/weather bonds and is not easily redirected to per-shipment cargo triggers with small notional values. [ASSUMED-6]
- Buyers struggle to evaluate "basis risk" disclosure: most logistics procurement teams lack actuarial capability to assess whether a parametric product is priced fairly relative to their actual loss distribution. (7)
- Descartes Underwriting's 2024 >50% GWP growth target signals pricing competition may compress margins before loss data is sufficient to validate model accuracy. (15)

### Assumptions to validate

[ASSUMED-4]: No SEA-headquartered parametric cargo insurance platform exists as of 2025.
- to validate: Check with MAS (Singapore) Innovation Hub and OJK (Indonesia) fintech registry for licensed parametric cargo insurers; ask Lloyd's Singapore office.

[ASSUMED-5]: AIS/port data coverage for smaller SEA ports is insufficient for parametric triggers.
- to validate: Ask Skyline Partners or Otonomi: "Which SEA ports can you currently support with reliable AIS-based delay triggers?"

[ASSUMED-6]: Reinsurance capacity for parametric cargo in SEA is limited.
- to validate: Ask a reinsurance broker in Singapore (e.g., Aon, Gallagher Re): "Is there available ILS capacity for parametric cargo triggers covering Sulawesi or Philippine island routes?"

---

## Solution Category C — Claims Management Software (RMIS / Claims Administration)

### Description

Software platforms that manage the full claims lifecycle for risk managers, self-insured corporations, TPAs, and insurers: FNOL intake, reserves setting, workflow routing, settlement, subrogation, and actuarial reporting. The large RMIS vendors (Riskonnect, Origami Risk) serve captives and large self-insureds; specialist claims administration platforms (Ventiv, ClaimVantage) serve TPAs and insurers.

### Activities

1. Ingest FNOL data from multiple intake channels (web portal, EDI, TMS integration, mobile) and auto-route to adjusters.
2. Set initial reserves using actuarial models and benchmark data; track reserve adequacy through lifecycle.
3. Manage adjuster workflow, document management, and vendor (surveyor, repairer) assignments.
4. Generate regulatory filings, bordereaux, and reinsurance reporting from claims data.
5. Provide analytics dashboards to risk managers for loss-prevention insights and program performance.

### Revenue Model

Annual SaaS subscription (per-seat or per-claim-transaction basis) plus implementation fees; some vendors (Ventiv, Riskonnect) layer on managed services (outsourced claims administration).

### Cost Drivers

Platform R&D and integration maintenance, customer implementation labor, data hosting and security compliance (SOC 2, ISO 27001), and sales cycle costs (enterprise procurement cycles are 12–24 months).

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global claims processing software market (2024) | USD 40.84 billion | Low — broad definition includes health, life, and P&C; cargo/logistics subset is a fraction | (17) |
| Insurance claims management solution software market (2024) | USD 21.79 billion | Low — different scope from above; definition inconsistency | (18) |
| Asia Pacific insurance claims management market (2024) | USD 2,982 million | Low — single source; no cargo-specific breakdown | (3) |
| SEA insurance claims software market (2024) | USD 8.14 million | Low — single trade research source; likely excludes large enterprise deployments | (3) |

*Data gap: No cargo-specific RMIS/claims software market size exists in public sources. Global figures above span all insurance lines. Cargo/logistics claims management is a feature within broader RMIS platforms, not a separately measured market segment.*

### Current Players by Region

**Global (all serving logistics/cargo risk managers):**
- Riskonnect — Atlanta, GA; formerly Thoma Bravo, now TA Associates-backed; acquired Marsh ClearSight (2018); 950+ customers across 45 countries; largest RMIS platform globally (19)
- Origami Risk — Chicago; USD 59M revenue (2024); 100 new core deals in 36 months; Celent Luminary in claims administration; serves DHL among logistics clients (20)
- Ventiv Technology — Nashville; enterprise RMIS and TPA claims administration platform; SaaS; listed on Gartner Magic Quadrant (21)
- ClaimVantage (now Majesco) — end-to-end claims administration; primarily life/accident but expanding to specialty P&C (21)

**SEA / Asia Pacific:**
- No SEA-headquartered RMIS platform serving cargo/logistics identified. [ASSUMED-7]
- Riskonnect and Origami Risk serve APAC-based multinationals remotely; no named SEA logistics-specific deployment publicized.
- Local insurers (Tokio Marine Indonesia, AIA, Prudential) operate proprietary claims systems or use regional integrators, not publicly named.

*Data gap: Named SEA-specific claims software players for logistics/cargo require direct field research with OJK-licensed insurers and local freight associations.*

### Preliminary Pain Points (this stage)

- Most large SEA logistics operators lack a formal RMIS; cargo claims are tracked in spreadsheets or insurer portals with no consolidated view across lines (cargo, liability, marine, cyber). [ASSUMED-7]
- Integration between TMS platforms and RMIS claims systems is rarely pre-built; each connection requires bespoke API work that takes months and costs six figures for enterprise deployments. (20)
- Riskonnect's consolidation of the RMIS market (post Marsh ClearSight acquisition) has reduced vendor choice and created pricing leverage against risk managers negotiating SaaS renewals. (19)
- Claims data locked in insurers' proprietary systems cannot be accessed by risk managers in real time, preventing loss-prevention feedback loops. (20)
- Regulatory requirements across SEA jurisdictions (OJK in Indonesia, BNM in Malaysia, OIC in Thailand, MAS in Singapore) differ on claims reporting formats and timelines, forcing multinational shippers to maintain country-specific reporting workflows. [ASSUMED-8]

### Assumptions to validate

[ASSUMED-7]: Most large SEA logistics operators track cargo claims in spreadsheets or insurer portals without a formal RMIS.
- to validate: Ask risk managers at Aboitiz Logistics, Toll Group APAC, or Kerry Logistics: "What system do you use to track cargo claims across your SEA operations?"

[ASSUMED-8]: Multi-jurisdiction SEA claims reporting creates significant compliance overhead for multinational shippers.
- to validate: Ask a logistics insurance manager at a global 3PL (e.g., DB Schenker, Kuehne+Nagel) with SEA coverage: "How do you handle regulatory reporting differences across OJK, BNM, and MAS for the same cargo claim event?"

---

## Solution Category D — Cargo Security & Convoy / Escort Services

### Description

Physical and electronic security services that prevent cargo theft during in-transit or storage phases: armed escorts, secure convoys, GPS/RF tracking with rapid-response recovery teams. The telematics-software layer (Overhaul) blurs into this category by providing real-time monitoring that triggers human response teams.

### Activities

1. Provide armed or unarmed escort vehicles for high-value or high-risk cargo legs (electronics, pharmaceuticals, cash, fuel).
2. Monitor shipments in real time using GPS, GSM, RF (LoJack), and satellite beacons; alert response centers on deviation or breach.
3. Coordinate rapid-response recovery with law enforcement and private investigators when cargo theft is confirmed.
4. Conduct route risk assessments and pre-departure security planning for high-value freight.
5. Issue cargo theft intelligence reports to shippers and insurers (Overhaul, CargoNet/Verisk, BSI/TT Club joint reports).

### Revenue Model

Annual subscription (software telematics + monitoring); project-based escort fee per shipment; retainer for rapid-response teams; data analytics licensing to insurers (Verisk/CargoNet).

### Cost Drivers

Personnel (armed guards, response teams, dispatchers), vehicle fleet, technology platform (monitoring software, GPS devices), law enforcement liaison costs, and liability insurance for security personnel.

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| US cargo theft estimated losses (2024) | USD 454.9 million (Verisk CargoNet; 3,625 incidents) | High — primary source, Verisk audited methodology | (22) |
| US cargo theft estimated losses (2025) | USD 725 million (60% increase; Verisk CargoNet) | High — Verisk primary source | (23) |
| Global cargo theft prevention via telematics market (2024) | USD 3.9 billion | Low — single market research source, no methodology disclosed | (24) |
| Global cargo theft prevention via telematics market (2033 forecast) | USD 10.2 billion (CAGR 11.2%) | Low | (24) |

*Data gap: SEA-specific cargo theft statistics are not systematically collected or published. Munich Re / BSI-TT Club data shows Brazil, Mexico, India, US, Germany as global hotspots; SEA countries are not individually ranked, though Indonesia and Philippines anecdotally rank in APAC-regional theft data. Country-level data for Indonesia, Philippines, Vietnam requires field research with local freight associations or national police cargo crime units.*

### Current Players by Region

**Global / Americas:**
- Verisk CargoNet — Verisk-owned (since 2014); US/Canada theft database; 3,625 incidents tracked in 2024; shared intelligence network for law enforcement; USD 3.07B total Verisk revenue (2024) — CargoNet revenue not separately disclosed (22), (25)
- Overhaul — Austin TX; in-transit supply chain risk management; USD 105M Series C (Aug 2025); USD 1.4 trillion cargo trade monitored; Fortune 100 clients in pharma, tech, FMCG (26)
- CalAmp — formerly NASDAQ: CAMP; now private (Lynrock Lake, Aug 2024); telematics hardware + SaaS; USD 53.6M quarterly revenue (declining, pre-privatization); cargo/asset tracking (27)
- NICB (National Insurance Crime Bureau) — non-profit consortium; 240+ cargo crime investigations (2022–2024); 70 recoveries worth USD 40M; data partner to CargoNet (28)

**Security Services (Global with SEA presence):**
- G4S (now part of Allied Universal after 2021 acquisition) — operates in 85+ countries including SEA; armed escort and secure logistics services (29)
- GardaWorld — Canada HQ; USD 2.7B+ international revenue; operates secure logistics in SEA (29)
- Brink's — NYSE: BCO; secure logistics including armored transport; SEA presence primarily in Singapore, Malaysia, Philippines for cash logistics (29)

**LATAM Cargo Recovery:**
- LoJack (Spireon brand under Solera) — radio-frequency stolen vehicle and cargo recovery; LATAM franchise network (Brazil, Argentina, Colombia, Mexico); integrates with local law enforcement recovery networks (30)

**SEA-Specific:**
- BSI Consulting (SGS Group subsidiary) — supply chain security intelligence; co-authors annual cargo theft report with TT Club; SEA regional presence (2)
- No SEA-headquartered armed cargo escort company with documented logistics specialization found in public sources. [ASSUMED-9]

### Preliminary Pain Points (this stage)

- US cargo theft losses surged 60% in 2025 to USD 725M despite stable incident volume — average value per theft is rising as organized crime targets higher-value consolidated loads. (23)
- Strategic/fictitious pickup fraud now accounts for ~18% of US cargo thefts; this tactic is spreading to UK, Germany, France, and is expected to migrate to SEA corridors as organized crime internationalizes. (2)
- Overhaul's USD 105M raise and Fortune 100 customer base reflect a US/Europe-centric market; SEA deployment faces barriers: sparse sensor infrastructure in outer-island Indonesia, no local response teams, and limited law enforcement data-sharing agreements. [ASSUMED-9]
- CalAmp's deteriorating revenue (–32% YoY pre-privatization) and balance-sheet distress reduce confidence in the platform's long-term viability for logistics deployments. (27)
- LoJack radio-frequency recovery technology is effective in LATAM where law enforcement has embedded RF receivers, but the model does not transfer to SEA without multi-year law enforcement partnership development. (30)
- Cargo escort services in high-risk SEA corridors (Eastern Indonesia, Mindanao, Northern Myanmar border) are provided by informal local security contractors rather than international firms — a fragmented, difficult-to-monitor supply base. [ASSUMED-10]
- Verisk CargoNet intelligence is US/Canada-centric; no equivalent database for SEA cargo theft exists in standardized, machine-readable form. (22)

### Assumptions to validate

[ASSUMED-9]: Overhaul has no established SEA presence with local response teams.
- to validate: Ask Overhaul directly: "Do you have operational response-team coverage in Indonesia, Philippines, or Vietnam? If not, what would be required?"

[ASSUMED-10]: Cargo escort in high-risk SEA inner corridors relies on informal local contractors.
- to validate: Ask a pharmaceutical or electronics logistics manager in Surabaya or Cebu: "Who do you use for escort when moving high-value cargo to outer islands? Are they licensed?"

---

## Summary Market Size Table

| Solution Category | Key Metric | Value | Confidence |
|---|---|---|---|
| Global marine cargo insurance premiums | Annual GWP (2024) | USD 22.64B | High |
| Asia/Pacific cargo insurance premiums | Regional GWP (2024) | USD 7.96B (~35% of global) | High |
| Lloyd's cargo premiums | GWP (2024) | USD 2.20B (~9.7% of global) | High |
| Parametric insurance (all perils, global) | Market size (2024) | USD 15.9B | Medium |
| Global claims processing software | Market size (2024) | USD 40.84B (broad) | Low |
| SEA insurance claims software | Market size (2024) | USD 8.14M | Low |
| US cargo theft losses (2025) | Annual losses | USD 725M | High |
| Cargo theft prevention telematics (global) | Market size (2024) | USD 3.9B | Low |

---

## Named Solutions Profiled — Quick Reference

| Solution | Category | HQ | Status | Scale Signal |
|---|---|---|---|---|
| TT Club | Cargo insurance (mutual) | London | Public mutual | GEP USD 284.2M (2024) |
| Loadsure | Cargo MGA (digital, per-shipment) | London | Private | USD 11M Series A |
| Parsyl | Cargo MGA + parametric (cold-chain) | Denver / London | Private | USD 20M Series C (Jan 2024) |
| Tokio Marine Kiln | Lloyd's syndicate (marine cargo capacity) | London / Singapore | Public (Tokio Marine HD) | Syndicate 1880 |
| Marsh Specialty | Cargo broker + parametric | Global | Public (MMC) | USD 50M port-blockage parametric facility |
| Arbol | Parametric (climate/supply chain) | New York | Private | USD 60M Series B (Apr 2024) |
| Descartes Underwriting | Parametric MGA | Paris | Private | USD 200M+ GWP target (2024) |
| Skyline Partners | Parametric platform (marine/cargo triggers) | London | Private | Lloyd's Lab graduate |
| Riskonnect | RMIS / claims management | Atlanta | Private (TA Associates) | 950+ customers |
| Origami Risk | RMIS / claims admin | Chicago | Private | USD 59M revenue (2024) |
| Ventiv Technology | Claims software | Nashville | Private | Enterprise TPA market |
| Verisk CargoNet | Cargo theft database + recovery | Jersey City NJ | Public (VRSK) | 3,625 US/CA incidents tracked (2024) |
| Overhaul | In-transit security telematics | Austin TX | Private | USD 105M Series C (Aug 2025) |
| CalAmp | Cargo telematics hardware+SaaS | Oxnard CA | Private (2024) | USD 53.6M quarterly (declining) |
| NICB | Cargo crime intelligence (non-profit) | Des Plaines IL | Non-profit | 70 recoveries / USD 40M (2022–2024) |
| G4S / Allied Universal | Physical cargo escort | London / Irvine CA | Private | 85+ country presence |
| Brink's | Secure logistics | Richmond VA | Public (BCO) | SEA presence Singapore, Malaysia, Philippines |
| LoJack (Solera/Spireon) | Cargo recovery (RF) | Westlake TX | Private | LATAM franchise network |

---

## Sources for This Stage

(1) IUMI press release — "Steady insurance markets for hull and cargo in 2024..." https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/

(2) BSI Consulting + TT Club 2024 Cargo Theft Report (April 2025) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown — cached at .claude/cache/sources/16c1c94f36b7801b.md)

(3) Cognitive Market Research — Asia Pacific insurance claims management market https://www.cognitivemarketresearch.com/regional-analysis/asia-pacific-insurance-claims-management-market-report

(4) MarkntelAdvisors — Maritime Cargo Insurance Market 2026–2032 https://www.marknteladvisors.com/research-library/maritime-cargo-insurance-market-report.html

(5) Business Research Insights — Cargo Insurance Market 2033 https://www.businessresearchinsights.com/market-reports/cargo-insurance-market-120507

(6) Tokio Marine Kiln / Loadsure capacity backing https://www.intelligentinsurer.com/insurance/tokio-marine-kiln-up-fresh-capacity-for-marine-cargo-insurtech-mga-31420

(7) Marsh parametric cargo delay coverage / Otonomi product https://www.marsh.com/en/industries/cargo/expertise/parametric-coverage-for-cargo-delay.html

(8) Parsyl Series C announcement https://www.parsyl.com/media/parsyl-secures-series-c-funding

(9) Loadsure European launch + embedded API https://fintech.global/2024/04/30/insurtech-mga-loadsure-enters-european-market/ and https://www.loadsure.net/company/about-us/

(10) Tokio Marine Indonesia marine cargo https://www.tokiomarine.com/id/en/non-life/products/business/marine/marine-cargo-insurance.html

(11) Sompo International Asia Pacific Marine https://www.sompo-intl.com/insurance/asia-pacific-market-marine/

(12) GM Insights — Parametric Insurance Market 2025–2035 https://www.gminsights.com/industry-analysis/parametric-insurance-market

(13) Custom Market Insights — Global Parametric Insurance Market 2025–2034 https://www.custommarketinsights.com/report/parametric-insurance-market/

(14) Arbol Series B announcement https://www.arbol.io/post/arbol-raises-60-million-in-series-b-funding-to-scale-parametric-insurance-responding-to-increasing-climate-risk

(15) Descartes Underwriting MGA of Year 2024 + GWP target https://descartesunderwriting.com/newsroom/parametric-insurer-awards-2024

(16) Skyline Partners / Spire Global satellite parametric https://www.skyline.partners/skyline-links-with-spire-global/

(17) Polaris Market Research — Claims Processing Software Market 2025–2034 https://www.polarismarketresearch.com/industry-analysis/claims-processing-software-market

(18) Global Market Statistics — Insurance Claims Management Software Market 2033 https://www.globalmarketstatistics.com/market-reports/insurance-claims-management-solution-software-market-12213

(19) Riskonnect / Marsh ClearSight acquisition; TA Associates investment https://riskonnect.com/press-releases/riskonnect-acquires-marshclearsight/ and https://www.ta.com/news/ta-associates-to-make-growth-investment-in-riskonnect-the-leader-in-integrated-risk-management/

(20) Origami Risk revenue and customer data https://getlatka.com/companies/origami-risk and https://www.origamirisk.com/resources/insights/origami-accelerates-strategic-vision-market-momentum-and-record-results/

(21) Ventiv Technology / ClaimVantage market presence https://www.softwareadvice.com/insurance/ventiv-claims-profile/

(22) Verisk CargoNet 2024 annual theft data https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/

(23) Verisk CargoNet 2025 losses estimate https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/ (also cached at .claude/cache/sources/f950c000081e25c7.html)

(24) Growth Market Reports — Cargo Theft Prevention via Telematics 2033 https://growthmarketreports.com/report/cargo-theft-prevention-via-telematics-market

(25) Verisk Analytics 2024 10-K (total revenue USD 3.07B) https://www.sec.gov/Archives/edgar/data/0001442145/000143774925005160/vrsk20241231_10k.htm

(26) Overhaul Series C announcement https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(27) CalAmp Q3 FY2024 earnings / privatization https://www.sec.gov/Archives/edgar/data/0000730255/000095017024003370/camp-ex99_1.htm

(28) NICB cargo crime statistics 2024 https://www.nicb.org/news/regional-news/new-report-shows-rise-cargo-theft-three-states-leading-way

(29) G4S / GardaWorld / Brink's profiles https://en.wikipedia.org/wiki/G4S and https://en.wikipedia.org/wiki/Brink%27s

(30) LoJack LATAM operations https://www.globalfleet.com/en/safety-environment/latin-america/interviews/david-roman-lojack-mexico-more-stolen-vehicle-recovery

(31) Munich Re Cargo Theft Report 2025 https://www.munichre.com/content/dam/munichre/mram/content-pieces/pdfs/MR_CargoTheftReport_FINAL25.pdf (PDF, processed via markitdown — cached at .claude/cache/sources/9299c42999b4278f.md)

(32) TT Club 2024 Financial Highlights https://www.ttclub.com/news-and-resources/corporate-literature/article/financial-highlights-2024

(33) Lloyd's 2024 combined ratio and marine performance https://www.spglobal.com/market-intelligence/en/news-insights/articles/2025/3/lloyds-underwriting-profits-dip-as-pair-of-business-lines-slip-into-red-88179568

(34) Insurance Business Asia — Chubb expanding marine in Asia https://www.insurancebusinessmag.com/asia/news/breaking-news/allianz-to-become-fourth-largest-composite-insurer-in-asia-with-latest-acquisition--fitch-ratings-498051.aspx

---

## All Assumptions to Validate (Consolidated)

[ASSUMED-1]: Survey and loss-adjustment in remote SEA corridors is expensive and leads to discounted settlements.
- to validate: Ask a marine claims manager at a Singapore P&I club or Lloyd's agency: "What is the average cost of survey for an inland cargo claim in eastern Indonesia vs. Singapore? How often do you settle below declared value to avoid survey costs?"

[ASSUMED-2]: SEA SME shippers rely on carrier liability as de facto insurance rather than stand-alone cargo cover.
- to validate: Ask a freight forwarder or 3PL in Jakarta or Kuala Lumpur: "What percentage of your SME customers purchase standalone cargo insurance versus relying on your standard carrier liability limits?"

[ASSUMED-3]: Tokio Marine + ID&E vertical integration creates conflict-of-interest concerns among buyers.
- to validate: Ask a risk manager at a large SEA shipper: "Does having your cargo insurer also advise on your logistics infrastructure change how you trust their claim settlements?"

[ASSUMED-4]: No SEA-headquartered parametric cargo insurance platform exists as of 2025.
- to validate: Check with MAS Innovation Hub and OJK fintech registry for licensed parametric cargo insurers; ask Lloyd's Singapore office.

[ASSUMED-5]: AIS/port data coverage for smaller SEA ports is insufficient for parametric triggers.
- to validate: Ask Skyline Partners or Otonomi: "Which SEA ports can you currently support with reliable AIS-based delay triggers?"

[ASSUMED-6]: Reinsurance capacity for parametric cargo in SEA corridors is limited.
- to validate: Ask a reinsurance broker in Singapore (Aon, Gallagher Re): "Is there available ILS capacity for parametric cargo triggers covering Sulawesi or Philippine island routes?"

[ASSUMED-7]: Most large SEA logistics operators track cargo claims in spreadsheets or insurer portals without a formal RMIS.
- to validate: Ask risk managers at Aboitiz Logistics, Toll Group APAC, or Kerry Logistics: "What system do you use to track cargo claims across your SEA operations?"

[ASSUMED-8]: Multi-jurisdiction SEA claims reporting creates significant compliance overhead for multinational shippers.
- to validate: Ask a logistics insurance manager at a global 3PL (DB Schenker, Kuehne+Nagel) with SEA coverage: "How do you handle regulatory reporting differences across OJK, BNM, and MAS for the same cargo claim event?"

[ASSUMED-9]: Overhaul has no established SEA presence with local response teams.
- to validate: Ask Overhaul directly: "Do you have operational response-team coverage in Indonesia, Philippines, or Vietnam?"

[ASSUMED-10]: Cargo escort in high-risk SEA inner corridors relies on informal local contractors.
- to validate: Ask a pharmaceutical or electronics logistics manager in Surabaya or Cebu: "Who do you use for escort when moving high-value cargo to outer islands? Are they licensed?"

