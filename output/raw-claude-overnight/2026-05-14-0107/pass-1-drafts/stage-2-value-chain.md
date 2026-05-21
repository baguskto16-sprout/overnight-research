# Stage 2: TMS, Dispatch & Freight Orchestration Solutions
## Worldwide Solution-Landscape Scan — Logistics Risk Management
*Research date: 2026-05-14 | Pass 1 draft*

---

## 1. Stage Definition & Boundaries

**What this solution category covers:**

TMS, dispatch, and freight orchestration solutions are software platforms that sit between pre-booking counterparty qualification (Stage 1) and in-transit physical security/monitoring (Stages 3–4). They perform the core operational act: assigning a load to a carrier, committing freight spend, and initiating the execution chain. This is the stage where counterparty risk crystallizes from a probability into a specific financial exposure — when a rate confirmation is issued and a carrier is dispatched, the broker or shipper has legally committed to pay, regardless of whether the carrier performs.

**Scope boundary — what counts:**

- Shipper-side TMS: route planning, mode selection, carrier tendering, contract management, multi-leg orchestration, freight audit, settlement.
- Broker/3PL TMS: load board, capacity matching, dispatch, settlement, contracted vs. spot management, customer portal.
- Digital freight marketplaces: load-matching, dynamic pricing, carrier app dispatch, direct booking.
- Freight procurement modules: RFP tooling, rate management, contract enforcement, volume allocation.
- Embedded risk features within TMS: counter-party risk scoring at dispatch, double-broker prevention, fraud detection at the booking event, exception management, escalation workflows.

**Where Stage 2 ends:**

- Stage 3 begins when the carrier has been dispatched and execution monitoring starts: ELD/GPS tracking, driver communication, hours-of-service compliance. Some platforms (Trimble, Omnitracs) span both.
- Stage 4 begins when physical security devices (seals, locks, cargo sensors) take over from software dispatch.
- Stage 1 (carrier vetting) feeds into Stage 2 as a prerequisite: Highway, RMIS, MyCarrierPortal outputs flow into TMS approved-carrier lists and dispatch queues. Stage 2 does not re-document those tools.

**Risk function of this stage:**

Booking is where counter-party risk crystallizes into a load assignment. The act of tendering a load to a carrier MC number generates a legally binding payment obligation. Double-brokering schemes operate almost exclusively at this layer: a fraudulent carrier accepts a tender, then re-tenders the load to a second carrier without the original broker's knowledge, capturing a spread while leaving the shipper exposed to a carrier they never vetted. Fraud attempt rates on digital freight platforms increased from 0.53% of loads in 2023 to 1.66% in 2024 — a 213% increase. (1)

---

## 2. Activities Performed by These Solutions (with Risk-Management Implication)

1. **Route planning and mode optimization** — Selects optimal carrier mode (FTL, LTL, intermodal, air, ocean) and lane combination. Risk implication: incorrect mode selection increases transit time and exposure to handoff points where cargo theft concentrates.

2. **Carrier tendering and contract execution** — Issues rate confirmation to selected carrier; captures digital acceptance. Risk implication: this is the primary fraud injection point — automated tendering to MC numbers without identity re-verification opens double-brokering vectors; platforms with embedded carrier identity checks (Highway Load Lock, Uber Freight fraud controls) reduce but do not eliminate exposure.

3. **Load board and capacity matching** — Posts available loads to carrier network; matches with available capacity via spot or contract tender. Risk implication: spot market loads have higher fraud rate than contracted freight because ad-hoc carriers bypass prior vetting.

4. **Dispatch and dock scheduling** — Schedules pickup/delivery appointments; notifies carrier and shipper warehouse. Risk implication: phantom pickup attempts (fraudster showing up to collect a load using a spoofed confirmation) exploit weak dock verification procedures.

5. **Multi-leg orchestration** — Coordinates sequential handoffs across dray, linehaul, transload, and final-mile legs. Risk implication: each handoff is a custody transfer event; chains with undocumented intermediate parties are primary cargo theft scenarios.

6. **EDI/API integration with carrier and ERP systems** — Transmits load tenders, tracking updates, and proof-of-delivery via EDI 204/214/990 or REST/JSON APIs. Risk implication: EDI translation errors or API field mismatches create silent discrepancies between TMS state and actual shipment state, delaying fraud detection.

7. **Freight audit and invoice management** — Validates carrier invoices against contracted rates; flags accessorial disputes. Risk implication: overbilling and duplicate invoice fraud concentrate here; freight audit automation reduces but requires correct rate-data quality.

8. **Exception management and escalation workflows** — Surfaces late pickups, missed deliveries, carrier check-call failures. Risk implication: the first signal of cargo theft or fraud is typically a missed check-call; platforms that auto-escalate anomalies cut response time.

9. **Settlement and payment disbursement** — Releases payment to carriers; integrates with factoring companies or payment networks. Risk implication: payment platforms (TriumphPay, RealPage) add KYC layers at payment release; TMS-payment integration quality determines how many fraudulent carriers actually get paid before detection.

---

## 3. Sub-Category Map

### Sub-category 1: Enterprise Shipper TMS

**Definition:** Full-suite TMS deployed by large shippers (manufacturers, retailers, CPG companies) to manage their transportation spend across all modes and geographies. Typically integrates deeply with SAP or Oracle ERP.

**Business model archetype:** Annual enterprise license + professional services, transitioning to SaaS/subscription. Pricing based on freight spend tiers (SAP TM) or user/module tiers.

**Differentiator:** Breadth of mode coverage, ERP integration depth, multi-region compliance (customs, taxes), and multi-modal optimization quality.

**Representative vendors:** SAP TM, Oracle OTM, Manhattan Active TM, Blue Yonder TMS, e2open (now WiseTech), Coupa Supply Chain.

---

### Sub-category 2: 3PL / Freight Broker TMS

**Definition:** TMS purpose-built for freight brokers and third-party logistics providers. Core features: load management, carrier dispatch, customer portal, EDI, billing, and carrier compliance checks.

**Business model archetype:** Perpetual license (legacy) or SaaS subscription tiered by load volume or user count.

**Differentiator:** Speed of load booking, carrier settlement automation, EDI breadth, carrier compliance integration (RMIS/Highway).

**Representative vendors:** McLeod LoadMaster / PowerBroker, Descartes Aljex, MercuryGate (broker mode), Rose Rocket, Tailwind TMS.

---

### Sub-category 3: Carrier-Side TMS / Dispatch

**Definition:** TMS for asset-based trucking companies and fleets. Manages order-to-cash for carriers: load acceptance, driver assignment, dispatch, HOS compliance linkage, fuel management, maintenance, driver payroll.

**Business model archetype:** Perpetual license or SaaS; often bundled with ELD hardware.

**Differentiator:** Driver management depth, maintenance module, integration with telematics/ELD.

**Representative vendors:** Trimble TMW.Suite, McLeod LoadMaster (carrier mode), Omnitracs One (Solera), Rose Rocket, Sylectus.

---

### Sub-category 4: Digital Freight Marketplaces / Brokerages

**Definition:** Tech-forward platforms that operate as licensed freight brokers, using algorithms and apps to match shippers with carriers. Revenue comes from the spread between shipper rate and carrier pay, or from subscription/SaaS fees.

**Business model archetype:** Take rate (margin on gross bookings), ranging from 10–20% for spot FTL to 5–8% for contracted lanes. Hybrid models add SaaS TMS fee.

**Differentiator:** Algorithmic pricing, carrier app UX, booking speed, fraud controls, spot-market coverage.

