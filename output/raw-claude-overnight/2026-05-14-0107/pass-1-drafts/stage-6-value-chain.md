# Stage 6: Cargo Insurance, Claims & Incident Response — Value Chain

*Run ID: 2026-05-14-0107 | Generated: 2026-05-14*
*This is the final stage of a 6-stage vertical-slice pipeline. Unit of analysis: solution (software/hardware/service/hybrid), not the carrier.*

---

## Stage Definition and Boundaries

Stage 6 is where financial risk transfer, loss settlement, and incident-response coordination converge at the end of the freight journey. After a cargo owner's goods have been procured (Stage 1), dispatched and brokered (Stage 2), tracked by telematics (Stage 3), monitored via IoT sensors and visibility platforms (Stage 4), and physically protected by security services (Stage 5), any actual loss — theft, damage, temperature excursion, delay, total loss — arrives at Stage 6 for financial resolution and operational recovery.

Stage 6 is not a single product category. It spans six commercially distinct sub-markets that are increasingly being converged by InsurTech, risk-data platforms, and embedded-distribution models:

**What Stage 6 covers:**

- **Traditional cargo insurance underwriting** — marine cargo policies (ocean, inland, multimodal) issued by P&C insurers and Lloyd's syndicates; the financial risk-transfer mechanism
- **Broker intermediation** — insurance brokers (Marsh, Aon, WTW, Lockton, Gallagher) that structure, place, and manage cargo insurance programs on behalf of shippers and 3PLs
- **Digital MGA / InsurTech cargo** — technology-first managing general agents that automate the cargo insurance distribution pipeline (quote, bind, certificate, claims), often embedded into TMS or visibility platforms
- **Parametric cargo insurance** — policies triggered by objective data events (port closure, weather thresholds, transit delay exceeding agreed days) rather than damage adjustment; payout is automatic and pre-agreed
- **Marine cargo mutuals** — transport and logistics operator mutual clubs (TT Club, UK P&I, North Standard) that provide liability-based coverage to 3PLs, freight forwarders, and transport operators, not to shippers directly
- **Claims-management platforms and TPAs** — software (SaaS) and third-party administrators that handle the claims lifecycle after a loss: FNOL (First Notice of Loss), survey coordination, subrogation, settlement
- **Incident-response coordinators** — services that bridge Stage 5 (physical recovery) and Stage 6 (financial settlement): Overhaul's insurance program, CargoNet's integration into insurer workflows, FreightWatch/SensiGuard's recovery coordination that generates subrogation value for insurers
- **Vendor-bundled / embedded insurance** — cargo insurance integrated directly into TMS (McLeod + Reliance Partners), visibility platforms (project44 + Reliance Partners), or e-commerce/logistics platforms (Cover Genius xCover via Shopee, Igloo in SEA)

**What Stage 6 does NOT cover (adjacent but excluded):**

- Physical theft-recovery operations and armed escort (Stage 5)
- Pure cargo-sensor IoT hardware and data collection (Stage 4), except where the data feeds directly into underwriting or parametric triggers
- Warehouse-internal WMS loss prevention (out of scope per input file)
- Port-side marine insurance for vessel hull (different product line, different actor)
- Parsyl's IoT sensor hardware deployment (covered in Stage 4); Stage 6 covers Parsyl as a data-powered MGA/MGU that uses sensor data to underwrite and price cargo policies

**Boundary with Stage 5:** Stage 5 ends with physical incident response — armed escort, theft-recovery coordination, law enforcement liaison, and immobilization. Stage 6 picks up when the loss event has occurred (or is confirmed) and financial settlement begins. In practice, this boundary is blurring: Overhaul now operates as both a Stage 5 (GSOC, SensiGuard Emergency Response Team) and Stage 6 actor (licensed US wholesale broker with embedded cargo insurance program). CargoNet's recovery coordination generates subrogation documentation that feeds directly into insurer claims files.

**Boundary with Stage 4:** Stage 4 IoT vendors (Tive, Sensitech, Roambee, Controlant) produce sensor data. Stage 6 actors consume that data for underwriting and claims. Parsyl is the clearest intersection: it operates Syndicate 1796 at Lloyd's and uses IoT data to parametrically trigger coverage for perishables. The IoT capability is Stage 4; the underwriting and claims output is Stage 6.

**Operational distinction — four insurance product types:**

| Product type | What triggers a payout | Who assesses the loss | Speed |
|---|---|---|---|
| Traditional carrier-cargo insurance | Physical damage or loss, per adjuster assessment | Marine surveyor / adjuster | 30–90 days |
| Shipper-owned cargo insurance | Physical damage or loss, per adjuster assessment | Marine surveyor / adjuster | 14–60 days |
| Parametric cargo insurance | Objective data event (port closure, delay >N days, temp excursion) | Automated data feed | 48 hours–7 days |
| Carrier liability | Carrier negligence proven; limited to carrier tariff limits | Legal process, adjuster | 60–180+ days |

The critical distinction for the venture pitch: **carrier liability pays only when the carrier is proven negligent and only up to low tariff caps** (often $0.50/lb for surface LTL in the US; SDR-based limits under CMR for international road; COGSA limits of $500/package for ocean). This is the primary driver of the cargo underinsurance crisis — shippers routinely accept carrier liability as a substitute for cargo insurance and are systematically undercompensated.

---

## Sub-Category Taxonomy

| Sub-category | Description | Primary user | Key distinction |
|---|---|---|---|
| **A. Traditional cargo insurance carriers** | P&C insurers and Lloyd's syndicates writing marine cargo policies on a declared-value, all-risk or named-peril basis | Shippers (cargo owners), 3PLs, manufacturers | Risk underwritten by regulated insurer with balance sheet |
| **B. Insurance brokers — marine cargo specialists** | Intermediaries placing cargo programs with carriers on behalf of shippers; advise on coverage structure, negotiate rates | Medium-to-large shippers, 3PLs, freight forwarders | Brokers take commission, do not carry risk |
| **C. Digital MGA / InsurTech cargo** | Technology-first MGAs automating quote-bind-certificate-claims pipeline; often embedded in logistics workflows | Freight brokers, 3PLs, shippers accessing insurance at point of dispatch | Risk carried by capacity provider; MGA takes delegated authority |
| **D. Parametric cargo insurance** | Policies with pre-agreed triggers and payouts; no loss adjustment required | Shippers of time-sensitive cargo (perishables, electronics), logistics platforms | Basis risk: payout may not match actual loss |
| **E. Marine cargo mutuals** | Mutual associations providing liability coverage to logistics operators (not cargo owners directly); TT Club model | Freight forwarders, logistics operators, 3PLs | Mutual structure, P&I-style coverage, not balance-sheet insurance |
| **F. Claims-management platforms and TPAs** | SaaS tools or outsourced services managing the claims lifecycle post-loss | Shippers, 3PLs, carriers, insurers | Software layer, no risk underwritten |
| **G. Incident-response / recovery coordinators** | Services that bridge physical recovery with financial claims: subrogation documentation, recovery value capture | Shippers, 3PLs, insurers with subrogation exposure | Operational service, not insurance; feeds the claims file |
| **H. Vendor-bundled / embedded insurance** | Cargo insurance distributed through TMS, visibility platforms, or logistics marketplaces at point of shipment booking | Freight brokers, shippers using those platforms | Distribution innovation; underwriting usually via MGA or carrier partner |

---

## Representative Vendor Profiles by Sub-category

---

### Sub-category A: Traditional Cargo Insurance Carriers

---

#### A1. Allianz Commercial (formerly AGCS) — Munich, Germany (part of Allianz Group, public: ALV.DE)

**What it does:** Allianz Commercial is the largest global marine cargo insurance provider by premium volume as of 2025. The marine cargo line covers physical loss or damage to goods in transit by all modes (ocean, road, air, rail) with ICC A (all-risk), ICC B, and ICC C wordings, plus project cargo (single-transit high-value) and stock throughput (warehouse + transit combined). Allianz Commercial also operates a leading cargo-claims division with in-house marine surveyors and a dedicated subrogation team. (1)

**Primary user:** Large multinationals, manufacturers, and 3PLs with high-volume or high-value cargo programs. Also the leading name-brand capacity provider behind multiple InsurTech MGA partnerships (Rokstone facility, $10M underwriting facility announced May 2024). (2)

**Business model:** Direct underwriting via Allianz Commercial + delegated underwriting through MGA partnerships. Revenue is gross written premium (GWP) minus ceded reinsurance. Allianz Commercial's overall P&C business generated approximately €18 billion in gross premium globally in 2024. Marine cargo is one of four core specialty lines; specific marine GWP not separately disclosed. (3)

**SEA presence:** Allianz operates in Singapore (Allianz SE Singapore Branch), Indonesia (PT Asuransi Allianz Utama Indonesia), Thailand (Allianz Ayudhya General Insurance), and Malaysia (Allianz General Insurance Company Malaysia). Marine cargo policies are available in all four markets through local offices with policies written under ICC wordings. SEA accounts fall under Allianz Commercial's Asia Pacific hub. (1)

**Pros:**
- Largest global marine cargo market share; financial strength and claims-paying ability rated Insurer Financial Strength (IFS) AA by S&P
- In-house marine engineers and risk consultants available globally for pre-placement risk assessment
- Digital platform launched in 2023 enabling real-time policy issuance and claims handling for cargo
- Broadest commodity appetite — food, pharma, electronics, project cargo, bulk

**Cons:**
- Large-account focus; SME shippers typically access via broker intermediation, not direct
- No per-shipment digital API comparable to digital MGAs; digital initiative lags Loadsure/Breeze in UX speed
- Marine cargo market-share concentration means accumulation risk at port events (Baltimore bridge collapse, Tianjin explosion) concentrates losses with Allianz

---

#### A2. Tokio Marine Holdings (TMH) — Tokyo, Japan (public: TKOMY / 8766.T)

**What it does:** Tokio Marine is Japan's largest P&C insurer and the largest property/casualty insurance group in Japan by revenue. It operates in 38 countries. Marine cargo insurance is provided through Tokio Marine & Nichido Fire Insurance (TM&N) globally, through regional subsidiaries in SEA, and through Tokio Marine HCC in North America. TM&N operates one of the largest marine claims settlement networks globally. (4)

**Primary user:** Japanese manufacturing multinationals (Toyota supply chain, electronics exporters), regional corporations with SEA supply chains, freight forwarders accessing TMH through their broker.

**Business model:** Direct underwriting via subsidiaries; delegated authority via MGA programs through Munich Re Digital Partners-style arrangements. Total group gross written premium FY2024: approximately $20B (¥2.9 trillion). Marine cargo line not separately disclosed; estimated market share in Asia marine cargo among top 5 globally. (4)

