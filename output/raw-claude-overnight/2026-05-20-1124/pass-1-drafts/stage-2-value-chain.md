# Stage 2: Dispatch — Freight Procurement & Tendering

*Note on Stage 1 boundary: Carrier onboarding, vetting platforms (Highway, MCP, Carrier411), COI management (myCOI, TrustLayer), and KYC/sanctions tools are documented in Stage 1 and not duplicated here. Stage 2 picks up at the moment a vetted carrier pool exists and a specific load needs to be tendered.*

---

## Stage Overview

The freight procurement and tendering layer sits between carrier onboarding (Stage 1) and physical freight movement (Stage 3). Actors here are shippers, freight brokers, and 3PLs who must answer per-load questions: which carrier gets this shipment, at what rate, under what contractual liability terms, and through what channel (contract lane vs. spot market)? The risk is not whether a carrier exists — that was Stage 1 — but whether the *right* carrier is selected for *this load*, and whether the tendering mechanism itself introduces fraud or liability exposure.

The scale of relevant risk: strategic cargo theft (identity-based fraud, fictitious pickups, double brokering) grew nearly 1,500% from 2022 to 2024, with fictitious pickups alone surging from an average of 66 incidents/year (2012–2022 baseline) to 576 in 2023.(1) Strategic theft now represents 18% of all US cargo theft incidents.(2) The US 3PL market — the dominant procurement intermediary — reached $307.9B gross revenue in 2024, growing 2.8% YoY, with the Domestic Transportation Management (DTM) segment (freight brokerage + managed transportation + intermodal) the largest sub-segment.(3)

---

## Solution Categories

### Category 1: Enterprise TMS with Freight Procurement (Shipper-Side)

These platforms are the shipper's operational system of record for carrier selection, rate management, load tendering, and contract administration. Risk relevance: they determine whether a carrier is selected based on historical performance data or purely on price.

**Oracle Transportation Management (OTM)**
- What it does: Full-lifecycle TMS covering multi-modal carrier sourcing, contract rate management, load tendering (EDI 204/990/214), carrier performance scoring, and freight audit/pay. Deepest enterprise footprint among legacy TMS players.
- Primary user: Large enterprise shipper, manufacturer, retailer
- Business model: SaaS subscription (Oracle Cloud); legacy on-premise licenses also active. Oracle does not break out OTM revenue separately; Oracle Cloud Applications revenue was $19.9B in FY2024.(4)
- Geography: Global; 17th consecutive year as Gartner MQ Leader (2024 MQ for TMS, April 2024).(5)
- SEA presence: Yes — Oracle has enterprise customers and offices across Singapore, Indonesia, Malaysia, Thailand; OTM deployed in SEA manufacturing and retail sectors.
- Risk-feature strengths: Carrier performance scoring (on-time, claims rate) embedded in carrier selection; configurable tender waterfall logic (primary → backup → spot). Weakness: No native FMCSA/CSA data integration; carrier fraud-signal data not surfaced at tender time; requires third-party integration (see Stage 1 tools).

**SAP Transportation Management (SAP TM)**
- What it does: End-to-end TMS integrated into SAP S/4HANA; freight procurement via SAP Business Network for Logistics (connects 1.3M+ carriers); carrier bid management; contract lifecycle.
- Primary user: Large enterprise shipper (SAP S/4HANA customers)
- Business model: SAP subscription; bundled into S/4HANA or standalone; SAP holds 29.1% of procurement software market share by one estimate.(6)
- Geography: Global leader; 10th consecutive year as Gartner MQ Leader (2024).(5)
- SEA presence: Yes — dominant enterprise ERP footprint in SEA; Singapore, Kuala Lumpur, Jakarta offices; large SEA manufacturing, CPG, and retail customers.
- Risk-feature strengths: SAP Business Network flags carrier compliance status; integration with GTS (Global Trade Services) for customs/sanctions. Weakness: Like Oracle, no native US CSA/FMCSA fraud-signal integration; carrier fraud scoring is not a native module.

**Blue Yonder TMS**
- What it does: Shipper-side TMS with a transportation procurement module that runs carrier RFPs, bid optimization, and contract management using historical freight data; Global Logistics Network provides pre-onboarded carrier access.
- Primary user: Enterprise shipper (Panasonic subsidiary; retail, manufacturing, CPG)
- Business model: SaaS; part of Panasonic Group following 2021 acquisition.
- Geography: Global; major US, EU, APAC deployments.
- SEA presence: Yes — APAC office Singapore; SEA customers in manufacturing and retail; carrier network connectivity in SEA limited relative to North America.
- Risk-feature strengths: Uses historical carrier performance data for procurement optimization; carrier RFP includes compliance assessments. Weakness: No real-time freight fraud signal integration; SEA carrier performance data is sparse.

**E2open TMS (now WiseTech Global)**
- What it does: Cloud-native TMS with multi-modal freight procurement, carrier network management, and supply chain visibility; includes INTTRA for ocean booking (~25% of global ocean bookings). Acquired by WiseTech Global in May 2025 for $2.1B enterprise value.(7)
- Primary user: Shipper, freight forwarder
- Business model: SaaS; E2open FY2024 (ending Feb 2024) revenue ~$635M across all modules.(8)
- Geography: Global.
- SEA presence: Yes — regional enterprise presence; INTTRA ocean booking widely used across SEA trade lanes.
- Risk-feature strengths: Integrated visibility and execution reduces exposure to fraudulent rerouting; ocean concentration means stronger ocean-lane risk data than road. Weakness: Road freight carrier risk scoring is not a native feature.

---

### Category 2: 3PL/Broker-Native TMS Platforms

These are TMS platforms purpose-built for freight brokers and 3PLs — the intermediaries who procure capacity on behalf of shippers. Risk relevance: these systems determine how brokers select carriers per load, manage spot vs. contract allocation, and whether fraud signals are surfaced at the moment of dispatch.