**Representative vendors (US):** Uber Freight, Loadsmart, Convoy (defunct 2023).
**Representative vendors (Europe):** Sennder, Forto.
**Representative vendors (Asia):** Full Truck Alliance / Manbang, Lalamove (Lalatech), GoGoX, Deliveree, Haulio, Kargo Technologies.

---

### Sub-category 5: Freight Procurement / Sourcing Software

**Definition:** Platforms that manage the structured RFP / e-tender process for freight contracts — shippers soliciting bids from carriers, comparing rates, allocating volume across primary/backup/spot carriers.

**Business model archetype:** SaaS subscription; sometimes % of savings realized.

**Differentiator:** Bid analytics, carrier network breadth, integration back into TMS execution.

**Representative vendors:** Transporeon (Trimble), Alpega Group (TenderEasy + Wtransnet), Cargobase, Coupa Sourcing, e2open Procurement.

---

### Sub-category 6: Multi-Leg Orchestration / Control-Tower Lite (TMS-embedded)

**Definition:** Orchestration and visibility layer embedded within TMS platforms — not standalone RTTVPs (Stage 4), but the planning/exception-management module within TMS that provides cross-mode, multi-leg shipment visibility.

**Differentiator from Stage 4:** These modules are operational TMS extensions, not independent visibility networks. They consume tracking data from carriers and telematics but the core product is execution management, not visibility.

**Representative vendors:** project44 Intelligent TMS, Blue Yonder Cloud TMS (45M monthly shipments), Uber Freight TMS Control Tower, e2open Global Trade Visibility (within TMS suite).

---

## 4. Representative Vendors — 20 Detailed Profiles

---

### 4.1 SAP Transportation Management (SAP TM)

- **HQ:** Walldorf, Germany | **Founded:** 1972 (TM module ~2007)
- **What it does:** Enterprise multi-modal TMS embedded in SAP S/4HANA supply chain suite, covering planning, tendering, execution, visibility, and freight settlement for large shippers.
- **Primary user:** Large enterprise shippers (manufacturing, retail, CPG).
- **Business model:** Annual SaaS subscription tiered by managed freight spend blocks; SAP TM licenses start at roughly 2,500,000 freight-spend-block increments. Professional services typically 2–4× license in year 1.
- **Pros:** (a) Native integration with SAP ERP eliminates data-translation costs for SAP shops; (b) multi-modal, multi-region, and customs compliance depth; (c) named a Leader in Nucleus Research 2024 TMS Value Matrix. (2)
- **Cons:** (a) Implementation timelines of 12–24 months are common; (b) non-SAP ERP integration requires costly middleware; (c) UI complexity drives end-user adoption failures cited in Gartner Peer Insights reviews. (3)
- **SEA presence:** YES — SAP SEA regional offices in Singapore, Malaysia, Thailand, Indonesia; customer base includes large manufacturers; SAP.com/sea resource pages localized. (4)
- **Approx. scale:** SAP holds ~10–15% of global enterprise TMS market share; Oracle and SAP combined lead the Leaders quadrant per Nucleus Research 2024. (2)

---

### 4.2 Oracle Transportation Management (Oracle OTM)

- **HQ:** Austin, Texas, USA | **Founded:** 1977 (OTM acquired from G-Log 2005)
- **What it does:** Cloud-native multi-modal TMS for enterprise shippers, with deep integration into Oracle SCM Cloud and Oracle Global Trade Management.
- **Primary user:** Large enterprise shippers across automotive, retail, oil & gas, high-tech.
- **Business model:** Cloud SaaS subscription; pricing disclosed at approximately $450/month at entry levels; enterprise deals typically $1M–$5M+ annually.
- **Pros:** (a) Named a TMS Leader by Gartner for the 17th consecutive time as of 2024; (b) broadest global trade management integration (GTM, customs, sanctions screening); (c) customer base spans General Motors, UPS, ArcelorMittal, Cisco, Starbucks. (5, 6)
- **Cons:** (a) High total cost of ownership; integration with non-Oracle ERP stacks costs $500K–$3M in custom development (7); (b) legacy OTM on-premise migration to cloud is a multi-year project; (c) user interface complexity reduces planner productivity in small shops.
- **SEA presence:** YES — Oracle has offices in Singapore, Malaysia, Thailand, Indonesia, Philippines; OTM is deployed by multinational manufacturers with SEA operations.
- **Approx. scale:** Oracle holds estimated >19% of global TMS market share; top-ranked vendor by customer count in Global Trade Management software per Apps Run The World. (8)

---

### 4.3 Manhattan Active Transportation Management (Manhattan Active TM)

- **HQ:** Atlanta, Georgia, USA | **Founded:** 1990
- **What it does:** Cloud-native, continuously updated TMS for enterprise shippers and 3PLs, tightly coupled with Manhattan's WMS — sold as part of the Active Supply Chain Platform.
- **Primary user:** Large enterprise shippers and 3PLs with complex omnichannel operations.
- **Business model:** Cloud SaaS subscription; 80% of TMS buyers in recent quarters also purchase Manhattan WMS; cross-sell intensive.
- **Pros:** (a) Cloud-native architecture (no version upgrades; continuous release); (b) FY2024 revenue $1.04B, 12% growth; cloud subscription $337M, 32% growth; (c) named Leader in 2026 Gartner Magic Quadrant for TMS. (9)
- **Cons:** (a) Price point favors large enterprises; (b) 18% YoY growth in professional services integration revenue signals high integration friction; (c) TMS module sold primarily as part of full-suite deal, not as standalone.
- **SEA presence:** PARTIAL — Manhattan serves 1,200+ customers in 75+ countries; SEA presence primarily via multinational customers (retailers, 3PLs) with regional offices in Singapore; no dedicated SEA TM implementation center. (9)
- **Approx. scale:** 1,200+ enterprise customers including American Eagle, Levi Strauss, US Foods; $1.04B total FY2024 revenue across all products. (9)

---

### 4.4 Blue Yonder Transportation Management System

- **HQ:** Scottsdale, Arizona, USA (subsidiary of Panasonic) | **Founded:** 1985 (acquired JDA 2020; acquired by Panasonic 2021 for $7.1B)
- **What it does:** AI-driven TMS covering FTL, LTL, ocean, air, intermodal; integrated with Blue Yonder supply chain planning suite.
- **Primary user:** Large enterprise shippers across retail, manufacturing, 3PL.
- **Business model:** SaaS subscription; pricing not publicly disclosed; enterprise deals significant; total cost of ownership routinely exceeds license due to implementation services.
- **Pros:** (a) 3,000+ global customers including 65 of top-100 retailers; (b) Cloud TMS grew from 10M to 45M monthly shipments in one year; (c) acquired One Network in May 2024 to strengthen network-effect orchestration. (10, 11)
- **Cons:** (a) Implementations run 12–24 months; buyers unable to absorb this timeline face a structural barrier; (b) integration costs for SAP S/4HANA + Blue Yonder TMS co-deployments significant; (c) Panasonic ownership creates questions about long-term independence. (7)
- **SEA presence:** YES — Blue Yonder has Asia Pacific operations, customer base in SEA through major retailers and 3PLs; Panasonic's Asia presence accelerates regional enterprise adoption.
- **Approx. scale:** 3,000+ customers; cloud TMS at 45M monthly shipments; $289M quarterly revenue (Q1 2023 baseline, growing ~11% per year). (11)

---

### 4.5 MercuryGate TMS (now Körber Supply Chain Software)