**SEA presence:** Direct operations across all four in-scope SEA markets:
- **Singapore:** Tokio Marine Insurance Singapore Ltd — marine cargo insurance available; runs Global Network for Cargo Claims Settlement covering SEA corridors (5)
- **Indonesia:** PT Asuransi Tokio Marine Indonesia — marine cargo insurance (ICC A and ICC B), e-cargo platform available, claims portal at 14006 hotline (6)
- **Thailand:** Tokio Marine Safety Insurance (Thailand) PCL — operations since 1946; non-life including marine cargo (7)
- **Malaysia:** Tokio Marine Insurance Malaysia Berhad — marine cargo underwriting

Tokio Marine's strategic investment of $5M for a 1.65% minority stake in Singapore insurtech Igloo (announced January 2026) signals its intent to build embedded distribution capability in SEA alongside its traditional underwriting operations. (8)

**Pros:**
- Deepest native SEA presence of any major global cargo insurer; all four in-scope markets have operating subsidiaries
- Global cargo claims settlement network with local surveyors in key SEA ports
- Venture sponsor for the pitch being researched — aligned institutional interest

**Cons:**
- Reported pausing of sale of Southeast Asia life insurance businesses in 2024 (Google Japan Times, Oct 2024) suggests strategic review of SEA portfolio mix; non-life/cargo lines appear retained (9)
- Digital cargo interface in SEA markets is legacy broker-driven; no per-shipment API comparable to InsurTech MGAs
- Premium pricing not competitively disclosed relative to digital MGA alternatives

---

#### A3. Zurich Insurance Group — Zurich, Switzerland (public: ZURN.SW)

**What it does:** Zurich's marine team operates in 24 countries with 950+ risk engineers globally. Cargo insurance programs cover goods in transit by all modes, with Zurich Swift platform enabling digital issuance. Commercial cargo including marine cargo available through Zurich's Global Corporate (ZGC) and Commercial Insurance (ZCI) divisions. (10)

**Primary user:** Multinational corporations and large enterprises with complex global cargo programs.

**Business model:** Direct underwriting plus MGA delegated authority. Total Zurich GWP 2024 approximately $51B across all lines; commercial insurance GWP approximately $21B; marine not separately disclosed.

**SEA presence:** Zurich Singapore (marine cargo available), confirmed market entry in Philippines with expansion to Indonesia and Thailand. Singapore Swift platform launched 2019. Zurich Marine underwriters are present in 24 countries including Singapore. (10)

**Pros:**
- Zurich Swift digital platform enables faster policy issuance than pure paper-based competitors in SEA
- 950+ risk engineers deployable for on-site cargo risk assessment — relevant for high-value SEA electronics and pharma corridors
- Strong Brand recognition with large multinational shippers already buying other Zurich commercial lines

**Cons:**
- Limited SME-facing digital direct-access product; primarily large-account focused
- SEA market penetration outside Singapore is thinner than Tokio Marine's footprint

---

#### A4. Chubb Limited — Zurich/Warren, NJ (public: CB)

**What it does:** Chubb is the world's largest publicly traded P&C insurer. Ocean marine (cargo) is a significant specialty line. Chubb's marine team has explicitly expanded to 10 Asian nations including Singapore, Indonesia, Thailand, Malaysia, Korea, China, Hong Kong, Taiwan, Vietnam, and Japan through a comprehensive marine insurance initiative including appointment of Head of Marine for Malaysia. (11)

**Primary user:** Large shippers and multinationals in high-value commodity categories (electronics, pharma, energy equipment).

**SEA presence:** Confirmed direct presence in Singapore, Indonesia, Thailand, Malaysia. Named appointment of regional marine leadership for Malaysia/Asia. Chubb is particularly active in Asia Pacific, challenging Allianz and AXA in the large-account segment. (11)

---

#### A5. AXA XL — Paris / London (part of AXA Group, public: CS.PA)

**What it does:** AXA XL is the corporate and specialty insurance division of AXA Group; one of the top three global marine cargo insurers. Specifically active in North American inland marine; operates marine cargo programs globally. Partnered with US Marine Insurance Group (US MIG) in August 2024 to expand inland marine offerings. (12)

**Primary user:** Large corporate shippers, project cargo clients, 3PLs with complex ocean+inland programs.

**SEA presence:** AXA XL has marine cargo underwriting in Singapore. AXA Thailand offers marine cargo. Market presence in Malaysia (AXA Affin General). (13)

---

### Sub-category B: Insurance Brokers — Marine Cargo Specialists

---

#### B1. Marsh McLennan — Cargo & Logistics Practice (New York, public: MMC)

**What it does:** Marsh is the world's largest insurance broker by revenue. Marsh's cargo and logistics practice places marine cargo programs for shippers and 3PLs, provides parametric cargo delay coverage (proprietary product, detailed under Sub-cat D), runs the MarshCargo digital platform for online cargo placement, and produces the annual Marsh Marine Cargo & Logistics Trends Report. Marsh & McLennan Q3 2024 revenue: $5.7B; total 2024 revenue approximately $23B. Marine cargo brokerage revenue not separately disclosed. (14)

**Primary user:** Large multinational shippers, 3PLs, manufacturing exporters.

**Business model:** Commission on placed premium (typically 10–20% for marine cargo brokerage) plus consulting fees for risk engineering and program design. Digital platform reduces broker labor cost per transaction.

**Parametric cargo delay product:** Marsh launched a proprietary parametric marine cargo delay product that triggers automatically if arrival exceeds agreed delay threshold (6, 8, or 10 days); claims paid within 14 days. Available as per-shipment or annualized contract; limits $1,000–$250,000. AI-assisted quotation. (15)

**SEA presence:** Marsh operates offices in Singapore, Indonesia (PT Marsh Indonesia), Thailand (Marsh (Thailand) Ltd), and Malaysia (Marsh McLennan Malaysia). All four in-scope SEA markets covered. (14)

---

#### B2. Aon — Cargo & Logistics (London/Chicago, public: AON)

**What it does:** Aon's global marine practice serves ship owners, shipyards, port operators, and logistics/supply chain companies. Aon's cargo clients span manufacturing, heavy industry, automotive, retail, food & beverage, life sciences, and technology. Aon hired Rachel Miao as Regional Director Marine, Cargo & Logistics for Asia in September 2024, signaling investment in the region. 250 staff globally dedicated to marine insurance. (16)

**Business model:** Commission-based marine brokerage plus risk consulting. No per-shipment API product.

**SEA presence:** Aon APAC has cargo and marine specialty in Singapore (regional hub); Indonesia, Thailand, and Malaysia offices. (16)

---

#### B3. WTW (Willis Towers Watson) — Marine (London, public: WTW)

**What it does:** WTW's marine team produces the most-cited publicly available marine cargo market update reports (quarterly Global Marketplace Insights; annual Insurance Marketplace Realities). WTW's 2024 Spring Marine Cargo update noted stable-to-softening market conditions with favorable accounts seeing flat or modest rate reductions of 5–10%. WTW Singapore is the Asia regional hub. (17)

**SEA presence:** WTW Singapore confirmed; Ben Dunston serves as Head of Broking Asia. (17)

---

#### B4. Gallagher (Arthur J. Gallagher) — Marine Cargo (Rolling Meadows IL, public: AJG)

**What it does:** Gallagher's specialty marine team publishes the quarterly Cargo Market Update, the most operationally detailed public cargo rate-tracking report. Q3 2024 report noted USD 131 billion in cargo trade exposed to port congestion at Singapore, Port Klang, and Tanjung Pelepas. (18)

**SEA presence:** Gallagher has operations in Singapore through Gallagher Re Asia and through acquired specialist brokers. (18)

---

### Sub-category C: Digital MGA / InsurTech Cargo

---

#### C1. Loadsure (London, UK — private)

**What it does:** Loadsure is an international InsurTech managing general agent and Lloyd's coverholder that automates the full cargo insurance lifecycle: AI-priced per-shipment quotes, one-click policy issuance (under 60 seconds), automated claims (target under 3 days). Products span six named lines:

| Product | Coverage |
|---|---|
| Thames™ | Per-load cargo insurance |
| Orinoco™ | Shipper's interest coverage |
| Danube™ | Dynamic ocean cargo |
| Huron™ | Stock throughput |
| Columbia™ | Motor truck cargo (MTC) |
| Yukon™ | Auto physical damage (APD) |

Plus LTL Coverage+ for LTL liability gaps.

**Primary user:** Freight brokers, 3PLs, shippers/cargo owners, and insurance brokers/agents — all three customer segments served via API or direct web access.

**Business model:** Per-shipment premium-based model; insurance certificates in under 60 seconds; TMS integration within 24 hours. Claims paid in under 3 business days (company claim). Operates as Lloyd's coverholder (Loadsure UK Ltd, FCA FRN 945414). Capacity provided by Lloyd's syndicates. (19)

**Funding:** Series A: $11M (March 2022, led by MMC Ventures; Crowley participated). Total funding approximately $21.7M through disclosed rounds. No Series B confirmed as of research date. (20)

**Key partnership:** Loadsure + Overhaul announced combined cargo risk management + exclusive insurance program (August 2024). Overhaul customers can access Loadsure cargo insurance with discounts exceeding 50% vs. standard pricing, justified by Overhaul's theft-prevention track record (86% cargo theft reduction in client base). (21)

**SEA presence:** None confirmed. Loadsure's European expansion covers Benelux, Germany, France, Denmark, Norway, Finland, Sweden. No office, regulatory license, or product launch in Singapore, Indonesia, Thailand, or Malaysia confirmed as of May 2026. (19, 20)

**Pros:**
- First international per-shipment cargo insurance API; genuine pipeline automation
- Embedded TMS integration model (McLeod, other systems) reduces insurance friction to near zero for freight brokers
- Addresses the 70 million small shippers without formal cargo insurance through per-load access model
- Loadsure + Overhaul combination creates the first integrated security + insurance product in the US market

**Cons:**
- No SEA presence despite stated ambitions; regulatory authorization in SEA requires local licensing in each country
- Series A (2022) is the most recent disclosed round; unclear if sufficient capital for multi-market international expansion
- Claims "under 3 days" is company-stated, not third-party validated

---

#### C2. Breeze AI (London, UK — Blue Ocean Data Solution Ltd., private)

**What it does:** Breeze is a per-shipment cargo insurance platform purpose-built for freight forwarders and logistics companies. It embeds directly into forwarder workflows (TMS/ERP via API, web-based self-service, back-office broker tools) with zero implementation cost and zero minimum commitment. Coverage is door-to-door across air, ocean, rail, and road modes. Breeze claims 70% of global shipments are underinsured; its model aims to convert zero-step embedded distribution into standard workflow.

