# Stage 2 — Dispatch: Freight Procurement & Tendering

*Run: 2026-05-23-0152 | Topic: Risk-management solutions across the logistics journey (worldwide scan)*
*Authored by value-chain-mapper agent | Stage 2 of 6*

> **Refinements applied (post-validation):**
> - Pain point 1 ($455M/2024 freight fraud): primary citation upgraded — Verisk CargoNet 2024 + FBI IC3 PSA260430 (Apr 30 2026, Tier 1) now anchor the figure (sources 39a, 39b); original Truckstop trade-press citation marked (superseded).
> - Pain point 1 ($40,760/load): now tagged [ASSUMED-N] — TIA member survey of ~200 respondents, methodology not publicly disclosed; no independent actuarial or government cross-validator exists.

---

## Stage Description

This stage covers the solutions shippers, 3PLs, and freight brokers use to procure carrier capacity, tender loads, and manage the broker-carrier execution relationship between the moment a load is confirmed and the moment a truck begins moving. The core risks being managed at this stage are **counterparty fraud at load booking** (double brokering, identity spoofing, phantom carriers), **tender-to-execute gaps** (carriers accepting tenders they cannot honor, leading to last-minute capacity failures), and **RFP rate gaming** (carriers bidding artificially low to win lanes, then rejecting loads when spot rates rise). The unit of analysis is the solution — TMS platforms, freight-procurement platforms, broker marketplaces, and the manual workarounds that dominate small-carrier and emerging-market contexts.

Stage 1 (Vendor Procurement & Carrier Onboarding) covered the pre-dispatch compliance stack (Highway, Descartes MyCarrierPortal, Truckstop RMIS, Carrier411, Carrier Assure, etc.). This stage begins where a carrier's compliance status is assumed to be cleared and examines the **transactional freight-procurement and dispatch layer** — how loads get priced, tendered, booked, and confirmed. Cross-cut references to Stage 1 solutions are noted where they embed procurement features.

The stage is dominated by North American and European enterprise TMS vendors, with a growing set of digital freight-brokerage marketplaces layering fraud-detection on top of load-matching. India and China have regional marketplace leaders. SEA has no full-stack TMS vendor in the Gartner Leaders quadrant; Shipsy is the highest-placed APAC-native vendor (Niche Player, 2024 Gartner MQ TMS).^1

---

## Activities (sub-steps within this stage)

1. **Freight RFP / bid solicitation** — shippers send carriers and brokers a Request for Proposal covering lanes, volumes, service requirements, and target rates. Traditional process: 45-tab Excel workbooks emailed to dozens of carriers, manually reconciled over 4–6 weeks.^2 Platform-enabled process: digital RFP tools (Emerge, Transporeon Procurement, Sleek Technologies) automate bid collection, normalization, and scenario analysis and compress the cycle to days.
2. **Carrier selection and contract award** — shipper/broker selects primary carriers and backup carriers per lane based on bid price, service score, and compliance status. High routing-guide failure risk if selected carriers are unreliable; tender rejection rates above 13% signal serious routing-guide breakdown.^3
3. **Load tendering and booking confirmation** — individual shipments are tendered to primary carrier (by EDI, API, or phone/email in less-digital environments); if rejected, tendered to secondary carriers or spot market. Gap: TMS systems log the tender but cannot guarantee the carrier will show up — execution verification is weak at the dispatch layer.
4. **Broker-carrier matching (spot market)** — loads not covered by contracted carriers are posted to load boards or digital broker marketplaces (DAT, Truckstop, J.B. Hunt 360, Uber Freight, Full Truck Alliance). Risk emerges here: the carrier accepting the spot load may not be who they claim to be (double brokering, identity fraud). In 2024, TIA Watchdog logged 974 fraud reports in an 8-month window;^4 average per-load fraud cost was $40,760.^4
5. **Load execution dispatch** — carrier driver is assigned, load tender confirmed, truck dispatched. In manual environments (dominant in SEA, common in India): phone call to truck driver, WhatsApp message with load details, handwritten BOL. Digital TMS dispatches via mobile app or electronic tender, capturing driver ID and ETA. Risk blind spot: sub-contracted carrier dispatching an unverified driver not listed in the compliance system.

---

## Revenue Model (for solutions in this stage)

Enterprise TMS (Oracle OTM, SAP TM, Blue Yonder, Manhattan Associates): annual license fee or cloud subscription in the range of $250,000–$2M+/year for large shippers; per-module SaaS pricing at mid-market tier. Freight procurement platforms (Emerge, Transporeon): SaaS subscription plus per-RFP or per-lane event fee. Broker marketplaces (DAT, Truckstop): monthly subscriber fee per load-board seat ($150–$500/month carrier, $500–$2,000/month broker); digital brokerages (Uber Freight, J.B. Hunt 360, Loadsmart) take a gross margin spread on brokered loads (5–15% typical).^5

---

## Cost Drivers (for solutions in this stage)

For TMS vendors: R&D and product engineering headcount, carrier EDI/API integration build-out and maintenance (100,000+ carrier integrations in the case of MercuryGate^6), cloud infrastructure, and enterprise sales cycles (12–18-month average for $1M+ deals). For marketplace/brokerage platforms: carrier acquisition and vetting costs (fraud-signal data licensing, identity-verification APIs), operations headcount for managed brokerage, and bad-debt exposure from double-brokering losses. For shippers using manual processes: analyst labor (2–4 weeks per annual RFP cycle^2), spreadsheet error remediation, and opportunity cost of suboptimal carrier selection.

---

## Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global TMS market size (2025 estimated) | ~$18.5B (MarketsandMarkets); ~$15B (Global Market Insights); $6.3B by 2030 at 6.7% CAGR (QKS Group — narrower scope: pure TMS software only, ex-brokerage services) | Medium — multiple independent market research firms with differing scope definitions; no government statistical source sizes TMS specifically | (7), (8), (9) |
| Global TMS market projected (2030) | $37.0B at CAGR 14.9% (MarketsandMarkets); $40.3B at CAGR 10.6% (Global Market Insights) | Low — extrapolated forecast, single research firm per figure; wide range reflects scope variance | (7), (8) |
| Global freight procurement platform market (2024) | ~$1.84B (Dataintelo); North America dominant, Europe ~$420M | Low — trade research aggregator; methodology undisclosed; treat as directional only | (10) |
| Global digital freight brokerage market (2025→2035 CAGR) | $7.51B in 2025 → $78.3B by 2035 at CAGR 26.4% (Precedence Research) | Low — single aggregator source; scope includes pure spot-market digital brokerages | (11) |
| TMS market 2024 US (standalone estimate) | ~$4.8B in 2024, growing to $5.2B in 2025 (trade-press derived from aggregated analyst consensus) | Low — trade press synthesis; no government source exists for US TMS software revenue independently | (12) |
| SEA logistics market total (2024) | ~$211.5B (IMARC Group — all logistics modes) | Low — broad logistics aggregate, not TMS-specific; no SEA TMS sub-market figure identified in any open source | (13) |
| ASEAN road freight transport market (2025) | ~$119.4B, growing to $160.1B by 2030 at CAGR 6.0% (Mordor Intelligence) | Low — single research firm; no government statistical source | (14) |

