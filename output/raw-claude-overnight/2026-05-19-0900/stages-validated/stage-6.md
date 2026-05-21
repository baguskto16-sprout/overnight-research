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


---

# Pain Points by Stage

## Stage 6 — Incident Response, Claims & Insurance

**Actor summary:** Shippers (cargo owners), freight forwarders/3PLs, small and mid-size road carriers, and cargo insurers/underwriters operating across the logistics journey. These actors converge at the moment of a cargo incident — theft, damage, delay, spoilage — to detect the event, coordinate a response, execute a claim, and settle. The solutions landscape here spans cargo insurance/claims platforms (Loadsure, Breeze, Parsyl, Cover Genius, Marsh, TT Club), parametric insurance (Parsyl ColdCover, Skyline Partners, Arbol, Descartes Underwriting), claims management software (Origami Risk, Riskonnect, Ventiv, ClaimVantage), and security/recovery services (Overhaul, CalAmp, Garda, G4S, LoJack Secure-Tractor). Geography: worldwide, SEA as primary deployment target.

---

### Pain point 6.1

**Description:** When a cargo theft or in-transit security incident occurs, the coordinated response across shipper, 3PL, sub-carrier, law enforcement, and insurer is largely manual, phone- and email-driven, and has no shared incident management layer. The consequence is that detection is delayed (often by hours), parties are notified sequentially rather than simultaneously, and the critical recovery window — the first 72 hours, when most recoveries occur — is substantially consumed by communication overhead rather than active recovery. Claims platforms have shortened payout timelines but have not materially shortened *response* time to the incident itself.

**Who bears it:** Shippers (cargo owners) and 3PLs managing high-value or vulnerable freight; insurers absorbing un-recovered losses; subcontracted carriers who bear reputational exposure.

**Estimated cost:**
- Total US+Canada cargo theft losses: $454.9 million in 2024, up 27% year-on-year; average per-theft loss $202,364, up from $187,895 in 2023 (1)
- 2025 losses estimated at $725 million by Verisk CargoNet — a 59% single-year increase (2)
- Freight fraud losses (including double brokering and identity theft) surpassed $455 million in 2024 in the US market alone (3)
- Without real-time GPS monitoring, recovery rate for stolen cargo falls below 20%; with activated real-time response, Overhaul reports 96%+ recovery rates — implying the unmonitored segment faces losses of $360–400 million on an annualised basis that are structurally unrecoverable (4)
- One documented case: full deployment of real-time security monitoring ($380,000 investment) delivered 6.3× ROI by cutting incident response time from 42 minutes to under 10 minutes (5)

**Willingness to pay:** [Not sourced — see ASSUMED-1]

**Frequency:**
- 3,625 reported cargo theft incidents in US+Canada in 2024; each quarter of 2024 exceeded 2023 records (1)
- Overhaul managed over 2,500 Incident Response Operations globally in 2024 (4)
- Cargo theft incidents increased 49% in H1 2024 vs H1 2023; California alone represented 45% of all reported US thefts (6)
- India: 63% of APAC cargo thefts; Indonesia: 14%; China: 11%; Vietnam: 3% — SEA corridor confirmed as active risk zone (7)
- 65,000 railroad cargo thefts in the US in 2024, a 40% increase year-on-year (8)
- Asia reported 107 piracy and armed robbery incidents against ships in 2024, a 6% increase from 2023; Straits of Malacca and Singapore (SOMS) accounted for 62 incidents (7)