- **HQ:** Cary, North Carolina, USA | **Founded:** 2000 (acquired by Körber/KKR 2024)
- **What it does:** Multi-modal TMS serving shippers, 3PLs, brokers, and carriers; differentiated by rapid implementation and single-platform multi-modal breadth.
- **Primary user:** Mid-market and enterprise shippers, 3PLs, freight brokers.
- **Business model:** SaaS subscription; positioned in Challengers quadrant in 2024 Gartner Magic Quadrant. (12)
- **Pros:** (a) Managed $70B+ annual freight spend; 300,000+ daily logins from 80 countries (2018 figures; scale has grown since); (b) recognized challenger in 2024 Gartner MQ for TMS; (c) rapid implementation vs. SAP/Oracle.
- **Cons:** (a) Körber acquisition (2024) creates integration uncertainty; (b) broker-mode TMS competes with more specialized platforms (McLeod PowerBroker); (c) global trade capabilities less deep than Oracle OTM.
- **SEA presence:** PARTIAL — MercuryGate reported 80 countries of use; SEA presence through international shippers; no dedicated SEA office confirmed.
- **Approx. scale:** $70B+ managed freight spend; 80-country user base; Körber acquisition price undisclosed. (13)

---

### 4.6 McLeod LoadMaster / PowerBroker

- **HQ:** Birmingham, Alabama, USA | **Founded:** 1985
- **What it does:** Two-product TMS suite: LoadMaster for carriers (order-to-cash), PowerBroker for freight brokers (load management, carrier dispatch, customer portal, settlement).
- **Primary user:** Mid-to-large US asset carriers (LoadMaster); US freight brokers (PowerBroker).
- **Business model:** Perpetual license with annual maintenance, transitioning to SaaS; no public pricing; enterprise deployments.
- **Pros:** (a) Dominant in US mid-large carrier TMS; 354+ active customers; (b) deep integration with FreightWaves TRAC spot rates; 2024 v24.2 update includes Greenscreens.ai real-time pricing; (c) strong broker market share through PowerBroker — Shamrock Trading, R+L Carriers among named customers. (14)
- **Cons:** (a) Predominantly North America-focused; (b) on-premise legacy architecture remains common; (c) UI modernization lagging vs. cloud-native competitors.
- **SEA presence:** NO — product and customer base is North America-only.
- **Approx. scale:** 354+ customers (94.84% US-based); $2.7B+ in freight processed per year on Rose Rocket (competitor scale comparison). (14, 15)

---

### 4.7 Trimble TMW.Suite + Transporeon

- **HQ:** Westminster, Colorado, USA | **Founded:** 1978 (Transporeon acquired April 2023 for €1.88B)
- **What it does:** Two-division TMS operation: TMW.Suite serves North American asset carriers (fleets 20–15,000 vehicles); Transporeon serves European shipper procurement and carrier orchestration (145,000 carriers, 1,400 shippers, €48B managed freight). (16)
- **Primary user:** TMW.Suite — asset carriers, private fleets, 3PLs; Transporeon — European shippers/LSPs.
- **Business model:** TMW.Suite — perpetual/SaaS license; Transporeon — SaaS subscription (~€190M revenue in 2023 on ~25% growth). (16)
- **Pros:** (a) Transporeon: largest European freight procurement network; launched Freight Marketplace in September 2023 as neutral deal-making hub; (b) TMW.Suite cloud TMS Order Module launched Q4 2024; (c) combined Trimble platform expands TAM by ~$5B. (16)
- **Cons:** (a) TMW.Suite is on-premise-legacy in many deployments; (b) Transporeon/TMW integration roadmap is still maturing post-acquisition; (c) Europe-centric Transporeon with limited APAC footprint.
- **SEA presence:** PARTIAL — Transporeon noted presence in "developed markets across the Americas and Asia"; SEA coverage not primary. (16)
- **Approx. scale:** Transporeon: 145,000 carriers, 1,400 shippers, €48B freight spend, 25M+ transports annually; €190M revenue 2023. (16)

---

### 4.8 Descartes Aljex (+ MacroPoint integration)

- **HQ:** Waterloo, Ontario, Canada | **Founded:** 1981 (Aljex acquired by Descartes)
- **What it does:** Freight broker TMS (Aljex) tightly integrated with Descartes MacroPoint for real-time freight visibility; supports load lifecycle from order creation through settlement; 3M+ asset tracking network.
- **Primary user:** Freight brokers and 3PLs (North America).
- **Business model:** SaaS subscription; broker-specific pricing; Aljex alone serves ~400 customers, ~3M freight moves/year.
- **Pros:** (a) Named top cloud-based TMS provider by ARC Advisory Group 2024; (b) Aljex + MacroPoint integration delivers end-to-end broker workflow with embedded visibility; (c) MacroPoint FraudGuard 2.0 embedded fraud detection at booking layer. (17)
- **Cons:** (a) North America-centric with limited global mode support; (b) ~400 customers is small vs. SAP/Oracle scale; (c) Descartes multi-product complexity can create support fragmentation.
- **SEA presence:** PARTIAL — Descartes Systems Group has offices in Singapore and Hong Kong; Aljex broker TMS is US-focused.
- **Approx. scale:** ~400 Aljex broker customers; 3M+ freight moves/year; MacroPoint visibility network covers 3M+ assets. (17)

---

### 4.9 e2open Transportation Management (now WiseTech Global)

- **HQ:** Addison, Texas, USA (acquired by WiseTech Global, completed August 2025 for $2.1B enterprise value) | **Founded:** 2000
- **What it does:** Connected supply chain platform including TMS, global trade management, B2B network, and supply chain collaboration; connects 500,000+ manufacturing, logistics, and distribution partners.
- **Primary user:** Large enterprise shippers, 3PLs, freight forwarders.
- **Business model:** SaaS subscription; $132.9M Q1 2025 subscription revenue; full-year run-rate ~$530M+.
- **Pros:** (a) Named a Leader in 2024 Gartner Magic Quadrant for TMS (second consecutive year); (b) broadest multi-enterprise network (500,000+ partners, 18B+ transactions/year); (c) WiseTech acquisition adds CargoWise freight forwarding depth. (5, 18)
- **Cons:** (a) Post-acquisition integration uncertainty; (b) complexity of multi-product suite drives long onboarding; (c) ACCC required WiseTech to divest Expedient as condition of approval.
- **SEA presence:** YES — e2open/WiseTech has customers and partners across APAC; WiseTech's CargoWise already has strong SEA forwarding presence.
- **Approx. scale:** 500,000+ network partners; 18B+ annual transactions; $2.1B enterprise value at acquisition. (18)

---

### 4.10 Alpega Group (TenderEasy + Wtransnet + Teleroute + inet)

- **HQ:** Brussels, Belgium | **Founded:** 2017 (consolidation of Transwide, inet, Teleroute, TenderEasy, Wtransnet)
- **What it does:** European logistics SaaS group combining TMS (Alpega TMS / inet / Transwide), freight exchanges (Teleroute, Wtransnet, Bursa, 123cargo), and procurement tooling (TenderEasy).
- **Primary user:** European shippers, carriers, 3PLs.
- **Business model:** SaaS subscription; freight exchange per-transaction or membership fees.
- **Pros:** (a) 70,000+ carrier network across European freight exchanges; (b) TenderEasy enables digital e-tendering from shippers to carrier community; (c) recognized as Challenger in 2024 Gartner Magic Quadrant for TMS. (12, 19)
- **Cons:** (a) Fragmented multi-brand portfolio creates product inconsistency; (b) weaker outside of Western and Central Europe; (c) limited non-road mode coverage.
- **SEA presence:** NO — European-centric.
- **Approx. scale:** 70,000+ carriers in freight exchange network; specific ARR not publicly disclosed.