**Data gap — TMS sub-market by country (SEA):** No government statistics body (BPS Indonesia, DOSM Malaysia, NSO Thailand, SingStat) publishes a country-specific software-market figure for TMS or freight procurement platforms. No Tier-1 consultancy report (McKinsey, BCG, Bain, Roland Berger) isolates the TMS software market for Indonesia, Thailand, Malaysia, or Singapore as a distinct sub-segment. The SEA TMS/freight-procurement software market size requires field validation with regional system integrators or ASEAN-focused advisory firms (e.g., Kearney APAC, Roland Berger Singapore).

**Data gap — freight procurement platform market cross-validation:** The $1.84B figure (Dataintelo) is a single-source aggregator estimate with undisclosed methodology. No second independent Tier-1 source confirms this figure. The Emerge $130M Series B (Sept 2021, $150M total raised) implies gross transaction volume was on a $200M+ annual run-rate at the time of fundraising; this is transaction volume, not platform revenue.^5

---

## Named Solutions by Region

Solutions are presented within their primary geography of dominance. SEA presence is explicitly tagged for each solution.

---

### United States — Enterprise TMS

**Oracle Transportation Management (OTM)**
- **What it does:** Full-suite global TMS covering multi-modal planning, carrier procurement, freight tendering, execution, real-time tracking, freight audit and payment, and analytics. Rated highest overall in the 2024 Gartner MQ for TMS for the 17th consecutive year.^15
- **Primary user:** Large enterprise shippers and 3PLs; multinational manufacturers
- **Business model:** Cloud subscription (Oracle Cloud SCM) + professional services; license fees for on-premise deployments still common in large accounts
- **Risk angle at dispatch:** Carrier rate-shopping and automatic award to compliant primary; EDI-based tender confirmation with rollover to backup carriers; limited native fraud-detection at the booking layer (relies on Stage 1 vetting tools as upstream input)
- **Pros:** Deepest carrier network integrations; strongest for multi-modal global freight; handles cross-border regulatory compliance
- **Cons:** Implementation takes 12–24 months; total cost of ownership $1M–$5M+ for large deployments; overkill for carriers/SMB shippers; limited native double-brokering fraud detection
- **SEA presence: UNCLEAR** — Oracle has regional offices in Singapore, Indonesia, Malaysia, and Thailand; OTM has customers in APAC but no SEA-specific public case studies identified in open sources^16
- **Sources:** (15), (16)

**SAP Transportation Management (SAP TM)**
- **What it does:** Integrated TMS within the SAP S/4HANA and ERP ecosystem. Supports order management, carrier selection, freight tendering, load planning, document management, and freight settlement. Named Leader in 2024 Gartner MQ TMS for the 10th consecutive year.^17
- **Primary user:** Large enterprise shippers already on SAP ERP; global manufacturers, retailers, chemical/pharma companies
- **Business model:** SAP S/4HANA subscription; TM is typically a module within a broader SAP license agreement; standalone licensing is rare
- **Risk angle at dispatch:** Carrier master-data management with compliance flags; contract management to ensure only approved carriers receive tenders; native integration with SAP GTS for trade compliance
- **Pros:** Deep integration with SAP ERP (procurement, finance, sales) eliminates re-keying; strong regulatory/compliance documentation
- **Cons:** Very high implementation cost; requires SAP ecosystem buy-in; weak at real-time fraud detection; limited spot-market capability natively (relies on integrations)
- **SEA presence: UNCLEAR** — SAP has offices across SEA (Singapore, Malaysia, Indonesia, Thailand, Philippines); SAP TM implementations exist in APAC via large SI partners (Accenture, Deloitte) but no public SEA TM case studies in open sources
- **Sources:** (17)

**Blue Yonder TMS (formerly JDA)**
- **What it does:** Cloud-native TMS with ML-powered freight optimization, carrier procurement, and execution. Acquired One Network Enterprises in May 2024, significantly expanding multi-party network capabilities. Processes 45 million monthly shipments as of end-2024, up from 10 million at start of year.^18
- **Primary user:** Large retail, CPG, and manufacturing shippers; 3PLs
- **Business model:** SaaS subscription; pricing not publicly disclosed; enterprise deal sizes comparable to Oracle and SAP
- **Risk angle at dispatch:** Dynamic carrier scoring and adaptive routing-guide management; load-rejection prediction to alert shippers before tender failures materialize
- **Pros:** Strong ML/AI for carrier optimization; One Network acquisition adds multi-party visibility for subcontracted freight
- **Cons:** Less mature in emerging markets; no public SEA implementation case studies; limited native spot-market fraud detection
- **SEA presence: UNCLEAR** — Blue Yonder has Singapore and Japan offices; APAC customers include large retailers; no Indonesia/Thailand/Malaysia TM case studies identified
- **Sources:** (18)

**Manhattan Associates Active TM**
- **What it does:** Cloud-native TMS embedded in Manhattan Associates' supply chain suite (WMS + TMS + OMS). Recognized Leader in 2026 Gartner MQ TMS (consecutive). In the past five quarters, 80% of TMS buyers at Manhattan also purchased WMS, indicating deep suite cross-sell.^19
- **Primary user:** Retail, grocery, and omnichannel distribution shippers; large 3PLs
- **Business model:** SaaS subscription; part of Manhattan's $1.0B FY2024 total revenue (no TMS-specific breakout disclosed).^20
- **Risk angle at dispatch:** AI-powered carrier selection and tender optimization; exception management for load rejections; integration with carrier compliance portals
- **Pros:** Best-of-suite for WMS+TMS combined buyers; cloud-native architecture for rapid deployment vs. legacy TMS; strong US retail customer base
- **Cons:** US/North America dominant; limited APAC presence; no disclosed SEA TMS implementations
- **SEA presence: NO** — no public APAC TMS customers identified; company is US-headquartered with limited APAC sales infrastructure for TMS
- **Sources:** (19), (20)