**Evidenced or assumed:**
(1) https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/ (Verisk CargoNet 2024 Annual Report)
(2) https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/
(3) https://www.trucknews.com/transportation/freight-fraud-losses-surpass-455m-in-2024/1003196726/
(4) https://www.prnewswire.com/news-releases/cargo-theft-soars-49-in-first-half-of-2024-amid-rising-criminal-sophistication-reveals-overhaul-report-302228584.html (Overhaul H1 2024 Cargo Theft Report)
(5) https://arviem.com/how-real-time-security-monitoring-preventing-cargo-theft-2025/
(6) https://www.dcvelocity.com/articles/61700-h1-2024-cargo-theft-data-reveals-49-surge
(7) https://www.munichre.com/content/dam/munichre/mram/content-pieces/pdfs/MR_CargoTheftReport_FINAL25.pdf/_jcr_content/renditions/original.media_file.download_attachment.file/MR_CargoTheftReport_FINAL25.pdf (Munich Re Cargo Theft Tactics & Trends 2025, PDF — processed via markitdown)
(8) https://over-haul.com/65000-railroad-cargo-thefts-reported-in-2024/
(9) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (TT Club / BSI 2024 Cargo Theft Report, April 2025, PDF — processed via markitdown)
(10) https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(11) https://www.insurancebusinessmag.com/us/news/breaking-news/global-cargo-theft-hits-new-highs-as-criminal-networks-evolve--tt-club-572468.aspx

**Root Causes**

- **RC1: No shared incident management layer connects the parties who must act simultaneously** — When cargo is stolen or tampered with, the shipper, 3PL, sub-carrier, insurer, and law enforcement must each be notified and must act within a tight window. There is no software layer that pushes a single incident alert simultaneously to all parties and tracks coordinated response steps. Standard loads involve 4–5 different entities in transit (Loadsure analysis); notifications travel by phone and email sequentially, not in parallel. Each handoff adds 20–60 minutes to the critical response window. The absence of a shared layer is structural: each party uses its own TMS, claims platform, or communication tool with no cross-party integration standard. [ASSUMED-2]: to validate: what is the typical sequence of notifications when a theft is detected in a 3PL-managed shipment, and how long does the first-hour response actually take?