---

### 4.11 Uber Freight (Freight Power TMS)

- **HQ:** Chicago, Illinois, USA | **Founded:** 2017
- **What it does:** Digital freight brokerage + TMS suite (Freight Power) for shippers; also offers Broker Access (capacity-as-a-service for other brokers); embedded fraud prevention; Gartner Challenger TMS.
- **Primary user:** Mid-market to enterprise shippers (TMS); freight brokers (Broker Access).
- **Business model:** Revenue on gross bookings (broker spread); TMS licensed separately on SaaS basis; Freight segment Gross Bookings $1.28B in FY2024 at (1.7%) EBITDA margin. (20)
- **Pros:** (a) Challenger in 2024 Gartner MQ; above-average customer retention; (b) 60%+ fraud reduction in its own network since 2023; (c) Broker Access launched 2024 — opens carrier network to third-party brokers. (20, 1)
- **Cons:** (a) EBITDA loss $(22)M FY2024; profitability elusive in freight downturn; (b) FMCSA forced transparency on Uber Freight after double-brokering scam exposed on its network (late 2023); (c) revenue flat YoY 2024 despite volume growth — rate compression. (20, 21)
- **SEA presence:** NO — US domestic freight only.
- **Approx. scale:** $1.28B gross bookings FY2024; 85% of revenue automated (from Loadsmart comparison context). (20)

---

### 4.12 Loadsmart (ShipperGuide TMS)

- **HQ:** Chicago, Illinois, USA | **Founded:** 2014
- **What it does:** Digital freight brokerage + ShipperGuide TMS + OpenDock dock scheduling; 85% of revenue is quoted and booked with full automation; reached operating profitability Q3 2024.
- **Primary user:** Mid-market US shippers (TMS); shippers using spot + contract freight brokerage.
- **Business model:** Freight brokerage spread (~75% of revenue); SaaS TMS + dock scheduling (~25%); $1.3B valuation (last known round).
- **Pros:** (a) Operating profitability achieved Q3 2024; on track for all-time record gross profit 2024; (b) 85% automation rate in load quoting/booking; (c) capital-efficient growth vs. Convoy blitzscaling model. (22)
- **Cons:** (a) Not publicly traded; revenue not disclosed; (b) concentrated in US truckload market; (c) dock scheduling (OpenDock) is ancillary — TMS competes with McLeod and MercuryGate on depth.
- **SEA presence:** NO — US-focused.
- **Approx. scale:** $1.3B valuation; 85% automation; operating profitable Q3 2024. (22)

---

### 4.13 Convoy (defunct — historical lesson)

- **HQ:** Seattle, Washington, USA | **Founded:** 2015 | **Closed:** October 2023
- **What it does (past tense):** Digital FTL freight marketplace; algorithmic load-matching; asset-light broker model.
- **Primary user (past):** Small-to-mid shippers; independent carriers.
- **Business model:** Broker spread + SaaS features; raised $1B+; valued at $3.8B peak; shut down October 19, 2023.
- **Why it failed (evidenced):** (a) Freight market recession 2022–2023 collapsed spot rates 30–40%; (b) growth-at-all-costs model burned capital without achieving margin; (c) technology-first belief that algorithms could replace experienced brokers; over-reliance on unattractive loads to build volume; (d) carriers owed thousands of dollars at shutdown. (23, 24)
- **Risk signals that were missed:** Absence of contribution margin tracking per load; no floor on load quality accepted; capital markets dependency without profitability runway; no experience buffer in the human brokerage team. (23)
- **Lesson for risk-management buyers:** Digital freight platforms with no path to profitability are carrier-side counterparty risks — a platform shutdown leaves carriers unpaid and shippers scrambling for coverage at peak season.
- **SEA presence:** N/A — US only.

---

### 4.14 Sennder (Europe's leading digital freight broker)

- **HQ:** Berlin, Germany | **Founded:** 2015
- **What it does:** Digital road freight forwarder / full-truck-load digital marketplace in Europe; acquired C.H. Robinson's European Surface Transportation in 2024 to combine to €1.4B revenue.
- **Primary user:** European shippers (FTL road freight).
- **Business model:** Brokerage spread (digital); ~€700M standalone revenue pre-acquisition; acquiring C.H. Robinson Europe doubles scale.
- **Pros:** (a) €1.4B combined revenue post-acquisition — top-5 FTL player in Europe; (b) 40,000+ deployed trucks; 120,000 vehicle access; 1,700 employees across 20+ European locations; (c) technology-enabled but with experienced human broker coverage. (25)
- **Cons:** (a) 2021 valuation >$1B; no public financials post-unicorn; (b) European FTL margins thin in freight recession; (c) limited multi-modal (road-only focus).
- **SEA presence:** NO — European-only.
- **Approx. scale:** €1.4B combined revenue (post-acquisition announcement July 2024). (25)

---

### 4.15 Cargobase (Singapore-based TMS for enterprise shippers)

- **HQ:** Singapore | **Founded:** 2013
- **What it does:** TMS for enterprise shippers focused on spot-buy freight procurement automation across all modes; targets Fortune 500 manufacturers with complex spot-freight needs; SOC 2 Type II certified November 2024.
- **Primary user:** Enterprise shippers in automotive, electronics, semiconductor, fashion, oil & gas, aviation in 50+ countries.
- **Business model:** SaaS subscription; no public pricing; G2 ranked #6 of 184 TMS solutions globally; 273% reported growth. (26)
- **Pros:** (a) SEA-native: founded in Singapore, serves APAC clients with local presence; (b) builds "Autonomous TMS" positioning; (c) operates in 55 countries; Fortune 500 customers.
- **Cons:** (a) Focused on spot-freight procurement — limited depth in full multi-modal orchestration vs. SAP/Oracle; (b) small team; (c) no disclosed ARR or customer count.
- **SEA presence:** YES — Headquartered Singapore; serves APAC as primary market; Best Supply Chain Software at LogiSYM APAC 2023. (26)
- **Approx. scale:** 55-country footprint; Fortune 500 customer base; 273% growth claim (timeframe unspecified).

---

### 4.16 Haulio (Singapore — container haulage platform)

- **HQ:** Singapore | **Founded:** 2017
- **What it does:** SEA's container haulage platform connecting port logistics to first-mile trucking; digital dispatch for container trucks in Singapore and expanding to ASEAN.
- **Primary user:** Hauliers, 3PLs, beneficial cargo owners in Singapore/SEA.
- **Business model:** Platform marketplace fee on booked haulage jobs; $15M ARR as of October 2024 (down from $25M peak 2023). (27)
- **Pros:** (a) SEA-native; deep port-logistics integration in Singapore; (b) Series A led by Temasek-backed Heliconia Capital; PSA unboXed and ComfortDelGro participation; (c) BBTruck partnership December 2024 for supply chain technology integration.
- **Cons:** (a) Revenue declined from $25M (2023) to $15M (October 2024) — market compression; (b) small team (32 employees July 2024); (c) Singapore-port-centric; limited expansion outside first-mile container.
- **SEA presence:** YES — Singapore HQ; ASEAN expansion in progress. (27)
- **Approx. scale:** $15M ARR (October 2024); $7.9M total funding; Series A $5.75M 2021. (27)

---

### 4.17 Kargo Technologies (Indonesia — freight marketplace)