**e2open TMS (incorporating BluJay Solutions)**
- **What it does:** Multi-modal TMS for global freight planning, carrier procurement, execution, visibility, and settlement. Named Leader in 2024 Gartner MQ TMS for second consecutive year.^21 BluJay Solutions (acquired for $1.7B in 2021^22) brought EMEA market strength and freight-exchange connectivity. WiseTech Global announced acquisition of e2open for $2.1B in May 2025.^23
- **Primary user:** Global shippers, freight forwarders, and 3PLs needing multi-modal execution across regions
- **Business model:** SaaS subscription; FY2024 total revenue ~$610M (down from $640M in FY2023, reflecting churn from BluJay integration).^24
- **Risk angle at dispatch:** Multi-carrier contract management with compliance guardrails; carrier capacity planning and demand sensing; post-BluJay EMEA freight-exchange integration
- **Pros:** Strongest global footprint across NA + Europe + APAC; BluJay-derived EMEA freight-exchange connectivity; WiseTech acquisition (2025) adds CargoWise multimodal network
- **Cons:** Revenue declining post-acquisition integration; BluJay legacy customer churn; complex product stack post-M&A; limited fraud-detection native capability
- **SEA presence: UNCLEAR** — BluJay had APAC customers and offices; e2open customer lists include APAC-headquartered companies but no public SEA road-freight TMS implementation identified
- **Sources:** (21), (22), (23), (24)

---

### United States — Mid-Market TMS

**McLeod Software (LoadMaster TMS)**
- **What it does:** Mid-market TMS for carriers and freight brokers. Covers dispatch, load management, driver pay, freight billing, and carrier management. Serves 354+ companies, predominantly US-based (94.84% US).^25
- **Primary user:** Mid-size US trucking carriers and freight brokers (50–500 trucks)
- **Business model:** Annual license + professional services; estimated $70.8M annual revenue.^25 Privately held.
- **Risk angle at dispatch:** Driver dispatch and load assignment; carrier compliance flags within routing; integration with FMCSA data for carrier vetting
- **Pros:** Deep functionality for US carrier dispatch operations; strong US carrier community adoption; good API ecosystem
- **Cons:** US-only market; no international deployment; not suitable for shipper-side procurement; limited fraud-detection features
- **SEA presence: NO** — US operations only; no reseller or customer presence in SEA
- **Sources:** (25)

**Trimble TMS (formerly TMW, now incorporating Transporeon in Europe)**
- **What it does:** Two distinct Trimble TMS products: (1) Trimble TMW — North America carrier/broker TMS (dispatch, load management, compliance); (2) Transporeon — acquired by Trimble for ~$2.0B in April 2023^26; Europe-dominant TMS and freight-exchange platform serving 150,000+ carriers and 1,400+ shippers; generated ~€190M revenue in 2023 (~$210M).^26 Transporeon's freight-procurement module supports RFQ, tender events, and spot bidding.
- **Primary user:** North America: mid-to-large trucking carriers and brokers. Europe: large shippers and 3PLs for strategic and spot procurement
- **Business model:** SaaS subscription; Trimble Transportation reported as part of Trimble's Transportation Segment
- **Risk angle at dispatch:** Transporeon's carrier network includes pre-vetted carrier profiles; procurement module supports compliance-based carrier filtering during tender events; the load-board connectivity creates visibility into load-acceptance behavior
- **Pros:** Transporeon is the market-leading European freight-exchange (300+ verified carriers in marketplace); Trimble provides both carrier-side and shipper-side tooling
- **Cons:** Trimble TMW and Transporeon are not yet fully integrated as a unified product; Transporeon skews toward European customers; limited SEA reach
- **SEA presence: NO (Trimble TMW); UNCLEAR (Transporeon)** — Transporeon's network is European-centric (Ulm, Germany HQ); no SEA carrier integrations or shipper customers identified
- **Sources:** (26)

---

### United States — Freight Procurement Platforms

**Emerge (Transportation Spend Management)**
- **What it does:** Digital freight procurement platform enabling shippers to run dynamic RFP processes and benchmark carrier bids against market rates. Key product: Dynamic RFP, allowing shippers to procure freight competitively and continuously rather than via one annual tender cycle. Raised $150M total ($130M Series B led by 9Yards Capital, Tiger Global, Spruce House).^27
- **Primary user:** Shippers (cargo owners); runs parallel to a TMS rather than replacing it
- **Business model:** SaaS subscription; $9.8M SaaS revenue in 2024 (Latka estimate, unaudited^28); shippers on track to leverage Dynamic RFP to procure $4B+ in freight annually^27
- **Risk angle at dispatch:** Bid transparency reduces rate-gaming; carrier benchmarking against market data reduces over-payment to carriers who would reject loads at spot; carrier reputation scoring embedded in bid evaluation
- **Pros:** Solves the annual-RFP rigidity problem; continuous procurement model aligns contracted rates with market reality; 45,000+ carrier network
- **Cons:** Not a TMS — does not manage execution; US-centric carrier network; revenue relatively small ($9.8M) for a $150M-funded company, implying high cash burn; no SEA carrier base
- **SEA presence: NO** — US-headquartered; no SEA offices, carriers, or customers in open sources
- **Sources:** (27), (28)

**Sleek Technologies (ShipperWorks)**
- **What it does:** Freight-procurement SaaS that automates carrier RFP, bid normalization, and lane award. Focused on replacing email-and-spreadsheet RFP workflows with a structured digital process.
- **Primary user:** Mid-size shippers ($50M–$500M freight spend); procurement teams
- **Business model:** SaaS subscription; private company — no disclosed revenue
- **Risk angle at dispatch:** Structured bid collection with carrier compliance pre-screening; eliminates manual data-entry errors in bid comparison; carrier scoring against historical performance
- **Pros:** Faster implementation than enterprise TMS procurement modules; purpose-built for shipper procurement teams without IT resources; integrates with major TMS systems
- **Cons:** Limited public profile; small company; no disclosed SEA presence or customers
- **SEA presence: UNCLEAR** — no SEA-specific information in open sources
- **Sources:** [ASSUMED-1]: Sleek Technologies' capabilities as described above are based on company marketing materials and trade press descriptions; independent customer validation and revenue figures are not available in open sources. To validate: ask a US mid-size shipper procurement team whether they use ShipperWorks and what their experience is.

---

### United States — Broker Marketplaces with Risk Features

**DAT Power (Load Board + FreightWaves/analytics)**
- **What it does:** Largest US truckload load board by posted loads, with integrated carrier vetting tools (CarrierWatch). Provides spot-rate benchmarking, lane analytics, and carrier monitoring. Used by both brokers and carriers for spot-freight matching.
- **Primary user:** Freight brokers and carriers (US road freight)
- **Business model:** Monthly subscription; $150–$500/month carrier tier; $500–$2,000/month broker tier (estimates from trade sources); public company (DAT Solutions, owned by Roper Technologies)
- **Risk angle at dispatch:** CarrierWatch monitors carriers for authority changes, insurance lapses, and safety-score deterioration; integrates with Truckstop RMIS for compliance cross-referencing
- **Pros:** Largest spot-market dataset in US; real-time rate benchmarking prevents overpayment; CarrierWatch provides compliance monitoring layer
- **Cons:** Load-board fraud is endemic (DAT and Truckstop are primary vectors for double-brokering fraud^4); monitoring is reactive, not preventive at the point of booking
- **SEA presence: NO** — US-only platform; no APAC load-board functionality
- **Sources:** (3), (4)