**McLeod Software (LoadMaster + PowerBroker)**
- What it does: TMS for asset carriers and freight brokers; PowerBroker is the broker-specific module covering load entry, carrier matching, rate negotiation, and settlement; LoadMaster for asset dispatch.
- Primary user: Mid-to-large freight broker, asset carrier with brokerage arm
- Business model: Perpetual license + maintenance (historically); SaaS migration underway. Private company; no public revenue. Serves 354+ companies as of 2024, 94.8% US-based.(9)
- Geography: US-primary.
- SEA presence: None confirmed.
- Risk-feature strengths: Version 24.2 added Market Rate Index and Pricing & Bid modules for rate benchmarking; Loadsure per-load insurance integration via McLeod (see Category 7). Weakness: No native carrier fraud-signal or FMCSA CSA data embedded at load assignment; relies on third-party integrations.

**Descartes Aljex TMS**
- What it does: SaaS-native broker TMS; cloud-based load management, carrier matching, document workflow, and MacroPoint integration for tracking. Positioned as mid-market broker platform.
- Primary user: Freight broker (mid-market), 3PL
- Business model: SaaS subscription; Descartes Systems Group (TSX/NASDAQ: DSGX) subsidiary. Descartes total revenue CAD $642M in FY2025 (ending Jan 2025).(10)
- Geography: US-primary; Descartes global infrastructure.
- SEA presence: Descartes has Singapore/APAC offices but Aljex TMS is US-market-focused; MacroPoint tracking extends globally.
- Risk-feature strengths: Native integration with Descartes MacroPoint (tracking) and FraudGuard (carrier identity fraud detection — see Stage 1); MCP carrier compliance monitoring integrated. This makes Aljex one of the more complete broker stacks for fraud-risk coverage. Weakness: Risk features are bolt-on integrations, not native UI; smaller brokers may not subscribe to all modules.

**Trimble TMS (TMW Suite / Trimble Transportation)**
- What it does: TMS covering carrier and broker operations; now includes Transporeon's freight procurement network (see Category 3) following Trimble's $1.99B acquisition of Transporeon in April 2023.(11)
- Primary user: Asset carrier, 3PL, freight broker
- Business model: Software licensing + SaaS (Trimble is NYSE: TRMB; does not separately report TMS segment revenue).
- Geography: Global; Transporeon's EU network is the strongest asset.
- SEA presence: Trimble has APAC presence; Transporeon's carrier network is EU-centric.
- Risk-feature strengths: Transporeon's real-time slot management reduces phantom capacity exposure; time-slot tendering limits carrier double-booking risk. Weakness: Double-brokering fraud signals are not a native TMW/Transporeon feature.

**Revenova TMS**
- What it does: Salesforce-native TMS for freight brokers and 3PLs; built on Salesforce CRM, providing unified load management, carrier relationship, quoting, and invoicing in one platform.
- Primary user: Freight broker (SME to mid-market)
- Business model: SaaS (Salesforce AppExchange); subscription per seat.
- Geography: US-primary; small international presence.
- SEA presence: None confirmed.
- Risk-feature strengths: CRM-native design means carrier communication history is embedded alongside load data — better audit trail for dispute resolution. Weakness: No fraud or compliance signal integration confirmed.

---

### Category 3: Freight Procurement & RFP Platforms

Standalone platforms that run freight RFP/bid events, benchmark lane rates, and manage carrier contract libraries — distinct from TMS execution. Risk relevance: procurement platform determines which carriers are invited to bid, at what rate, and whether contract terms allocate liability correctly.

**Transporeon (Trimble)**
- What it does: Cloud-based freight procurement and execution network; manages RFPs, real-time transport auctions, carrier tendering, time-slot management, and freight matching across 150,000+ carriers and 1,400 shippers. Manages ~€48B freight spend and 25M+ transports per year.(11)
- Primary user: Large shipper (EU-centric), 3PL
- Business model: SaaS network subscription; €190M revenue in 2023 (25% YoY growth); ~80% gross margin; ~30% adj. EBITDA margin.(11)
- Geography: EU-dominant; global network.
- SEA presence: Limited — Transporeon's carrier and shipper network is EU-centric; US and APAC presence expanding post-Trimble acquisition but not the primary market.
- Risk-feature strengths: Real-time slot management limits phantom capacity; carrier qualification integrated into RFP invitation list. Weakness: Double-brokering fraud signals not a native feature; insurance-at-tender not offered; EU regulatory data, not FMCSA-compatible.

**Emerge**
- What it does: Digital freight procurement platform for shipper RFPs, dynamic bidding, spot procurement, and lane benchmarking; enables shippers to access 35,000+ marketplace carriers for RFPs and spot awards.
- Primary user: Shipper (primarily US)
- Business model: SaaS + transaction fee; raised $150M+ total funding (Series B $130M, September 2021, led by 9Yards Capital + Tiger Global).(12) 2021 gross revenue ~$200M.(12)
- Geography: US-primary.
- SEA presence: None confirmed.
- Risk-feature strengths: Launched Benchmarking product providing real-time market data for contracted lanes — helps shippers detect rate manipulation by validating market vs. quoted rates. Weakness: No carrier fraud-signal integration; insurance-at-tender not offered; no SEA market presence.

**Loadsmart (ShipperGuide TMS + Procure)**
- What it does: Combined TMS + freight brokerage + procurement platform; ShipperGuide TMS provides rate discovery, contract management, spot procurement, and carrier performance tracking; Loadsmart acts as the capacity provider.
- Primary user: Shipper (30% of Fortune 100 shippers in North America per company claim).(13)
- Business model: SaaS TMS subscription + transaction margin on brokered loads; raised $346M–$384M total (BlackRock, SoftBank LatAm, TFI, Maersk, CSX among investors).(13) Valued at $1.3B in Feb 2022 Series D.(14)
- Geography: US-primary; Latin America exposure via SoftBank LatAm.
- SEA presence: None confirmed.
- Risk-feature strengths: Dynamic Pricing module automates spot vs. contract decision with rate guardrails, reducing spot exposure on predictable lanes. Weakness: No carrier identity fraud signals at tender; insurance-at-tender is not integrated within ShipperGuide.