- **HQ:** Jakarta, Indonesia | **Founded:** 2018
- **What it does:** Indonesia-focused digital freight marketplace for FTL and LTL; app-based carrier booking with real-time tracking; acquired Malaysia's TheLorry in 2024 (all-stock deal) to expand SEA footprint.
- **Primary user:** Indonesian shippers; carrier operators across Indonesian archipelago.
- **Business model:** Marketplace commission on booked loads; additional SaaS features for enterprise shippers.
- **Pros:** (a) 636 employees as of July 2024; largest Indonesian digital freight platform; (b) acquired TheLorry (Malaysia) in 2024 — first cross-border SEA consolidation; (c) Series A $31M (Peak XV Partners, Tenaya Capital, East Ventures). (28)
- **Cons:** (a) Indonesia fragmentation risk — 90% of trucking companies have <5 trucks; (b) limited outside Indonesia/Malaysia; (c) revenue not disclosed; profitability path unclear.
- **SEA presence:** YES — Indonesia (primary market) + Malaysia (via TheLorry acquisition). (28)
- **Approx. scale:** 636 employees; $38.6M+ total funding; TheLorry acquisition extends to Malaysia.

---

### 4.18 Deliveree (Thailand / Indonesia / Philippines — FTL/LTL marketplace)

- **HQ:** Bangkok, Thailand | **Founded:** 2015
- **What it does:** On-demand and pre-scheduled FTL/LTL cargo booking across Thailand, Indonesia, Philippines; ~100,000 active trucks on platform; $30M equity raise March 2024.
- **Primary user:** B2B shippers across SEA manufacturing, FMCG, retail.
- **Business model:** Marketplace commission; GTV grew 3.2× in two years; targeting $100M+ GTV in 2024. (29)
- **Pros:** (a) 100,000 active commercial trucks — largest SEA trucking network on a single platform; (b) B2B pivot strategy reduces reliance on low-margin consumer delivery; (c) $109M total funding; $30M March 2024. (29)
- **Cons:** (a) Profitability not confirmed; (b) three-country footprint creates regulatory complexity; (c) fragmented driver retention challenge in SEA markets.
- **SEA presence:** YES — Thailand (HQ), Indonesia, Philippines. (29)
- **Approx. scale:** 100,000 active trucks; $109M total funding; $30M March 2024 equity.

---

### 4.19 GoGoX (Hong Kong / China / SEA)

- **HQ:** Hong Kong | **Founded:** 2013 | **Listed:** HKEX 2246 (IPO June 2022, raised HK$671M)
- **What it does:** Van-and-truck platform for intra-city and short-haul logistics; operates in 340+ cities across China, HK, Singapore, South Korea, India, Vietnam.
- **Primary user:** Merchants and B2B shippers for city logistics.
- **Business model:** Marketplace commission on delivered trips; revenue split ~50–70% from mainland China.
- **Pros:** (a) HKEX-listed, public financials available; (b) presence across 6 markets including Singapore and Vietnam; (c) 340+ cities in China. (30)
- **Cons:** (a) Market cap declined from HK$10.3B at IPO to ~HK$300M by January 2024 — 97% value erosion; (b) China-dependent; (c) Alibaba sell-off created market overhang. (30)
- **SEA presence:** YES — Singapore and Vietnam operations confirmed; South Korea and India also in portfolio.
- **Approx. scale:** 340+ cities; HK IPO raised $85.5M; 2021 revenue ~RMB 660M (~$90M). (30)

---

### 4.20 Full Truck Alliance (FTA / Manbang) — China

- **HQ:** Guiyang, China | **Founded:** 2017 (merger of Yunmanman + Huochebang) | **Listed:** NYSE YMM
- **What it does:** China's dominant digital freight marketplace; mobile app matching shippers with truck drivers for FTL and LTL across China; 197.2M fulfilled orders in 2024.
- **Primary user:** Chinese shippers; independent truck owner-operators.
- **Business model:** Freight listing fees + freight brokerage transaction fees; 33.2% revenue growth in 2024. (31)
- **Pros:** (a) FY2024 total net revenues RMB 11.24B ($1.54B USD); net income RMB 3.12B ($428M) — profitable and growing; (b) transaction service revenue surged 66.7% in 2024; (c) eyes Hong Kong dual-listing for 2025. (31)
- **Cons:** (a) China-only operations; subject to MIIT data localization requirements; (b) regulatory scrutiny (suspended from app stores briefly in 2021 over data practices); (c) limited international applicability as model.
- **SEA presence:** NO — China domestic only.
- **Approx. scale:** $1.54B USD revenue FY2024; 197.2M fulfilled orders; NYSE listed (YMM). (31)

---

### 4.21 Lalamove / Lalatech (Hong Kong / China / SEA / LATAM)

- **HQ:** Hong Kong | **Founded:** 2013 | **IPO status:** Lalatech (parent) pursuing HK IPO (relaunched 2025)
- **What it does:** On-demand delivery platform operating under Lalamove brand internationally and Huolala brand in mainland China; GTV of $11.1B in 2024; operations in 400+ cities across 14 markets including SEA.
- **Primary user:** Merchants, SMEs, B2B shippers for same-day/next-day intra-city and short-haul deliveries.
- **Business model:** Take rate on GTV; FY2024 revenue $1.59B; net profit $501M (23.5% growth); GTV growth 24%. (32)
- **Pros:** (a) $1.59B revenue; $501M net profit — rare profitable digital freight platform at scale; (b) 14 global markets; strong SEA presence including Singapore, Malaysia, Thailand, Philippines; (c) SEA + LATAM combined GTV expected $151.7B by 2029. (32)
- **Cons:** (a) Primarily intra-city delivery (not linehaul FTL); limited orchestration capabilities vs. enterprise TMS; (b) Bangkok Post reported profitability pressure for overseas units; (c) IPO process has been protracted.
- **SEA presence:** YES — Singapore, Malaysia, Thailand, Philippines, Vietnam, Hong Kong; 400+ cities across 14 markets. (32)
- **Approx. scale:** $1.59B revenue FY2024; 24% GTV growth; $11.1B GTV FY2024. (32)

---

### 4.22 project44 Intelligent TMS (TMS-embedded control tower)

- **HQ:** Chicago, Illinois, USA | **Founded:** 2014
- **What it does:** Launched Intelligent TMS in 2024 — multi-modal TMS with embedded visibility, AI freight procurement, order management (PO-to-shipment), and mini-bid capability; positioned as a Stage 2+3 platform.
- **Primary user:** Enterprise and mid-market shippers seeking unified TMS + visibility.
- **Business model:** SaaS subscription; part of project44 Movement Decision Intelligence Platform.
- **Pros:** (a) 4.1% transportation cost reduction, 17% on-time improvement reported by early adopters; (b) True multi-modal orchestration (FTL, LTL, ocean, air, parcel, drayage) from single interface; (c) AI Freight Procurement Agent launched 2025. (33)
- **Cons:** (a) New TMS product — established TMS players (SAP, Oracle, Blue Yonder) have years of customer implementation depth; (b) project44 known primarily as visibility platform (Stage 4), not proven TMS operator; (c) customers may face overlap between p44 TMS and existing enterprise TMS.
- **SEA presence:** PARTIAL — project44 visibility network has global carrier coverage; TMS product SEA-customer base not confirmed.
- **Approx. scale:** Not disclosed; $2.7B valuation (Series F); primary business remains visibility.

---

## 5. Market Sizing