**Truckstop.com (Load Board + Risk Factors)**
- **What it does:** Major US load board and broker compliance platform. Launched "Risk Factors" carrier-vetting product in 2024, categorizing carriers by Asset Risk (VIN/address issues), Contact Risk (phone/email changes), and Digital Risk (IP behavior on platform).^29 Parent to RMIS (covered in Stage 1).
- **Primary user:** Freight brokers and carriers; 45,000+ brokers, 600,000+ carriers on platform
- **Business model:** Monthly subscription; per-carrier verification fees
- **Risk angle at dispatch:** Risk Factors scores each carrier at point of load tender; flags behavioral anomalies (sudden new contact details, IP mismatches) that are hallmarks of identity fraud; integrates with RMIS compliance data from Stage 1
- **Pros:** Integrates compliance (Stage 1) with transactional risk (Stage 2) in one platform; behavioral risk signals are novel (most competitors use only regulatory/safety data)
- **Cons:** US FMCSA ecosystem dependency; limited international carrier database; platform is itself a vector for double-brokering fraud (sophisticated fraudsters operate on Truckstop)
- **SEA presence: NO** — US-only; no APAC carrier database
- **Sources:** (29)

**J.B. Hunt 360 (Shipper 360 + Carrier 360)**
- **What it does:** Digital freight marketplace launched 2017; connects shippers with ~1 million trucks; separate portals for shippers (Shipper 360: instant quoting, automated booking, in-transit visibility) and carriers (Carrier 360: load-board, tendering, tracking, payments). J.B. Hunt is #2 on Transport Topics Top 100 (2024) with gross revenue ~$8B.^30 ICS/Marketplace revenue was $205M in 2024 (+36% YoY); J.B. Hunt 360 marketplace is on a $1B annual run rate.^30
- **Primary user:** Shippers (mid-to-large) for spot and contract freight; carriers and owner-operators for load matching
- **Business model:** Brokerage gross margin spread (carrier rates to shipper rates); carrier base is J.B. Hunt's own fleet + marketplace carriers
- **Risk angle at dispatch:** Carrier identity backed by J.B. Hunt's existing carrier network (pre-qualified); native load-track-and-trace on tendered loads; risk vs. independent load boards: network is partly closed (J.B. Hunt carriers pre-vetted), reducing but not eliminating double-brokering exposure
- **Pros:** Established brand trust; $500M+ invested in platform technology; intermodal + truckload + brokerage in one interface; real-time pricing intelligence
- **Cons:** US-centric (North America only); not available to shippers looking for a neutral TMS; competitor to independent brokers
- **SEA presence: NO** — North America only; J.B. Hunt does not operate in SEA
- **Sources:** (30)

**Uber Freight**
- **What it does:** Digital freight brokerage connecting shippers with US carriers via algorithmic load matching. Operates as a licensed freight broker. In the 2023 freight downturn, Uber Freight scaled back growth ambitions and focused on profitability; unlike Convoy (shutdown October 2023^31), Uber Freight survived due to Uber's balance sheet.
- **Primary user:** Mid-size shippers (US); carriers and owner-operators
- **Business model:** Brokerage gross margin spread; also licenses the Uber Freight platform to enterprise shippers as a TMS/load-management tool
- **Risk angle at dispatch:** Carrier onboarding with background checks; real-time load status updates; algorithmic carrier matching that surfaces compliance flags; limited native double-brokering detection
- **Pros:** Brand recognition; deep carrier base; shipper platform option for enterprise shippers
- **Cons:** Profitability pressure post-2023 freight downturn; limited international reach; Convoy's shutdown illustrated the fragility of digital-broker-only models in down markets
- **SEA presence: NO** — US-only; no APAC brokerage operations
- **Sources:** (31)

**Coyote Logistics (now RXO subsidiary)**
- **What it does:** Freight brokerage and technology platform; became a subsidiary of RXO (spun out of XPO Logistics in 2022). Carrier app with load board for contracted carriers. Third-largest US freight broker by gross revenue.
- **Primary user:** Mid-to-large shippers (US); contracted carriers
- **Business model:** Brokerage gross margin; carrier app is a tool to retain contracted carrier base
- **Risk angle at dispatch:** Carrier portal with compliance monitoring; contracted-carrier network reduces open-market double-brokering risk vs. pure load boards
- **Pros:** Established carrier relationships; RXO parent provides balance sheet; integration with XPO's asset network
- **Cons:** Not a TMS; no native procurement/RFP tool for shippers; primarily spot and contract brokerage; limited SEA exposure
- **SEA presence: NO** — US-focused; RXO has no SEA brokerage operations
- **Sources:** [ASSUMED-2]: RXO/Coyote SEA presence is assessed as absent based on absence of any public APAC case study, press release, or reseller listing. To validate: check RXO Q4 2024 10-K geographic revenue breakdown.

---

### Europe — TMS & Freight Procurement

**Alpega TMS (Challenger in 2024 Gartner MQ)**
- **What it does:** European-focused SaaS TMS for shippers, with integrated freight exchange network (350,000+ daily freight and vehicle offers across Europe^32). Combines TMS with sourcing/procurement module and Connecta open logistics network (launched October 2024). 80,000+ carrier network covering ~10% of all commercial trucks in Europe.^32
- **Primary user:** European mid-to-large shippers; strong presence in Iberia, Romania, and Central/SE Europe
- **Business model:** SaaS subscription; freight exchange subscription for carriers; private company — revenue not disclosed
- **Risk angle at dispatch:** Pre-qualified carrier network within freight exchange; procurement module with compliance-based carrier filtering; Connecta network designed to centralize carrier credentialing
- **Pros:** Europe's largest open TMS+freight exchange combination; strong regulatory compliance for EU transport law; competitive with Transporeon in spot-market connectivity
- **Cons:** Less known outside Europe; limited North America or APAC presence; SEA coverage absent
- **SEA presence: NO** — European market only; no APAC carrier network or shipper customers
- **Sources:** (32)