**Uber Freight (RFQ + Broker Access)**
- What it does: Digital freight brokerage + shipper platform; capacity-as-a-service (Broker Access) gives freight brokers direct access to Uber Freight's vetted carrier network. Full-year 2024 freight revenue: $5.17B (Q1 $1.284B + Q2 $1.272B + Q3 $1.308B + Q4 $1.307B per Uber SEC filings).(15) Note: this is brokered gross revenue, not net; Uber Freight adjusted EBITDA loss was $22M in Q4 2024.
- Primary user: Shipper, freight broker (via Broker Access)
- Business model: Transaction margin on brokered loads; SaaS for managed shippers; Uber Technologies (NYSE: UBER) subsidiary.
- Geography: US-primary; limited international.
- SEA presence: None.
- Risk-feature strengths: Vetted carrier network reduces identity fraud risk vs. open spot market; carrier performance scores embedded in matching algorithm. Weakness: No explicit carrier fraud-signal transparency to shipper; rate confirmation fraud not addressed in public product documentation.

[ASSUMED-1]: Uber Freight's carrier vetting for its Broker Access product applies the same vetted-carrier criteria as its core brokerage, not a lighter-touch onboarding — to validate: request Broker Access product documentation from Uber Freight sales team; confirm whether carriers are FMCSA-authority-verified and insurance-confirmed before appearing as available capacity.

---

### Category 4: Spot-Market Matching Marketplaces

Load boards and real-time freight matching platforms where capacity is posted and booked outside contracted lanes. Risk relevance: spot loads have higher theft and fraud exposure because carrier relationships are one-time rather than recurring; fraud rings specifically target load-board postings for fictitious pickup and double-brokering schemes.

**DAT One (DAT Freight & Analytics)**
- What it does: Largest truckload freight marketplace in North America by volume — 722,500+ loads posted daily, $126B+ in annual freight matched, $1T+ transaction database.(16) Includes load posting, rate analytics, CarrierWatch compliance monitoring, and electronic rate confirmation.
- Primary user: Freight broker, carrier, shipper
- Business model: Subscription (TruckersEdge, DAT One tiers); add-on products for rate data and compliance. DAT is a Roper Technologies (NYSE: ROP) subsidiary; no separate revenue disclosure.
- Geography: US-primary; largest spot-market data footprint.
- SEA presence: None.
- Risk-feature evolution post-double-brokering crisis: DAT has added in-app fraud reporting, load lock features preventing re-posting, and CarrierWatch integration for real-time FMCSA authority checks at booking. Does NOT prevent a fraudulent carrier from booking a load if their authority appears current (the fraud vector is identity impersonation, not authority status).

**Truckstop (Transport Intelligence Group)**
- What it does: Load board marketplace + Risk Factors (AI-driven fraud-risk scoring) + compliance monitoring. Risk Factors combines FMCSA data, Truckstop transaction history, VoIP usage detection, VIN checks, and IP-address behavior to generate high/medium/low risk ratings at the point of carrier booking. Won FreightWaves 2025 Fraud Fighter Award; reported 57% fraud reduction among users.(17)
- Primary user: Freight broker, carrier
- Business model: SaaS subscription + add-on products; private (Transport Intelligence Group).
- Geography: US-primary.
- SEA presence: None.
- Risk-feature strengths: Risk Factors is the most advanced fraud-signal product native to a spot-market load board — it surfaces risk ratings before booking confirmation without requiring a separate platform integration. Weakness: Risk scores are still point-in-time; persistent identity fraudsters who are new to the platform score as low-risk initially.

**ITS Dispatch (Internet Truckstop)**
- What it does: Dispatch software and load board for owner-operators and small carriers; carrier-side tool for finding available loads.
- Primary user: Small carrier, owner-operator
- Business model: SaaS subscription; subsidiary of Truckstop (Transport Intelligence Group).
- Geography: US.
- SEA presence: None.
- Risk-feature strengths: Carrier-facing compliance reminders; limited fraud-prevention features relative to broker-facing tools.

**Coyote Logistics Platform (UPS subsidiary)**
- What it does: Managed TMS + freight brokerage + spot-market matching for shippers; part of UPS following 2015 acquisition for $1.8B.
- Primary user: Shipper, 3PL
- Business model: Transaction margin + managed-services fees; UPS subsidiary (no standalone revenue disclosure).
- Geography: US and EU; UPS global logistics network.
- SEA presence: Via UPS global infrastructure; Coyote's technology platform is primarily US/EU.
- Risk-feature strengths: Shipper-side: UPS backing provides financial stability and claims resolution. Weakness: Carrier fraud signals at spot-booking are not a documented public feature; transparency to shipper on carrier-selection logic is limited.

---

### Category 5: Carrier Scorecarding & Lane-Level Risk Scoring

These tools move beyond static carrier qualification (Stage 1) to dynamic, per-lane, per-load carrier performance scoring integrated into the moment of tendering. Risk relevance: a carrier who passes onboarding may underperform or pose risk on specific lanes; lane-level scoring identifies this before tender.

**project44 Intelligent TMS (with CarrierAssure)**
- What it does: Real-time visibility platform with a native TMS module; CarrierAssure predictive performance scores (derived from FMCSA data + behavioral signals) are embedded at the carrier-selection step. Early adopters: 4.1% transportation cost reduction, 17% on-time performance improvement, 22% billing accuracy improvement.(18)
- Primary user: Shipper, 3PL
- Business model: SaaS; project44 has raised $820M+; last valuation $2.7B (Series F 2022). Does not separately disclose Intelligent TMS revenue.
- Geography: Global visibility network; 250,000+ carriers connected.
- SEA presence: Yes — APAC offices; SEA shipper customers; carrier ELD/API coverage in SEA is limited relative to North America (structural gap: no ELD mandate in SEA).
- Risk-feature strengths: Only platform combining real-time carrier performance scoring with native TMS execution, enabling risk-adjusted carrier selection at the moment of tender rather than as a separate lookup. Weakness: CarrierAssure scores are FMCSA-data-dependent — not applicable to SEA carrier population; SEA carrier coverage in the network is thin.

