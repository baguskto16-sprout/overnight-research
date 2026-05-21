# Stage 4: Multi-Leg Handoffs — Subcontractor Chain Integration & Control Towers

*Freight risk-management solutions — worldwide scan*
*Stage drafted: 2026-05-20*

---

## Stage Overview

This is the leg where physical custody transfers across parties — 3PL to sub-carrier, road to ocean, port to inland rail — and where the signal collapses. The actor set is not a single company type but an *orchestration stack*: control towers that attempt a unified view, carrier-integration platforms that try to pipe data from small carriers into that view, customs/cross-border orchestration tools that handle regulatory handoffs, and the mobile apps and EDI clearinghouses that form the "last-mile" integration layer to the long tail of owner-operators and regional carriers who are otherwise invisible.

Working hypothesis WH2 — "RTTVPs see shipper-tendered loads but lose signal once a 3PL subcontracts to a small carrier" — is substantially evidenced here. McKinsey's 2025 Global Supply Chain Leader Survey (n = 100 global supply chain leaders) found that 95% of respondents have visibility into Tier 1 supplier/carrier risks, but only 42% have visibility extending to Tier 2 or beyond.(1) For the freight-specific subcontracting layer, Shippeo documents the mechanism precisely: "If the subcontractor's vehicle isn't already connected with the visibility platform, then there can be no real-time tracking of the shipment."(2) project44, the largest RTTVP by revenue, connects 240,000+ carriers in its network — against an estimated US active carrier universe of ~787,000 (per FMCSA data cited in Stage 1) and a global carrier universe orders of magnitude larger. The carrier-coverage gap is structural, not incidental.

---

## Solution Categories

### Category 1: Multi-Party Enterprise Control Towers

These platforms ingest data from multiple carriers, 3PLs, customs systems, and ERP/TMS layers to provide a single orchestrated view across handoffs. Primary user is the enterprise shipper or 4PL operator.

**project44 Movement**
- **What it does:** Cloud-native multimodal visibility platform covering road, ocean, air, and rail; connects shipper view to 3PL and carrier tier; provides ETA prediction, exception management, and an AI agent layer ("Movement Intelligence") for automated disruption response. Unveiled ocean-to-rail visibility in 2024 covering container movements across modes in a single pane.(3)
- **Primary user:** Enterprise shipper, large 3PL
- **Business model:** SaaS subscription per shipment / per lane; tiered by volume and module
- **Geography + SEA presence:** Global (Chicago HQ); APAC presence; added 8M+ Chinese OTR vehicles to network in 2024, covering "94% of world's largest shippers'" China lanes. SEA carrier coverage depends on carrier API or ELD onboarding, which is thin below the multinational 3PL tier in SEA.(4)
- **Public traction:** FY 2024: >30% YoY growth in SaaS and GAAP revenue; 240,000+ connected carriers; 1,000+ brand customers (Toyota, Coca-Cola European Partners, Kawasaki, Constellation Brands); Gartner Magic Quadrant Leader for RTTVP 4th consecutive year (2024), ranked highest on "Ability to Execute."(4)(5) Total funding $912M; valuation $2.6–2.7B.(6)
- **Sub-carrier depth:** Network of 240,000 carriers, not 4M as sometimes claimed. The "4M" figure refers to drivers/assets within ELD/telematics providers connected via API, not independently onboarded carrier entities. Below the 3PL tier, small spot-market sub-carriers without ELD or TMS integration are not covered — confirmed by the mechanism Shippeo describes.(2)

**FourKites**
- **What it does:** Real-time supply chain visibility and control tower platform; covers road, ocean, rail, and parcel; Premier Carrier Program recognizes carriers by tracking compliance score bi-annually.
- **Primary user:** Enterprise shipper, 3PL
- **Business model:** SaaS subscription; positive cash flow as of 2024 (Gartner noted absence of debt).(5)
- **Geography + SEA presence:** Global (Chicago HQ); APAC office; Singapore customers. Carrier network grew 31% in 2023; 3.2M+ connected facilities.(7)
- **Public traction:** Revenue $114.3M (FY 2024, Latka estimate — medium confidence); 1,500+ global customers; 50%+ Fortune 500 penetration; Gartner MQ Leader 2024 (4th consecutive year).(5)(7)
- **Sub-carrier depth:** Premier Carrier Program rewards tracking compliance among already-integrated carriers; does not extend to sub-carriers who are not in the network. Same structural gap as project44.

**E2open (formerly BluJay, GT Nexus combined)**
- **What it does:** End-to-end supply chain platform covering TMS, global trade management, demand sensing, and logistics visibility; cloud-based multi-tenant TMS with carrier network access across modes; control tower layer provides cross-enterprise visibility including 3PL and sub-contractor tiers where integration exists.
- **Primary user:** Large enterprise shipper, global manufacturer
- **Business model:** SaaS subscription; named a Leader in 2024 Gartner MQ for Transportation Management Systems.(8)
- **Geography + SEA presence:** Global (Irving, TX HQ); NYSE-listed (ETWO); SEA enterprise customers in manufacturing and retail.
- **Public traction:** FY 2024 GAAP revenue $634.6M total.(9)
- **Sub-carrier depth:** Carrier network breadth depends on pre-integrated carrier EDI/API partners; spot sub-carrier on-ramp not differentiated from project44 or FourKites.