**Transporeon (Trimble) — European Freight Procurement Hub**
- **What it does:** (Described above under Trimble; European details expanded here.) Transporeon's Freight Sourcing Hub provides structured tender events, spot bidding, and procurement analytics for European shippers. 1,400+ shipper customers; 150,000+ carrier network.^26 Acquired by Trimble for ~$2.0B (April 2023).^26
- **Primary user:** Large European shippers (retail, manufacturing, chemical); freight forwarders
- **Business model:** SaaS subscription per shipper user; carrier network access fee
- **Risk angle at dispatch:** Carrier pre-qualification built into procurement hub; carrier reputation scoring from network history; compliance data integration with European transport authorities (CMR, license verification)
- **Pros:** Dominant European freight-exchange network; strong for strategic procurement (annual tenders) + spot bidding in one platform; Trimble ownership gives North America expansion path
- **Cons:** European focus; limited SEA carrier base; Trimble integration creates product-strategy uncertainty
- **SEA presence: NO** — European carrier network; no SEA operations identified
- **Sources:** (26)

---

### India — Freight Marketplaces

**Vahak**
- **What it does:** India's largest online transport community (20 lakh+ pan-India transporters; 8 lakh+ trucks; 20,000+ daily active loads^33). App-based load board and freight marketplace for shippers to find transporters and truck owners. Value-added services include GPS tracking, cargo insurance, and medical e-consultations for drivers.
- **Primary user:** Small and mid-size Indian shippers; owner-operator truck drivers; small transporters
- **Business model:** Marketplace with no-commission model for transporters; monetizes through value-added services (GPS, insurance), premium listings, and potential future SaaS tools. Total funding $25.9M over 5 rounds.^33
- **Risk angle at dispatch:** Payment gateway with cashback incentives to prevent disputes; in-app GPS as basic verification that the truck is moving; cargo insurance product reduces financial risk from cargo damage/theft
- **Pros:** Massive network of small-transporter community; no-commission model drives carrier adoption; covers the fragmented, unorganized segment of Indian trucking
- **Cons:** Limited risk verification beyond GPS; no carrier identity verification at the depth of US platforms (no equivalent of FMCSA data in India); primarily a community/network tool, not a risk-first platform; revenue small relative to network size
- **SEA presence: NO** — India-only; no SEA operations or carrier base
- **Sources:** (33)

**Rivigo (now integrated into Mahindra Logistics)**
- **What it does:** Founded as India's relay trucking pioneer (driver relay model to improve highway speed). Achieved unicorn status (2019 valuation ~$1.05B); sold its B2B express business to Mahindra Logistics for ₹225 crore (~$27M) in 2022 — a 97% value destruction from peak.^34 Now operates as Mahindra Logistics's tech layer.
- **Lesson for stage:** Rivigo's collapse illustrates that freight-marketplace platforms dependent on venture subsidy in highly fragmented emerging markets face existential risk during freight downturns — even with network effects, unit economics must prove out. The same dynamic contributed to Convoy's shutdown in the US.^31
- **SEA presence: N/A** — defunct as independent entity
- **Sources:** (34)

---

### China — Freight Marketplace

**Full Truck Alliance (FTA / Manbang)**
- **What it does:** Formed from 2017 merger of Yunmanman and Huochebang; operates China's dominant road-freight matching platform via mobile app connecting shippers with truck drivers. Services: freight listing (shipper-side), freight brokerage (end-to-end matching), and online trading. Value-added: shipping management systems, credit solutions, cargo insurance, routing software, traffic-ticket management, and electronic billing for drivers.^35
- **Primary user:** Chinese shippers (SME and enterprise); Chinese truck drivers and owner-operators
- **Business model:** Commission on matched freight; credit solutions; insurance products; SaaS tools for shipping management. FY2024: total revenue RMB 11.2B (~$1.55B), +33% YoY; net income RMB 3.1B (+40% YoY); ~200M fulfilled orders (+24% YoY).^35 NYSE-listed (YMM).
- **Risk angle at dispatch:** Insurance products for shippers and carriers; credit solutions to fund cargo; routing software provides driver verification layer; freight brokerage service provides end-to-end responsibility vs. pure load-board
- **Pros:** Dominant Chinese platform with massive scale; profitable and growing rapidly; insurance and credit wrap reduce counterparty risk within the platform
- **Cons:** China-only; geopolitical risk (US listing + HK dual listing complexity); no SEA operations or roadmap identified; China-specific regulatory data (not FMCSA equivalent)
- **SEA presence: NO** — China-only; no SEA freight operations identified in open sources^35
- **Sources:** (35)

---

### Southeast Asia — Regional Freight Marketplaces

**Kargo Technologies (Indonesia)**
- **What it does:** Indonesia's leading digital road-freight marketplace. Connects shippers with 5,000+ shippers and handles 25,000+ daily loads.^36 Acquired TheLorry (Malaysia) in an all-stock deal, becoming the first SEA freight marketplace with cross-border Indonesia-Malaysia presence.^36 Total funding ~$38.6M over 8 rounds from Sequoia India, AC Ventures, Intudo Ventures, and Teleport (AirAsia Group subsidiary).^36
- **Primary user:** Indonesian and (post-TheLorry) Malaysian shippers and transporters
- **Business model:** Transaction commission on matched loads; SaaS tools for shippers; real-time tracking subscription for cargo monitoring
- **Risk angle at dispatch:** Real-time tracking on matched loads as basic cargo-in-transit verification; carrier network within platform has some pre-qualification but lacks FMCSA-equivalent regulatory data depth; transporter identity and vehicle registration verification on onboarding
- **Pros:** Dominant Indonesia position; only SEA marketplace with dual-country (ID+MY) coverage post-TheLorry acquisition; AirAsia/Teleport strategic backing for air+road multimodal
- **Cons:** Limited public risk-scoring detail; no equivalent of US FMCSA data to verify carrier legitimacy at deep level; Indonesia road-freight market is highly fragmented (thousands of owner-operators); funding ($38.6M total) is modest relative to market complexity
- **SEA presence: YES** — Indonesia (primary), Malaysia (via TheLorry acquisition)
- **Sources:** (36)

**Deliveree (Thailand, Indonesia, Philippines)**
- **What it does:** On-demand logistics marketplace for B2B road freight in SEA. Covers intracity deliveries, mid-mile, and long-haul city-to-city routes across Thailand (primary), Indonesia, and Philippines. Uses mobile app for shipper booking and driver matching. Trucks on Deliveree's marketplace achieve up to 80% utilization rate (vs. ~40% industry average in SEA).^37
- **Primary user:** B2B shippers (e-commerce, FMCG, retail); small carriers and owner-operator drivers in SEA
- **Business model:** Commission on matched loads; subscription for business accounts; pricing per trip
- **Risk angle at dispatch:** Driver identity verification on onboarding; GPS tracking on all trips; basic cargo insurance available; no advanced carrier-fraud or double-brokering detection (risk environment differs from US — less organized fraud, more informal operational risk)
- **Pros:** Multi-country SEA presence; strong in Thailand; improving driver utilization rates reduces empty-mile economic pressure; genuine B2B freight focus (not last-mile parcel)
- **Cons:** No advanced TMS features for enterprise shippers; limited procurement/RFP functionality; carrier vetting is basic; no published fraud-statistics for SEA equivalent of TIA survey
- **SEA presence: YES** — Thailand (primary), Indonesia, Philippines
- **Sources:** (37)