**FourKites**
- What it does: Real-time visibility platform; carrier onboarding for tracking purposes. No native carrier performance scoring or fraud-detection feature confirmed as of research date.
- Primary user: Shipper, 3PL
- Business model: SaaS; private; raised $228M+.
- Geography: Global; Chicago HQ; Singapore APAC office.
- SEA presence: Yes — APAC office; SEA shipper customers.
- Risk-feature strengths vs. project44: FourKites has stronger sustainability/emissions reporting features; project44 has stronger carrier risk scoring via CarrierAssure integration.

**CarrierAssure (standalone)**
- What it does: Predictive carrier performance scoring using FMCSA + behavioral data; available as standalone API for any TMS/platform to embed.
- Primary user: Shipper, 3PL, TMS platform (via API)
- Business model: Data licensing to platform partners + direct SaaS.
- Geography: US-only (FMCSA data dependent).
- SEA presence: None applicable.
- Risk-feature strengths: Standalone API makes it embeddable into any broker/shipper TMS. Weakness: US carrier universe only.

---

### Category 6: Insurance-at-Tender Integration

These tools bind cargo insurance at or near the moment of freight tendering — moving insurance from a static annual policy to a per-load, real-time coverage instrument. Risk relevance: traditional annual policies have cargo class and value limits that can be exceeded by individual loads; per-load binding ensures coverage matches actual shipment.