### 5.1 Global TMS Market

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global TMS market size, 2024 | $9.77B–$10.3B | Medium | (34), (35) |
| Global TMS market size, 2025 | $11B–$15B (methodology-dependent) | Low | (34), (35) — wide range reflects scope differences |
| Global TMS CAGR (2024–2030) | 17.6% | Low–Medium | (35) — ARC Advisory estimate cited |
| Global TMS projected size, 2030 | $38B | Low | (35) — single ARC source |
| Nucleus Research TMS Leaders 2024 | SAP, Oracle, Manhattan, Blue Yonder, e2open, Kinaxis, One Network | High | (2) — published Value Matrix |
| Gartner MQ TMS Leaders 2024 | e2open, Oracle; Challengers: MercuryGate, Uber Freight, Shipwell | High | (5), (12) — Gartner published |

**Data-quality note:** The $9.77B–$10.3B 2024 figure is the best-supported range with multiple analyst firms converging; the $15B–$18B figures cited by some firms likely include adjacent logistics software (WMS, order management) within their TMS market definition. Country-specific TMS market size by geography (US, EU, SEA) — `Data gap — country-level TMS market size requires ARC Advisory or IDC country-specific report.`

---

### 5.2 Digital Freight Brokerage Market

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global digital freight brokerage market, 2024 | $5.79B–$5.9B | Medium | (36), (37) — two independent firms converge |
| Global digital freight brokerage CAGR 2024–2030 | 23–27% | Low | (36), (37) — high variance across firms |
| Uber Freight gross bookings, FY2024 | $1.28B | High | (20) — public SEC filing |
| Full Truck Alliance revenue, FY2024 | $1.54B (RMB 11.24B) | High | (31) — NYSE-listed earnings release |
| Lalamove/Lalatech revenue, FY2024 | $1.59B | High | (32) — IPO filing data |
| Sennder revenue (combined post-acquisition), 2024+ | €1.4B (~$1.5B) | Medium | (25) — press release, not audited |

**Bottom-up check:** Uber Freight $1.28B + Manbang/FTA $1.54B + Lalatech $1.59B = $4.41B across three platforms alone, which is broadly consistent with a $5.8B global total when adding Sennder, Loadsmart, Kargo, Deliveree, GoGoX, and others. Market size estimate confidence: Medium.

---

### 5.3 SEA Digital Freight Platform Market

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| ASEAN freight & logistics total market, 2024 | $269.5B | Medium | (38) — single ASEAN research source |
| ASEAN freight & logistics projected, 2030 | $390B | Low | (38) |
| Deliveree GTV estimate, 2024 | $100M+ | Medium | (29) — company stated target |
| Haulio ARR, October 2024 | $15M | Medium | (27) — third-party tracking site Latka |
| Lalamove SEA + LATAM combined GTV, 2024 | Embedded in $11.1B global | Low | (32) — SEA-only not disaggregated |
| Kargo Technologies revenue | Not disclosed | — | `Data gap — Kargo Technologies has not disclosed revenue; Indonesia logistics startup funding roundup shows $38.6M total raised` |

`Geography mismatch — SEA-specific digital freight platform GMV is not available as a standalone figure; $269.5B total ASEAN logistics market is used as context only.`

---

### 5.4 TMS Implementation Cost Benchmarks

| Platform | License/Subscription | Implementation | Timeline |
|----------|---------------------|----------------|----------|
| SAP TM (enterprise) | Freight-spend-block pricing; $1M–$5M+ annually | $2M–$6M professional services year 1 | 12–24 months |
| Oracle OTM (enterprise) | ~$450/month entry; $1M–$5M+ enterprise | $500K–$3M for non-Oracle ERP integration (7) | 12–24 months |
| Blue Yonder TMS | Not disclosed; TCO exceeds license significantly | Matches or exceeds annual license in year 1 (7) | 12–24 months |
| MercuryGate | Mid-market SaaS; faster implementation | Faster than SAP/Oracle; specific cost not disclosed | 3–9 months |
| Cargobase (TMS Lite) | Not disclosed; described as "quick-to-implement" | Low — SaaS, guided onboarding | Weeks–months |

[ASSUMED-1]: SAP TM implementation costs of $2M–$6M in professional services are directionally consistent with industry-cited figures but enterprise ranges vary significantly by scope. — to validate: Ask a Tier 1 systems integrator (Accenture, Capgemini, DHL Consulting) what they budget for a mid-tier manufacturer's SAP TM go-live.

---

### 5.5 Per-Load Economics — Digital Freight Platforms

| Platform | Take Rate / Margin | Notes |
|----------|--------------------|-------|
| Uber Freight | ~(1.7%) EBITDA margin on gross bookings | Gross bookings $1.28B; EBITDA $(22)M FY2024 (20) |
| Loadsmart | Positive operating profit Q3 2024 | Transactional spread ~75% of revenue; SaaS 25% (22) |
| Full Truck Alliance | Net income 27.8% of revenue FY2024 | $428M net income on $1.54B revenue — profitable model (31) |
| Traditional FTL brokerage | 12–18% gross margin typical | Industry benchmark for comparison |

[ASSUMED-2]: Uber Freight's negative EBITDA margin reflects below-market pricing intended to grow market share in a freight downturn; margins likely improve in next upcycle but structural platform costs (engineering, fraud controls, carrier network) create a floor higher than traditional brokers. — to validate: Review Uber Q1 2025 Freight segment results when published; ask Uber Freight enterprise customer about pricing trends in 2025 upcycle.

---

## 6. Journey-Stage Coverage Map

| Solution | 1-Pre-booking | 2-Booking/Dispatch | 3-In-Transit Visibility | 4-Cargo Security | 5-Incident Response | 6-Claims/Insurance |
|----------|--------------|-------------------|------------------------|-----------------|--------------------|--------------------|
| SAP TM | Partial | YES | Partial | NO | NO | Partial |
| Oracle OTM | Partial | YES | Partial | NO | NO | Partial |
| Manhattan Active TM | NO | YES | Partial | NO | NO | Partial |
| Blue Yonder TMS | NO | YES | YES (45M monthly) | NO | NO | Partial |
| MercuryGate | NO | YES | Partial | NO | NO | Partial |
| McLeod LoadMaster/PowerBroker | Partial (carrier compliance) | YES | NO | NO | NO | NO |
| Trimble TMW.Suite | NO | YES | Partial | NO | NO | NO |
| Transporeon | YES | YES | Partial | NO | NO | NO |
| Descartes Aljex + MacroPoint | Partial | YES | YES (MacroPoint) | NO | NO | NO |
| e2open (WiseTech) | Partial | YES | YES | NO | NO | Partial |
| Alpega / TenderEasy | YES | YES | NO | NO | NO | NO |
| Uber Freight TMS | Partial | YES | YES (control tower) | NO | Partial | NO |
| Loadsmart ShipperGuide | NO | YES | YES (dock/yard) | NO | NO | NO |
| Sennder | NO | YES | YES | NO | NO | NO |
| Cargobase | YES | YES | Partial | NO | NO | NO |
| Haulio | NO | YES | Partial | NO | NO | NO |
| Kargo Technologies | NO | YES | YES | NO | NO | NO |
| Deliveree | NO | YES | YES | NO | NO | NO |
| GoGoX | NO | YES | YES | NO | NO | NO |
| Full Truck Alliance | NO | YES | Partial | NO | NO | NO |
| Lalamove | NO | YES | YES | NO | NO | NO |
| project44 Intelligent TMS | Partial | YES | YES | NO | Partial | NO |
| Convoy (defunct) | NO | YES | Partial | NO | NO | NO |

**Key finding:** Stage 2 solutions dominate {2-Booking/Dispatch} — this is their core. Most extend partially into {1} (tendering/procurement) or {3} (visibility). None cover {4-Cargo Physical Security} or {6-Claims/Insurance} as primary functions. This is the gap where risk-management solution providers can add value: bridging TMS booking data with downstream security and claims systems.