**Shipsy (India + SEA expansion)**
- **What it does:** AI-native TMS/logistics orchestration platform. Recognized as Niche Player in 2024 Gartner MQ for TMS.^38 Operates from London, Amsterdam, Riyadh, Dubai, Singapore, Sydney, and innovation hubs in India. 230+ customers across 30+ countries; Indonesia office.^38
- **Primary user:** Mid-to-large shippers, 3PLs, and logistics service providers in India, Middle East, and SEA
- **Business model:** SaaS subscription; AI module pricing by feature
- **Risk angle at dispatch:** AI-powered carrier allocation and load assignment with compliance guardrails; LIA Co-pilot for exception management; intelligent allocation to reduce human dispatch errors
- **Pros:** Only APAC-native vendor in 2024 Gartner MQ TMS (Niche Player); genuine SEA presence (Singapore, Indonesia offices); Mid-East + India customer base providing APAC-adjacent reference; AI-native architecture
- **Cons:** Niche Player (not Leader or Challenger) in Gartner MQ — execution capability gap vs. Oracle/SAP/Blue Yonder; revenue not disclosed; risk features are more operational than counterparty-fraud-specific
- **SEA presence: YES** — Singapore (office), Indonesia (office); customer presence in 30+ countries
- **Sources:** (38)

---

### Manual Workarounds (First-Class Solution Category)

**Email RFP + Excel bid comparison**
- **What it does:** Dominant freight-procurement method globally for shippers without a procurement TMS. Shipper compiles lane list in Excel, emails to carrier/broker list, receives bids by email, manually normalizes into a comparison spreadsheet, and awards lanes. NITL's 2024 RFP Playbook documentation confirms this as the standard process even for sophisticated shippers.^2
- **Primary user:** Mid-size shippers globally; dominant method in SEA and India for all but the largest 3PLs
- **Pain:** 4–6 week cycle; high error rate from manual data entry; carriers bid low to win lanes and reject loads at spot market peaks ("rate gaming"); no audit trail for bid submissions; no behavioral risk signal on which carriers are likely to honor commitments vs. reject
- **SEA relevance:** This is the *dominant* method for freight procurement in Indonesia, Thailand, and Malaysia outside the top-10 shippers — confirmed by hypothesis in the input brief and consistent with World Bank LPI data showing low digital-logistics adoption in lower-middle-income ASEAN markets
- **SEA presence: YES (as the incumbent "solution")** — dominant in SEA by default

**Phone tender + WhatsApp dispatch**
- **What it does:** Individual load tenders communicated by phone call or WhatsApp message to truck driver or transporter. BOL and delivery instructions sent as WhatsApp photo or PDF. Common in Indonesia, Thailand, India, and among small US/EU carriers.
- **Primary user:** Small transporters and owner-operators; SME shippers who lack TMS connectivity
- **Pain:** No confirmation audit trail; driver identity unverified at tender time; no ETA visibility post-dispatch; no escalation path when driver does not show; cargo loss or diversion is detected only at delivery failure
- **SEA relevance:** Default dispatch method for the vast majority of SEA road-freight volume (thousands of small fleet operators and owner-operators)
- **SEA presence: YES (dominant in SEA)**

---

## Preliminary Pain Points (Stage 2)

1. **Double-brokering fraud at spot-market booking is structurally uncontrolled**: Verisk CargoNet (Tier 3 actuarial) measured $454.9M in 2024 cargo theft losses across US+Canada (3,625 incidents; physical + fraud combined), rising to $725M in 2025 — independently confirmed by FBI/IC3 PSA260430 (Apr 30 2026, Tier 1 primary-gov).^39a,^39b Truckstop 2024 Freight Fraud Report (superseded as primary citation).^39 Double-brokering complaints are up 400% since 2022. Average per-load fraud cost was [ASSUMED-N]: ~$40,760 (TIA 2024 Fraud Survey, n~200 member respondents, methodology not publicly disclosed; no independent actuarial or government cross-validator).^4 The spot-market load board — the primary mechanism for capacity gap-filling — is the single highest-fraud-density touchpoint in the entire freight journey. In SEA and India, equivalent structural data does not exist, but informal broker networks create analogous identity-fraud risk without any digital verification layer.

2. **Tender rejection / routing-guide failure is endemic but poorly measured**: Tender rejection rates above 7–8% are inflationary (spot rates rise when carriers decline contracted loads); above 13%, routing guides are effectively broken.^3 Enterprise TMS systems log rejections but do not predict them in advance — a carrier can accept a tender electronically and then fail to show up, with no pre-dispatch signal available to the shipper. In SEA, where tenders are issued by phone/WhatsApp, there is no electronic record of acceptance or rejection at all.

3. **Annual RFP cycle locks in stale rates**: Shippers running annual freight RFPs lock in contracted rates that reflect market conditions at bid time; when spot rates fall below contract rates, carriers rationalize their books by rejecting those contracted loads. The NITL 2024 RFP Playbook confirms the annual-tender model is the dominant practice even among sophisticated shippers.^2 Emerge's Dynamic RFP attempts to solve this but has penetrated a small fraction of the market ($9.8M SaaS revenue vs. multi-billion addressable spend).^28

4. **RFP data quality collapse from Excel-email workflows**: Major shippers send 45-tab Excel workbooks with 10,000 lanes to carrier pricing teams, who spend 2 weeks manually copy-pasting historical rates and hunting data — according to Emerge and freight-procurement trade press.^2 Data errors introduced in this process lead to incorrect rate awards, post-award disputes, and lane re-tendering. In SEA, this process is even less structured — rates are often quoted verbally or via WhatsApp, with no standardized lane-level data.

5. **No pre-dispatch verification that the carrier who accepted the tender is the same carrier who will pick up the load**: Current TMS systems confirm electronic tender acceptance but do not verify driver identity, truck VIN, or carrier operational status at the moment of pickup. Highway's Trusted Freight Exchange (TFX) addresses this at the US broker layer, but no equivalent exists in SEA.

6. **Carrier capacity signals are lagging and unreliable**: Routing guides assume primary carriers have available capacity; in practice, carriers over-commit during peak periods and under-commit during slow periods. No real-time carrier capacity signal is visible to shippers at the tender stage — they rely on historical acceptance rates, which are backward-looking.