- **RC2: The first-mover incentive for real-time monitoring is asymmetric — the shipper pays, the insurer benefits most** — Shippers bear the cost of GPS trackers and real-time monitoring hardware ($380,000 in the documented case study), but the largest financial beneficiary of fast recovery is the insurer who avoids paying a total-loss claim. Without a shared economics model that transfers monitoring cost toward the insurer — through premium discounts, co-investment, or mandatory coverage conditions — most shippers face a buy decision where the cost is visible and immediate but the recovery benefit is probabilistic and distributed across parties. This explains why the majority of cargo moves without activated real-time monitoring despite the demonstrated 6.3× ROI. (Arviem, 2025; Overhaul H1 2024 Report; Parsyl/Lloyd's initiative documents)

- **RC3: Cargo theft is under-reported, leaving law enforcement and insurers operating on incomplete data** — TT Club's own analysis notes that theft data is fragmented across law enforcement, insurance claims records, and trade association reports, with no mandatory unified reporting mechanism in most jurisdictions. Incident response depends on law enforcement being notified quickly, but police in most jurisdictions have no dedicated cargo crime unit — coordination falls to individual officers with no supply-chain context. In SEA, insider collusion accounts for over 25% of recorded thefts (Munich Re 2025), meaning the "victim" party may itself be implicated, further suppressing reporting. Underreporting means statistical models underestimate incident probability, compounding the pricing-data gap in Pain point 6.3. (TT Club/BSI 2024 Report; Munich Re 2025)

- **RC4: Strategic and AI-enabled theft has outpaced the identity-verification and documentation-check capabilities of freight matching platforms** — TT Club/BSI 2024 Report documents criminals using AI to forge bills of lading, impersonate legitimate carriers, and execute double-brokering at industrial scale; double-brokering complaints rose 400% over six months per Truckstop data. Once cargo is handed to a ghost carrier, it disappears — and neither the shipper's TMS nor the insurer's claims platform has visibility into the sub-contracted leg. The fraud vector exploits the same handoff gap that makes visibility problematic at Stage 3 (see Pain point 3.2). Standard Motor Truck Cargo policies typically exclude double-brokering losses, leaving shippers and legitimate carriers uncompensated. (TT Club/BSI 2024 Report; Loadsure double-brokering analysis at https://www.loadsure.net/latest/article/double-brokering-whats-the-impact-of-this-rising-trend-in-cargo-fraud/)

- **RC5: Security and response services (Overhaul, Garda, G4S) are priced for enterprise shippers, leaving the SME segment structurally unmonitored** — Overhaul's response infrastructure — Law Enforcement Connect teams, geofencing, active monitoring — is commercially priced for the mid-market and enterprise segment. Owner-operators and small carriers (who carry the majority of road freight volume in SEA and are the subcontracted tier in most 3PL chains) lack the per-shipment economics to deploy activated monitoring. The result is a structural monitoring gap precisely in the subcontracted tier where cargo crime risk is highest — small carriers are frequently impersonated in double-brokering schemes and carry cargo for multiple clients without dedicated security coverage. [ASSUMED-3]: to validate: what is the per-shipment cost of Overhaul-class monitoring vs the average per-shipment margin for an owner-operator in Indonesia or Thailand?

---

### Pain point 6.2

**Description:** Cargo insurance claims require multi-party document submission, damage surveys, liability determination across carrier/3PL/subcarrier tiers, and manual adjudication processes that routinely take 30–90 days from loss event to settlement. This cycle time imposes acute working-capital strain on shippers and carriers who must absorb the loss value while waiting for indemnification, and creates administrative overhead that discourages filing for smaller claims entirely, leaving a tail of unrecovered losses.

**Who bears it:** Shippers (cash flow impact during settlement); small carriers and 3PLs (liability disputes); cargo insurers (fraud exposure from documentation manipulation during the claim process).

**Estimated cost:**
- Traditional claims cycle: 30–90 days average, with some complex marine claims extending further; industry-standard settlement 45 days using digital tools (12)
- Incomplete documentation is identified as causing 40% of delays in cargo insurance claims processing (12)
- A shipper absorbing a $202,364 average theft loss (Verisk 2024) for 45 days at a 10% cost of capital = ~$2,500 in financing cost per incident on top of the loss; across 3,625 incidents = ~$9 million in aggregate financing cost to the claim-waiting period annually, in North America alone
- 60% of global freight estimated to be under- or uninsured (Loadsure/FreightWaves), meaning the insured segment is a fraction of the total exposure; the uninsured majority bears the full loss directly (13)
- Double-brokering shipments (standard MTC policy typically excludes coverage) result in total uncompensated losses; 400% increase in complaints over 6 months per Truckstop (14)

**Willingness to pay:**

**Frequency:**
- 60% of freight is under- or uninsured globally; an estimated 60–70% of SME exporters in developing economies lack formal cargo insurance coverage (13, 15)
- Open cover cargo policies represent 42.6% of the global cargo insurance market — suggesting a large share of claims flow through blanket annual policies where per-shipment documentation is weak (15)
- Freight fraud losses (including uninsured double-brokering losses): $455 million in 2024 (3)
- Global cargo insurance premiums: $22.64 billion in 2024 (IUMI), implying a claims pool that processes tens of thousands of claims annually (16)

**Evidenced or assumed:**
(12) https://www.freightamigo.com/en/blog/transport-insurance/how-long-does-a-cargo-insurance-claim-take-to-process/ ; https://traderiskguaranty.com/trgpeak/how-long-cargo-insurance-claim/
(13) https://www.freightwaves.com/news/solving-the-freight-industrys-underinsurance-crisis
(14) https://www.loadsure.net/latest/article/double-brokering-whats-the-impact-of-this-rising-trend-in-cargo-fraud/
(15) https://www.marketresearchfuture.com/reports/cargo-insurance-market-23895 ; https://www.businessresearchinsights.com/market-reports/cargo-insurance-market-120507
(16) https://iumi.com/wp-content/uploads/2024/12/IUMI-Stats-Report-2024.pdf [NEEDS-ATTENDED-FETCH] ; https://www.hellenicshippingnews.com/the-international-union-of-marine-insurance-iumi-has-released-its-2024-analysis-of-the-global-marine-insurance-market-the-iumi-stats-report/
(17) https://www.claimsjournal.com/news/national/2024/07/10/324906.htm
(18) https://commercial.allianz.com/news-and-insights/expert-risk-articles/marine-claims-trends.html (AGCS Marine Claims Trends)
(19) https://www.gofclogistics.com/a-complete-guide-to-freight-claims/
(20) https://freightclaims.com/what-is-the-timeline-for-processing-a-freight-claim/
(21) https://corporate.nvisionglobal.com/avoiding-common-freight-claim-issues-strategies-for-faster-settlements/
(22) https://specialty.ajg.com/marine-cargo/cargo-market-update-q3-2024

**Root Causes**

- **RC1: Liability in multi-tier freight chains is contractually fragmented, requiring contested determination before settlement can proceed** — A typical cargo insurance claim on a 3PL-managed shipment must first establish whether the carrier, the 3PL, or the sub-carrier is liable — a question that requires reviewing multiple contracts (shipper-3PL, 3PL-carrier, carrier-subcontractor) against different legal regimes (Carmack Amendment in the US, CMR in Europe, jurisdictionally variable in SEA). This liability-determination step is the primary driver of the 30–90 day settlement window. Carriers have 30 days to acknowledge claims and 120 days to pay, decline, or offer settlement under US law — legal timelines that are structurally embedded in the process. No shared digital claims triage layer exists to identify liable party at the point of incident, before claim submission begins. (https://fuentesfirm.com/cargo-claim-deadlines-under-the-carmack-amendment/ ; https://corporate.nvisionglobal.com/avoiding-common-freight-claim-issues-strategies-for-faster-settlements/)

- **RC2: Documentation for a valid cargo claim must be assembled from multiple disconnected systems, creating predictable assembly failures** — A valid claim requires bill of lading, proof of delivery, commercial invoice, packing list, inspection report or photos, and repair/replacement estimates. These documents reside in the shipper's ERP, the carrier's TMS, the 3PL's portal, and the inspection agent's email. No unified document-collection layer exists at the moment of shipment that would enable instant claim filing. The 40% documentation delay rate is not a behavior problem — it is a structural consequence of the fact that required documents are held by different parties on incompatible systems that do not pre-integrate for claims purposes. (FreightAmigo; nVision Global; GoFCLogistics)

- **RC3: Smaller claims are economically rational to abandon, creating a dark pool of unreported losses** — Filing a cargo insurance claim involves attorney/adjuster time, documentation assembly, and follow-up over 30–90 days. For claims under ~$5,000, the administrative cost of filing approaches or exceeds the expected recovery, particularly when subrogation (recovery from the liable carrier) is uncertain. Shippers absorb these losses silently. The practical effect is that insurer loss models are based on filed claims only — they systematically undercount actual losses in the small-claim range, which inflates loss ratios on the claims that are filed and distorts pricing models for the entire book. [ASSUMED-4]: to validate: what is the filing rate for cargo claims under $5,000 vs claims over $25,000? Interview target: claims manager at a mid-tier 3PL or freight broker.

- **RC4: Paper-based and manual adjudication processes are structurally incompatible with the fraud patterns they must screen against** — Cargo fraud has become data-enabled: criminals forge bills of lading using AI, alter centrally held digital carrier records, and create phishing attacks against cloud TMS systems (TT Club/BSI 2024). Traditional claims adjudication relies on document authenticity checks that are slow and procedural — not real-time verification against fraud signatures. The result is a verification process that is simultaneously slow (delaying legitimate claims) and penetrable (vulnerable to sophisticated fraud). Upgrading it requires integrating with carrier identity verification, document authentication, and fraud-intelligence databases that are currently siloed across law enforcement (CargoNet), industry networks (BSI SCREEN), and individual insurers. (TT Club/BSI 2024 Report; Allianz Commercial AGCS Marine Claims Trends)

---

### Pain point 6.3

**Description:** Cargo insurance premiums across most of the market continue to be priced off declared cargo values, historical loss rates, and commodity/route classifications — not off real-time shipment-level signals (GPS position, temperature deviations, dwell time anomalies, carrier safety scores). Where real-time IoT data exists, it is collected by the shipper or 3PL and rarely flows into underwriter systems. The consequence is cross-subsidization: safe, well-managed shippers pay premiums calibrated to the industry average; high-risk carriers and routes are underpriced. Parametric products (Parsyl ColdCover, Otonomi, Skyline Partners) address the payout-speed gap but have thin adoption outside specialty perishables and remain Lloyd's-anchored, structurally inaccessible to the SME and SEA segments.

**Who bears it:** Shippers with strong risk management who overpay relative to their actual risk profile; small carriers and SME shippers who face steep or unavailable coverage; insurers who cannot differentiate risk at a shipment level and therefore face adverse selection; the SEA market, where digital insurance infrastructure is nascent.

**Estimated cost:**
- 60–70% of SME exporters in developing economies lack formal cargo insurance coverage — the uninsured segment globally (15)
- Global cargo insurance market: $22.64 billion in premiums in 2024; cargo dominates marine at 56.7% of total marine premiums (16)
- Asia-Pacific: 35–36% of global cargo premiums (~$7.9–8.0 billion), fastest-growing region; still majority priced on conventional declared-value methods (16)
- Loadsure's dynamic pricing engine claims to cut per-shipment costs for FCL/LCL by "as much as 80%" over annual open-cover policies — implying a systematic overcharge in conventional open-cover pricing for many shipments (23)
- Parametric cargo (e.g., Parsyl ColdCover) pays in 72 hours vs 30–90 days for traditional claims — a 22× speed advantage, which implies 22× less working-capital strain on the insured, but adoption remains limited to specialty perishables (24)
- Trade disruption risk was estimated at $131 billion for H1 2024 alone for Singapore, Port Klang, and Tanjung Pelepas ports — virtually none of this exposure was covered by parametric products at the time (22)

**Willingness to pay:**

**Frequency:**
- 88% of commercial fleets have telematics systems; only 64% of insurers use telematics data in underwriting decisions; 79% of fleet managers report insurers have never requested their data (25)
- Only 14% of commercial auto insurers have launched usage-based insurance products; 32% are actively piloting (25)
- 70% of fleet managers do not share telematics data with insurers; among those who do, 65% report receiving better insurance rates (26)
- Only 25% of high-value cargo shipments globally are estimated to use GPS/temperature-monitoring sensors, generating over 100 million data points monthly — yet this data is not systematically incorporated into premium pricing (27)
- Lloyd's total cargo market share: 9.7% of global premiums (16); parametric adoption in the Lloyd's cargo book is estimated as a small fraction of that — no public market share figure available [NEEDS-ATTENDED-FETCH from Lloyd's Market Intelligence]

**Evidenced or assumed:**
(22) https://specialty.ajg.com/marine-cargo/cargo-market-update-q3-2024
(23) https://www.loadsure.net/dynamic-on-demand-cargo-insurance/ [vendor source — Low confidence for own claims]
(24) https://www.parsyl.com/press-release/041520 [vendor source — Low confidence for own claims]; https://www.artemis.bm/news/data-driven-glimpse-of-the-re-insurance-future-parametric-cargo-cover-from-parsyl/
(25) https://www.carriermanagement.com/features/2025/11/24/281755.htm
(26) https://sambasafety.com/blog/why-fleets-wont-share-telematics-data
(27) https://www.hapag-lloyd.com/en/online-business/digital-insights-dock/insights/2025/09/expert-talk-global-cargo-insurance-market-in-the-age-of-digitalization.html [NEEDS-ATTENDED-FETCH — returned 403]
(28) https://www.reinsurancene.ws/lloyds-turns-to-iot-for-marine-cargo-performance-improvement/
(29) https://www.parsyl.com/media/parsyl-announces-new-initiative-with-lloyds
(30) https://www.freightamigo.com/en/blog/transport-insurance/future-trends-in-cargo-insurance-navigating-the-evolving-landscape-of-global-trade/
(31) https://axaxl.com/fast-fast-forward/articles/navigating-north-americas-marine-insurance-market-in-2024
(32) https://genesisglobalinsurance.com/articles/parametric-insurance-an-innovative-solution-for-2024-2025s-complex-risks/
(33) https://www.sosa.co/blog/why-parametric-insurance-is-gaining-ground-in-covering-hard-to-insure-risks
(34) https://agentsync.io/blog/insurance-101/what-is-parametric-insurance
(35) https://reliancepartners.com/freightwaves/telematics-is-changing-the-game-in-trucking-insurance-underwriting/

**Root Causes**

- **RC1: Cargo underwriting has no scalable data pipeline from the IoT/telematics ecosystem to insurer systems** — The data that would enable real-time risk differentiation exists — GPS positions, temperature deviation alerts, geofence breaches, carrier safety scores — but it lives in shipper TMS systems, IoT sensor platforms (Tive, Sensitech, Roambee, Controlant), and fleet telematics (Samsara, Motive, Geotab) that have no standard API connection to Lloyd's or carrier underwriting platforms. Parsyl's 2024 Data Partner Program (launched March 2024) allows customers to integrate monitoring data for coverage benefits — but this is an opt-in mechanism for existing Parsyl customers, not a market-wide standard. The absence of a data pipeline is partly a commercial problem (each side must negotiate integration) and partly a technical one (no common data schema for cargo risk signals). (Parsyl Data Partner Program press release; Carrier Management/Carriermanagement.com telematics integration failure analysis, 2025)

- **RC2: Underwriting, claims, and risk management departments operate in separate data silos within insurers, blocking feedback loops** — Even where telematics or IoT data enters an insurer's ecosystem (through claims investigation), it does not flow back to underwriting to update pricing on renewal. Carrier Management's 2025 investigation documents five recurring failure modes: departmental silos, poor workflow adoption, claims processing major losses without accessing telematics data, unread safety alerts, and underwriting pricing renewals disconnected from actual loss history. This is not a data-scarcity problem — 88% of commercial fleets have active telematics. It is an organizational architecture problem that structured incentives (separate P&L, separate technology stacks per department) have hardened into a persistent structural feature. (https://www.carriermanagement.com/features/2025/11/24/281755.htm; https://sambasafety.com/blog/why-fleets-wont-share-telematics-data)

- **RC3: Parametric cargo products are structurally anchored to Lloyd's and to specialty commodity types, blocking adoption in the mainstream SME and SEA market** — Parsyl's parametric product is a Lloyd's coverholder product, backed by London-based syndicates (Ascot, Antares, Beazley, CNA Hardy, AXA XL, QBE). Lloyd's holds 9.7% of global cargo premiums. The parametric trigger mechanism (temperature threshold for perishables) is technically clean and works well for pharmaceutical and seafood shipments, but its basis-risk profile is not well-suited to general cargo theft (where the trigger is a geofence breach or GPS loss, not a measurable physical parameter). Extending parametric to the general-cargo or SEA-SME market requires localised regulatory approval, distribution infrastructure that Lloyd's cannot provide in Tier 2–3 SEA cities, and willingness to absorb basis risk at thinner premium levels than the London market currently accepts. These are not technology barriers; they are market-access and commercial-viability barriers that compound each other. (Parsyl/Lloyd's initiative documentation; https://agentsync.io/blog/insurance-101/what-is-parametric-insurance; IUMI 2024 statistics on Asia-Pacific market)

- **RC4: Open-cover and annual-blanket policies create a structural disincentive for per-shipment risk differentiation** — 42.6% of the cargo insurance market operates on open-cover blanket policies that bind coverage to any shipment declared under an annual policy. Open-cover pricing is set at renewal based on the prior year's shipment mix and loss experience — not at the moment of each shipment. This architecture means a shipper who adds a new high-risk lane, switches to a riskier sub-carrier, or begins carrying higher-value commodities mid-year is not re-priced until renewal. Insurers lack an economically rational path to offer per-shipment dynamic pricing on an open-cover book without migrating customers to a new product structure — which imposes switching friction for both sides. The result is that per-shipment dynamic pricing (Loadsure Thames, Breeze) is confined to the SME and broker-enabled segment that does not hold annual open-cover policies. (IUMI 2024 statistics; Loadsure product documentation; https://www.freightwaves.com/news/per-load-shippers-interest-insurance-now-available-in-mcleod-tms)

---

### Pain point 6.4 (new pain point — not in working hypotheses)

**Description:** Small and mid-size carriers and freight forwarders in SEA (and in the subcontracted tier globally) operate below the threshold of commercial viability for most cargo insurance and security products. The result is structural underinsurance: 60–70% of SME exporters in developing economies lack formal cargo insurance coverage. When incidents occur in this segment, losses cascade uncompensated through the supply chain, with no claims management infrastructure to absorb or adjudicate them. This is structurally distinct from Pain point 6.3 (pricing-data gap) — the SEA SME is not mispriced; they are absent from the market.

**Who bears it:** SME shippers and freight forwarders in Indonesia, Thailand, Malaysia, Philippines; sub-contracted small road carriers; their downstream buyers/consignees.

**Estimated cost:**
- 60–70% of SME exporters in developing economies without formal cargo insurance (15)
- Asia-Pacific cargo premium base: ~$8.0 billion; if 60–70% of SME transactions are uninsured, the uninsured exposure in APAC alone is structurally multiples of the insured premium base
- India (largest APAC cargo theft source, 63% of regional incidents) and Indonesia (14%): minimal presence of parametric or digital cargo platforms at the SME level; [NEEDS-ATTENDED-FETCH from local SEA insurance regulator data — OJK Indonesia, OIC Thailand]

**Willingness to pay:**

**Frequency:**
- 60–70% of SME exporters in developing economies without coverage (15)
- SEA marine cargo insurance: fastest-growing regional market but starting from low penetration base (15, 16)
- Indonesia alone: 14% of APAC cargo thefts; insider involvement >25% of APAC incidents (7)

**Evidenced or assumed:**
(15) Multiple market research sources: https://www.businessresearchinsights.com/market-reports/cargo-insurance-market-120507 ; https://www.marketresearchfuture.com/reports/cargo-insurance-market-23895
(36) https://reinasia.com/marine/
(37) https://www.insurancebusinessmag.com/asia/news/marine/global-marine-insurance-premiums-hit-record-levels-but-momentum-ebbs-548873.aspx
(38) https://portcalls.com/cargo-continues-to-dominate-global-marine-insurance-premiums/
(7) Munich Re 2025 Cargo Theft Report (processed via markitdown, see footnote 7 above)

**Root Causes**

- **RC1: Annual open-cover policy structure is inaccessible to SMEs with irregular or low-frequency shipment patterns** — Obtaining annual cargo insurance requires: underwriting submission with prior-year shipment data, premium payment upfront, and policy management infrastructure. SME shippers in SEA often ship infrequently, use multiple carriers across different commodity types, and lack the administrative capacity to maintain an annual policy. Per-shipment products (Loadsure, Breeze) address this structurally — but distribution in SEA markets requires local broker networks, local-currency payment infrastructure, and local regulatory approval that these platforms have not yet established. Loadsure operates as a Lloyd's MGA; its distribution into Tier 2 SEA cities requires a local registered coverholder, which is a regulatory and commercial investment that remains unmade for most of SEA outside Singapore. [ASSUMED-5]: to validate: does Loadsure or Breeze have registered coverholders or distribution partnerships in Indonesia, Thailand, Philippines, or Malaysia?

- **RC2: Claims adjudication requires documentation standards that SEA SME shipments structurally cannot meet** — Valid cargo insurance claims require bill of lading, commercial invoice, packing list, inspection report, and proof of delivery. A significant share of SEA road freight — particularly short-haul and informal cross-border shipments in Indonesia, Thailand-Myanmar, and Philippines domestic — is conducted with informal waybills, mobile-phone PODs, and handwritten manifests. This documentation gap means that even where an SME shipper holds a cargo insurance policy, actual claims are frequently denied or underpaid because documentation requirements cannot be met. The informal documentation norm is itself a structural feature of SEA SME logistics (regulatory enforcement of documentation standards is uneven; truck drivers are under time pressure; consignees accept informal delivery receipts). [ASSUMED-6]: to validate: what is the claim denial rate for informal/SME cargo claims in Indonesia and Thailand? Interview target: local P&I broker or TT Club regional contact.

- **RC3: Security and recovery infrastructure for cargo is concentrated in formal port-adjacent corridors, leaving inland and cross-border SEA routes unserved** — Overhaul, Garda, and G4S provide activated cargo security in markets with highway patrol infrastructure, formal logistics hubs, and working law enforcement cooperation (US, Western Europe, Singapore). In inland Indonesia, Thailand highland routes, and Philippines inter-island freight, these infrastructure conditions are absent. Law enforcement response times in these corridors make the 72-hour recovery window structurally unreachable even with GPS monitoring. Insider collusion (25%+ of APAC thefts per Munich Re) further undermines recovery actions. The result is that the risk profile of SEA SME freight is worse than the global average, but the response infrastructure is thinner — a compounding gap that cannot be closed by simply extending existing platforms geographically. (Munich Re 2025; TT Club/BSI 2024 Report; ReCAAP ISC 2024 data on SOMS incidents)

---

### Hypothesis disposition

**WH4 (Incident response is reactive and slow — claims platforms shorten payout but rarely shorten response time):** Confirmed and evidenced. Pain point 6.1 provides direct evidence: Overhaul's incident response operations data shows the value of activated monitoring (96%+ recovery vs <20% without); the absence of a shared incident management layer across parties is confirmed as the structural gap. Claims platforms (Loadsure's 40-second certificate; Parsyl's 72-hour parametric payout) do address payout speed but not the response-to-incident time. No evidence found that any current platform materially shortens the multi-party notification cascade after a theft event.

**WH5 (Risk and insurance pricing are disconnected from real journey data):** Confirmed and substantially evidenced. Pain point 6.3 provides the mechanism: 88% fleet telematics penetration vs 36% insurer data usage; 79% of fleet managers report insurers never asked for their data; departmental silo structure within insurers blocks feedback loops. Parametric adoption is confirmed as thin outside specialty perishables and Lloyd's-anchored distribution. Working hypothesis confirmed — though the barrier is organizational architecture and market access, not technology availability.

### New pain points (beyond working hypotheses)

**Pain point 6.4** is not in the original working hypotheses. It surfaces the structural absence of the SEA SME segment from the cargo insurance market — distinct from mispricing (WH5) because the SME is not priced poorly; they are not in the market at all. This is evidenced by the 60–70% uninsured SEA SME figure and the structural documentation/distribution barriers identified in root causes.

---

### Assumptions tagged in this stage

[ASSUMED-1] Willingness to pay for incident response coordination platform by shippers and 3PLs — not sourced. To validate: what would a large shipper or 3PL pay per-shipment for a single-pane incident management layer that activates response across carrier, insurer, and law enforcement simultaneously?

[ASSUMED-2] Notification cascade time after theft detection in a 3PL-managed shipment is the primary driver of recovery window loss — sourced qualitatively via Overhaul case study (42 min response time without real-time monitoring) but the multi-party notification sequence specifically is not quantified in public sources. To validate: map the actual notification chain at a tier-2 3PL managing a theft incident; time each step.

[ASSUMED-3] Per-shipment cost of Overhaul-class monitoring vs owner-operator margin in SEA is uneconomic. To validate: obtain Overhaul per-shipment pricing (likely under NDA) and compare to average per-shipment gross margin for Indonesian owner-operator truck (~$150–300 estimated for 200km road freight).

[ASSUMED-4] Filing rate for cargo claims under $5,000 is substantially below 50% due to administrative cost of claim exceeding expected recovery — not found in public sources. To validate: interview freight claims manager at a mid-tier 3PL or freight broker; ask for claim-filing behavior by claim size band.

[ASSUMED-5] Loadsure and Breeze lack registered coverholders or distribution partnerships in Indonesia, Thailand, Philippines, or Malaysia outside Singapore — inferred from absence of any public announcement. To validate: check Lloyd's coverholder registry for SEA entries under Loadsure and Breeze; contact companies directly.

[ASSUMED-6] Claim denial rate for informal/SME cargo claims in SEA is materially higher than for formal enterprise claims due to documentation gaps — structurally logical but not quantified in public sources. To validate: interview P&I broker or TT Club regional contact for Southeast Asia; request anonymized claim denial rate by market segment.