---

## 7. SEA Presence Summary

### SEA-native platforms (founded in SEA, primarily serving SEA)

| Vendor | Markets | Funding Status | TMS Type |
|--------|---------|----------------|----------|
| Cargobase | Singapore (HQ), 55 countries | Private; no public ARR | Shipper TMS / freight procurement |
| Haulio | Singapore | Series A; $7.9M raised; $15M ARR (Oct 2024) | Container haulage dispatch |
| Kargo Technologies | Indonesia + Malaysia (TheLorry) | Series A; $38.6M raised | FTL/LTL marketplace |
| Deliveree | Thailand, Indonesia, Philippines | $109M total; $30M March 2024 | FTL/LTL on-demand marketplace |
| Janio | Singapore (regional) | Series B; $30M raised; 179 employees | 4PL / e-commerce logistics (primarily cross-border) |
| GoGoX | Hong Kong (SEA: Singapore, Vietnam) | HKEX listed; declining market cap | Intra-city van/truck platform |
| Lalamove | Hong Kong (SEA operations) | $1.59B revenue; IPO pending | Intra-city on-demand delivery |

### International TMS with documented SEA presence

| Vendor | SEA Presence | Form |
|--------|-------------|------|
| SAP TM | YES | Regional offices (Singapore, Malaysia, Thailand, Indonesia); customer base in manufacturing |
| Oracle OTM | YES | Regional offices; multinational manufacturer deployments |
| e2open / WiseTech | YES | CargoWise (freight forwarder-facing) strong in SEA; TMS via multinational shippers |
| Cargobase | SEA-native | Founded Singapore; primary APAC market |
| Blue Yonder | Partial | APAC operations via Panasonic Asia |
| MercuryGate | Partial | 80-country user claim; no SEA office |
| Transporeon | Partial | Asia mentioned; SEA not primary |

### SEA coverage gap — no dominant SEA-native enterprise shipper TMS

No SEA-founded vendor competes at the enterprise shipper TMS level (SAP TM / Oracle OTM equivalents). Cargobase is the closest — founded in Singapore, serving Fortune 500 manufacturers in APAC — but its focus is spot-freight procurement, not full multi-modal planning. Regional manufacturers and 3PLs in SEA deploy SAP or Oracle implemented by local SI partners (Infosys, Wipro, local Accenture offices).

`Data gap — SEA-native TMS market penetration rates (% of large shippers using SAP vs. local solutions vs. spreadsheets) requires IDC APAC, Gartner APAC, or ARC Advisory Asia-Pacific field research.`

---

## 8. Preliminary Pain-Point Hooks (Not Full Pain Points)

1. **TMS-broker integration brittleness:** The majority of shipper-TMS-to-broker integrations still use EDI 204/214/990, a standard from the 1980s. When shippers tender loads through TMS to brokers, EDI mapping errors cause silent field mismatches — wrong pickup times, missing reference numbers, incorrect charges — that surface only at invoice reconciliation 30–60 days later. Uber Freight and Loadsmart both cite this as a friction point when onboarding shipper-TMS integrations. There is no industry standard for the JSON/REST equivalent, so every API integration is bespoke. (API vs. EDI as risk surface is documented but not yet systematically measured.)

2. **Convoy collapse — lessons from a $3.8B unicorn failing:** Convoy's October 2023 shutdown is the clearest market-wide lesson about platform risk in digital freight: (a) carriers that delivered loads in Convoy's final days were owed thousands of dollars and had no recourse; (b) shippers lost contracted capacity mid-season; (c) the failure was not a fraud event but an economic one — the platform subsidized freight rates below cost to buy market share, then could not survive a rate correction. The lesson for logistics risk buyers: a digital freight marketplace is itself a counterparty risk. Evaluating platform financial health (burn rate, EBITDA margin, funding runway) is a necessary part of carrier-procurement risk management. (23, 24)

3. **Implementation timeline as risk barrier:** Enterprise TMS (SAP TM, Oracle OTM, Blue Yonder) deployments run 12–24 months. During this window: (a) the TMS has no live data, so shipper risk-management decisions are made on spreadsheets or legacy systems; (b) implementation scope creep is common — a $2M implementation can become $5M; (c) during active TMS rollout, the shipper's dispatch team is simultaneously operating two systems (old + new), increasing error rate. The 12–24 month gap is the longest period of maximum risk exposure in a shipper's logistics risk lifecycle. (7)

4. **Digital freight marketplace fraud exposure:** Fraud attempts on digital freight platforms rose from 0.53% of loads in 2023 to 1.66% in 2024 — a 213% increase. A double-brokering incident on Uber Freight's network in late 2023 required FMCSA intervention to force disclosure of payment flows. The structural issue: digital platforms that prioritize booking automation over identity verification have a larger fraud attack surface than traditional brokerages with human dispatcher review. Platforms are responding (Uber Freight's 60% fraud reduction in its own network, Highway Load Lock integration), but the gap between automation efficiency and fraud exposure is not fully closed. (1, 21)

5. **SEA digital-freight-platform unit economics — cash burn and driver retention fragility:** Across SEA platforms (Haulio, Kargo, Deliveree, GoGoX), common patterns: (a) heavy driver/carrier acquisition subsidies depress unit economics; (b) high driver churn rate forces continuous re-acquisition spend; (c) Thailand/Indonesia/Philippines regulatory environments differ on truck classification, insurance requirements, and cross-border permits — compliance overhead is multiplicative; (d) platform valuation compression (GoGoX: 97% market cap decline post-IPO; Haulio: revenue compression from $25M to $15M in one year) suggests the digital-freight-platform model in SEA has not yet found durable unit economics. A platform dependent on venture capital and facing unit-economics pressure is a counterparty risk for shippers that build contracted capacity around it. [ASSUMED-3]: GoGoX market cap decline reflects broader HKEX tech valuation compression, not necessarily underlying operational deterioration — to validate: Review GoGoX audited 2024 revenue and gross margin vs. 2022 results.

---

## Sources for this Stage

(1) Fraudulent freight activity increased by 27% in 2024 — https://www.ccjdigital.com/technology/cybersecurity/article/15745983/fraudulent-freight-activity-increased-by-27-in-2024

(2) Nucleus Research TMS Technology Value Matrix 2024 — https://nucleusresearch.com/research/single/tms-technology-value-matrix-2024/ and https://www.businesswire.com/news/home/20240604846771/en/Nucleus-Research-Releases-2024-Transportation-Management-Technology-Value-Matrix

(3) Gartner Peer Insights — SAP Transportation Management reviews — https://www.gartner.com/reviews/market/transportation-management-systems/vendor/sap/product/sap-transportation-management-tm

(4) SAP SEA resources page — https://www.sap.com/sea/resources/what-is-a-transportation-management-system-tms

(5) 2024 Gartner Magic Quadrant for TMS — e2open press release — https://www.e2open.com/news/press-releases/e2open-again-positioned-as-a-leader-in-2024-gartner-magic-quadrant-for-transportation-management-systems/

(6) Oracle TMS customer list — https://www.appsruntheworld.com/customers-database/products/view/oracle-transportation-management-system

(7) Blue Yonder TMS pricing and implementation analysis — https://locus.sh/blogs/blue-yonder-pricing/

(8) Oracle TMS 17th Gartner Leader recognition — https://blogs.oracle.com/scm/oracle-leader-17th-time-gartner-magic-quadrant-transportation-management-systems