7. **Small and mid-market shippers cannot access enterprise TMS procurement features**: Oracle OTM, SAP TM, and Blue Yonder implementations require $1M–$5M and 12–24 months — entirely inaccessible to the SME shipper tier that dominates SEA road freight. Kargo, Deliveree, and Vahak partially fill this gap but lack the procurement-automation and risk-verification depth of enterprise TMS.

8. **SEA freight marketplaces have shallow carrier identity verification**: Kargo (Indonesia/Malaysia), Deliveree (Thailand/Indonesia/Philippines), and Vahak (India) all verify basic driver/carrier identity on onboarding (license, vehicle registration), but none have access to the equivalent of FMCSA's safety/authority database, CMR compliance history, or cross-platform fraud-signal networks. The absence of a centralized carrier registry in Indonesia, Thailand, or Malaysia means verification is limited to document review, not dynamic risk scoring.

9. **Sub-contracting is invisible to the shipper's TMS**: Even when a shipper uses an enterprise TMS to tender a load to a 3PL, the 3PL may sub-contract to a smaller carrier without logging the sub-assignment in the TMS. The shipper's visibility ends at the 3PL tier. This is the "subcontracting gap" described in the input hypothesis — the venture's core whitespace.

10. **Broker gross margins incentivize opacity**: Digital freight brokers (Uber Freight, J.B. Hunt 360, Coyote/RXO) monetize the bid-ask spread between shipper rate and carrier rate. Greater carrier-identity transparency or real-time carrier-capacity data would compress this spread, making broker platforms commercially resistant to publishing carrier-level risk data to shippers.

11. **Convoy's shutdown (October 2023) demonstrates digital-broker model fragility**: Convoy raised ~$900M but could not sustain unit economics through the 2023 freight downturn when shippers shifted to contracted carriers who offered lower rates.^31 Rivigo's near-total value destruction ($1.05B → $27M acquisition) in India is an analogous case.^34 Both illustrate that digital freight marketplace businesses are highly cyclical and dependent on capacity-demand imbalance — the exact conditions that also drive carrier fraud.

12. **Post-dispatch communication in SEA defaults to unstructured channels**: After a load is tendered via phone/WhatsApp in Indonesia or Thailand, the shipper has no automated alert if the driver is delayed, diverts, or fails to deliver. Cargo loss detection is delayed until the consignee reports non-delivery — which can be 12–72 hours after the pickup window in long-haul trucking.

---

## Sources for this stage

(1) Shipsy recognized as Niche Player in 2024 Gartner MQ for TMS: https://news.webindia123.com/news/Articles/Asia/20240404/4184643.html

(2) NITL RFP Playbook 2024 (Industry Guide to Navigating the RFP Process): https://www.nitl.org/wp-content/uploads/2024/10/RFP-Playbook-Final-October-2024-1.pdf — [NEEDS-ATTENDED-FETCH]: PDF appears accessible but was not retrieved via cache helper. Content summary sourced from trade-press descriptions.

(3) Tender rejection rate data (13% threshold): https://www.dat.com/resources/freight-procurement-playbook-shippers

(4) TIA State of Fraud in the Industry 2024 Report — Key Findings: https://news.tianet.org/key-findings-from-the-tia-fraud-report-2024/

(5) Emerge funding and business model: https://www.freightwaves.com/news/emerge-raises-130m-series-b-to-scale-digital-freight-marketplace (trade press; FreightWaves, Tier 9)

(6) MercuryGate carrier integrations (100,000+): https://www.silicon.co.uk/press-release/nucleus-research-releases-2024-transportation-management-technology-value-matrix (Nucleus Research TMS Value Matrix 2024, via press release)

(7) MarketsandMarkets TMS market forecast ($18.5B–$37.0B, CAGR 14.9%): https://www.marketsandmarkets.com/ResearchInsight/transportation-management-market.asp

(8) Global Market Insights TMS market ($15B in 2025, $40.3B by 2035): https://www.gminsights.com/industry-analysis/transportation-management-system-market

(9) QKS Group TMS market ($6.3B by 2030, CAGR 6.7% — pure software scope): https://www.globenewswire.com/news-release/2024/12/04/2991716/0/en/Transportation-Management-System-TMS-Market-Size-Expected-to-Reach-6-3-billion-by-2030-At-a-CAGR-of-6-7-as-per-the-Exclusive-Report-from-QKS-Group.html

(10) Dataintelo freight procurement platform market ($1.84B in 2024): https://dataintelo.com/report/freight-procurement-platforms-market

(11) Precedence Research digital freight brokerage market ($7.51B in 2025 → $78.3B by 2035): https://www.precedenceresearch.com/digital-freight-brokerage-market

(12) US TMS market 2024 ($4.8B) — trade-press synthesized consensus: https://talkinglogistics.com/2024/03/13/what-is-the-size-of-the-transportation-management-systems-market/

(13) IMARC Group Southeast Asia logistics market ($211.5B in 2024): https://www.imarcgroup.com/southeast-asia-logistics-market

(14) Mordor Intelligence ASEAN road freight transport market ($119.4B in 2025): https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market

(15) Oracle named Leader in 2024 Gartner MQ TMS (17th time): https://www.oracle.com/news/announcement/oracle-named-a-leader-in-gartner-mq-transportation-management-systems-2024-04-10/

(16) Oracle Transportation Management product page (for existence confirmation only): https://www.oracle.com/scm/logistics/transportation-management/

(17) SAP named Leader in 2024 Gartner MQ TMS (10th consecutive year): https://news.sap.com/2024/04/sap-named-a-leader-2024-gartner-magic-quadrant-transportation-management-systems/

(18) Blue Yonder TMS 2024 Year in Review (45M monthly shipments): https://logisticsviewpoints.com/2025/03/10/blue-yonder-2024-year-in-review/

(19) Manhattan Associates TMS cross-sell rate (80% TMS+WMS): https://www.manh.com/about-us/newsroom/press-releases/manhattan-associates-reports-record-fourth-quarter-full-year-results

(20) Manhattan Associates FY2024 total revenue ($1.0B): https://www.sec.gov/Archives/edgar/data/0001056696/000095017024116242/manh-ex99_1.htm (SEC Form 8-K)

(21) e2open named Leader in 2024 Gartner MQ TMS: https://www.e2open.com/news/press-releases/e2open-again-positioned-as-a-leader-in-2024-gartner-magic-quadrant-for-transportation-management-systems/

(22) e2open acquisition of BluJay Solutions ($1.7B): https://www.dcvelocity.com/articles/51030-e2open-lays-down-17-billion-to-buy-blujay-solutions/