**Loadsure (Thames dynamic cargo insurance)**
- What it does: Per-load, all-risk cargo insurance integrated directly into TMS workflows via API; integration with McLeod TMS (asset carriers/brokers); compatible with any TMS via API. Coverage up to $2M per load; premiums generated in under one second at tender time.
- Primary user: Freight broker, motor carrier, shipper
- Business model: Insurance premium revenue (Lloyd's market underwriter); SaaS API licensing. Private; no public revenue disclosed.
- Geography: UK-origin; US market focus for road freight.
- SEA presence: None confirmed for SEA road freight.
- Risk-feature strengths: First TMS-native per-load cargo insurance; eliminates coverage gaps from annual policy cargo-class or value mismatches. Weakness: US-market and McLeod-centric; SEA road freight is not a current market; does not validate carrier insurance (this is Stage 1 COI verification) — it provides *shipper-side* coverage.

**Parsyl**
- What it does: IoT-enabled cargo insurance for perishables and essential goods (vaccines, seafood, pharmaceuticals); parametric insurance triggered by sensor data (temperature excursion); raised $66M total ($20M Series C, January 2025, led by Lightsmith Group).(19)
- Primary user: Shipper of high-value perishables, pharmaceutical supply chains
- Business model: Insurance premium + IoT data platform.
- Geography: Global (vaccine supply chains in Africa, Asia); US perishables market.
- SEA presence: Yes — Parsyl has vaccine cold-chain programs with Africa CDC and Asian health ministries; APAC cold-chain coverage.
- Risk-feature strengths: Parametric trigger eliminates claims disputes for temperature-sensitive cargo; IoT data provides real-time risk visibility during transit. Weakness: Not applicable to general freight; focused on perishables and pharmaceuticals only.

**Roanoke Trade (cargo API integration)**
- What it does: Insurance brokerage providing cargo API integration for freight platforms; enables digital cargo insurance binding within TMS and freight platform workflows; serves freight brokers, NVOCCs, and forwarders.
- Primary user: Freight broker, NVOCC
- Business model: Insurance brokerage commission.
- Geography: US.
- SEA presence: Roanoke has international operations; SEA-specific road freight integration not confirmed.
- Risk-feature strengths: API-first model enables insurance at tender for brokers without in-house underwriting capability. [NEEDS-ATTENDED-FETCH]: https://www.roanokegroup.com/cargo-api-integration/ — page loaded but detailed product scope not confirmed for SEA road freight.

---

### Category 7: 3PL-Native Procurement Portals (Enterprise Forwarder Platforms)

Major 3PLs and freight forwarders have built shipper-facing portals that bundle procurement, rate quoting, booking, and tracking. Risk relevance: these portals lock carriers into the 3PL's own network and performance standards; smaller carriers outside the network lose risk-data visibility.

**Kuehne+Nagel myKN**
- What it does: Shipper portal for booking, tracking, document management, and rate quoting across K+N's multimodal network; replaced legacy KN Login.
- Primary user: Shipper (K+N customer)
- Business model: Service fee embedded in freight margin; portal is a retention tool not a separate revenue line.
- Geography: Global (K+N is global #1 by air freight and #2 by ocean).
- SEA presence: Yes — K+N has extensive SEA operations (Singapore, Malaysia, Indonesia, Thailand, Vietnam offices); myKN used by SEA enterprise shippers.
- Risk-feature presence: Carrier risk features are internal to K+N — shipper sees only K+N-vetted carrier performance; no external carrier risk data exposed to shipper. [ASSUMED-2]: myKN exposes no carrier-identity or safety-score data to shippers; shipper must trust K+N's internal vetting — to validate: request a myKN product demo and confirm what carrier compliance data (if any) is visible to the shipper user.

**DHL MySupplyChain**
- What it does: DHL Supply Chain's one-stop portal for order tracking, operational reporting, document storage, and visibility across DHL-managed transport and warehousing.
- Primary user: DHL Supply Chain customers (shipper)
- Business model: Embedded in DHL Supply Chain contracts; not sold standalone.
- Geography: Global.
- SEA presence: Yes — DHL Supply Chain has SEA operations including Singapore, Malaysia, Indonesia, Thailand; portal used across SEA enterprise contracts.
- Risk-feature presence: Real-time milestone visibility enables exception management; no external carrier-fraud or carrier-performance data exposed. Internal DHL network — carrier risk is absorbed by DHL.

**Maersk Supply Chain Platform (myMaersk SCM)**
- What it does: End-to-end supply chain management platform integrating ocean, air, land, and warehousing booking; API integration with shipper ERP/TMS; real-time cargo visibility.
- Primary user: Shipper (Maersk integrated logistics customer)
- Business model: Service fee embedded in logistics contract; not a standalone SaaS product.
- Geography: Global.
- SEA presence: Yes — Maersk has deep SEA port/logistics network; Singapore, Malaysia, Indonesia, Thailand, Vietnam covered.
- Risk-feature presence: Predictive ETA and exception alerts; no carrier fraud-signal data visible to shipper. Risk management is Maersk's internal operational responsibility.

**DB Schenker / DSV (post-2024 merger)**
- What it does: DSV acquired DB Schenker in September 2024 for ~$15B, creating the world's second-largest freight forwarder. Combined digital platform is consolidating; DSV's myDSV portal is the current shipper-facing tool.
- Primary user: Shipper
- Business model: Service fee embedded in freight margin.
- Geography: Global.
- SEA presence: Yes — combined DSV/Schenker has extensive SEA infrastructure.
- Risk-feature presence: Shipment visibility and document management; no public carrier-risk or fraud-signal features for shippers. [ASSUMED-3]: Post-merger platform integration is still underway (H1 2026); risk features, if any, will be a 2026+ roadmap item — to validate: request myDSV product documentation focusing on carrier transparency and fraud-prevention features.

---

### Category 8: SEA & Regional Freight Procurement Platforms

**Kargo Technologies (Indonesia)**
- What it does: Indonesia's largest B2B trucking marketplace — Kargo Nexus AI-enabled TMS with 40,000+ trucks; freight procurement, carrier matching, tracking, and billing for Indonesian shippers. Acquired Malaysia's TheLorry in 2024 (all-stock deal), expanding into Malaysia.(20)
- Primary user: Shipper (FMCG, consumer brands, e-commerce)
- Business model: Commission on freight transactions + SaaS TMS (Kargo Nexus) for enterprise shippers.
- Geography: Indonesia HQ (Jakarta); Malaysia (TheLorry); Series B funding closed July 2024 (investors: Teleport/AirAsia, AC Ventures).
- SEA presence: Yes — Indonesia + Malaysia; limited beyond.
- Risk-feature presence: In-platform carrier vetting and reputation scoring for its own carrier pool; carrier compliance follows Indonesian MOT registration requirements. No standalone risk product sold to third parties; no equivalent to FMCSA CSA scoring. Double-brokering risk is structurally lower in Indonesia because Kargo is the intermediary — but shipper has no independent carrier risk visibility.

**Deliveree**
- What it does: On-demand road freight platform for SME and enterprise shippers in Thailand, Indonesia, and Philippines; app-based truck booking with in-platform driver background checks and vehicle inspection at onboarding. Total funding $84.5M (Series C).(21)
- Primary user: Shipper (SME and enterprise)
- Business model: Platform commission.
- Geography: Bangkok HQ; Thailand, Indonesia, Philippines.
- SEA presence: Yes — three-country SEA footprint.
- Risk-feature presence: Driver background screening and vehicle inspection embedded in onboarding; no per-load insurance or fraud-signal feature; no public carrier performance scoring available to shipper.

**Logivan (Vietnam)**
- What it does: Vietnam's freight-matching platform connecting shippers with truck owners; real-time load matching for domestic Vietnam freight; basic carrier verification at registration.
- Primary user: Shipper, importer-exporter (Vietnam)
- Business model: Commission on freight; raised $5.5M.
- Geography: Vietnam only.
- SEA presence: Vietnam only.
- Risk-feature presence: Basic platform registration verification; no risk scoring, no insurance-at-tender, no fraud detection.

**GoGoX (acquired by DiDi, July 2025)**
- What it does: App-based van and truck delivery/logistics platform; listed on HKEX; acquired by DiDi July 2025. Operates in Hong Kong, Singapore, mainland China, Taiwan, South Korea, India.
- Primary user: SME shipper, last-mile logistics
- Business model: Platform commission.
- Geography: HK-primary; Singapore; China; not Indonesia/Thailand/Vietnam.
- SEA presence: Singapore only (limited to city-logistics scale, not long-haul freight).
- Risk-feature presence: No documented freight procurement risk features; consumer-grade platform without enterprise carrier-scoring or insurance-at-tender.

**Quincus (Singapore)**
- What it does: Enterprise SaaS for logistics orchestration; Multi-Modal Engine optimizes shipment allocation across carrier networks; Control Tower provides AI-driven visibility and exception management; serves airlines, e-commerce, logistics providers.
- Primary user: Large logistics provider, airline, e-commerce operator
- Business model: SaaS enterprise subscription.
- Geography: Singapore HQ; global claims (APAC focus).
- SEA presence: Yes — Singapore HQ; APAC deployments.
- Risk-feature presence: Shipment optimization and exception management (delay/disruption mitigation); not a freight procurement or carrier fraud-risk tool. Risk features are supply chain resilience (rerouting, disruption alerts), not carrier identity or liability allocation.

**Data gap — SEA:** No SEA platform offers (a) per-load carrier risk scoring, (b) insurance-at-tender, or (c) tendering-fraud detection. SEA freight procurement below the multinational-shipper tier remains informal: phone, email, and WhatsApp negotiation with carriers or brokers, with carrier selection based on relationship and price, not risk data. This is a structural market gap with no equivalent to US spot-market risk tooling.(22)

---

## Market Sizing

| Metric | Value | Year | Confidence | Sources |
|--------|-------|------|------------|---------|
| Global TMS market size | $15.92B | 2024 | Medium — MarketsandMarkets; cross-check with Grand View Research ($16.8B 2024) shows directional consistency but definitional variance | (23)(24) |
| Global TMS market projected size | $37.04B | 2030 | Low — forward projection; CAGR 14.9% | (23) |
| Global freight procurement software market | $1.72B–$1.97B | 2024 | Low — DataIntelo/GrowthMarketReports; narrow category, low analyst coverage; cross-validation needed | (25) |
| US 3PL gross revenue (all segments) | $307.9B | 2024 | High — Armstrong & Associates primary research; industry standard source | (3) |
| US 3PL DTM segment (freight brokerage + intermodal + managed transport) | $128.3B | 2025 | High — Armstrong & Associates | (3) |
| Transporeon freight procurement platform revenue | ~€190M (~$207M) | 2023 | High — disclosed in Trimble acquisition filings; 25% YoY growth; ~80% gross margin | (11) |
| Emerge platform cumulative freight procured | >$6B | 2024 | Medium — company-stated; not audited | (12) |
| Uber Freight full-year revenue | ~$5.17B | 2024 | High — Uber SEC 8-K quarterly filings; note: gross brokered revenue, not net | (15) |
| Flexport revenue | $2.1B | 2024 | Medium — Sacra research citing company sources; not audited filing | (26) |
| E2open total annual revenue | ~$635M | FY2024 (ending Feb 2024) | High — SEC 8-K filing | (8) |
| Strategic cargo theft growth rate (2022–2024) | ~1,500% increase | 2024 | High — CargoNet 2024 annual report + BSI/TT Club April 2025 report (fictitious pickups: 66/yr average 2012–2022 → 576 in 2023) | (1)(2) |
| Strategic theft as % of US cargo theft incidents | 18% | 2024 | High — BSI/TT Club 2024 Cargo Theft Report (April 2025 publication) | (2) |

**Data gap — spot market theft premium:** The assertion that spot loads carry a "3x theft rate" versus contracted lanes (referenced in stage definition) could not be confirmed in any named primary source (CargoNet, BSI/TT Club, ATRI). CargoNet 2024 annual report does not break down theft by spot vs. contract channel. [ASSUMED-4]: Spot-market loads are materially more theft-exposed than contracted lanes because the anonymity of the transaction and shorter carrier relationships reduce fraud detection — to validate: request from CargoNet or BSI whether their incident database codes loads as spot vs. contract; if not coded, this is a known data gap requiring primary field research with cargo insurers.

**Data gap — freight procurement software TAM separately from TMS:** The $1.72B–$1.97B figures for "freight procurement software" are from tier-2 market research firms (DataIntelo, GrowthMarketReports) and are likely too narrow (excludes TMS procurement modules) or poorly defined. No Gartner or Armstrong & Associates figure isolates procurement-only software TAM. The Transporeon revenue (~$207M) is a better calibration point for pure-play procurement platform scale.

---

## Geography & SEA Presence Matrix

| Solution Category | US Maturity | EU Maturity | SEA Presence | SEA Risk-Feature Coverage |
|---|---|---|---|---|
| Enterprise TMS / shipper-side (Oracle, SAP, Blue Yonder) | High | High | Partial (enterprise only) | Low — no FMCSA/fraud signal integration; carrier risk management internal |
| 3PL/broker TMS (McLeod, Aljex, Revenova) | High | Low | None (Aljex via Descartes infrastructure only) | Low — US carrier data dependent |
| Freight procurement platforms (Transporeon, Emerge, Loadsmart) | Medium (Loadsmart, Emerge) | High (Transporeon) | None | None |
| Spot-market load boards (DAT, Truckstop, Coyote) | High | Low | None | None |
| Carrier risk scoring (project44/CarrierAssure, FourKites) | High | Medium | Partial (visibility; carrier scoring not applicable) | Very Low — FMCSA-data-dependent scoring |
| Insurance-at-tender (Loadsure, Parsyl) | Medium (Loadsure US) | Low | Parsyl APAC cold-chain only | Very Low — road freight not covered |
| 3PL portals (K+N, DHL, Maersk, DSV) | High | High | Yes (enterprise shippers only) | Low — carrier risk absorbed internally, not visible |
| SEA freight platforms (Kargo, Deliveree, Logivan, GoGoX) | None | None | Yes — but limited to own carrier networks | Very Low — no independent risk scoring |

---

## Preliminary Pain Points at This Stage

1. **Carrier selection at the load level is decoupled from real-time risk signals.** Neither McLeod PowerBroker, Descartes Aljex, Revenova, nor any spot-market load board surfaces FMCSA CSA score, ELD compliance status, or fraud-risk index inline at the moment a dispatcher clicks "assign carrier." Carrier data requires a separate lookup in Highway, Carrier411, or SaferWatch — a workflow break that mid-market brokers routinely skip under dispatch time pressure.

2. **Spot-market tendering has no structural fraud-deterrent at the rate confirmation step.** Fictitious pickups surged from 66/year (2012–2022 baseline) to 576 in 2023.(1) The fraudulent actor receives a rate confirmation document and executes a pickup — the only check is whether the dispatcher recognizes a fraud signal before physically releasing the cargo. Transfix Shield's RateCon QR-code authentication and Highway's identity registry are the only documented solutions at this step; neither is default behavior on DAT or Truckstop.

3. **Spot-market platforms have added fraud features reactively, not architecturally.** DAT and Truckstop added fraud reporting, load lock, and risk scoring after the 2022–2023 double-brokering crisis. These are add-on modules, not structural controls. A fraudster with a newly registered but legitimate FMCSA authority can still book loads on both platforms with a low-risk score during the first weeks of operation.

4. **Contract and liability allocation is not automated or standardized at tender.** BMC-32 broker bond requirements ($75,000 as of January 2023 per FMCSA), contingent cargo coverage requirements, and CGL endorsements exist on paper but are rarely validated at the moment of individual load tendering. TMS platforms do not verify that the carrier's BMC-32 bond is current or that the load's cargo class and value fall within the carrier's active coverage limits before tender confirmation.

5. **SEA freight procurement is predominantly informal below the multinational tier.** No SEA-native platform offers per-load carrier risk scoring, insurance-at-tender, or tendering-fraud detection. Procurement for the majority of intra-SEA road freight is conducted via phone, email, and WhatsApp, with carrier selection based on price and relationship — not safety, authority status, or insurance currency. This leaves mid-market SEA shippers with near-zero structured risk visibility at the moment of carrier assignment.(22)

6. **Insurance-at-tender is rarely automated, creating coverage gaps when load mix exceeds policy parameters.** Standard annual cargo policies have per-shipment value limits and cargo-class restrictions. A shipper tendering an electronics load above their per-conveyance limit, or a temperature-sensitive load outside their policy's commodity list, creates a coverage gap that neither the shipper nor the broker detects at tender time. Loadsure and Parsyl address this per-load, but adoption in TMS workflows is early-stage and US-centric.

7. **3PL procurement portals lock shippers into opacity.** When a shipper uses myKN, DHL MySupplyChain, or Maersk SCM, carrier selection and risk management are fully internal to the 3PL. The shipper has no visibility into which carrier is assigned, what that carrier's compliance status is, or whether the 3PL's internal vetting covers the risk dimensions the shipper cares about (cargo theft, double brokering, ELD compliance). This information asymmetry means enterprise shippers cannot independently verify their risk exposure on 3PL-managed lanes.

---

## Sources for This Stage

(1) CargoNet 2024 Annual Theft Trends — Verisk CargoNet. https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/ ; also: Fictitious pickup surge figure (66/yr → 576 in 2023) from truckinginfo.com CargoNet coverage: https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking

(2) BSI Consulting and TT Club 2024 Cargo Theft Report, April 2025. Strategic theft = 18% of all US incidents. https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via cache/markitdown). Also: strategic theft grew ~1,500% from 2022–2024, per: https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking

(3) Armstrong & Associates — U.S. 3PL Market Size Estimates. US 3PL gross revenue $307.9B in 2024; DTM segment $128.3B in 2025. https://www.3plogistics.com/3pl-market-info-resources/3pl-market-information/us-3pl-market-size-estimates/ ; Also: Logistics Management coverage: https://www.logisticsmgmt.com/article/u.s_3pl_market_rebounded_in_2024_says_new_armstrong_associates_report

(4) Oracle FY2024 Cloud Applications revenue — Oracle Investor Relations. Oracle does not separately disclose OTM TMS segment revenue. https://investor.oracle.com/investor-news/news-details/2024/Oracle-Fiscal-Year-2024-Financial-Results/default.aspx

(5) Gartner Magic Quadrant for Transportation Management Systems 2024 — Leaders: Oracle (17th year), SAP (10th year), E2open, Manhattan, Blue Yonder. Summary via Oracle PR: https://www.oracle.com/news/announcement/oracle-named-a-leader-in-gartner-mq-transportation-management-systems-2024-04-10/ ; SAP: https://news.sap.com/2024/04/sap-named-a-leader-2024-gartner-magic-quadrant-for-transportation-management-systems/ ; E2open: https://www.e2open.com/news/press-releases/e2open-again-positioned-as-a-leader-in-2024-gartner-magic-quadrant-for-transportation-management-systems/ ; Summary analysis: https://solutionsreview.com/enterprise-resource-planning/whats-changed-2024-gartner-magic-quadrant-for-transportation-management-systems/

(6) SAP Ariba market share — AppsRunTheWorld (29.1% procurement software market share). https://www.appsruntheworld.com/top-10-procurement-software-vendors-and-market-forecast/

(7) WiseTech Global acquires E2open — $2.1B enterprise value, announced May 2025. https://www.wisetechglobal.com/news/wisetech-global-announces-strategic-acquisition-of-e2open/ ; https://www.supplychainbrain.com/articles/41857-wisetech-buys-e2open-for-21b-in-its-biggest-deal

(8) E2open FY2024 revenue — SEC Form 8-K. https://www.sec.gov/Archives/edgar/data/0001800347/000095017024003353/etwo-ex99_1.htm

(9) McLeod Software customer count — DigitalPermitBook.com analysis. https://www.digitalpermitbook.com/post/why-is-mcleod-trucking-software-still-the-most-popular-tms-why-do-enterprise-carriers-choose-them

(10) Descartes Systems Group FY2025 revenue (CAD $642M, year ending Jan 31, 2025) — Descartes Investor Relations. https://www.descartes.com/resources/news ; Descartes TSX/NASDAQ: DSGX.

(11) Trimble completes Transporeon acquisition — April 3, 2023; €1.88B (~$1.99B USD) all-cash; Transporeon 2023 revenue €190M (~$207M USD), 25% YoY growth, ~80% gross margin, ~30% adj. EBITDA; 150,000+ carriers, 1,400 shippers, €48B freight spend. https://investor.trimble.com/news/news-details/2023/Trimble-Completes-Transporeon-Acquisition-04-03-2023/default.aspx ; https://www.prnewswire.com/news-releases/trimble-completes-transporeon-acquisition-301788152.html

(12) Emerge Series B $130M (Sept 2021, 9Yards Capital + Tiger Global); total funding $150M+; 2021 gross revenue ~$200M; 35,000+ marketplace carriers; $6B+ freight procured on platform. FreightWaves: https://www.freightwaves.com/news/emerge-raises-130m-series-b-to-scale-digital-freight-marketplace ; Company: https://www.emergemarket.com/

(13) Loadsmart — 30% of Fortune 100 shippers claim; total funding $346M–$384M (BlackRock, SoftBank LatAm, TFI, Maersk, Ports America, CSX). https://loadsmart.com/about/ ; Series D PR: https://www.prnewswire.com/news-releases/loadsmart-raises-200-million-in-series-d-financing-reaching-1-3-billion-valuation-301472530.html

(14) Loadsmart Series D — $200M, $1.3B valuation, Feb 2022. https://www.prnewswire.com/news-releases/loadsmart-raises-200-million-in-series-d-financing-reaching-1-3-billion-valuation-301472530.html

(15) Uber Freight 2024 revenue — Uber Technologies SEC filings. Q1: $1,284M; Q2: $1,272M; Q3: $1,308M; Q4: $1,307M (from Q4 2024 press release); FY2024 total ~$5.17B (gross brokered revenue). Uber Q4 2024 press release: https://investor.uber.com/news-events/news/press-release-details/2025/Uber-Announces-Results-for-Fourth-Quarter-and-Full-Year-2024/default.aspx ; Q3 8-K: https://www.sec.gov/Archives/edgar/data/0001543151/000154315124000033/uberq324earningspressrelea.htm

(16) DAT One load board volume — $126B+ annual freight matched; 722,500+ daily loads; $1T+ transaction database. DAT product page: https://www.dat.com/one

(17) Truckstop Risk Factors — FreightWaves 2025 Fraud Fighter Award; 57% fraud reduction reported. FreightWaves coverage: https://www.freightwaves.com/news/truckstops-risk-factors-simplify-broker-decisioning-with-ai-driven-insights ; product: https://truckstop.com/product/risk-factors/

(18) project44 Intelligent TMS + CarrierAssure — 4.1% cost reduction, 17% OTP improvement, 22% billing accuracy; 250,000+ carriers connected; $820M+ raised. PR Newswire: https://www.prnewswire.com/news-releases/project44-unveils-intelligent-tms-a-new-era-of-agile-ai-driven-freight-management-for-modern-supply-chains-302532754.html ; CarrierAssure partnership: https://www.carrierassure.com/partnership/project44

(19) Parsyl Series C $20M (Jan 2025, Lightsmith Group lead); total ~$66M raised; parametric cargo insurance; vaccine and perishable supply chains. https://www.parsyl.com/media/parsyl-secures-series-c-funding ; https://fintech.global/2025/01/09/cargo-insurance-provider-parsyl-secures-20m-in-series-c-funding/

(20) Kargo Technologies acquires TheLorry (Malaysia) — all-stock deal, 2024; Kargo Nexus TMS; Teleport/AirAsia and AC Ventures investors; Series B July 2024. https://www.dealstreetasia.com/stories/indonesia-kargo-funding-ac-ventures-405850 ; https://logistics.asia/teleport-invests-in-indonesias-kargo-technologies/

(21) Deliveree total funding $84.5M (Series C); 100,000+ commercial trucks in network; Indonesia, Philippines, Thailand. Crunchbase: https://www.crunchbase.com/organization/deliveree

(22) SEA informal procurement assessment — gap documented based on absence of any SEA freight procurement risk-tooling product across all searches; consistent with Stage 1 finding that no standalone carrier vetting SaaS exists for SEA. See also Stage 1 ASSUMED-2.

(23) MarketsandMarkets TMS market — $15.92B in 2024; $37.04B by 2030; CAGR 14.9%; North America 33.7% share; Asia Pacific fastest-growing. https://www.marketsandmarkets.com/Market-Reports/transportation-management-market-232446179.html

(24) Grand View Research TMS market — $16.8B in 2024 (consistent directional cross-check with MarketsandMarkets). https://www.grandviewresearch.com/industry-analysis/transportation-management-systems-market

(25) DataIntelo / GrowthMarketReports freight procurement software market — $1.72B–$1.97B in 2024; 10.2%–10.8% CAGR to 2033. https://dataintelo.com/report/freight-procurement-software-market ; https://growthmarketreports.com/report/freight-procurement-software-market [Note: Low-tier sources; confidence Low; use Transporeon revenue as better calibration]

(26) Flexport $2.1B revenue in 2024 (31% YoY growth from $1.6B in 2023); projected profitable 2025. Sacra research: https://sacra.com/research/flexport-at-2-1b-revenue/

(27) Transfix sold brokerage to NFI in June 2024; pivoted to TMS/SaaS offering; partnership with Highway for carrier vetting; launched Transfix Shield (RateCon QR-code fraud deterrent). https://www.truckinginfo.com/news/transfix-sells-brokerage-business-to-nfi-pivots-to-tms-offering ; https://highway.com/press-releases/transfix-announces-partnership-with-highway-to-enhance-carrier-platform

(28) DSV acquires DB Schenker — September 2024; ~$15B. https://www.dsv.com/en/about-dsv/press-and-news/2024/09/dsv-completes-acquisition-of-db-schenker

---

## Assumptions to Validate

[ASSUMED-1]: Uber Freight's Broker Access product applies full carrier vetting criteria (FMCSA authority + insurance confirmed), not a lighter-touch onboarding.
- to validate: Request Broker Access product documentation from Uber Freight; confirm carrier qualification standard vs. Uber Freight's core brokerage; ask whether carriers appearing in Broker Access capacity have passed the same fraud-risk screening as direct Uber Freight dispatch.

[ASSUMED-2]: K+N myKN and equivalent 3PL portals expose no carrier-identity, safety-score, or fraud-signal data to shipper users — shipper must trust 3PL's internal vetting without transparency.
- to validate: Request myKN product demonstration; confirm what carrier compliance data (if any) is visible to the shipper user; cross-check with DHL MySupplyChain and Maersk SCM portal demos.

[ASSUMED-3]: DSV/Schenker post-merger digital platform integration is still underway in H1 2026; risk features (if any) are a 2026+ roadmap item.
- to validate: Request myDSV product documentation from DSV enterprise sales; confirm whether any carrier-fraud or carrier-transparency features have been added post-merger and timeline.

[ASSUMED-4]: Spot-market loads are materially more theft-exposed than contracted lanes — the "3x theft rate" claim in stage definition is directionally credible but not confirmed in any named primary source.
- to validate: Request from Verisk CargoNet and BSI whether their incident database codes loads by spot vs. contract channel; if not coded, commission primary research with three or more cargo insurers who could segment claims by procurement channel.

[ASSUMED-5]: McLeod PowerBroker, Revenova, and standalone broker TMS platforms do not surface FMCSA CSA scores or Highway fraud-index data inline at the carrier assignment step — requiring a separate browser lookup.
- to validate: Request product demos from McLeod and Revenova focused specifically on the carrier assignment workflow; confirm whether any real-time fraud-risk or CSA data is displayed before the dispatcher confirms carrier assignment.