**SAP Business Network for Logistics (formerly SAP Ariba Supply Chain)**
- **What it does:** Multi-enterprise supply chain collaboration network connecting buyers, suppliers, logistics providers, and customs agencies; logistics control tower module provides cross-tier visibility and exception management.
- **Primary user:** Large enterprise shipper (SAP ERP customer base)
- **Business model:** SaaS module within SAP landscape; priced per transaction volume and network membership
- **Geography + SEA presence:** Global; dominant in SEA manufacturing, automotive, and F&B enterprises using SAP ERP — Singapore, KL, Jakarta offices.(10)
- **Sub-carrier depth:** Visibility depth is limited to parties registered on SAP Business Network; small sub-carriers below the 3PL are not likely to be registered.

**IBM Sterling Supply Chain Control Tower**
- **What it does:** AI-powered real-time supply chain visibility with predictive disruption alerts; integrates with IBM Sterling B2B Integration SaaS for EDI-based multi-party data exchange across carriers, suppliers, and logistics providers.
- **Primary user:** Large enterprise shipper, manufacturer
- **Business model:** IBM Cloud SaaS subscription; IBM consulting services layer typically required for implementation
- **Geography + SEA presence:** Global; IBM has SEA enterprise presence (Singapore, Malaysia, Indonesia)
- **Sub-carrier depth:** B2B integration layer handles EDI-capable partners; sub-carriers without EDI capability require a separate onboarding approach.

---

### Category 2: 3PL-Native Control Towers

These are control tower capabilities built and operated by large 3PLs for their own customers — not sold as standalone software.

**Kuehne+Nagel Sea Explorer / Air Visibility**
- **What it does:** seaexplorer.com tracks real-time container positions, port conditions, and vessel status for K+N Sea Logistics customers; similarly structured for air visibility. Serves as K+N's customer-facing control tower for ocean legs.
- **Primary user:** K+N shipper customer (not third-party sold)
- **Business model:** Included in K+N logistics service contracts; enables K+N to retain account stickiness
- **Geography + SEA presence:** Global; K+N operates across SEA including Singapore, Thailand, Indonesia, Malaysia, Vietnam
- **Revenue context:** K+N Sea Logistics net turnover CHF 9.3B (2024); Air Logistics CHF 7.3B.(11)
- **Sub-carrier depth:** Covers K+N-managed legs; sub-carrier trucking tails managed regionally with varying tracking depth; no public disclosure of sub-carrier tracking rate.

**DHL Supply Chain / Resilience360 (now Everstream Analytics)**
- **What it does:** DHL's supply chain risk and visibility platform, partially spun/sold; Everstream Analytics provides supply chain risk intelligence to enterprise shippers independently. DHL MySupplyChain provides customers with shipment status across DHL-operated legs.
- **Primary user:** DHL shipper customer (MySupplyChain); enterprise risk officer (Everstream)
- **Business model:** Bundled with DHL contract; Everstream is standalone SaaS
- **Geography + SEA presence:** Global; DHL has extensive SEA presence
- **Sub-carrier depth:** Covers DHL-managed legs; sub-carrier trucking tails have the same gap as K+N.

**Maersk Logistics (Twill / Maersk Control Tower)**
- **What it does:** A.P. Moller – Maersk's integrated logistics arm provides end-to-end supply chain management including control tower services for large shipper accounts; 2024 total revenue $55.5B; Logistics & Services revenue meaningful but not separately broken out in publicly available summary.(12)
- **Primary user:** Enterprise shipper using Maersk end-to-end service
- **Business model:** Bundled with Maersk integrated logistics contracts
- **Geography + SEA presence:** Global; strong SEA ocean hub presence (Singapore, Port Klang, Tanjung Pelepas)
- **Sub-carrier depth:** Inland trucking sub-contractors in SEA markets vary widely in tracking capability; no public disclosure.

---

### Category 3: Carrier-Network Integration Platforms

These platforms solve the "how do you get the long tail of carriers onto a visibility network" problem — primarily through mobile apps, ELD integrations, and EDI clearinghouses.

**Descartes Global Logistics Network (GLN) + MacroPoint**
- **What it does:** Two-layer platform: GLN is a multi-enterprise logistics messaging network connecting 26,000+ customers and 200,000+ connected parties across 160 countries for shipment orders, invoices, customs documents, and track/trace data; MacroPoint is the carrier-visibility layer, connecting 100,000+ carriers via ELD or mobile app for real-time location tracking.
- **Primary user:** 3PL, freight broker, shipper (GLN); broker, 3PL (MacroPoint)
- **Business model:** SaaS subscription per user/seat + per-transaction fees for GLN; MacroPoint subscription per broker seat
- **Geography + SEA presence:** Global (Waterloo, Canada; TSX/NASDAQ: DSGX); Singapore and APAC offices; GLN serves customs in 160+ countries. MacroPoint mobile app has 600,000+ downloads, primarily US-focused; SEA carrier integration is thin — FMCSA-dependent FraudGuard is US-only, but GLN's customs connectivity extends to SEA.(13)(14)
- **Public traction:** Fiscal 2025 (ended Jan 2025) services revenue $590.2M; GLN network: 26,000 customers, 200,000 connected parties; MacroPoint: 100,000+ carriers, 600,000+ app downloads.(13)(15)
- **Sub-carrier depth:** MacroPoint app is the primary on-ramp for small carriers without ELD; 600,000+ app downloads represents meaningful reach into owner-operators; however, tracking compliance rates among non-top-1% carriers not publicly disclosed.