(9) Manhattan Associates FY2024 results — https://www.manh.com/about-us/newsroom/press-releases/manhattan-associates-reports-record-fourth-quarter-full-year-results

(10) Blue Yonder customer base and One Network acquisition — https://logisticsviewpoints.com/2025/03/10/blue-yonder-2024-year-in-review/

(11) Blue Yonder TMS 45M monthly shipments — https://media.blueyonder.com/nucleus-tms-technology-value-matrix-2024/

(12) 2024 Gartner Magic Quadrant — MercuryGate and Alpega Challengers — https://www.silicon.co.uk/press-release/mercurygate-named-as-a-challenger-in-the-2024-gartner-magic-quadrant-for-transportation-management-systems and https://www.alpegagroup.com/en-en/company/press/

(13) MercuryGate freight spend and Körber acquisition — https://www.koerber.com/en/about-us/news-and-press/acquisition-mercurygate

(14) McLeod Software 2024 v24.2 update — https://www.globenewswire.com/news-release/2024/08/05/2924261/0/en/McLeod-Software-Announces-Partnership-Updates-with-24.2-TMS-Upgrade.html

(15) Rose Rocket $38M Series B — https://www.businesswire.com/news/home/20230620643042/en/Rose-Rocket-Raises-$38M-USD-Series-B-to-Scale-its-Network-Centric-TMS-Solutions-while-Expanding-into-the-Enterprise

(16) Trimble completes Transporeon acquisition — https://www.transporeon.com/en/company/press/trimble-completes-transporeon-acquisition and https://www.truckingdive.com/news/trimble-transporeon-tms-transportation-management-system/640558/

(17) Descartes ARC Advisory top cloud TMS — https://finance.yahoo.com/news/descartes-named-top-provider-cloud-104500631.html

(18) WiseTech Global acquires e2open — https://www.e2open.com/news/press-releases/wisetech-global-completes-strategic-acquisition-of-e2open/ and https://www.wisetechglobal.com/news/wisetech-global-announces-strategic-acquisition-of-e2open/

(19) Alpega Wtransnet acquisition and freight exchange network — https://www.alpegagroup.com/us/about/news/alpega-acquires-wtransnet-to-significantly-expand-its-freight-exchange-footprint/

(20) Uber Technologies FY2024 Freight Segment results — https://investor.uber.com/news-events/news/press-release-details/2025/Uber-Announces-Results-for-Fourth-Quarter-and-Full-Year-2024/default.aspx

(21) FMCSA forces transparency from Uber Freight after double-brokering scam — https://www.overdriveonline.com/regulations/article/15668045/fmcsa-forces-transparency-from-uber-freight-after-scam-uncovered

(22) Loadsmart operating profitability Q3 2024 — https://www.globenewswire.com/news-release/2024/10/17/2964802/0/en/Loadsmart-Reaches-Operating-Profitability-and-Forecasts-All-Time-Record-Gross-Profit-for-the-Year.html

(23) Convoy shutdown — FreightWaves — https://www.freightwaves.com/news/convoy-shutdown-trucking-startup

(24) Convoy collapse death-from-overfunding — FreightWaves — https://www.freightwaves.com/news/death-from-overfunding-an-obituary-for-convoy

(25) Sennder acquires C.H. Robinson European operations, €1.4B combined — https://www.sennder.com/press/sennder-signs-agreement-to-acquire-c-h-robinson-s-european-surface-transportation-operations-combining-revenue-to-eur-1-4bn

(26) Cargobase Singapore TMS, G2 ranking, SOC 2 — https://www.cargobase.com/blog/singapore-based-logistics-tech-scale-up-cargobase-builds-world's-first-autonomous-tms and https://en.prnasia.com/releases/apac/cargobase-secures-soc-2-compliance-for-leading-spot-freight-automation-transportation-management-system-tms--469623.shtml

(27) Haulio funding, ARR, BBTruck partnership — https://www.haulio.io/ and https://getlatka.com/companies/haulio.io

(28) Kargo Technologies funding and TheLorry acquisition — https://www.dealstreetasia.com/stories/indonesia-kargo-funding-ac-ventures-405850 and https://techcollectivesea.com/2025/01/24/southeast-asia-logistics-funding-indonesia/

(29) Deliveree $30M March 2024 raise, 100,000 trucks, $109M total — https://www.idnfinancials.com/archive/43511/deliveree-raises-series-funding

(30) GoGoX HKEX IPO, 340+ cities, market cap decline — https://equalocean.com/news/2024011320442 and https://www.scmp.com/business/banking-finance/article/3181651/gogox-defies-ipo-drought-it-pushes-through-downsized-hong

(31) Full Truck Alliance FY2024 financial results — https://ir.fulltruckalliance.com/2025-03-05-Full-Truck-Alliance-Co-Ltd-Announces-Fourth-Quarter-and-Fiscal-Year-2024-Unaudited-Financial-Results

(32) Lalatech/Lalamove FY2024 revenue, GTV, 14 markets — https://www.sahmcapital.com/news/content/lalatech-relaunches-hong-kong-ipo-h1-revenue-grows-in-double-digits-2025-10-30

(33) project44 Intelligent TMS launch — https://www.project44.com/press-releases/project44-unveils-intelligent-tms-a-new-era-of-agile-ai-driven-freight-management-for-modern-supply-chains/

(34) TMS global market size 2024 — multiple analysts: Grand View Research — https://www.grandviewresearch.com/industry-analysis/transportation-management-systems-market; MarketsandMarkets — https://www.marketsandmarkets.com/Market-Reports/transportation-management-market-232446179.html

(35) ARC Advisory Group TMS market page — https://www.arcweb.com/market-analysis/transportation-management-systems

(36) Digital freight brokerage market size 2024 — Precedence Research — https://www.precedenceresearch.com/digital-freight-brokerage-market

(37) Digital freight brokerage CAGR — GM Insights — https://www.gminsights.com/industry-analysis/digital-freight-brokerage-market

(38) ASEAN freight & logistics market 2024 — Tech Collective SEA — https://techcollectivesea.com/2025/01/24/southeast-asia-logistics-funding-indonesia/

---

## Assumptions to Validate

[ASSUMED-1]: SAP TM year-1 professional services costs of $2M–$6M are directionally consistent with industry-cited ranges but enterprise scope varies significantly.
- to validate: Ask a Tier 1 SAP SI (Accenture Supply Chain, Capgemini, Wipro Technologies) what they budget for a mid-tier manufacturer's SAP TM initial go-live, including data migration and carrier EDI integration.

[ASSUMED-2]: Uber Freight's negative EBITDA reflects intentional below-market pricing in freight downturn; margin trajectory will improve with rate recovery.
- to validate: Review Uber Q1 2025 Freight segment EBITDA; ask an Uber Freight enterprise account manager whether pricing improved in H1 2025 vs. H2 2024.

[ASSUMED-3]: GoGoX market cap decline from HK$10.3B to HK$300M reflects HKEX sector-wide tech valuation compression rather than purely operational deterioration.
- to validate: Request GoGoX 2024 audited annual report (HKEX filing) to compare 2022 vs. 2024 gross margins and fulfilled order volume.

[ASSUMED-4]: SEA digital freight platforms (Kargo, Deliveree, Haulio) compete primarily for B2B trucking volume in FTL/LTL lane segments where fraud and driver-retention risks are structurally higher than in developed-market equivalents because informal carrier pools dominate.
- to validate: Interview a logistics manager at a mid-size Indonesian or Thai manufacturer who has used both Kargo/Deliveree and a traditional 3PL; ask how they assess platform counterparty risk.