**Primary user:** Freight forwarders (primary), shippers, and insurance brokers/agents seeking digital back-office.

**Business model:** Per-shipment model; commission-based revenue for Breeze; margin-sharing opportunity for logistics partner platforms. Backed by FCA-regulated entity (FCA #98691) in UK; US entity (Buds Insurance Agency Solutions, LLC) in California. (22)

**Capacity providers:** UK entity uses Helvetia and Baloise (Europe); US market uses Great American Insurance Group (A+, Fortune 500) as announced August 2025 expansion. (23)

**Funding:** Seed round September 2021 (undisclosed amount); total raised from 6 investors including Viola FinTech, NFX, 7percent Ventures. No Series A confirmed as of research date. (22)

**Key partnerships:** WebCargo (air cargo), Barrington Freight, Flexport, Cardinal. Integration with Great American in the US market (2025). (23)

**SEA presence:** No confirmed operations in SEA. UK and US regulatory licenses only. No Singapore, Indonesia, Thailand, or Malaysia presence identified. (22)

**Pros:**
- Zero implementation cost, zero minimum commitment — removes every friction point that kills SME insurance adoption
- ML-based risk pricing (company claim) enabling competitive per-shipment rates
- End-to-end digital claims processing alongside issuance — unified workflow

**Cons:**
- Very early stage funding (seed only); institutional growth capital not yet raised
- No SEA presence; geographic coverage limited to UK and US as of research date
- No publicly disclosed customer count or GWP volume

---

#### C3. Parsyl (Denver, CO — private)

**What it does:** Parsyl is a data-powered cargo insurance provider combining AI underwriting with IoT sensor data to serve perishable cargo markets (food & beverage, pharma, life sciences). Parsyl leads one of the largest marine cargo consortia at Lloyd's of London and operates as both a Managing General Underwriter (MGU) in the US and as Lloyd's Syndicate 1796. As of June 2025, Parsyl introduced $55M in admitted marine cargo insurance capacity — the first mission-driven syndicate at Lloyd's focused on perishable cargo. (24)

**Key distinction from Stage 4:** Parsyl's IoT sensor platform (ColdCover, temperature monitoring) was its original product, positioned it in Stage 4's cargo IoT category. However, Parsyl's primary commercial value proposition by 2024–2025 is the underwriting and insurance output — using sensor data to parametrically trigger coverage, improve loss ratios, and price risk. The insurance product is Stage 6; the IoT platform is the data input. No evidence that Parsyl exited cargo insurance underwriting in 2024; to the contrary, the $55M admitted capacity announcement in 2025 confirms it deepened underwriting commitment. (24, 25)

**Funding:** Series C: $20M led by Lightsmith Group (announced January 2024); participants include HSCM Ventures, GLP Capital Partners, Lineage Ventures. Total raised approximately $43M. (25)

**Business model:** Data-driven underwriting via MGU + Lloyd's Syndicate 1796; delegated authority from 20+ capacity providers. Risk data from IoT sensor partners is fed into ML underwriting models. Revenue is GWP written through the syndicate and MGU delegated authority, less ceded reinsurance. (25)

**Data Partner Program:** Launched March 2024 — allows customers to integrate data from third-party supply chain monitoring providers to access immediate insurance benefits (lower premiums, parametric triggers). Partners announced include major supply chain visibility vendors. (26)

**Geographic coverage:** Global through Lloyd's; US admitted market through MGU. Key focus: temperature-controlled cargo corridors globally including APAC perishable lanes. (24)

**SEA presence:** No SEA office confirmed. Global coverage through Lloyd's paper applies. Perishable cargo focus (frozen seafood, fresh produce, pharma) is directly relevant to Indonesia, Thailand, and Vietnam food export corridors — [ASSUMED-1]: Parsyl has written or is actively soliciting marine cargo policies for SEA perishable exporters through London market brokers — to validate: ask Parsyl commercial team directly about SEA pipeline; ask major SEA fresh produce exporters (Thailand shrimp, Indonesia aquaculture) whether IoT-linked cargo insurance has been offered.

**Pros:**
- Only cargo insurer with an integrated IoT-data and underwriting flywheel — the more sensors deployed, the better the loss model
- Lloyd's Syndicate 1796 provides capacity depth and global reach
- $55M admitted capacity (2025) shows commitment to scaling, not retreat

**Cons:**
- Narrow commodity focus (perishables/pharma) limits total addressable market relative to all-risk cargo carriers
- IoT-sensor-dependent underwriting creates adverse selection against shippers who refuse to deploy sensors
- No public loss ratio data available for Syndicate 1796; track record not externally verifiable

---

#### C4. Cover Genius — xCover Logistics (Sydney, AU / New York — private)

**What it does:** Cover Genius is an embedded insurance platform (xCover) licensed or authorized in 60+ countries and all 50 US states. For logistics, xCover offers Global Shipment Protection — domestic transit, international transit, and parcel transit insurance — integrated via API into e-commerce and logistics platforms at checkout. Pricing claim: up to 20% cheaper and 20 days faster than carrier insurance. (27)

**Primary user:** E-commerce platforms, logistics marketplaces, parcel carriers embedding insurance for end-merchants.

**Business model:** Embedded insurance distribution via API; platform takes commission on premium; Cover Genius has capacity partnerships with local carriers in each licensed jurisdiction. $80M Series E raised (May 2024, led by Spark Capital). Total raised approximately $250M+. (27)

**Key logistics partnerships:** Descartes ShipRush, Shippo, nShift, Sendcloud, **Shopee** (SEA-relevant). (28)

**SEA presence:** Cover Genius licenses are confirmed in multiple Asian jurisdictions. Shopee partnership is the critical SEA anchor — Shopee operates across Singapore, Indonesia, Thailand, Malaysia, Vietnam, Philippines, Taiwan, and Brazil, with hundreds of millions of transactions annually. Cover Genius's embedded cargo protection through Shopee gives it potentially the largest per-shipment cargo insurance volume in SEA of any vendor surveyed here. (28)

**Pros:**
- Shopee integration = access to SEA's largest e-commerce platform without a physical local office
- 60+ country license footprint — broadest regulated reach of any digital cargo insurance player
- $80M Series E in 2024 provides capital for SEA market deepening

**Cons:**
- Shopee integration covers e-commerce parcel insurance (B2C/small packages), not full cargo programs (B2B freight, high-value commodity, temperature-controlled)
- No disclosed customer count or GWP specific to cargo/logistics vs. other embedded lines (travel, rental, retail)
- Per-shipment focus on small parcels limits relevance for enterprise freight

---

#### C5. Reliance Partners (Chattanooga, TN — private)

**What it does:** Reliance Partners is a US commercial transportation and trucking insurance specialist founded in 2009 and grown from $95M in premiums in 2018 to nearly $500M in premiums as of disclosed data. Offers per-load shipper's interest insurance embedded in TMS platforms — the primary commercial embodiment of "embedded cargo insurance at point of dispatch" in the North American market. (29)

**Key integrations:** McLeod TMS (Logix Solution for Cargo Insurance, one-click per-load quoting); project44 (real-time cargo insurance quoting alongside shipment booking — LTL mode initially, FTL to follow); Banyan Technology. Also distributes Loadsure product through its platform as a reseller. (30)

**Business model:** Insurance brokerage commission (Reliance is a licensed brokerage, not an MGA/underwriter); uses Loadsure and other MGA capacity. Recapitalized by Carousel Capital and Lamp Post Group (August 2022). Total premium volume: ~$500M (company-disclosed). (29)

**SEA presence:** None. North America focused. (29)

**Pros:**
- $500M in commercial transportation premium is a significant distribution footprint; largest dedicated-cargo TMS-embedded broker in North America
- project44 integration creates the most direct example of visibility-platform-embedded-insurance in production use

**Cons:**
- US/North America only; no SEA or international expansion announced
- Brokerage model means margins compress as direct digital MGAs (Loadsure, Breeze) commoditize distribution

---

### Sub-category D: Parametric Cargo Insurance

---

#### D1. Otonomi (New York — private)

**What it does:** Otonomi is the most advanced standalone parametric cargo delay InsurTech. Its parametric insurance platform covers financial losses from cargo delays triggered by objective events (severe weather, port closures, equipment breakdowns, carrier bankruptcy, natural disasters, regulatory restrictions). Claims are paid within 48 hours — 22x faster than industry standard (company claim). No manual claims adjustment required. (31)

**Products:**
- **Freight Delay Protection** — standalone delay coverage
- **Cargo+** — open cargo policy combined with business interruption and delay coverage; available as white-label for brokers

**Pricing:** AI-assisted underwriting engine generates quotes in 0.47 seconds; per-shipment and annualized options.

**Geographic coverage:** US states (24 licensed states as of website data); international: Cambodia, Chile, Mexico, Peru, Hong Kong, India, **Singapore**, Turkey. **Singapore is listed** as an international jurisdiction. (31)

**Funding:** $5M Series A (2024); prior $3.4M seed round. Total raised approximately $8.4M. (31, 32)

**Key expansion:** Expanded to Hong Kong and South America in Q1 2024; marketed maritime coverage in Asia including Singapore, Hong Kong, and Tokyo. (32)

**SEA presence:** Singapore licensed/operating. This makes Otonomi one of the few InsurTech cargo parametric players with confirmed Singapore presence. (31)

**Pros:**
- 48-hour claims payment is the fastest of any cargo insurance player surveyed; eliminates cash-flow disruption for shippers
- AI underwriting priced per trade lane and mode — the most granular dynamic pricing in parametric cargo
- Singapore presence confirms early-stage but real SEA market entry

**Cons:**
- Coverage is delay-only and business interruption; does not cover physical cargo damage or theft — requires stacking with traditional cargo policy
- $8.4M total raise is thin for a company trying to compete globally with the reinsurance capacity requirements of parametric triggers
- Basis risk: a shipment may be significantly delayed without meeting the parametric trigger, leaving the shipper uncompensated

---

#### D2. Marsh Parametric Cargo Delay (New York — sub-product of Marsh McLennan, public: MMC)

**What it does:** Marsh offers a proprietary parametric marine cargo delay product distributed through Marsh's broker network and AI-assisted digital quoting. Product triggers automatically if actual arrival exceeds agreed delay threshold (6, 8, or 10 days); 50% payout on trigger date, 5% additional per extra day up to 100%. Coverage limits: $1,000–$250,000 per shipment. Claims paid within 14 days. Air cargo delay product also available (3, 6, or 12-hour thresholds). (15)

**Primary user:** Shippers with time-sensitive cargo; importers and exporters with supply-chain-cost exposure to delays.

**Coverage distinction:** Covers business interruption, consequential damages, commodity price loss — gaps not covered by traditional physical-damage cargo policy. Standard cargo insurance does not cover delay-only losses.

**SEA presence:** Available through Marsh's global network including Singapore, Indonesia, Thailand, Malaysia offices. (14)

**Pros:**
- Fills the most common uninsured gap in cargo programs (delay without physical damage)
- Automated payout removes claims dispute friction
- Available through existing Marsh client relationships — no new vendor relationship required for existing Marsh clients

**Cons:**
- Product is internally delivered through Marsh broker relationship; not available as a standalone per-shipment API for non-Marsh clients
- $250,000 maximum limit is low for large-value cargo programs; not suitable for enterprise shippers with >$1M delay-exposure per shipment

---

#### D3. Skyline Partners (London — Lloyd's Lab graduate, private)

**What it does:** Skyline Partners describes itself as "the Parametric Catalyser" — a full-service parametric insurance product design and distribution firm serving re/insurers, brokers, underwriting agents, affinity partners, and government agencies. Partnered with Spire Global to develop marine, aviation, and agricultural parametric products using satellite-collected AIS and weather data. (33)

**Primary user:** Re/insurers and brokers seeking to create custom parametric product lines; not a direct-to-shipper product.

**Business model:** Services revenue for product design + distribution support; ongoing policy lifecycle administration.

**SEA presence:** No confirmed SEA presence. London-only headquarters. (33)

---

#### D4. Descartes Underwriting (Paris — private)

**What it does:** Descartes Underwriting is a parametric MGA covering "the full spectrum of natural catastrophes and emerging risk exposures" using AI and alternative data (satellite imagery, weather stations, IoT). Raised $120M at a premium to Series B valuation in 2024 (Battery Ventures strategic investment). Can provide up to $200M in capacity per policy. (34)

**Scope for cargo:** Descartes does not focus on cargo delay specifically but covers the catastrophe perils (cyclones, floods, storms) that cause port closures and cargo diversions — a parametric reinsurance layer relevant to cargo accumulation events, not individual shipment delay.

**SEA relevance:** Descartes's flood and cyclone parametric products are directly applicable to SEA cargo disruption risk (typhoon season impacts on Philippines/Vietnam, flood events in Indonesia/Thailand). Not a cargo insurance product per se but a complementary catastrophe risk layer. (34)

**SEA presence:** No confirmed SEA office. Global MGA via Lloyd's and capacity panel. (34)

---

### Sub-category E: Marine Cargo Mutuals

---

#### E1. TT Club (London — Thomas Miller managed, mutual)

**What it does:** TT Club (Through Transport Mutual Insurance Association) is the leading mutual insurer for the transport and logistics industry globally, covering freight forwarders, logistics operators, container leasing companies, port and terminal operators, and road hauliers. TT Club provides liability coverage (not cargo insurance) to these operators — protecting them against claims arising from loss or damage to cargo in their custody. This is distinct from shipper-owned cargo insurance: TT Club's members are the logistics actors, not the cargo owners. (35)

**Coverage categories:**
- Freight forwarder liability (loss/damage while in their custody)
- Road haulier liability (carrier liability for road freight)
- Container damage liability
- Professional indemnity for freight intermediaries
- Stock throughput extensions

**2024 financials:**
- Gross earned premiums: $284.2M (2024); gross written premiums: $283.1M (stable YoY, high 93% member retention) (35)
- Net result: $4.8M (vs. $15.9M in 2023) — decline due to upgraded underwriting systems costs and elevated bodily injury reserves in the US (35)
- Underwriting deficit: $27.7M; combined ratio 112% (2024, up from 105% in 2023)
- Investment return: 5.6%
- AM Best rating: A- (Excellent), maintained throughout 2024 (35)

**Primary user:** 3PLs, freight forwarders, logistics operators, container lines, port operators worldwide.

**Business model:** Mutual insurance (members pay calls rather than fixed premiums; surplus returned to members). Annual calls set by Board based on prior-year claims experience and reserves. TT Club is managed by Thomas Miller. (35)

**Loss prevention and intelligence:** TT Club co-authors the annual BSI/TT Club Cargo Theft Report (the primary global cargo crime dataset). TT Club's loss-prevention advisory team provides operational guidance that directly feeds into Stage 5 and Stage 6 risk management. (36)

**SEA presence:** TT Club has global membership including SEA-based logistics operators, freight forwarders, and container leasing companies. Singapore is a hub for SEA-based logistics operators who are TT Club members. No specific SEA office operated by Thomas Miller, but members are serviced through global claims correspondents. [ASSUMED-2]: A meaningful share of major SEA 3PLs (Agility, DHL Supply Chain, Kuehne+Nagel SEA entities) maintain TT Club membership — to validate: ask TT Club membership team for SEA member count; ask major SEA 3PL risk managers whether TT Club covers their forwarder liability exposure.

**Pros:**
- $284M GWP makes TT Club the dominant mutual for logistics liability; no meaningful competitor at scale
- Co-author of BSI/TT Club Cargo Theft Report — embedded in the intelligence ecosystem of the Stage 5/6 interface
- Mutual structure means no shareholder return pressure; surplus flows back to member operators

**Cons:**
- Freight forwarder/logistics operator liability only; does not replace shipper-owned cargo insurance
- Combined ratio of 112% in 2024 signals pricing pressure; calls may increase at renewal
- Not a digital native; no per-shipment API product; legacy mutual administration model

---

#### E2. NorthStandard (Newcastle, UK — mutual)

**What it does:** NorthStandard is a merged entity combining North P&I Club and Standard Club, created in 2023. Primarily a P&I (Protection & Indemnity) club for shipowners. Provides some cargo-related liability extensions as part of combined P&I programs but is not primarily a cargo insurer. (37)

**SEA presence:** Global P&I coverage through correspondent network; no specific SEA office. (37)

---

### Sub-category F: Claims-Management Platforms and TPAs

---

#### F1. FreightSafe / FreightInsure (Sydney, Australia — part of FreightSafe Group, private)

**What it does:** FreightSafe is described as Australia's largest claims manager to the transport industry. It manages claims for goods lost or damaged in transit — primarily in Australian domestic logistics. Proprietary technology platform manages tens of thousands of claims annually, mostly within 24 hours of claim submission. Services include:
- Bespoke warranty solutions per customer
- Bespoke insurance solutions for different customer categories
- Data and analytics identifying operational trends around lost and damaged freight

FreightInsure is the insurance product arm; Lombard Australia Holdings made a significant investment into FreightInsure as a Sydney-based insurtech. (38)

**Partnership (2024):** Ofload (Australia's largest digital freight platform) partnered with FreightSafe Group in July 2024 to enhance goods protection for Ofload's clients. (38)

**Business model:** Claims management as a service (per-claim fee or annual TPA contract); insurance distribution through FreightInsure product (per-shipment insurance embedded in freight platforms).

**SEA presence:** Australia-focused. No confirmed SEA operations. Relevant as an analog for what a SEA-specific claims platform could look like. (38)

---

#### F2. FreightClaims.com (USA — private)

**What it does:** FreightClaims.com is a SaaS-based freight claims management platform for US shippers and brokers. Features include AI-driven email claim entry, OCR document scanning, automated data extraction, and full claims lifecycle management (FNOL through settlement). Integrated with Tai Software TMS (partnership announced December 2024). (39)

**Business model:** SaaS subscription for software users; outsourced claims handling for TPA clients. (39)

**SEA presence:** None. US domestic market. (39)

---

#### F3. APP Tech (USA — private)

**What it does:** APP Tech offers cargo and freight claims management software for carriers, 3PLs, and insurers. Covers cargo insurance claims tracking, subrogation management, and regulatory compliance reporting. (40)

**SEA presence:** None confirmed. US focused.

---

#### F4. Claimable (UK — private)

**What it does:** SaaS cargo claims management tool for shipping companies and freight forwarders. Multi-currency, multi-language claims processing. UK-founded; serves companies with international shipments. (41)

**SEA presence:** No confirmed SEA office, though software is available internationally. (41)

---

### Sub-category G: Incident-Response / Recovery Coordinators

---

#### G1. Overhaul (Austin, TX — private, with global offices post-SensiGuard acquisition)

**What it does:** Overhaul is the market's most complete cross-Stage-5-Stage-6 operator. In Stage 5, Overhaul provides the Global Security Operations Center (GSOC), SensiGuard Emergency Response Team (acquired from Sensitech/Carrier Global in February 2023), and 24/7 cargo-risk monitoring. In Stage 6, Overhaul operates as a licensed US wholesale broker with an exclusive cargo insurance program (launched August 2024) that delivers 50%+ discounts vs. standard market pricing, justified by its theft-prevention track record. (21, 42)

**Insurance-specific activities (Stage 6):**
- Licensed US wholesale broker (in-house, not just a referral arrangement)
- Insurance pricing directly linked to Overhaul's risk mitigation platform performance metrics — first U.S. example of a technology security platform embedded into underwriting pricing
- Loadsure as the capacity/MGA partner for the insurance product
- Overhaul's platform generates centralized incident timelines and documentation directly usable as claims support files, reducing adjuster cycle time
- 2024 data: From 100 monitored incidents, Overhaul's teams helped law enforcement recover over $35M in stolen goods — subrogation value captured for insurers (42)

**Primary user:** High-value cargo shippers (pharma, electronics, automotive) seeking integrated security + insurance.

**Business model (Stage 6 component):** Wholesale broker commission on cargo insurance premium + potential risk-sharing arrangement with Loadsure capacity for accounts where Overhaul's risk data justifies enhanced pricing. (21)

**SEA presence:** Overhaul's SensiGuard acquisition added offices in Brazil, Mexico, and Czech Republic. No confirmed SEA office or insurance-program availability in SEA markets. Core insurance product is US-focused due to wholesale broker licensing. (42)

**Pros:**
- Only player surveyed that spans physical security (Stage 5) + data-driven insurance pricing (Stage 6) in a single commercial offering
- 86% cargo theft reduction across client base is the most compelling underwriting data point of any vendor in this research
- Centralized incident documentation reduces claims cycle time — direct claims workflow improvement

**Cons:**
- Stage 6 insurance program is US-only (wholesale broker license)
- SEA presence absent; LATAM (Brazil, Mexico) and Europe (Czech Republic) ahead of SEA
- Financial terms of Overhaul/Loadsure insurance arrangement not publicly disclosed

---

#### G2. Verisk CargoNet (Jersey City, NJ — Verisk Analytics subsidiary, public: VRSK)

**What it does:** CargoNet's primary function (covered in Stage 5) is theft-alert and recovery coordination in North America. Its Stage 6 relevance is the subrogation and claims documentation it generates for insurers: when stolen cargo is recovered through CargoNet's law enforcement network, the recovery value reduces insurer's net loss and generates subrogation claims against carriers. CargoNet members — including cargo insurers — receive structured incident reports with 144 data fields per event, directly usable in claims file construction. (43)

**Stage 6 specific (beyond Stage 5 coverage):**
- 2024: Verisk CargoNet's data showed 3,625 cargo theft incidents; estimated losses $454.9M; average theft value $202,364. This dataset is the primary actuarial input for US cargo theft premium loading. (43)
- 2025: Losses surged to ~$725M (60% jump); average theft value $273,990 (+36%). The pricing pressure this creates for US cargo insurers is immediate and direct. (44)
- RouteScore API (launched January 2025): ML risk score 0–100 for shipper/carrier pre-dispatch risk assessment, directly integratable into TMS and insurance pricing models — the clearest example of risk-data-to-insurance-pricing integration available in the US market. (44)

**SEA presence:** None. North America only. (43)

---

#### G3. SensiGuard / FreightWatch International (now part of Overhaul)

SensiGuard was acquired by Overhaul in February 2023. SensiGuard is the former FreightWatch International (which Sensitech acquired in 2012). Overhaul's acquisition essentially reacquired this asset from a competitor. Post-acquisition, SensiGuard's emergency response team (ERT) operates as Overhaul's international field-recovery capability, with offices in Brazil, Mexico, and the Czech Republic. For Stage 6 purposes, SensiGuard/Overhaul's ERT provides the physical-recovery-to-claims-handoff interface. (42)

---

### Sub-category H: Vendor-Bundled / Embedded Insurance via Platform

---

#### H1. Igloo — Shipping & Transit Insurance (Singapore — private)

**What it does:** Igloo is a full-stack insurtech headquartered in Singapore, operating in eight SEA markets (Singapore, Indonesia, Philippines, Thailand, Malaysia, Vietnam, and two others). Founded in 2016 (originally Axinan). Shipping and transit insurance is one of Igloo's product lines — covering loss of goods, damage, failed delivery, and return costs — distributed as embedded insurance within logistics and e-commerce platforms. Key logistics partnerships: Ahamove (Vietnam last-mile), Bukalapak (Indonesia e-commerce), Loship (Vietnam logistics). (45)

**Financial results (2024):** Revenue: $55.46M (+49% YoY from $37.14M in 2023). Net loss: $21.8M (vs. $19.66M in 2023). Pre-Series C: $36M led by Eurazeo (BNP Paribas Cardif backed). (45)

**Tokio Marine stake:** Tokio Marine invested $5M for 1.65% equity (announced January 2026), giving the venture sponsor direct financial exposure to Igloo's embedded distribution model across SEA. (8)

**Business model:** Embedded insurance API for logistics, e-commerce, and fintech partners; Igloo provides insurance technology orchestration and holds relationships with 70+ insurance carrier partners across SEA. Revenue is commission/fee on premium placed. (45)

**Pros:**
- 8 SEA market presence with localized versions — the broadest digital insurance distribution footprint in SEA of any player surveyed
- Tokio Marine's $5M stake creates a direct strategic linkage with the venture pitch sponsor
- Logistics partnerships (Ahamove, Bukalapak, Loship) are in the exact SME logistics target segment of the pitch hypothesis

**Cons:**
- Shipping/transit product covers e-commerce parcels and last-mile, not enterprise freight/3PL cargo programs
- Revenue ($55M) is across all product lines; cargo-specific contribution not disclosed
- Net loss ($21.8M in 2024) signals continued investment phase; profitability timeline unclear
- Carrier underwriting capacity is partner-dependent; Igloo is a technology orchestrator, not an underwriter

---

#### H2. project44 + Reliance Partners (embedded cargo insurance in RTTVP)

**What it does:** project44 integrated with Reliance Partners to deliver real-time cargo insurance quoting inside the project44 visibility platform at the moment of freight booking. LTL mode initially; FTL to follow. Eliminates 20 minutes per transaction of manual insurance-shipping quote reconciliation; estimated 1,000+ hours/year saved for mid-sized logistics providers. (30)

**SEA presence:** project44 has limited SEA carrier network coverage; Reliance Partners is US-only. This embedded product does not operate in SEA. (30)

---

#### H3. Peak3 / Lazada Joint Venture (Singapore — private)

**What it does:** Peak3 is a SaaS insurance technology provider; partnered with Lazada (Alibaba-backed e-commerce) to launch an embedded insurance joint venture in August 2024. Operating across Singapore, Malaysia, Philippines, Vietnam, Thailand, and Indonesia; issuing 5 million policies and processing 70,000 policies daily as of late 2024. Product scope includes P&C insurance embedded at checkout — cargo/transit protection for e-commerce shipments is within scope. (46)

**SEA presence:** Confirmed presence across 6 SEA markets with live volume. (46)

---

## Journey-Stage Coverage Map

The following maps each solution to the 6 freight-journey stages it covers. Stage 6 solutions primarily address Stages 5–6; some span earlier stages via data integration.

| Solution | S1 Procurement | S2 Dispatch/TMS | S3 Fleet/Telematics | S4 In-Transit Visibility | S5 Security | S6 Insurance/Claims |
|---|---|---|---|---|---|---|
| Allianz Commercial | | | | | | ✓ |
| Tokio Marine | | | | | | ✓ |
| Zurich Insurance | | | | | | ✓ |
| Chubb | | | | | | ✓ |
| AXA XL | | | | | | ✓ |
| Marsh (broker) | | | | | | ✓ |
| Aon (broker) | | | | | | ✓ |
| WTW (broker) | | | | | | ✓ |
| Gallagher (broker) | | | | | | ✓ |
| Loadsure | | ✓ | | | | ✓ |
| Breeze AI | | ✓ | | | | ✓ |
| Parsyl | | | | ✓ | | ✓ |
| Cover Genius | | ✓ | | | | ✓ |
| Reliance Partners | | ✓ | | | | ✓ |
| Otonomi | | | | | | ✓ |
| Marsh Parametric | | | | | | ✓ |
| Skyline Partners | | | | | | ✓ |
| Descartes UW | | | | | | ✓ |
| TT Club | ✓ | ✓ | | | ✓ | ✓ |
| NorthStandard | | | | | | ✓ |
| FreightSafe | | | | | | ✓ |
| FreightClaims.com | | ✓ | | | | ✓ |
| Overhaul (S6) | | | | ✓ | ✓ | ✓ |
| CargoNet (S6) | | | | | ✓ | ✓ |
| Igloo | | ✓ | | | | ✓ |
| project44 + Reliance | | ✓ | | ✓ | | ✓ |
| Peak3 / Lazada JV | | ✓ | | | | ✓ |

---

## Market Sizing

### Metric 1: Global Marine Cargo Insurance — Gross Written Premiums

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global marine cargo GWP | $22.64B | 2024 | High | (1)(47) |
| Global marine cargo GWP | $22.1B | 2023 | High | (47) |
| Cargo as % of total global marine premium | 57.23% | 2024 | High | (47) |
| Total global marine insurance GWP (all lines) | $39.5B (est.) | 2024 | High | (47) |
| Asia/Pacific share of global cargo premium | 35.15% | 2024 | High | (47) |
| Europe share of global cargo premium | 37.68% | 2024 | High | (47) |
| Asia Pacific absolute cargo premium | ~$7.96B (35.15% × $22.64B) | 2024 | Medium | (47) — computed from IUMI figures |

Sources: IUMI Press Release "Steady insurance markets for hull and cargo in 2024" (November 2025 IUMI annual conference data); IUMI Stats Report 2024 (PDF, October 2024 publication covering 2023 data showing $22.1B). The 2024 figure ($22.64B) comes from IUMI's November 2025 annual conference statistics covering the 2024 insurance year. (47, 48)

Note: The IUMI Stats Report 2024 (released October 2024) covers *2023* underwriting year data ($22.1B). The $22.64B figure reflects *2024* underwriting year data released at IUMI's 2025 annual conference. Both figures are IUMI primary source. Multiple market research firms (MRFR, Dataintelo, Astute Analytica) cite figures ranging $14B–$24B for what they variously define as "marine cargo insurance" — these diverge because some include inland marine and some exclude reinsurance. The IUMI figures are the authoritative primary association source and are used here exclusively for GWP.

---

### Metric 2: US Inland Marine Insurance Market

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| US inland marine insurance market size | $12.6B | 2024 | Medium | (49) |
| North America marine insurance market | ~$8.1B | 2026E | Medium | (50) |
| North America as % of global marine premium | ~8.5% | 2022 | Medium | (12) |

Source: Verified Market Research for inland marine ($12.6B); AXA XL article for North America 8.5% of global share (using 2022 IUMI data). Caution: the $12.6B inland marine figure from Verified Market Research is a market research firm estimate, not a government or association statistic. AM Best does not publish US inland marine GWP as a separate line in publicly accessible free data.

Geography note: US inland marine is a distinctly US line of business; it does not map directly to ocean cargo. For SEA, the equivalent is domestic transit insurance.

---

### Metric 3: SEA Cargo Insurance Market — Country-Level Data

#### Singapore

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Singapore marine cargo GWP (domestic segment) | S$106.7M (~$79M USD) | 2024 | High | (51) |
| Singapore marine cargo GWP (domestic segment) | S$101.6M (~$74M USD) | 2025 | High | (51) |
| Singapore total general insurance GWP (domestic + offshore) | S$10.8B | 2024 | High | (51) |
| Singapore: second largest marine hull underwriter in Asia, fourth globally | Rank stated | 2024 | High | (51) |

Source: General Insurance Association of Singapore (GIA) press release "GI Sector Records Average 8% Per Annum Growth in Last Decade" (2024 results); Asia Insurance Post reporting on S$6.09B domestic GWP in 2025.

Note: Singapore's marine cargo domestic GWP (S$106.7M in 2024) declined from the prior year, per GIA data. This reflects the IUMI trend of Asia/Pacific overall growing but individual markets like Singapore and Japan showing flat/declining domestic book as Chinese market growth outperforms. Singapore's significance as a cargo insurance hub is disproportionate to its domestic GWP because Singapore is also the offshore placement hub for APAC — offshore marine cargo written through Singapore exceeds the domestic figure.

#### Indonesia

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Indonesia marine cargo GWP (written) | Rp 9,556B (~$595M USD at ~16,050 IDR/USD) | 2024 | High | (52) |
| YoY growth (marine cargo) | +5.0% | 2023→2024 | High | (52) |
| Indonesia marine cargo claims paid | Rp 3,973B (~$248M USD) | 2024 | High | (52) |
| Indonesia marine cargo loss ratio (paid claims basis) | ~24.4% | 2024 | High | (52) |
| Indonesia marine cargo claims prior year | Rp 4,347B | 2023 | High | (52) |
| Indonesia total general insurance GWP | ~Rp 112.9T | 2024 | High | (52) |
| Indonesia insurance penetration (general insurance) | 0.53% of GDP | 2024 | High | (52) |

Source: AAUI (Asosiasi Asuransi Umum Indonesia) Q4 2024 Statistical Report (Triwulan 4 Jan–Des 2024) — PDF markitdown processed. (PDF, processed via markitdown) (52)

Conversion note: IDR figures converted at approximately 16,050 IDR/USD (approximate 2024 average rate). Marine cargo written premiums of Rp 9,556B ≈ $595M USD.

Note: Indonesia's marine cargo claims paid in 2024 fell 8.6% from 2023 (Rp 4,347B to Rp 3,973B) even as written premiums grew 5.0%, pushing the paid claims loss ratio down to ~24.4% from ~19.6% in 2023 per AAUI data. This is a healthy underwriting environment that should attract international insurer interest.

#### Thailand

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Thailand total insurance premium | THB 448B (~$13.7B USD) | 2024 | High | (53) |
| Marine, Aviation, Transport (MAT) % of Thailand general insurance | ~10.1% (estimate) | 2024 | Medium | (53) |

Geography mismatch: Country-level MAT breakdown for Thailand is not available in OIC's publicly accessible English-language data. The 10.1% MAT estimate is derived from GlobalData's Thailand general insurance market projection, not directly from OIC statistics.

Data gap: Thailand OIC publishes detailed insurance statistics in Thai-language reports. Country-level marine cargo GWP for Thailand requires direct OIC data access or the ASEAN Insurance Council's comparative statistics.

#### Malaysia

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Malaysia MAT as % of general insurance GWP | 7.9% | 2024 | High | (54) |
| Malaysia general insurance GWP growth | +7.1% | 2024 | High | (54) |

Source: ISM Insurance Services Malaysia Berhad (PIAM data, Q4 2024). MAT (Marine, Aviation and Transit) at 7.9% includes marine cargo, air cargo, and land transit — not a pure marine cargo figure.

Data gap: PIAM/ISM does not publicly publish the sub-split within MAT between marine cargo, air cargo, and inland transit. A request to PIAM or ISM for the detailed breakdown would yield the marine cargo-specific figure.

---

### Metric 4: Parametric Cargo Insurance Segment

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global parametric insurance market (all lines) | $14.4B | 2024 | Low | (55) — market research firm; treat as directional |
| Global parametric insurance market (all lines) | ~$19.4B | 2025 | Low | (55) — multiple market research firms; divergent estimates |
| Parametric adoption growth in cargo-specific | +23% increase in adoption tied to port closures and weather delays | 2024 | Low | (56) — sourcing unclear; treat as directional |
| Over 40 global insurers launching parametric cargo products | Count | 2023 | Low | (56) — not independently verified |

Note: A standalone parametric cargo insurance market size figure with primary-association sourcing does not exist. IUMI does not separately break out parametric premium from traditional cargo premium in published statistics. The figures above are from commercial market research firms and should be treated as directional rather than validated. [ASSUMED-3]: Parametric cargo insurance GWP globally was less than $500M in 2024, i.e., less than 2.5% of total cargo premium of $22.64B — to validate: ask Lloyd's Market Association for any parametric cargo premium data by class; ask Parsyl, Otonomi, and Skyline Partners for their respective GWP.

---

### Metric 5: Cargo Claims Processing Market (Software & TPA)

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global cargo claims management software market | $1.23B | 2024 | Low | (57) — market research firm, no primary source |
| Projected market size at CAGR 10.6% by 2033 | $3.07B | 2033E | Low | (57) |
| North America share | $420M | 2024 | Low | (57) |
| Europe share | $330M | 2024 | Low | (57) |
| Asia Pacific share | $280M | 2024 | Low | (57) |

Data gap: The cargo claims management software market size is derived from a single market research report (Growth Market Reports) without identified primary source validation. No government statistics agency or industry association publishes claims-software market size. Treat as directional only.

---

### Metric 6: Port Congestion Cargo-at-Risk Exposure (SEA-Specific)

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Cargo trade at risk from port congestion at Singapore, Port Klang, Tanjung Pelepas | $131B (H1 2024) | H1 2024 | Medium | (18) — Gallagher cargo market update Q3 2024 |

Source: Gallagher Cargo Market Update Q3 2024. This figure represents the estimated trade value exposed to congestion-related delay claims at these three SEA port complexes in the first half of 2024 alone — providing a direct quantification of the parametric and delay insurance opportunity in SEA.

---

### Market Size Summary Table

| Metric | Value | Year | Confidence | Primary Source |
|---|---|---|---|---|
| Global marine cargo GWP | $22.64B | 2024 | High | IUMI (47) |
| Asia/Pacific cargo premium | ~$7.96B | 2024 | High | IUMI (47) |
| Singapore marine cargo GWP (domestic) | ~$79M USD (S$106.7M) | 2024 | High | GIA Singapore (51) |
| Indonesia marine cargo GWP | ~$595M USD | 2024 | High | AAUI Q4 2024 (52) |
| Thailand MAT insurance (estimated) | ~$1.4B USD (10.1% × $13.7B) | 2024 | Low | OIC/GlobalData (53) |
| Malaysia MAT as % of general insurance | 7.9% of GWP | 2024 | High | PIAM/ISM (54) |
| US inland marine market | $12.6B | 2024 | Medium | Verified Market Research (49) |
| Parametric insurance market (all lines) | $14.4B | 2024 | Low | Multiple market research firms (55) |
| Cargo claims software market | $1.23B | 2024 | Low | Growth Market Reports (57) |
| SEA cargo trade at risk (congestion, H1 2024) | $131B | H1 2024 | Medium | Gallagher (18) |

---

## Current Players by Region

### Global (Traditional Carriers)

- **Allianz Commercial** — largest global marine cargo insurer by premium; SEA presence through local subsidiaries in all four in-scope markets
- **Tokio Marine Holdings** — #2 or #3 global marine cargo; deepest SEA native presence; venture sponsor entity
- **Zurich Insurance** — top-5 global marine cargo; Singapore Swift platform; 24-country marine underwriter footprint
- **Chubb** — top-5 global marine cargo; explicit Asia Pacific expansion into 10 Asian nations including SEA four
- **AXA XL** — top-3 global marine cargo; AXA Thailand and AXA Affin General (Malaysia) carry SEA cargo

### Global (Insurance Brokers)

- **Marsh McLennan** — largest cargo broker globally; all four SEA markets with marine specialty desks
- **Aon** — second-largest cargo broker; SEA APAC hub in Singapore; new Regional Director Marine Cargo Asia appointed September 2024
- **WTW (Willis Towers Watson)** — third-largest; Singapore Asia broking hub; publishes most-cited marine market updates
- **Gallagher (AJG)** — significant cargo broker; Q3 2024 report specifically quantifies SEA congestion risk at $131B

### North America (Digital MGA / InsurTech Cargo)

- **Loadsure** — leading digital cargo MGA; Lloyd's coverholder; US + Europe; no SEA; Overhaul partnership
- **Reliance Partners** — largest US embedded cargo insurance broker; ~$500M premiums; McLeod + project44 integrations
- **Parsyl** — data-powered perishable cargo MGA/MGU; Lloyd's Syndicate 1796; global but no SEA office
- **Otonomi** — parametric cargo delay InsurTech; Singapore licensed; Series A $5M; 48-hour claims

### Europe (Digital MGA / InsurTech Cargo)

- **Breeze AI** — per-shipment embedded cargo platform; freight forwarder focus; UK/US; no SEA
- **Skyline Partners** — parametric product designer/distributor; Lloyd's Lab graduate; London; no SEA

### SEA / Asia (Regional Players)

- **Igloo** — Singapore-based full-stack insurtech; 8 SEA markets; shipping/transit embedded product; Tokio Marine stake; Ahamove/Bukalapak/Loship logistics partnerships
- **MSIG** (Mitsui Sumitomo Insurance) — Top 5 marine cargo in Thailand; Singapore marine cargo; Indonesia e-cargo platform; Malaysia marine
- **AXA Thailand** — marine cargo insurance; MSIG-equivalent penetration in Thai market
- **Peak3 / Lazada JV** — embedded insurance across 6 SEA markets; 5M policies issued; 70,000/day processing

### Marine Mutuals (Global)

- **TT Club** — dominant mutual for logistics operators; $284M GWP; BSI/TT Club Cargo Theft Report co-author; global with SEA logistics operator membership
- **NorthStandard** — merged P&I club; primarily shipowner liability; some cargo extensions

### Claims Platforms (Regional)

- **FreightSafe / FreightInsure** — Australia's largest cargo TPA; Australia-only; analog for potential SEA build
- **FreightClaims.com** — US SaaS cargo claims management; TMS integrations (Tai Software); US-only
- **Claimable** — UK SaaS cargo claims tool; international availability but no SEA office
- **APP Tech** — US cargo claims software; established product; US-only

---

## Preliminary Pain Points (Stage 6 Actors)

The actors in Stage 6 — cargo insurers, digital MGAs, parametric platforms, claims platforms, incident-response coordinators — face the following observable, research-grounded pain points:

**Insurance availability / coverage gap pain points:**

1. **70+ million small shippers globally operate without any formal cargo insurance**, relying on inadequate carrier liability that pays $0.50/lb (US surface LTL) or SDR-based CMR caps; Loadsure's stated rationale for per-shipment API access and company market-sizing. (19) More than 60% of freight globally is estimated to be under- or uninsured. (58)

2. **Carrier liability caps systematically undercompensate shippers for actual losses.** COGSA limits ($500/package for ocean), CMR limits (SDR 8.33/kg for road), and US surface LTL tariff caps ($0.50/lb) mean a $10,000 loss on 20 lbs of electronics pays the carrier's liability at $10 — forcing shippers to absorb losses or fund costly litigation. The disconnect is structural, not a market failure, but most small shippers remain unaware until a loss occurs.

3. **Cargo underinsurance is exacerbated by declared-value inaccuracy.** Shippers regularly declare cargo values based on invoice price rather than replacement cost + consequential losses; in fast-moving goods categories (electronics, fashion), market value at destination may far exceed purchase value; the gap is uninsured. Munich Re identifies accumulation underinsurance at ports as a parallel problem — three shipments routing through the same port due to congestion or rerouting can exceed a single insured's limits of insurance, resulting in uncovered excess. (59)

4. **War risk and geopolitical premium surges in 2024 created unbudgeted insurance cost spikes for SEA exporters transiting Middle East routes.** Red Sea war risk premiums reached 1% of vessel value in early 2024; standard cargo policies for goods on diverted vessels faced unbudgeted additional premiums or coverage gaps. (60) SEA exporters shipping via Suez faced both higher freight rates and higher insurance premiums simultaneously.

5. **Parametric cargo insurance adoption is limited by basis risk anxiety.** Shippers understand that a parametric trigger (e.g., delay exceeding 8 days) may not align with their actual financial loss timeline; a 6-day delay causing $50,000 of spoilage receives zero payout. Parametric products require shipper education and financial sophistication that most SME logistics operators in SEA do not currently have.

**Claims processing pain points:**

6. **Average cargo claims settlement takes 30–90 days** for traditional indemnity cargo; some complex multi-party ocean claims extend to 180+ days. During settlement, shippers cannot replace damaged/lost inventory, disrupting supply chains. Digital MGAs claim 3–14 day settlement but this is company-stated without third-party audit. (61)

7. **Claims documentation burden falls disproportionately on shippers with the fewest resources.** Marine claims require survey reports, bills of lading, packing lists, commercial invoices, certificates of origin, survey reports, and evidence of carrier negligence — a package that SME logistics actors in SEA typically cannot assemble without professional assistance. Insurers routinely reject claims on documentation grounds rather than merit. (40)

8. **Double brokering and freight fraud are generating insurance claims that traditional cargo policies were not designed to cover.** Double brokering (fictitious pickup by impersonated carriers) results in cargo disappearing to an uninsured counterparty; cargo insurers dispute coverage if the "theft" was facilitated by the shipper or broker's failure to verify carrier identity. US double brokering incidents surged 400% in six months per Claims Journal 2024. (62)

9. **Subrogation recovery rates from cargo theft are structurally poor.** Even when physical cargo is recovered through CargoNet or Overhaul's networks, the stolen goods may be commingled, damaged, or missing documentation making value recovery partial. CargoNet data shows $35M recovered from 100 incidents in 2024 — a strong result but still representing only a fraction of total losses of $454.9M in the same year. (43)

10. **Claims management software in SEA is immature.** Australia's FreightSafe is the only analog for a regional dedicated cargo claims platform; no equivalent is documented in Singapore, Indonesia, Thailand, or Malaysia. SEA cargo claims are managed through global insurer claims systems (Allianz, Chubb, Tokio Marine) or through manual broker processes. Local SME shippers have no technology layer equivalent to FreightClaims.com for the US.

**Insurance-data disconnect pain points:**

11. **Risk and insurance pricing are decoupled from real-time shipment-level data.** Traditional cargo premium is priced on annual declared-value programs with historical loss experience as the primary actuarial input. Parsyl is the only cargo insurer with a live IoT-data-to-underwriting feedback loop; all other traditional carriers price off historical aggregate, not shipment-level risk signals. WH5 from the input hypothesis is directly confirmed: even where telematics or IoT exists (Stage 3/4 solutions), the data does not flow into cargo insurance pricing. (25)

12. **Premium disconnection creates adverse selection in digital MGA markets.** Per-shipment platforms (Loadsure, Breeze, Otonomi) attract shippers with higher-than-average risk shipments (known to be damaged/delayed/high-theft corridor) at rates priced for average risk. Without carrier behavior data feeding into per-shipment pricing, adverse selection erodes digital MGA loss ratios. (19)

13. **The subcontractor tier is invisible to cargo insurers.** The pitch hypothesis is confirmed at Stage 6: when a 3PL subcontracts to a small transporter in SEA, the cargo insurer's policy covers the named insured (the shipper) for the loss, but the insurer cannot price the actual carrier quality, cannot enforce their subrogation rights against an unnamed small operator, and cannot apply telematics-linked underwriting because the sub-carrier has no integrated telematics. [ASSUMED-4]: SEA cargo insurers routinely waive subrogation against sub-carriers because recovery costs exceed subrogation value from unidentified small operators — to validate: ask claims directors at Tokio Marine Indonesia, MSIG Thailand, and Allianz Malaysia whether subrogation against sub-carrier tier is pursued or routinely waived.

**Regulatory and market structure pain points (SEA-specific):**

14. **Indonesia's cargo insurance market requires regulatory compliance that limits foreign MGA entry.** OJK (Otoritas Jasa Keuangan) requires insurance products to be underwritten by locally licensed insurers; a foreign MGA cannot write direct Indonesian cargo insurance without a local carrier fronting arrangement. This creates a distribution barrier for digital MGAs (Loadsure, Breeze, Otonomi) entering Indonesia — they require a local insurance company partner, which adds complexity and cost. [ASSUMED-5]: No Western digital cargo MGA currently has a local Indonesian carrier partner enabling per-shipment API access for Indonesian domestic cargo — to validate: ask OJK-licensed Indonesian general insurers whether any digital MGA API arrangement has been approved; ask Loadsure/Breeze commercial teams about Indonesia regulatory pathway.

15. **SEA domestic cargo insurance is fragmented across product lines with no unified embedded distribution.** In Indonesia, the 2024 AAUI data shows marine cargo at Rp 9,556B GWP — a significant market — but this is distributed across 40+ local AAUI member insurers using paper-based or legacy broker workflows. There is no Indonesian analog to project44 + Reliance Partners' embedded per-shipment platform. (52)

---

## Sources for this Stage

(1) Allianz Commercial Marine Cargo Insurance product page — https://commercial.allianz.com/solutions/marine-insurance/cargo-insurance.html

(2) Allianz Commercial + Rokstone facility announcement (May 2024) — https://www.insurancebusinessmag.com/asia/news/marine/allianz-reveals-key-trends-driving-marine-claims-activity-428293.aspx

(3) Allianz Commercial AGCS Annual Report 2024 — https://commercial.allianz.com/content/dam/onemarketing/commercial/commercial/about-agcs/AGCS-Annual-Report-2024-EN.pdf

(4) Tokio Marine Holdings Wikipedia / Holdings overview — https://en.wikipedia.org/wiki/Tokio_Marine

(5) Tokio Marine South East Asia Global Network for Cargo Claims Settlement — https://www.tokiomarine-nichido.co.jp/en/network/products/gc-south-e.html

(6) PT Asuransi Tokio Marine Indonesia Marine Cargo Insurance — https://www.tokiomarine.com/id/en/non-life/products/business/marine/marine-cargo-insurance.html

(7) Tokio Marine Insights TMSTH presentation March 2024 — https://www.tokiomarinehd.com/en/ir/event/presentation/2023/qsbph40000000e7q-att/Tokio_Marine_Insights_TMSTH_e.pdf

(8) Tokio Marine invests $5M in Igloo (January 2026) — https://fintechnews.sg/125158/insurtech/tokio-marine-invests-5m-igloo/

(9) Tokio Marine pauses sale of SE Asia life insurance business, Japan Times October 2024 — https://www.japantimes.co.jp/business/2024/10/18/tokio-marine-sale-pause/

(10) Zurich Insurance Marine product page — https://www.zurich.com.sg/corporate-solutions/our-products/marine

(11) Chubb Asia Marine expansion — https://www.insurancebusinessmag.com/asia/news/marine/allianz-reveals-key-trends-driving-marine-claims-activity-428293.aspx

(12) AXA XL North America Marine Insurance Market 2024 — https://axaxl.com/fast-fast-forward/articles/navigating-north-americas-marine-insurance-market-in-2024

(13) MSIG Southeast Asia marine cargo — https://www.msig.com.sg/commercial/marine-cargo; https://www.msig.co.id/commercial-insurance/cargo-insurance; https://www.msig-thai.com/en/business-insurance/marine-cargo-insurance

(14) Marsh Cargo & Logistics practice — https://www.marsh.com/en/industries/cargo.html

(15) Marsh Parametric Coverage for Cargo Delay — https://www.marsh.com/en/industries/cargo/expertise/parametric-coverage-for-cargo-delay.html

(16) Aon Rachel Miao appointment, September 2024 — https://reinasia.com/rachel-miao-joins-aon-as-regional-director-marine-cargo-and-logistics-for-asia/

(17) WTW Global Marketplace Insights Q1 2024 Marine — https://www.wtwco.com/en-us/insights/2024/04/global-marketplace-insights-marine-q1-2024

(18) Gallagher Cargo Market Update Q3 2024 — https://specialty.ajg.com/marine-cargo/cargo-market-update-q3-2024

(19) Loadsure product and company overview — https://www.loadsure.net/

(20) Loadsure Series A $11M announcement — https://www.loadsure.net/latest/article/loadsure-raises-11-million-series-a-funding-for-its-breakthrough-freight-insurance-technology/

(21) Overhaul + Loadsure cargo insurance program (August 2024) — https://www.prnewswire.com/news-releases/overhaul-combines-its-cargo-theft-prevention-and-recovery-services-with-an-exclusive-cargo-insurance-program-302220417.html

(22) Breeze AI company overview — https://www.breezeai.com/

(23) Breeze + Great American Insurance Group expansion (August 2025) — https://meantime.global/news/ai-powered-cargo-insurance-platform-breeze-welcomes-expansion-into-us-market-with-great-american-collaboration/

(24) Parsyl $55M admitted marine cargo capacity announcement — https://www.parsyl.com/media/parsyl-introduces-55m-admitted-marine-cargo-insurance-capacity

(25) Parsyl Series C $20M (Lightsmith, January 2024) — https://lightsmithgp.com/news-posts/lightsmith-leads-20-million-investment-round-in-ai-powered-insurer-parsyl-supporting-climate-resilience-in-complex-supply-chains/

(26) Parsyl Data Partner Program (March 2024) — https://www.parsyl.com/media/media/data-partner-program-launch

(27) Cover Genius Series E $80M (May 2024) — https://covergenius.com/cover-genius-closes-80m-in-series-e-funding-as-investors-see-700-billion-opportunity-in-embedded-protection/

(28) Cover Genius xCover cargo / Shopee integration — https://covergenius.com/cargo-marine-insurance/; https://covergenius.com/logistics/

(29) Reliance Partners profile — https://reliancepartners.com/

(30) project44 + Reliance Partners embedded cargo insurance — https://www.project44.com/press-releases/project44-reliance-partners-collaborate-deliver-real-time-cargo-insurance-quoting-purchasing/

(31) Otonomi website — https://www.otonomi.ai/

(32) Otonomi Hong Kong + South America expansion Q1 2024 — https://www.hongkongmaritimehub.com/otonomis-cargo-delay-insurance-gains-traction-with-investors/

(33) Skyline Partners — https://www.skyline.partners/

(34) Descartes Underwriting $120M raise — https://descartesunderwriting.com/newsroom/descartes-underwriting-raises-120-million-become-category-leader-corporate-insurance

(35) TT Club Annual Report 2024 / Financial Highlights 2024 — https://www.ttclub.com/news-and-resources/corporate-literature/article/financial-highlights-2024; https://www.ttclub.com/news-and-resources/corporate-literature/article/through-transport-mutual-insurance-association-ltd-annual-report-2024

(36) BSI/TT Club Cargo Theft Report — https://www.ttclub.com/

(37) NorthStandard financial results — https://www.insurancebusinessmag.com/uk/news/marine/uk-pandi-club-northstandard-report-financial-results-447789.aspx

(38) FreightSafe / Ofload partnership July 2024 — https://www.ofload.com.au/blog/ofload-partners-with-freightsafe-to-enhance-goods-protection-for-customers; https://freightsafe.com/

(39) FreightClaims.com / Tai Software integration (December 2024) — https://www.globenewswire.com/news-releases/2024/12/09/2993916/0/en/Tai-Software-and-FreightClaims-com-Integration-Accelerates-Freight-Claims-Management-for-Brokers.html

(40) APP Tech cargo claims software — https://apptechllc.com/lines-of-business/cargo/

(41) Claimable cargo claims software — https://www.claimable.com/who-is-it-for/cargo-shipping-companies/

(42) Overhaul SensiGuard acquisition (February 2023) and 2024 incident recovery data — https://www.prnewswire.com/news-releases/overhaul-acquires-sensiguard-to-become-largest-in-transit-supply-chain-cargo-security-provider-301739973.html; https://over-haul.com/65000-railroad-cargo-thefts-reported-in-2024/

(43) Verisk CargoNet 2024 Annual Supply Chain Risk Report — https://tapa.memberclicks.net/assets/2025-National-Cargo-Theft-Conferfence/Presentations-for-Sharing/2024%20Annual%20Verisk%20CargoNet%E2%80%99s%20Supply%20Chain%20Risk%20Report.pdf (PDF)

(44) Verisk CargoNet RouteScore API (January 2025) / 2025 cargo theft losses — https://www.verisk.com/company/newsroom/to-combat-mounting-cargo-theft-verisk-launches-cargonet-routescore-api/; https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/

(45) Igloo company overview, 2024 financials, Tokio Marine stake — https://iglooinsure.com/; https://technode.global/2024/10/22/singapores-insurtech-firm-igloo-eyes-ma-opportunities-as-it-continues-to-expand-across-southeast-asia-qa/; https://www.dealstreetasia.com/stories/tokio-marine-igloo-470444

(46) Peak3 + Lazada JV embedded insurance (August 2024) — https://insurtechdigital.com/articles/peak3-and-lazada-forge-insurtech-venture-in-southeast-asia

(47) IUMI Press Release "Steady insurance markets for hull and cargo in 2024" (November 2025) — https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/

(48) IUMI Stats Report 2024 (published October 2024, covering 2023 data) — https://iumi.com/wp-content/uploads/2024/12/IUMI-Stats-Report-2024.pdf (PDF, processed via markitdown)

(49) Inland Marine Insurance Market — Verified Market Research — https://www.verifiedmarketresearch.com/product/inland-marine-insurance-market/

(50) North America Marine Insurance Market 2026 — Cognitive Market Research — https://www.cognitivemarketresearch.com/regional-analysis/north-america-marine-insurance-market-report

(51) General Insurance Association of Singapore press release "GI Sector Results 2024" — https://gia.org.sg/agents/media-center/company-news/573-gi-sector-results-2024.html; Asia Insurance Post S$6.09B 2025 GWP — https://asiainsurancepost.com/archives/78195

(52) AAUI Q4 2024 Statistical Report (Triwulan 4 Jan–Des 2024) — https://aaui.or.id/wp-content/uploads/2025/10/analisa-Q4-24-web-ver.pdf (PDF, processed via markitdown)

(53) Thailand OIC insurance premium statistics 2024 / Asia Insurance Review — https://www.asiainsurancereview.com/News/View-NewsLetter-Article?id=91744&Type=eDaily

(54) Malaysia PIAM / ISM Insurance Data — https://piam.org.my/in-focus/resources/insurance-data/

(55) Global parametric insurance market (multiple market research firms) — https://www.gminsights.com/industry-analysis/parametric-insurance-market; https://finance.yahoo.com/news/parametric-insurance-market-size-surpass-092500505.html

(56) Parametric cargo insurance adoption trends — market research firm estimates (directional only, no primary source identified)

(57) Cargo Claims Management Software Market — Growth Market Reports — https://growthmarketreports.com/report/cargo-claims-management-software-market

(58) FreightWaves underinsurance crisis — https://www.freightwaves.com/news/solving-the-freight-industrys-underinsurance-crisis

(59) Munich Re cargo risk accumulation article — https://www.munichre.com/en/insights/business-risks/navigating-the-challenges-of-cargo-risk-accumulation.html

(60) Red Sea war risk premium surge (2024) — https://www.policyholderpulse.com/red-sea-transit-insurance-premiums-coverage-exclusions/; WTW Q1 2024 Global Marketplace Insights — https://www.wtwco.com/en-us/insights/2024/04/global-marketplace-insights-marine-q1-2024

(61) Cargo claims settlement timeline — https://traderiskguaranty.com/trgpeak/how-long-cargo-insurance-claim/; https://www.claimsjournal.com/news/national/2024/07/10/324906.htm

(62) Cargo claims challenges 2024 (double brokering, fraud) — https://www.claimsjournal.com/news/national/2024/07/10/324906.htm

(63) Allianz marine claims trends (244,451 claims over $9.2B analyzed 2017–2021) — https://commercial.allianz.com/news-and-insights/expert-risk-articles/marine-claims-trends.html

(64) Allianz Safety and Shipping Review 2024 — https://commercial.allianz.com/content/dam/onemarketing/commercial/commercial/reports/Commercial-Safety-Shipping-Review-2024.pdf (PDF)

(65) IUMI press release 2023 (2022 data) — https://iumi.com/news/press-releases/positive-development-across-all-marine-insurance-lines-of-business-continued-in-2023-reports-iumi

(66) Otonomi Series A $5M — https://programbusiness.com/news/otonomi-secures-5-million-series-a-to-advance-insurtech-innovation-in-cargo-insurance/

---

## Assumptions to Validate

[ASSUMED-1]: Parsyl has written or is actively soliciting marine cargo policies for SEA perishable exporters through London market brokers.
- to validate: Ask Parsyl's commercial team directly about SEA pipeline (Thailand shrimp, Indonesian aquaculture, Vietnamese seafood exports); ask whether any SEA-based fresh produce exporters have been offered IoT-linked cargo programs through Parsyl's Lloyd's syndicate; ask Parsyl whether the Data Partner Program includes any SEA-based visibility providers.

[ASSUMED-2]: A meaningful share of major SEA 3PLs (Agility, DHL Supply Chain SEA, Kuehne+Nagel SEA, Kerry Logistics) maintain TT Club membership covering their freight forwarder liability in SEA operations.
- to validate: Ask TT Club membership team for SEA member count and whether any of the named 3PLs are disclosed members; ask major SEA 3PL risk managers in field interviews whether TT Club or a comparable mutual covers their freight forwarder liability; verify whether TT Club's combined ratio deterioration (112% in 2024) is creating any membership attrition in SEA.

[ASSUMED-3]: Parametric cargo insurance GWP globally was less than $500M in 2024, representing less than 2.5% of total cargo premium of $22.64B.
- to validate: Request Lloyd's Market Association parametric-class cargo premium data; ask Parsyl, Otonomi, and Skyline Partners for their respective GWP volumes or range; ask IUMI Facts & Figures Committee whether parametric cargo premium is being tracked separately from indemnity cargo.

[ASSUMED-4]: SEA cargo insurers routinely waive subrogation against sub-carriers because recovery costs exceed subrogation value from unidentified small operators.
- to validate: Ask claims directors at Tokio Marine Indonesia, MSIG Thailand, and Allianz Malaysia (or Chubb SEA claims) whether subrogation is pursued against the subcontractor tier in SEA road freight; ask whether shipper-provided cargo insurance policies contain subrogation waiver clauses for sub-carrier tiers; ask TT Club whether member logistics operators in SEA encounter double-layer subrogation conflicts (TT Club vs. cargo insurer).

[ASSUMED-5]: No Western digital cargo MGA currently has a local Indonesian carrier partner enabling per-shipment API access for Indonesian domestic cargo, due to OJK licensing requirements.
- to validate: Ask OJK (Otoritas Jasa Keuangan) financial services authority whether any digital cargo MGA API arrangement has been formally approved in Indonesia; ask Loadsure and Breeze commercial teams about their Indonesia regulatory pathway and whether a local fronting arrangement has been structured; check AAUI member list for any insurtech MGA with digital per-shipment cargo capability.

[ASSUMED-6]: Igloo's shipping and transit insurance product, despite having Ahamove and Loship as logistics partners, covers primarily last-mile e-commerce parcel volumes rather than B2B freight cargo with declared values above $5,000 per shipment.
- to validate: Ask Igloo's commercial team for average insured value per shipping/transit policy; ask Ahamove and Loship logistics ops teams whether Igloo coverage is offered to B2B freight clients or only to B2C last-mile consumers; ask Tokio Marine (as Igloo investor) whether Igloo's logistics insurance is part of their strategic thesis for enterprise cargo in SEA.

[ASSUMED-7]: The $131B in cargo trade exposed to port congestion at Singapore, Port Klang, and Tanjung Pelepas in H1 2024 (Gallagher estimate) has not generated a proportional increase in parametric delay insurance take-up among SEA shippers — i.e., the exposure is real but the insurance product is not yet reaching the shippers exposed.
- to validate: Ask Marsh Singapore's parametric desk how many parametric delay policies were placed for SEA shippers in 2024; ask Otonomi whether they have Singapore or Malaysia clients who triggered parametric claims from port congestion in 2024; ask freight forwarder associations (Singapore Logistics Association, AFIFFT Thailand) whether parametric delay insurance is on their member radar.