**Trucker Tools**
- **What it does:** Driver/carrier mobile app targeting owner-operators and small fleets (<5 trucks); provides real-time load visibility (GPS), load matching, book-it-now automated booking, and ELD integration fallback; primary value prop to 3PLs is "long-tail carrier" visibility onboarding via smartphone rather than requiring EDI or ELD integration.
- **Primary user:** Owner-operator, small carrier; 3PL/broker accessing via API/TMS integration
- **Business model:** App free for carriers; 3PL/broker pays per-tracking or SaaS subscription
- **Geography + SEA presence:** US-primary; 900,000+ app downloads by owner-operators and small-carrier fleets.(16) No confirmed SEA presence.
- **Sub-carrier depth:** This is precisely the "long-tail sub-carrier" tool category. 900,000 downloads against an estimated US carrier universe of 787,000 active interstate carriers (FMCSA) suggests broad but not universal penetration; carrier acceptance/compliance rate on active loads is not publicly disclosed.
- **Integration note:** McLeod Software PowerBroker and 3PL Systems Brokerware have certified TMS integrations; not acquired by McLeod (earlier-assumed acquisition not confirmed — integration partnership only).(16)

**Descartes MacroPoint mobile app / app-based carrier onboarding**
See GLN entry above. MacroPoint for Truckers app is the direct competitor to Trucker Tools in the "get the small carrier to share GPS via phone" space.

**EDI Clearinghouses: SPS Commerce, OpenText Trading Grid (formerly GXS), Cleo**
- **What they do:** B2B integration networks that translate and route EDI messages (850 purchase orders, 856 ASNs, 214 shipment status, 210 freight invoices) between shippers, 3PLs, and carriers at scale; the underlying "plumbing" through which most enterprise-to-enterprise logistics data flows. SPS Commerce has 120,000+ companies on its network; OpenText Trading Grid (NYSE: OTEX) acquired GXS in 2014 and serves large enterprise B2B integration.
- **Primary user:** Shipper, 3PL, retailer requiring EDI compliance from carriers
- **Business model:** Per-transaction fees + monthly subscription per trading-partner connection
- **Sub-carrier depth:** EDI integration requires the carrier to have an EDI capability — which small carriers and owner-operators do not have. This is the structural reason app-based visibility (Trucker Tools, MacroPoint app) exists as a parallel track.(17)

---

### Category 4: Cross-Border / Customs Orchestration