(23) WiseTech Global acquisition of e2open ($2.1B, May 2025): https://www.marketsandmarkets.com/ResearchInsight/transportation-management-market.asp

(24) e2open FY2024 revenue (~$610M): https://investors.e2open.com/news/news-details/2024/E2open-Announces-Fiscal-2024-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx

(25) McLeod Software revenue ($70.8M) and customer base (354+ companies): https://www.cbinsights.com/company/mcleod-software

(26) Trimble completes Transporeon acquisition (~$2.0B, April 2023); Transporeon ~€190M revenue (2023): https://investor.trimble.com/news/news-details/2023/Trimble-Completes-Transporeon-Acquisition-04-03-2023/default.aspx

(27) Emerge $130M Series B; Dynamic RFP procuring $4B+ in freight; 45,000+ carrier network: https://www.freightwaves.com/news/emerge-raises-130m-series-b-to-scale-digital-freight-marketplace

(28) Emerge 2024 revenue ($9.8M, Latka estimate — unaudited): https://getlatka.com/companies/emerge

(29) Truckstop "Risk Factors" carrier-vetting product (Asset/Contact/Digital risk categories): https://www.overdriveonline.com/business/article/15682274/truckstop-load-boards-new-risk-factors-carriervetting-product

(30) J.B. Hunt 360: ICS Marketplace revenue $205M (+36% YoY, 2024); $1B annual run rate; J.B. Hunt #2 Transport Topics Top 100 (gross revenue ~$8B): https://investor.jbhunt.com/~/media/Files/J/jb-hunt-ir/financial-reports/financial-statement/2024/Q4.pdf (SEC-registered investor document)

(31) Convoy shutdown October 2023 — Axios Seattle: https://www.axios.com/local/seattle/2023/10/26/convoy-trucking-company-closing-why-explained

(32) Alpega Group — Challenger in 2024 Gartner MQ TMS; 80,000+ carrier network; Connecta launch (October 2024): https://www.businesswire.com/news/home/20240417652913/en/Alpega-Group-Recognized-as-a-Challenger-in-the-2024-Gartner-Magic-Quadrant-for-Transportation-Management-Systems

(33) Vahak — 20 lakh+ transporters, 8 lakh+ trucks, 20K+ daily loads; $25.9M funding: https://www.nasdaq.com/press-release/indias-largest-open-marketplace-for-road-transportation-vahak-loads-up-$14m-series-a

(34) Rivigo sold B2B express to Mahindra Logistics for ₹225 crore (~$27M); peak valuation $1.05B: https://xpertway.com/rivigo-and-mahindra-logistics/

(35) Full Truck Alliance FY2024: revenue RMB 11.2B (~$1.55B) +33% YoY; net income RMB 3.1B +40% YoY; ~200M fulfilled orders +24% YoY: https://www.ajot.com/news/chinas-full-truck-alliance-eyes-hong-kong-listing-strong-2025-growth-says-executive

(36) Kargo Technologies: 5,000+ shippers, 25,000+ daily loads; $38.6M funding; TheLorry acquisition (all-stock): https://www.dealstreetasia.com/stories/indonesia-kargo-funding-285006 and https://logistics.asia/teleport-invests-in-indonesias-kargo-technologies/

(37) Deliveree — B2B road freight SEA; 80% truck utilization rate; Thailand/Indonesia/Philippines coverage: https://techcrunch.com/2022/06/26/deliveree-is-smoothing-southeast-aseas-bumpy-logistics-landscape/

(38) Shipsy Niche Player 2024 Gartner MQ TMS; Singapore + Indonesia offices; 230+ customers in 30+ countries: https://news.webindia123.com/news/Articles/Asia/20240404/4184643.html

(39) Freight fraud losses $455M+ in 2024 (Truckstop 2024 Freight Fraud Report) — **(superseded)**: https://www.trucknews.com/transportation/freight-fraud-losses-surpass-455m-in-2024/1003196726/ — [NEEDS-ATTENDED-FETCH]: HTTP 403 from CloudFront geo-block; figure corroborated by TIA Fraud Report (source 4) and Commercial Carrier Journal coverage. Superseded as primary citation by 39a + 39b below.

(39a) Verisk CargoNet 2024 cargo theft analysis (primary actuarial; Tier 3) — $454.9M total US+Canada cargo theft losses in 2024 (3,625 incidents; average value per theft $202,364; strategic theft rose 1,475% between 2022-2024): https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/

(39b) FBI / IC3 Public Service Announcement PSA260430 (Apr 30 2026; Tier 1 primary-gov) — independently confirms Verisk CargoNet 2025 figure: "In 2025, estimated cargo theft losses in the United States and Canada surged to nearly $725 million (60 percent increase from 2024), while confirmed cargo theft incidents increased by 18 percent. The average value per theft rose 36 percent to $273,990." Cites Verisk CargoNet as underlying actuarial source: https://www.ic3.gov/PSA/2026/PSA260430

---

## Assumptions to Validate

[ASSUMED-1]: Sleek Technologies (ShipperWorks) capabilities described as purpose-built SaaS for mid-size shipper freight procurement, integrating with major TMS platforms and reducing RFP cycle time vs. email/Excel. Revenue and customer scale undisclosed. No independent customer validation found.
- To validate: Ask a US mid-size shipper logistics director whether they evaluated or adopted ShipperWorks vs. Emerge for RFP automation, and what drove the decision.

[ASSUMED-2]: RXO (Coyote Logistics) has no SEA brokerage operations. Assessment based on absence of any APAC press release, office listing, or customer case study.
- To validate: Review RXO's most recent 10-K (annual report) geographic revenue breakdown; check RXO investor relations page for APAC segment disclosure.

[ASSUMED-3]: The dominant freight-procurement method in Indonesia, Thailand, and Malaysia for mid-size shippers is still email/spreadsheet RFP or phone/WhatsApp tender — not a digital procurement platform.
- To validate: Ask logistics managers at 3–5 Indonesian/Thai/Malaysian FMCG or manufacturing companies whether they use any digital freight procurement tool, or whether they still rely on manual processes.

[ASSUMED-4]: No FMCSA-equivalent regulatory carrier registry exists in Indonesia, Thailand, or Malaysia that a digital marketplace could use as the primary data source for carrier identity and safety verification.
- To validate: Confirm with Indonesia's Ministry of Transportation (Kemenhub), Thailand's Department of Land Transport (DLT), and Malaysia's Commercial Vehicle Licensing Board (CVLB) whether they publish open, API-accessible carrier registration and safety data.

[ASSUMED-5]: Coyote Logistics operating under RXO since XPO spinoff in 2022; still operating as carrier app / contracted-carrier load board.
- To validate: Check RXO's investor relations page for Coyote branding update and current service offering.