**CrimsonLogic / GeTS — Singapore TradeNet + CALISTA**
- **What it does:** CrimsonLogic is the operator of Singapore TradeNet (Singapore's National Single Window, launched 1989), which processes all import/export/transhipment permit declarations electronically; CALISTA is CrimsonLogic's broader global supply chain orchestration platform covering logistics, compliance, and trade finance flows. GeTS (subsidiary) provides ASEAN customs connectivity — CrimsonLogic is described as "the only service provider with full ASEAN customs connectivity."(18) The ASEAN Single Window (ASW) has connected all 10 ASEAN member states and, as of 2024, has facilitated exchange of 4M+ electronic documents, saving ASEAN businesses >$6.4B.(19)
- **Primary user:** Customs broker, freight forwarder, importer/exporter
- **Business model:** Government-mandated SaaS subscription (TradeNet front-end providers charge traders per declaration); CALISTA is a SaaS subscription for logistics/trade orchestration
- **Geography + SEA presence:** Singapore origin; 40+ countries, offices in 19 countries; ASEAN customs backbone. Revenue: ~$341M (2024, ZoomInfo estimate — medium confidence; net sales +8.48% in 2024).(20)
- **Sub-carrier depth:** Customs/compliance coverage only; does not track carrier location or sub-carrier handoffs.

**Descartes Customs Info / Descartes Denied Party Screening**
- **What it does:** Global customs content and compliance data (HS classifications, duty rates, trade agreements) and denied-party / sanctions screening; complements GLN as the regulatory compliance layer on cross-border shipments.
- **Primary user:** Shipper, customs broker, 3PL
- **Business model:** SaaS subscription per query or per user
- **Geography + SEA presence:** Global; Descartes has APAC presence; customs data covers SEA countries.

**Thomson Reuters ONESOURCE Global Trade**
- **What it does:** Global trade management (GTM) SaaS covering import/export compliance, HS classification, duty management, and customs filing; integrates with SAP and Oracle ERP; used by enterprise shippers moving goods across regulated borders.
- **Primary user:** Enterprise shipper, manufacturer
- **Business model:** Enterprise SaaS subscription
- **Geography + SEA presence:** Global; APAC presence through Thomson Reuters legal/compliance enterprise channels.

---

### Category 5: Sub-Carrier / Long-Tail Integration Tools (the "Visibility Gap" Layer)

This is the category with the weakest coverage globally and virtually no SEA-specific solution.

**Trucker Tools** — covered in Category 3 above.

**Shippeo Driver App**
- **What it does:** European-origin RTTVP (Paris HQ); provides spot-carrier and sub-contractor onboarding via driver smartphone app that activates without advance setup — driver downloads app, enters Tour ID, tracking begins. Designed explicitly for the "subcontractor isn't pre-connected" problem.(2) Shippeo was the biggest mover in Gartner's 2024 RTTVP Magic Quadrant, promoted to Leader for the first time alongside project44 and FourKites.(5)
- **Primary user:** 3PL, shipper (European market primary)
- **Business model:** SaaS subscription per shipper/3PL user; carrier/driver app is free
- **Geography + SEA presence:** Europe primary (France, Germany, Netherlands, Spain); APAC expansion mentioned but no confirmed SEA customer base.

**Loadsmart Driver App / Uber Freight / NEXT Trucking**
- **What they do:** US-focused digital freight marketplaces that provide driver-level GPS tracking via their own apps; useful for loads booked through those platforms but not applicable to general 3PL sub-contractor tracking.
- **Sub-carrier depth:** Coverage confined to loads on the respective marketplace; does not extend to third-party sub-contracted loads.
- **SEA presence:** None.

**GoComet (India)**
- **What it does:** AI-powered freight procurement and visibility SaaS; provides logistics control tower covering freight negotiation, shipment tracking, and analytics; India-origin, targeting enterprise shippers in India and APAC.
- **Primary user:** Enterprise shipper (India, APAC)
- **Business model:** SaaS subscription; total funding $10.3M across 3 rounds (last: Series A Feb 2022).(21)
- **Geography + SEA presence:** India primary; APAC expansion; limited confirmed SEA customer base.

**Pando (India / US)**
- **What it does:** Supply chain control tower and freight lifecycle management platform; covers freight procurement, TMS, freight audit, and logistics visibility; middleware between TMS/RTTVP and carrier/3PL tiers. Customer base includes P&G, J&J, Cummins, Siemens, Danaher.(22)
- **Primary user:** Enterprise shipper (manufacturing, CPG)
- **Business model:** SaaS subscription; Series B ($30M, May 2023, Iron Pillar lead; total $45M raised).(22)
- **Geography + SEA presence:** Chicago HQ; APAC office (India); no confirmed SEA office; APAC customers via India operations.

**Wakeo (France)**
- **What it does:** Multimodal international transport visibility platform covering ocean, air, and road; EU-focus; AI-powered ETA prediction and disruption alerts; total funding >€30M (€18M round December 2023, led by Statkraft Ventures).(23)
- **Primary user:** European enterprise shipper, 3PL
- **Business model:** SaaS subscription
- **Geography + SEA presence:** Paris HQ; EU primary; international expansion mentioned but no confirmed SEA presence.

---

### Category 6: SEA-Relevant Orchestration Platforms

**CrimsonLogic / GeTS** — covered in Category 4 above. The dominant SEA customs layer.

**Quincus (Singapore)**
- **What it does:** AI-driven logistics orchestration SaaS targeting multi-modal, multi-party logistics coordination across e-commerce, airlines, and freight in APAC; real-time supply chain visibility and route optimization.
- **Primary user:** Airline cargo, freight, e-commerce logistics
- **Business model:** SaaS subscription; backed by Boeing's venture arm (AEI HorizonX) and UP.Partners; Series B valuation >$100M (2021).(24)
- **Geography + SEA presence:** Singapore HQ; active in Singapore, Indonesia, Malaysia, Vietnam.
- **Sub-carrier depth:** Orchestration platform, not a sub-carrier tracking layer specifically; depth depends on carrier API integrations.

**Janio (Singapore)**
- **What it does:** Cross-border 4PL logistics platform for SEA e-commerce and freight; end-to-end visibility across SEA borders via proprietary technology integrating with local carriers and customs.
- **Primary user:** E-commerce shipper, regional brand
- **Business model:** 4PL service + SaaS; total funding $52.2M (Series B May 2023).(25)
- **Geography + SEA presence:** Singapore HQ; active in Indonesia, Malaysia, Thailand, Philippines, Vietnam.
- **Sub-carrier depth:** Integrates with local SEA carrier partners; visibility depth across sub-contracted legs not publicly benchmarked.

**Kargo Technologies (Indonesia)**
- **What it does:** Indonesia's largest B2B trucking marketplace (40,000+ trucks); marketplace-embedded visibility for Kargo-managed loads; acquired Malaysia's TheLorry (2024) for regional expansion. (Covered in Stage 1 for carrier vetting; repeated here for sub-carrier tracking context.)
- **Sub-carrier depth in Stage 4 context:** Tracking confined to Kargo-managed loads; does not offer sub-carrier integration product to third-party 3PLs.

**Data gap — SEA sub-carrier visibility:** No standalone platform in SEA provides the equivalent of Trucker Tools or MacroPoint app — a tool that a 3PL can deploy to gain GPS tracking from a spot sub-carrier in Thailand, Indonesia, or the Philippines who has no TMS, no ELD, and no existing platform relationship. This is the clearest whitespace in the SEA stage-4 landscape. [ASSUMED-1]: SEA 3PLs managing sub-contracted trucking legs rely on WhatsApp-based check-calls or driver phone calls for location updates — no GPS-based platform penetration below the top tier. To validate: ask 10 mid-market SEA 3PLs (Thailand, Indonesia, Malaysia) what their actual process is for tracking sub-contracted truck legs.

---

### Category 7: Insurance Across Handoffs

**Loadsure (Thames dynamic on-demand cargo insurance)**
- **What it does:** Per-load, all-risk cargo insurance issued in <40 seconds via API integration with TMS platforms; launched "Columbia — Motor Truck Cargo and Logistics Services Insurance" in Feb 2024 targeting SME carriers, brokers, and forwarders; covers multi-leg logistics services liability.(26)
- **Primary user:** Freight broker, carrier, forwarder
- **Business model:** Per-load premium (dynamic pricing based on cargo type, lane, carrier risk); Lloyd's coverholder
- **Geography + SEA presence:** UK/US origin; global Lloyd's market backing. No confirmed SEA distribution.
- **Handoff coverage:** Coverage can be structured to cover logistics services liability across legs, but liability allocation between carrier and sub-carrier at the handoff point remains contractually ambiguous.

**Parsyl (perishable cargo)**
- **What it does:** IoT-linked cargo insurance for temperature-sensitive goods (pharma, food); integrates sensor data from Parsyl-provided IoT devices into underwriting and claims; coverage follows the sensor, not the carrier.
- **Sub-carrier handoff:** If sensor data is continuous through the handoff, coverage follows; if sensor is not transferred or deactivated at the handoff, coverage break emerges.
- **SEA presence:** No confirmed SEA presence.

[ASSUMED-2]: Cargo insurance policies in SEA are structured as single-carrier policies (marine cargo, motor cargo) that do not explicitly name sub-carriers as covered parties — claims involving handoff liability ambiguity are resolved manually and slowly. To validate: review standard cargo insurance policy wordings from Tokio Marine SEA, AXA SEA, and Liberty Mutual SEA; confirm whether sub-carrier legs are covered without endorsement.

---

## Market Sizing

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global supply chain control tower market (all segments) | $9.67B (2024); projected $32.1B by 2030 at 23.0% CAGR | Low — Grand View Research single market-research firm; broad "control tower" definition includes non-freight segments | (27) |
| End-to-end multimodal shipment visibility platforms (software only) | $1.0B (2025); $1.2B (2026); $4.2B (2036) at 13.7% CAGR | Low — Future Market Insights; single market-research firm; narrow software-only definition | (28) |
| Global 3PL market gross revenues (carrier customers of these platforms) | $1.22 trillion (2024 estimate, +3.4% YoY); US 3PL gross revenues $307.9B (2024, +2.9% YoY) | Medium — Armstrong & Associates industry report, trade press confirmed | (29) |
| project44 revenue (FY 2024, SaaS) | >30% YoY growth; Latka estimate $210M; valuation $2.6–2.7B | Low — company-stated growth rate; Latka self-reported revenue; no audited 10-K (private company) | (4)(6) |
| FourKites revenue (FY 2024) | $114.3M (Latka estimate) | Low — Latka self-reported; private company; no audited filing | (7) |
| E2open total GAAP revenue (FY 2024, fiscal year ended Feb 2024) | $634.6M | High — SEC Form 8-K, public company (NYSE: ETWO) | (9) |
| Descartes services revenue (FY 2025, fiscal year ended Jan 2025) | $590.2M | High — SEC Form 6-K / 40-F, public company (TSX/NASDAQ: DSGX) | (15) |
| Kuehne+Nagel Sea Logistics net turnover (2024) | CHF 9.3B | High — K+N Annual Report 2024, public company | (11) |
| Maersk total revenues (2024) | $55.5B | High — A.P. Moller-Maersk Annual Report 2024 | (12) |
| ASEAN Single Window — electronic documents facilitated (cumulative) | 4M+ | Medium — ASEAN Secretariat / VNTR.MOIT.gov.vn; government source but aggregate only | (19) |
| ASEAN Single Window — estimated business savings | >$6.4B | Medium — ASEAN Secretariat estimate; methodology not fully disclosed | (19) |

**Data gap — control tower TAM:** No Gartner or IDC proprietary report with a specific control-tower-software TAM was accessible in this pass. Grand View Research's $9.67B figure for 2024 uses a broad definition that includes aviation, military, and non-freight segments alongside logistics. The freight-logistics-specific software sub-segment TAM is not isolated by any publicly available source found. The multimodal shipment visibility platform estimate ($1.0B, 2025) from Future Market Insights is narrower and more relevant but is a single-source figure. Country-specific SEA TAM for this sub-segment: no source found.

**Data gap — carrier coverage rate:** No public source discloses the percentage of 3PL-tendered loads that have RTTVP-verified tracking through to delivery. project44 and FourKites carrier-count figures (240K and growing respectively) represent registered network carriers, not tracking-compliance rates on individual shipments.

---

## Geography & SEA Presence Matrix

| Solution Category | Global Maturity | SEA Presence |
|-------------------|-----------------|--------------|
| Multi-party enterprise control towers (project44, FourKites, E2open, SAP, IBM Sterling) | High | Partial — top-tier enterprise only; small carrier coverage absent |
| 3PL-native control towers (K+N, DHL, Maersk) | High | Yes — 3PL-managed legs only; sub-carrier gaps |
| Carrier-network integration (Descartes GLN + MacroPoint, SPS Commerce, OpenText GXS) | High (US/EU) | Partial — GLN customs in SEA; MacroPoint app US-primary |
| Sub-carrier long-tail mobile apps (Trucker Tools, Shippeo Driver App) | Medium (US/EU) | No confirmed SEA presence |
| Cross-border / customs orchestration (CrimsonLogic/GeTS, Thomson Reuters ONESOURCE) | High | Yes — CrimsonLogic/GeTS is the ASEAN backbone; strong Singapore origin |
| SEA-native platforms (Quincus, Janio, Kargo) | Low-Medium | Yes — but not control tower in the enterprise sense; e-commerce / marketplace focus |
| Insurance across handoffs (Loadsure, Parsyl) | Low | No SEA distribution confirmed |

**SEA assessment:** Customs orchestration in SEA is mature and government-backed (Singapore TradeNet / ASEAN Single Window). Carrier-side visibility below the 3PL tier is weak. There is no SEA equivalent of Trucker Tools or Shippeo Driver App. The gap is largest for middle-market SEA shippers and regional 3PLs managing spot-subcontracted trucking.

---

## Preliminary Pain Points at This Stage

1. **WH2 evidenced — signal collapses at the 3PL-to-sub-carrier handoff.** McKinsey 2025 (n=100 supply chain leaders): 95% have Tier 1 visibility, only 42% reach Tier 2 or beyond.(1) Shippeo names the mechanism: a sub-carrier not pre-connected to the RTTVP creates a complete tracking blackout.(2) The carrier-network figures from project44 (240K carriers) and FourKites are counts of registered network partners, not coverage rates for spot-subcontracted loads — the two numbers are not the same.

2. **Multi-party data ownership is unresolved across five-party shipments.** In a typical intercontinental move — shipper contracts forwarder, forwarder contracts ocean carrier, ocean carrier dray-contracts local trucker, local trucker sub-contracts owner-operator — five parties generate or hold shipment data. No party sees the full chain. No contractual or technical standard mandates data sharing to the shipper or insurer across all legs. [ASSUMED-3]: Standard 3PL contracts in SEA do not include data-sharing clauses that require sub-carriers to report location to the shipper — to validate: request five standard 3PL service agreements from mid-market SEA 3PLs and review for location-data provisions.

3. **Control towers are effectively enterprise-only; middle-market shippers are priced out.** Grand View Research cites smaller/mid-sized enterprises postponing implementation due to cost.(30) project44 ($912M raised, $2.7B valuation) and FourKites ($114M+ revenue) price and sell primarily to enterprise shippers (Fortune 500 accounts). SME-targeting modules (e.g., Infor AI control tower December 2024) are nascent. Middle-market SEA shippers — the majority of the addressable freight market — have no practical access to multi-party control tower functionality.

4. **SEA customs orchestration is mature but carrier-side visibility below the 3PL is weak.** Singapore's TradeNet and the ASEAN Single Window (ASW) handle cross-border regulatory documents for all 10 ASEAN member states, with 4M+ electronic documents exchanged and $6.4B in estimated savings.(19) This is the strength side of SEA stage-4. The weakness: customs clearance status is known; where the truck carrying the cleared cargo is after it exits the port, and who is driving it, is not. These are separate and disconnected data flows.

5. **Insurance rarely follows the handoff — claims fall through when liability allocation is ambiguous.** Loadsure's per-load model and Parsyl's IoT-linked coverage represent progress but remain niche (US/UK-origin, no SEA distribution). Standard cargo insurance in SEA is marine cargo or motor cargo structured around a single principal carrier; sub-contracted legs introduce liability attribution ambiguity that is resolved manually when claims arise, not prevented by platform design. [ASSUMED-2].

6. **Modal handoff data is not standardized.** Truck-to-ocean handoffs involve a port terminal event (container gate-in scan) followed by a vessel tracking event — these come from different systems (terminal operating system vs. AIS vessel tracking vs. booking system). project44's ocean-to-rail visibility and Maersk's integrated platform address this for contracted legs, but the handoff data is proprietary to the carrier(s) managing each leg. A shipper whose 3PL uses Carrier A on the first leg and Carrier B on the ocean leg will see a data seam at the port gate unless both carriers are integrated to the same RTTVP instance.

7. **EDI-based carrier integration excludes the long tail.** SPS Commerce (120,000+ companies on network) and OpenText Trading Grid handle enterprise-to-enterprise EDI well, but EDI requires the carrier to have a technical implementation — owner-operators and small regional carriers in SEA have none. The gap is bridged in the US by Trucker Tools and MacroPoint; in SEA, it is not bridged at all. [ASSUMED-1].

---

## Sources for This Stage

(1) McKinsey & Company — "Supply Chain Risk Survey 2024." https://www.mckinsey.com/capabilities/operations/our-insights/supply-chain-risk-survey-2024 [Survey n=100 global supply chain leaders; 95%/42% tier visibility finding cited in McKinsey 2025 risk pulse and multiple secondary sources.]

(2) Shippeo — "Tracking spot carrier shipments: The visibility gap that doesn't have to be." https://www.shippeo.com/resources/explore/blog-newsletter/tracking-spot-carrier-shipments-the-visibility-gap-that-doesnt-have-to-be [Sub-carrier mechanism; no quantitative coverage stats available in this article.]

(3) project44 — "project44 Unveils Ocean to Rail Visibility to Increase Real-Time Intermodal Tracking." https://www.project44.com/press-releases/project44-unveils-ocean-to-rail-visibility-to-increase-real-time-intermodal-tracking/

(4) project44 — "project44 Concludes Strong FY 2024 With Over 30% Year-Over-Year Growth in Both SaaS and Total GAAP Revenue." https://www.project44.com/press-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue/

(5) Trans.info — "Shippeo the big mover in Gartner's latest Magic Quadrant for Real-Time Transportation Visibility Platforms." https://trans.info/en/real-time-transportation-visibility-platforms-383916 [project44 and FourKites remain leaders; Shippeo joins as third leader in 2024 MQ.]

(6) CBInsights / Generation Investment Management — project44 Series F raise ($80M, $2.7B valuation). https://www.generationim.com/our-thinking/news/project44-raises-80-million-valuing-company-at-27-billion-up-12-from-january-despite-widespread-downturn-in-b2b-saas-valuations/ [Total funding $912M; $2.6–2.7B valuation range from multiple sources.]

(7) FourKites — "FourKites Named a Leader in the 2024 Gartner Magic Quadrant for Fourth Consecutive Year." https://www.fourkites.com/press/fourkites-named-a-leader-in-the-2024-gartner-magic-quadrant-for-fourth-consecutive-year/ ; Revenue estimate via Latka (self-reported, confidence Low): https://getlatka.com/companies/fourkites-inc

(8) E2open — "e2open Again Positioned as a Leader in 2024 Gartner Magic Quadrant for Transportation Management Systems." https://www.e2open.com/news/press-releases/e2open-again-positioned-as-a-leader-in-2024-gartner-magic-quadrant-for-transportation-management-systems/

(9) E2open — Fiscal 2024 Q4 and Full Year Financial Results (press release). https://investors.e2open.com/news/news-details/2024/E2open-Announces-Fiscal-2024-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx ; SEC Form 8-K: https://www.sec.gov/Archives/edgar/data/0001800347/000095017024082694/etwo-ex99_1.htm

(10) SAP Business Network for Logistics product page. https://www.sap.com/resources/supply-chain-control-tower [NEEDS-ATTENDED-FETCH for detailed product specs and pricing.]

(11) Kuehne+Nagel Annual Report 2024 — Business Units. https://2024-annual-report.kuehne-nagel.com/annual-report/status-report/business-units [Sea CHF 9.3B; Air CHF 7.3B; Road CHF 3.5B; Contract Logistics CHF 4.7B net turnover.]

(12) A.P. Moller – Maersk Annual Report 2024. https://investor.maersk.com/news-releases/news-release-details/annual-report-2024 ; Maersk total revenue $55.5B, EBIT +65% to $6.5B.

(13) Descartes MacroPoint — Visibility carrier integration hub. https://macropoint.com/ ; MacroPoint app: https://carrier.descartesconnect.com/mobile-app [600,000+ app downloads; 100,000+ connected carriers.]

(14) Descartes — GLN network page. https://www.descartes.com/solutions/transportation-management/tms/descartes-global-logistics-network [26,000+ customers; 200,000+ connected parties; 160 countries.]

(15) Descartes — "Descartes Announces Fiscal 2025 Fourth Quarter and Annual Financial Results." https://www.descartes.com/resources/news/descartes-announces-fiscal-2025-fourth-quarter-and-year-end-financial-results ; SEC Form 40-F FY2025: https://www.sec.gov/Archives/edgar/data/0001050140/000092963825001603/exhibit99-1.htm

(16) Trucker Tools — 3PL Systems integration partner page. https://www.truckertools.com/integration-partner-highlight-3pl-systems/ ; "The Trucker Tools Mobile App — What You Need To Know." https://www.truckertools.com/the-trucker-tools-mobile-app-what-you-need-to-know/ [900,000+ downloads cited in trade press; McLeod partnership is an integration, not acquisition.]

(17) SPS Commerce EDI solution. https://www.spscommerce.com/products/integrations/ ; OpenText Trading Grid history: SEC Form 8-K (OpenText GXS acquisition 2014). https://www.sec.gov/Archives/edgar/data/0001002638/000100263814000004/exhibit991-pressrelease.htm

(18) CrimsonLogic — National Single Window product page. https://www.crimsonlogic.com/products-services/single-window ; CrimsonLogic ASEAN portal: https://asean.crimsonlogic.com/

(19) ASEAN Single Window — Status and implementation data cited in VNTR.MOIT.GOV.VN (Vietnamese Ministry of Industry and Trade, citing ASEAN Secretariat): https://vntr.moit.gov.vn/news/status-of-asean-single-window-implementation-and-possibility-of-upgrading-to-new-generation-asean-single-window ; Singapore Customs TradeNet overview: https://www.customs.gov.sg/businesses/national-single-window/overview/

(20) CrimsonLogic revenue — ZoomInfo estimate ($341.2M); +8.48% 2024 net sales. https://zoominfo.com/c/crimsonlogic-pte-ltd/71356690 [ZoomInfo revenue estimate; confidence Low-Medium — not an audited filing. CrimsonLogic is private.]

(21) GoComet — Crunchbase profile. https://www.crunchbase.com/organization/comet-freight-forwarding [Series A Feb 2022; total funding $10.3M.]

(22) Pando — TechCrunch Series B announcement, May 2023. https://techcrunch.com/2023/05/03/ai-powered-supply-chain-startup-pando-lands-30m-investment/ ; PR Newswire official release: https://www.prnewswire.com/news-releases/pando-raises-30-million-amidst-funding-winter-to-future-proof-enterprise-supply-chains-301814267.html

(23) Wakeo — "Wakeo Announces €18 Million in a New Funding Round Led by Statkraft Ventures," December 2023. https://wakeo.co/news/wakeo-announces-18-million-in-a-new-funding-round-led-by-statkraft-ventures/ ; Tech.eu coverage: https://tech.eu/2023/12/04/wakeo-raises-18m-for-supply-chain-visibility-and-sustainability/

(24) Quincus — "Quincus Announces Second Closing of Series B Funding Led by AEI HorizonX," PR Newswire. https://www.prnewswire.com/news-releases/quincus-announces-second-closing-of-series-b-funding-led-by-aei-horizonx-301424771.html [AEI HorizonX = Boeing's VC arm; total Series B valuation >$100M; 2021 announcement.]

(25) Janio — Nikkei Asia coverage of fresh funding round. https://asia.nikkei.com/spotlight/dealstreetasia/singapore-logistics-service-provider-janio-secures-fresh-funding ; Crunchbase total funding $52.2M: https://www.crunchbase.com/organization/janio

(26) Loadsure — "Loadsure Launches Motor Truck Cargo Insurance," Insurance Journal, Feb 13, 2024. https://www.insurancejournal.com/news/international/2024/02/13/760490.htm ; Loadsure product page: https://www.loadsure.net/dynamic-on-demand-cargo-insurance/

(27) Grand View Research — "Control Tower Market Size & Share | Industry Report 2030." https://www.grandviewresearch.com/industry-analysis/control-towers-market [NEEDS-ATTENDED-FETCH for full methodology; summary: $9,671.2M in 2024; $32,138.4M by 2030; CAGR 23.0%; North America 37.49% share in 2024.]

(28) Future Market Insights — "End-to-End Multimodal Shipment Visibility Platforms Market." https://www.futuremarketinsights.com/reports/end-to-end-multimodal-shipment-visibility-platforms-market [$1.0B in 2025; 13.7% CAGR; single-source estimate.]

(29) Armstrong & Associates — US 3PL market rebound 2024, as reported by Logistics Management. https://www.logisticsmgmt.com/article/u.s_3pl_market_rebounded_in_2024_says_new_armstrong_associates_report [US 3PL gross revenues $307.9B (2024); global $1.22T (2024).]

(30) Supply chain control tower mid-market cost barrier — FreightAmigo / ABI Research summary. https://www.freightamigo.com/en/blog/logistics/supply-chain-control-towers-revolutionizing-logistics-management-in-2024/ [Mid-market postponement due to cost confirmed; SMEs = 42% of deployments per ABI Research.]

---

## Current Players by Region

**North America:**
- project44 — global leader by revenue and network scale; Chicago HQ; 240K+ carriers; 2024 Gartner MQ Leader
- FourKites — co-leader; Chicago HQ; $114M revenue estimate; strong in consumer goods and food/bev
- E2open — TMS + control tower + GTM combined platform; Irving TX; public (NYSE: ETWO); $634.6M revenue
- Descartes Systems — GLN + MacroPoint; Waterloo CA; public (TSX/NASDAQ: DSGX); $590M services revenue
- Trucker Tools — long-tail carrier mobile app; US-only; 900K+ driver app installs; McLeod PowerBroker integration

**Europe:**
- Shippeo — Paris; Gartner MQ Leader 2024 (new); spot-carrier driver app for sub-contractor onboarding
- Wakeo — Paris; multimodal intercontinental visibility; €30M+ raised; EU primary
- SAP Business Network — Walldorf; dominant in European manufacturing enterprises with SAP ERP
- DB Schenker (connect 4.0) — Essen; 3PL-native platform; freight booking + tracking for 3PL customers
- Generix Group — Paris; EU supply chain collaboration platform for 3PLs and retailers

**Asia-Pacific / SEA:**
- CrimsonLogic / GeTS — Singapore; TradeNet operator; ASEAN customs backbone; only company with full ASEAN customs connectivity
- Quincus — Singapore; AI logistics orchestration SaaS; Boeing-backed; SEA + global
- Janio — Singapore; cross-border 4PL; SEA e-commerce + freight; $52.2M raised
- Pando — Chicago / India APAC HQ; supply chain control tower; India + APAC enterprise

**Gap noted:** No Asia-Pacific or SEA-native player provides the equivalent of Trucker Tools or Shippeo Driver App — a mobile-app-based GPS tracking tool for spot sub-contracted trucks below the 3PL tier — for the SEA market.

---

## Assumptions to Validate

[ASSUMED-1]: SEA 3PLs managing sub-contracted trucking legs rely on WhatsApp-based check-calls or driver phone calls for location updates — no GPS-based platform penetration below the top tier.
- To validate: Ask 10 mid-market SEA 3PLs (Thailand, Indonesia, Malaysia) to walk through their exact process for tracking a subcontracted truck leg from pickup to delivery; document whether any app, GPS device, or platform is used or whether contact is voice/WhatsApp-based.

[ASSUMED-2]: Standard cargo insurance policies in SEA do not explicitly name sub-carriers as covered parties; claims involving handoff liability ambiguity are resolved manually.
- To validate: Request standard motor cargo and marine cargo policy wordings from Tokio Marine SEA, AXA SEA, and Liberty Mutual SEA; confirm whether sub-carrier legs are covered without endorsement and whether claims procedures specify which party's declaration controls when multiple carriers touch a load.

[ASSUMED-3]: Standard 3PL service agreements in SEA do not include data-sharing clauses requiring sub-carriers to report location to the shipper.
- To validate: Request five standard 3PL service agreements from mid-market SEA 3PLs operating in at least two SEA countries; review clause by clause for any location-data-sharing, sub-carrier disclosure, or RTTVP-integration obligations.

[ASSUMED-4]: project44's "4M driver / vehicle" figure does not imply 4M independently onboarded carriers — it refers to assets accessible via ELD/telematics API connections, not carrier-entities with a direct platform relationship.
- To validate: Request clarification from project44 APAC sales team on the definition of "carrier" in their network statistics versus "vehicle/asset" in their ELD API stats; compare to FourKites' equivalent metric disclosure.

