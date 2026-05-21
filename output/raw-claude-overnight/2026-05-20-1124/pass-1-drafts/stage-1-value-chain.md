# Stage 1: Pre-Dispatch — Vendor Procurement & Carrier Onboarding

## Stage Overview

Before a single pallet moves, shippers, freight brokers, and 3PLs must answer a deceptively hard question: is the carrier they are about to hand a load to real, authorized, insured, financially solvent, and not a fraud front? This is the pre-dispatch vetting leg. The actor set is not a single supply chain stage but a *solutions stack* layered across five risk dimensions — counterparty identity, safety/compliance, cargo theft and fraud, insurance verification, and sanctions/KYC — all of which must clear before freight is tendered.

The scale of the problem gives this stage its urgency. Verisk CargoNet recorded 3,625 cargo theft incidents across the US and Canada in 2024, a 27% year-over-year increase, with total estimated losses of $454.9 million (average loss: $202,364 per incident).(1) Strategic theft — meaning identity-based fraud, double brokering, and impersonation — accounted for 18% of all US incidents in 2024 per the BSI Consulting / TT Club 2024 Cargo Theft Report.(2) The Transportation Intermediaries Association estimates annual US freight fraud losses (including double brokering and financial theft) at $500M–$700M; TIA President Anne Reinke has stated brokerage fraud costs could surpass $800M at current growth rates.(3) At the carrier-universe level, FMCSA data shows approximately 787,000 active interstate carriers, of which 91.5% operate 10 or fewer trucks — a deeply fragmented, hard-to-vet population that forms the core onboarding challenge.(4) In Southeast Asia (SEA), no equivalent of FMCSA's SAFER system exists; carrier-data fragmentation is structurally worse and vetting solutions designed around US regulatory data do not translate.

---

## Solution Categories

### Category 1: Carrier Onboarding & Vetting Platforms

These platforms automate the intake workflow — collecting authority, insurance, and safety data from government registries, then scoring carrier risk at onboarding and monitoring for changes continuously.

**Highway (CarrierIdentity)**
- **What it does:** Real-time carrier identity verification platform that cross-references MC/DOT authority, FMCSA data, and proprietary fraud signals to flag impersonation, MC-number hijacking, and double-brokering risk at the moment of load tender.
- **Primary user:** Freight broker, 3PL
- **Business model:** SaaS subscription per broker seat + API usage fees; fraud-index data sold as a data product
- **Geography of origin + footprint:** Dallas, TX; US-only footprint
- **SEA presence:** None
- **Public traction signals:** 1,050+ broker customers including 70 of the top 100 US brokers (as of August 2025 FTV Capital growth equity round); blocked 914,719 fraudulent email attempts in full-year 2024; investment led by FTV Capital + Lead Edge Capital (amount undisclosed).(5)(6)
- **Strengths:** Only platform with a real-time Carrier Identity registry that cross-checks live FMCSA contact-change events; weaknesses: US-regulatory-data-dependent, no international footprint

**Descartes MyCarrierPortal (MCP)**
- **What it does:** Carrier onboarding and ongoing compliance monitoring — screens carriers against legitimacy, insurance, and safety criteria; notifies customers of compliance lapses.
- **Primary user:** Freight broker, shipper
- **Business model:** SaaS subscription; acquired September 2024 by Descartes Systems for ~$24M upfront cash + up to $6M performance earn-out (per Descartes SEC 6-K filing).(7)
- **Geography of origin + footprint:** US; integrated with Descartes MacroPoint FraudGuard (launched April 2024) for an end-to-end pre-dispatch + in-transit fraud stack
- **SEA presence:** None
- **Public traction signals:** Acquisition price (~$24M upfront) signals modest but growing ARR; Descartes FraudGuard integration announced April 2024.(8)
- **Strengths:** Now backed by Descartes' global logistics network and MacroPoint tracking data; weakness: limited brand recognition outside mid-market US brokers

**Carrier411**
- **What it does:** Carrier safety-rating, SMS BASIC score, insurance, and authority monitoring; launched 2005; tracks every FMCSA-registered entity (1M+ companies in database).
- **Primary user:** Freight broker (97 of top 100 US brokers are users)(9)
- **Business model:** Per-seat SaaS subscription + per-lookup fees; web services API for TMS integration
- **Geography of origin + footprint:** US-only
- **SEA presence:** None
- **Strengths:** Deep FMCSA data integration, industry default for a decade; weaknesses: aging interface, limited fraud-specific identity features relative to Highway

**CarrierAssure**
- **What it does:** Predictive carrier performance scoring using FMCSA data + behavioral signals; integrated natively into project44's Intelligent TMS so scores appear at the bidding/tendering moment.
- **Primary user:** Shipper, 3PL (via project44 TMS)
- **Business model:** Data licensing to platform partners (project44); direct SaaS for standalone users
- **Geography of origin + footprint:** US; available globally through project44 network
- **SEA presence:** Indirect — project44 has SEA customers, but CarrierAssure scores are US-carrier-specific
- **Public traction signals:** Embedded in project44 Intelligent TMS (announced 2024); early adopters reported 4.1% cost reduction and 17% on-time-performance improvement.(10)
- **Strengths:** Embedded at the decision moment; weakness: scoring model is FMCSA-dependent, not applicable outside the US

**RMIS (now Descartes RMIS)**
- **What it does:** Carrier qualification and insurance certificate management; Descartes acquired the original RMIS business; now integrated alongside MCP to form Descartes' carrier-compliance suite.
- **Primary user:** Shipper, 3PL
- **Business model:** SaaS subscription per user/carrier monitored
- **Geography of origin + footprint:** US-centric
- **SEA presence:** None
- **Strengths:** Established insurance-verification workflow; weaknesses: duplicative with MCP post-acquisition (integration roadmap still maturing)

---

### Category 2: Carrier Data & Monitoring Services

These services provide continuous surveillance on a carrier's FMCSA authority, safety scores, and insurance status — pushing alerts when a carrier falls out of compliance post-onboarding.

**SaferWatch**
- **What it does:** Real-time FMCSA-data monitoring for carrier operating authority, insurance filings, and safety ratings; integrates with TMS platforms and dispatch software.
- **Primary user:** Freight broker, shipper
- **Business model:** Per-seat SaaS subscription; integrates with Dr. Dispatch and other TMS via API
- **Geography:** US (FMCSA-data-dependent)
- **SEA presence:** None

**DAT CarrierWatch**
- **What it does:** Continuous monitoring of carrier DOT/MC status, safety ratings, and insurance through DAT's load-board dataset; provides alerts and compliance histories.
- **Primary user:** Freight broker
- **Business model:** Bundled into DAT TruckersEdge/DAT One subscription or standalone add-on
- **Geography:** US; DAT is a subsidiary of Roper Technologies
- **SEA presence:** None

**Carrier411 Alerts**
- **What it does:** Authority, insurance, and safety-rating change alerts — monitors the same database used for onboarding and sends alerts when status changes (see Category 1).
- **Business model:** Included in Carrier411 subscription

**Truckstop Risk Factors**
- **What it does:** AI-driven risk scoring combining FMCSA data, Truckstop's proprietary load-board transaction history, VoIP-usage detection, VIN checks, and IP-address behavior to generate high/medium/low risk ratings; available as an Outlook add-in, Chrome/Edge extension, and API.
- **Primary user:** Freight broker
- **Business model:** SaaS add-on to Truckstop subscription
- **Geography:** US; Truckstop is a unit of Transport Intelligence Group
- **SEA presence:** None
- **Public traction signals:** Won FreightWaves 2025 Fraud Fighter Award; reported 57% reduction in fraud incidents among users.(11)

**Pin411**
- **What it does:** Broker-focused carrier lookup/verification tool; separate product from Carrier411; focused on broker-to-carrier performance history and community reporting.
- **Primary user:** Freight broker
- **Business model:** Per-seat SaaS
- **Geography:** US; niche player
- **SEA presence:** None

---

### Category 3: Insurance Verification / COI Management

Certificates of Insurance (COIs) are the primary proof of cargo and liability coverage a carrier presents at onboarding. The default workflow — collecting PDFs, manually reviewing, and filing — is both slow and fraud-prone. This category automates COI collection, verification, and continuous lapse monitoring.

**myCOI**
- **What it does:** AI-powered COI tracking and insurance-compliance automation; collects COIs from carriers/vendors, extracts coverage data, and flags gaps or lapses.
- **Primary user:** Shipper, property manager, construction — multi-industry but active in freight/logistics
- **Business model:** SaaS subscription; raised $5M debt financing from SaaS Capital; total funding ~$10M including Elevate Ventures, IrishAngels, VITALIZE, Sandalphon.(12)
- **Geography of origin + footprint:** Marion, Indiana; US-only
- **SEA presence:** None
- **Strengths:** AI-native COI extraction; weakness: freight-specific integrations lag behind general-vendor-management use cases

**TrustLayer**
- **What it does:** Third-party compliance automation for COI tracking, vendor onboarding, and insurance document verification; AI-native extraction from PDFs.
- **Primary user:** Broker, shipper, contractor (multi-industry)
- **Business model:** SaaS; raised $15M Series A (August 2021, Craft Ventures lead); total funding $21.98M; estimated ARR ~$3.8M per Latka (2024).(13)(14)
- **Geography:** Brandon, FL; US-only
- **SEA presence:** None

**Certificial**
- **What it does:** Smart COI platform that verifies insurance against *live* agency management system (AMS) data rather than static PDFs — the only platform in this category that checks the carrier's actual policy status in real time via direct integration with insurers and agencies.
- **Primary user:** Shipper, broker, contractor
- **Business model:** SaaS subscription (insurer/agency integration model)
- **Geography:** US
- **SEA presence:** None
- **Strengths:** Real-time policy validation is structurally superior to PDF-parsing; weakness: requires agency AMS integration adoption, limiting carrier coverage breadth

**Evident**
- **What it does:** Contractor/vendor compliance platform covering COI and license verification; used in insurance, construction, and logistics vendor-onboarding workflows.
- **Primary user:** Shipper, enterprise procurement
- **Business model:** SaaS enterprise subscription
- **Geography:** US
- **SEA presence:** None

**COITrak**
- **What it does:** Certificate management and vendor-compliance tracking; smaller specialist focused on construction and logistics.
- **Primary user:** Broker, shipper
- **Business model:** SaaS
- **Geography:** US
- **SEA presence:** None

---

### Category 4: Fraud Prevention & Carrier Identity Verification

Distinct from general carrier data monitoring, these tools focus specifically on fraud vectors: MC-number hijacking, false identity presentation, double brokering, and FMCSA contact-change manipulation.

**Highway CarrierIdentity (see also Category 1)**
- **Core fraud-specific capability:** Proprietary Carrier Identity registry that tracks FMCSA contact-change events in near-real-time; blocked 914,719 fraudulent email attempts across its network in 2024 and 1,986,995 in 2025 (117% YoY increase).(6)
- **Unique value:** First platform to instrument FMCSA contact-change manipulation as a fraud signal class

**Descartes MacroPoint FraudGuard**
- **What it does:** Evaluates billions of freight-location data points to detect false tracking signals and carrier-identity fraud during active shipments; complements MCP's pre-dispatch onboarding.
- **Launched:** April 2024
- **Business model:** Included in MacroPoint subscription (no incremental charge)
- **Primary user:** Freight broker, 3PL
- **Geography:** US; Descartes is a TSX/NASDAQ-listed Canadian company with global logistics-network reach
- **SEA presence:** Descartes has Singapore and broader APAC presence through its logistics-services network, but FraudGuard is US-carrier-data-dependent.(8)

**Truckstop Risk Factors** (see Category 2 for full profile)

**CargoNet (Verisk)**
- **What it does:** Cargo theft intelligence and recovery network; provides theft-alert data, incident databases, and law enforcement coordination; the primary theft-data source for the industry.
- **Primary user:** Carrier, shipper, insurer
- **Business model:** Subscription to intelligence feeds + law enforcement integration (Verisk subsidiary; Verisk is NYSE-listed)
- **Geography:** US and Canada primary; global partnerships with TAPA
- **SEA presence:** No operational SEA presence
- **Public traction signals:** 3,625 incidents tracked in 2024; 27% YoY increase; $454.9M estimated losses in 2024.(1)

**FreightValidate**
- **What it does:** Carrier identity validation focusing on MC-number freshness, authority age, and change-of-ownership signals as fraud indicators.
- **Primary user:** Freight broker
- **Business model:** Per-lookup API
- **Geography:** US
- **SEA presence:** None
- **Note:** Smaller specialist; less public data available than Highway or Carrier411

---

### Category 5: KYC / Beneficial Ownership / Sanctions Screening

These platforms originate in financial-crime compliance but are increasingly applied to freight counterparty due diligence — especially for high-value cargo, OFAC-sanctioned-country routing, and beneficial-ownership disclosure requirements under US and EU regulations.

**LSEG World-Check (formerly Refinitiv)**
- **What it does:** Aggregates structured risk profiles on individuals and entities covering sanctions, watchlists, PEPs, relatives/close associates, and adverse media; integrates into KYC/AML workflows.
- **Primary user:** Insurer, financial institution, large enterprise shipper/3PL
- **Business model:** Data licensing (annual subscription by entity volume); embedded in LSEG (London Stock Exchange Group) product suite
- **Geography:** Global; offices in Singapore and across SEA for APAC sales
- **SEA presence:** Yes — established APAC compliance customer base through financial services sector

**LexisNexis Bridger (WorldCompliance Data)**
- **What it does:** 8M+ risk profiles across 250 countries; 180 global sanctions lists; integrated into Bridger Insight XG for structured sanctions screening, adverse news, and case management.
- **Primary user:** Financial institution, large shipper/3PL, insurer
- **Business model:** Data licensing + platform SaaS; RELX Group (NYSE: RELX) subsidiary
- **Geography:** Global; strong SEA financial-services footprint
- **SEA presence:** Yes — regional offices in Singapore, KL; core compliance tool for SEA banks and MNCs

**Sayari**
- **What it does:** Corporate registry intelligence covering 250 jurisdictions and 2.3B+ company records; maps beneficial ownership, parent-subsidiary relationships, and sanctions exposure from primary-source documents.
- **Primary user:** Enterprise shipper, forwarder, compliance officer, government agency
- **Business model:** SaaS platform subscription; data API licensing
- **Geography:** Washington DC-based; global data coverage
- **SEA presence:** Data coverage includes SEA corporate registries; direct sales focused on US government and enterprise; no SEA office confirmed

**Dow Jones Risk & Compliance**
- **What it does:** Risk intelligence data covering sanctions, PEPs, adverse media, and regulatory watchlists; integrated into procurement and onboarding workflows.
- **Primary user:** Financial institution, enterprise shipper
- **Business model:** Data licensing
- **Geography:** Global
- **SEA presence:** Yes — Dow Jones has APAC regional office

**Moody's Orbis (Bureau van Dijk)**
- **What it does:** Company financial data, shareholder/beneficial ownership, and credit risk — used for financial-solvency screening of carrier counterparties.
- **Primary user:** Enterprise shipper, insurer, 3PL
- **Business model:** Data licensing (corporate subscription)
- **Geography:** Global; Moody's has Singapore and APAC presence
- **SEA presence:** Yes — Orbis covers SEA corporate registries (Indonesia, Malaysia, Singapore, Thailand, Vietnam)

**Note on applicability to freight pre-dispatch:** These tools are primarily adopted by enterprise shippers and insurers for high-value or regulated cargo. Mid-market brokers rarely integrate them. US domestic trucking counterparty risk at this layer is largely uncovered below the top-tier enterprise buyer. [ASSUMED-1]: Sanctions/KYC tools are rarely applied to sub-enterprise freight counterparty vetting in the US or SEA — to validate: ask 10 mid-market brokers whether they screen carriers through OFAC or beneficial-ownership tools at onboarding.

---

### Category 6: Vendor Management / Procurement SaaS with Carrier-Vetting Modules

Enterprise source-to-pay platforms that include supplier/vendor lifecycle management — covering onboarding, performance scoring, and risk flagging. Carrier vetting is a use case, not the core product.

**Coupa (Thoma Bravo, private since Feb 2023)**
- **What it does:** Business spend management platform covering S2P procurement, invoicing, and supplier management; supplier risk module covers onboarding, compliance, and performance tracking.
- **Primary user:** Enterprise shipper, procurement team
- **Business model:** SaaS enterprise subscription; taken private by Thoma Bravo for $8B EV in Feb 2023.(15)
- **Carrier-vetting depth:** Covers supplier/vendor onboarding with document collection and risk scoring, but does NOT natively integrate FMCSA or CSA data — carrier-specific vetting requires a third-party integration or manual data entry
- **Geography:** Global
- **SEA presence:** Yes — regional offices in Singapore; enterprise customers across SEA manufacturing and retail sectors

**SAP Ariba**
- **What it does:** End-to-end S2P platform with supplier onboarding, qualification, performance tracking, and real-time risk detection via SAP Business Network.
- **Primary user:** Large enterprise shipper, manufacturer
- **Business model:** SaaS; SAP subsidiary
- **Carrier-vetting depth:** Supplier onboarding includes document verification and risk scoring; SAP Business Network provides supplier financial health and compliance data; does NOT natively pull US motor carrier authority or CSA data
- **Geography:** Global leader (29.1% market share per AppsRunTheWorld)(16)
- **SEA presence:** Yes — major enterprise presence across SEA; Singapore, KL, Jakarta offices

**JAGGAER**
- **What it does:** Source-to-pay platform with supplier lifecycle management including discovery, vetting, onboarding, performance monitoring, and customizable risk scorecards.
- **Primary user:** Enterprise shipper, government procurement, manufacturing
- **Business model:** SaaS enterprise
- **Carrier-vetting depth:** Supports carrier/supplier onboarding with configurable risk fields — can ingest third-party data feeds but no native FMCSA integration
- **Geography:** Global; mid-market to large enterprise
- **SEA presence:** Partial — APAC presence; smaller footprint than SAP Ariba in SEA

**Key limitation of all three:** None integrate FMCSA/CSA data natively. An enterprise shipper using Coupa, Ariba, or JAGGAER for carrier onboarding must either (a) manually enter carrier safety/authority data or (b) build a custom API integration to SaferWatch, Carrier411, or Highway. This creates a compliance gap for enterprise shippers who assume their procurement platform covers carrier risk.

---

### Category 7: Embedded / TMS-Native Vetting Modules

Visibility and TMS platforms that have added carrier compliance or fraud-scoring features within their core workflow — so the vetting signal appears at the moment of carrier selection or load assignment.

**project44 Intelligent TMS (with CarrierAssure integration)**
- **What it does:** Real-time visibility platform now with a native TMS module; integrates CarrierAssure predictive scores at the bidding/tendering step so risk data appears inline when a shipper evaluates carriers.
- **Carrier-vetting depth:** CarrierAssure scores (FMCSA-data-derived) embedded in carrier selection; does NOT replace a full onboarding platform but adds a real-time risk signal.
- **Primary user:** Shipper, 3PL
- **Geography:** Global visibility network; US, EU, APAC presence
- **SEA presence:** Yes — project44 has APAC offices; carrier coverage in SEA depends on carrier API/ELD onboarding which is limited in the region
- **Public traction signals:** project44 has raised $820M+ total; Intelligent TMS announced 2024; CarrierAssure integration early-adopter results: 4.1% cost reduction, 17% OTP improvement.(10)

**FourKites**
- **What it does:** Real-time shipment visibility platform; carrier onboarding is required for tracking but does not include a native compliance-scoring module.
- **Carrier-vetting depth:** Carrier onboarding for tracking only; no fraud-detection or compliance-scoring feature confirmed as of research date
- **Geography:** Global; Chicago HQ; APAC including Singapore presence
- **SEA presence:** Yes — APAC office; Southeast Asian shipper customers

**MercuryGate (now Infios Transportation Management)**
- **What it does:** Multi-modal TMS with carrier management, compliance tracking, and document storage; DAT carrier onboarding integration replaces manual paper-based intake.
- **Carrier-vetting depth:** Compliance tracking and document storage; integrated with DAT onboarding; does not include real-time fraud-scoring
- **Primary user:** Broker, shipper, 3PL
- **Geography:** US-primary; rebranded to Infios TM in 2025 (combined with Korber Supply Chain)
- **SEA presence:** No confirmed SEA footprint

**Blue Yonder TMS**
- **What it does:** Enterprise TMS with carrier procurement, onboarding (digital assessments covering safety and insurance), and a pre-integrated Global Logistics Network providing access to thousands of already-onboarded carriers.
- **Carrier-vetting depth:** Standardized digital onboarding assessments covering safety ratings and insurance compliance; does not natively integrate FMCSA CSA scores or carrier fraud signals
- **Primary user:** Enterprise shipper, manufacturer
- **Geography:** Global; Panasonic subsidiary; APAC presence
- **SEA presence:** Yes — Blue Yonder has regional SEA customers in manufacturing and retail sectors; APAC office in Singapore

**Oracle TMS (Oracle Transportation Management)**
- **What it does:** Enterprise TMS with carrier qualification, rate management, and compliance modules; carrier onboarding workflows configurable but no native FMCSA data integration confirmed.
- **Carrier-vetting depth:** Configurable onboarding checklist; requires custom integration for FMCSA or fraud-signal data
- **Primary user:** Large enterprise shipper
- **Geography:** Global
- **SEA presence:** Yes — Oracle has extensive APAC/SEA enterprise customer base

---

### Category 8: Regional / SEA-Relevant Equivalents

This is the weakest-evidenced category. No SEA market equivalent of FMCSA's SAFER system, Carrier411, or Highway exists. SEA freight vetting is primarily embedded in marketplace platforms that pre-qualify their own carrier pools rather than offering standalone vetting tools to third-party brokers.

**Kargo Technologies (Indonesia)**
- **What it does:** Indonesia's largest B2B trucking marketplace; manages 40,000+ trucks with vetted transporters and reputation/rating systems embedded in the platform.
- **Primary user:** Shipper (consumer brands, FMCG companies)
- **Business model:** Commission on freight transactions; TMS-as-a-service (Kargo Nexus) for enterprise shippers
- **Geography:** Indonesia-primary; acquired Malaysia's TheLorry in 2024 to expand regionally
- **SEA presence:** Yes — Indonesia HQ (Jakarta); Malaysia expansion via TheLorry; Series B closed July 2024
- **Carrier-vetting depth:** In-house vetting of its own carrier pool; no standalone vetting product sold to third parties; carrier compliance follows Indonesian MOT registration requirements (no centralized public safety-score registry equivalent to FMCSA)

**Ezyhaul (Singapore)**
- **What it does:** B2B road freight marketplace connecting shippers to pre-qualified carriers; "one strike" compliance policy; operating across India, Indonesia, Malaysia, Philippines, Thailand.
- **Primary user:** Shipper (multinational and regional brands)
- **Business model:** Transaction commission + SaaS freight-management tools; raised $16M+ through 2019; additional Shell strategic partnership
- **Geography:** Singapore HQ; multi-country SEA + India
- **SEA presence:** Yes — Singapore HQ; active in five countries
- **Carrier-vetting depth:** Internal pre-qualification of carrier pool; no external vetting API; compliance standard is against national licensing requirements per country (LTA Singapore, MOT Indonesia, JPJ Malaysia) — no unified SEA standard

**Logivan (Vietnam)**
- **What it does:** Digital freight platform connecting shippers with truck owners in Vietnam; real-time load matching with basic carrier verification.
- **Primary user:** Shipper, importer-exporter
- **Business model:** Commission on freight; raised $5.5M in funding
- **Geography:** Vietnam-primary; limited expansion
- **SEA presence:** Vietnam only
- **Carrier-vetting depth:** Basic platform registration; no equivalent to US CSA scoring

**Deliveree (Thailand/SEA)**
- **What it does:** On-demand logistics platform for road freight in Southeast Asia (Thailand, Indonesia, Philippines); app-based driver/truck booking with in-app driver background checks.
- **Primary user:** Shipper (SME and enterprise)
- **Business model:** Platform commission; on-demand booking
- **Geography:** Bangkok HQ; Thailand, Indonesia, Philippines
- **SEA presence:** Yes — three-country operation
- **Carrier-vetting depth:** Driver background screening embedded in the platform; vehicle inspection at onboarding; no third-party vetting product

**Government registries in SEA (not SaaS products but the data source layer):**
- Singapore LTA: Goods vehicles must be registered; GVP (Goods Vehicle Permit) required for cross-border entry; insurance and road tax verification at border. No public CSA-equivalent safety-score system.(17)
- Indonesia MOT: Carrier registration required; no publicly queryable national safety-scoring database equivalent to FMCSA SAFER.(18)
- Malaysia JPJ (Road Transport Department): Vehicle and operator licensing; no centralized freight-carrier safety-score database confirmed.

**Data gap — SEA:** No standalone, third-party carrier vetting SaaS product exists for the SEA market equivalent to Highway, Carrier411, or SaferWatch. Vetting in SEA is either: (a) embedded in marketplace platform onboarding (Kargo, Ezyhaul), (b) informal reputation/reference-based, or (c) limited to national licensing registry checks performed manually. This is a structural market gap.

[ASSUMED-2]: SEA shippers and 3PLs below multinational tier perform zero formal carrier vetting beyond confirming a truck license is current — to validate: ask 10 mid-market SEA shippers/3PLs what their carrier onboarding checklist contains.

---

## Market Sizing

| Metric | Value | Year | Confidence | Sources |
|--------|-------|------|------------|---------|
| US + Canada cargo theft losses (Verisk CargoNet) | $454.9M | 2024 | High — primary data from Verisk CargoNet incident database(1) | (1) |
| US + Canada cargo theft incidents (Verisk CargoNet) | 3,625 incidents | 2024 | High(1) | (1) |
| US freight fraud + double-brokering losses (TIA estimate) | $500M–$700M annually | 2024 | Medium — industry association estimate, not audited(3) | (3) |
| Highway: fraudulent email attempts blocked (full-year 2024) | 914,719 | 2024 | Medium — company-reported, not third-party audited(6) | (6) |
| ASEAN freight & logistics market (total) | $348.4B | 2024 | Medium — Verified Market Research; single market-research firm source(19) | (19) |
| ASEAN road freight transport market | $119.4B | 2025E | Medium — Mordor Intelligence; cross-check with Verified Market Research directionally consistent(20) | (20) |
| Freight broker software market (broader, includes TMS, compliance tools) | $20.3B | 2024 | Low — Verified Market Research; broad definition inflates relative to carrier-vetting TAM specifically(21) | (21) |
| Descartes acquisition price for MyCarrierPortal | ~$24M upfront + $6M earn-out | Sept 2024 | High — SEC 6-K filing(7) | (7) |
| TrustLayer total funding | $21.98M (Series A $15M, Aug 2021) | 2021–2024 | High — Crunchbase confirmed(13) | (13) |
| Highway customer count (broker) | 1,050+ brokers, including 70 of top 100 US | Aug 2025 | Medium — company-stated in press release(5) | (5) |

**Data gap — carrier-vetting TAM:** No analyst or government source isolates the market size for carrier onboarding/vetting compliance specifically as a software sub-segment. The $20.3B "freight broker software" figure bundles TMS, load boards, and compliance tools and is a poor TAM proxy for vetting platforms alone. The MCP acquisition price (~$24M upfront) and Highway's undisclosed growth equity round are better market-calibration signals; a credible TAM model would require building up from the ~13,000 active US freight brokers × average vetting software spend, which no public source provides. Field validation needed.

**Data gap — SEA carrier-vetting market size:** No source found. Explicitly a data gap. The ASEAN road freight market ($119.4B) is the broadest proxy; a carrier-vetting sub-segment does not appear in any published market report. Country-level field validation required.

---

## Geography & SEA Presence Matrix

| Solution Category | Global Maturity | SEA Presence |
|-------------------|-----------------|--------------|
| Carrier onboarding & vetting platforms (Highway, MCP, Carrier411) | High (US) | No |
| Carrier data & monitoring services (SaferWatch, DAT CarrierWatch, Risk Factors) | High (US) | No |
| Insurance verification / COI management (myCOI, TrustLayer, Certificial) | Medium (US) | No |
| Fraud prevention & identity verification (Highway, FraudGuard, CargoNet) | Medium-High (US) | No |
| KYC / beneficial ownership / sanctions (World-Check, LexisNexis Bridger, Sayari) | High (global) | Partial (financial-services focused; not freight-native) |
| Vendor management / procurement SaaS (Coupa, SAP Ariba, JAGGAER) | High (global) | Yes (enterprise, not freight-native vetting) |
| TMS-native vetting modules (project44, Blue Yonder, FourKites) | Medium (global) | Partial (tracking/visibility yes; US-carrier compliance data no) |
| Regional / SEA-equivalent platforms (Kargo, Ezyhaul, Deliveree) | Low (marketplace-embedded only) | Yes — but no standalone vetting product |

---

## Preliminary Pain Points at This Stage

1. **Carrier identity fraud is escalating faster than vetting tooling adoption.** Highway blocked 914,719 fraudulent email attempts in 2024 and 1,986,995 in 2025 — a 117% YoY increase — but the majority of US brokers below the top 100 still rely on manual FMCSA lookups or legacy tools like Carrier411 without real-time identity-change monitoring.(6)

2. **COI verification is structurally post-hoc, not real-time.** The industry default remains PDF collection and manual review. Certificial is the only player with live-AMS-integration verification; the rest of the market — myCOI, TrustLayer, RMIS — parse static documents and cannot detect mid-contract policy cancellations until the next renewal cycle.

3. **The carrier universe is too fragmented to vet economically.** 91.5% of US carriers operate 10 or fewer trucks.(4) Small carriers and owner-operators have shorter authority histories, fewer CSA data points, and no credit footprint — exactly the profile that fraud rings exploit via MC-number harvesting. Vetting platforms price per-check or per-seat; small to mid-market brokers under-vet because the per-load economics don't support the spend.

4. **SEA has no FMCSA equivalent — all US carrier-vetting tools are inapplicable.** Singapore LTA, Indonesia MOT, and Malaysia JPJ each maintain separate national licensing registries, none of which are publicly queryable in a structured API. There is no ASEAN-level motor carrier safety database. SEA vetting is informal — marketplace pre-qualification (Kargo, Ezyhaul) or manual license check — leaving mid-market shippers with near-zero counterparty risk visibility.(17)(18)

5. **Double brokering is a known, growing, and structurally underreported problem.** TIA estimates $500M–$700M in annual US freight fraud losses; at current growth rates TIA's president projected >$800M.(3) Yet no carrier vetting tool can fully prevent double brokering because the fraudulent broker appears as a legitimate FMCSA-registered entity — the risk is in the *transaction* not the *entity* registration. Only transaction-layer monitoring (Highway's real-time fraud index, Truckstop Risk Factors) can catch it in real time.

6. **Enterprise procurement platforms (Coupa, SAP Ariba, JAGGAER) do not natively integrate US motor-carrier safety data.** Enterprise shippers who onboard carriers through procurement SaaS assume the compliance workflow is complete; in practice, CSA scores, authority status, and insurance certificates require separate workflow and tool layers that are rarely connected.

7. **KYC/sanctions screening is applied only at the top of the market.** Beneficial-ownership disclosure and OFAC screening are applied to freight counterparties only by enterprise shippers moving regulated cargo (pharmaceuticals, dual-use goods) or operating in sanctioned-country corridors. The mid-market and SME freight sector has effectively zero KYC discipline at carrier onboarding. [ASSUMED-3]: fewer than 5% of US freight brokers run OFAC screens on carriers at onboarding — to validate: ask compliance officers at mid-market 3PLs whether their carrier onboarding checklist includes any sanctions-list check.

---

## Sources for This Stage

(1) Verisk CargoNet — "Cargo Theft Surges to Record Levels in 2024" press release. https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/

(2) BSI Consulting and TT Club 2024 Cargo Theft Report, April 2025 (PDF, processed via markitdown). https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf

(3) TIA (Transportation Intermediaries Association) — "Brokerage Fraud Costs Could Surpass $800M, TIA President Says," Trucking Dive. https://www.truckingdive.com/news/brokerage-fraud-costs-could-surpass-800-million-dollars-transportation-intermediaries-association/650595/ ; and TIA 2024 Framework to Combat Fraud: https://news.tianet.org/2024-tia-framework-to-combat-fraud/

(4) FMCSA / American Trucking Associations 2025 American Trucking Trends — 91.5% of carriers operate ≤10 trucks. Cited via Oliver Wyman analysis: https://www.oliverwyman.com/our-expertise/insights/2025/sep/future-us-trucking-why-owner-operators-are-key.html ; FMCSA data portal: https://ai.fmcsa.dot.gov/RegistrationStatistics

(5) Highway press release — "Highway Secures Strategic Growth Equity Investment Led by FTV Capital," August 20, 2025. https://highway.com/press-releases/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital

(6) FTV Capital investment thesis — "Driving Trust in Trucking: Why We Invested in Highway." https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/ ; Globe Newswire Q4 2025 Freight Fraud Index: https://www.globenewswire.com/news-release/2026/01/26/3225705/0/en/Highway-Releases-Q4-2025-Freight-Fraud-Index-Revealing-The-Rise-of-Carrier-Involved-Theft.html

(7) Descartes Systems — "Descartes Acquires MyCarrierPortal." https://www.descartes.com/resources/news/descartes-acquires-mycarrierportal ; SEC Form 6-K FY2024: https://www.sec.gov/Archives/edgar/data/0001050140/000092963824003162/exhibit99-1.htm

(8) Descartes — "New Descartes MacroPoint Capabilities Help Combat Fraud in Transportation and Logistics," April 10, 2024. https://www.descartes.com/resources/news/new-descartes-macropoint-capabilities-help-combat-fraud-transportation-and-logistics

(9) Carrier411 — "Carrier411 Strives to Protect Brokers From Unsafe Carriers," FreightWaves. https://www.freightwaves.com/news/carrier411-strives-to-protect-brokers-from-unsafe-carriers

(10) project44 — "project44 Unveils Intelligent TMS," PR Newswire, 2024. https://www.prnewswire.com/news-releases/project44-unveils-intelligent-tms-a-new-era-of-agile-ai-driven-freight-management-for-modern-supply-chains-302532754.html ; CarrierAssure partnership page: https://www.carrierassure.com/partnership/project44

(11) Truckstop Risk Factors — FreightWaves coverage: https://www.freightwaves.com/news/truckstops-risk-factors-simplify-broker-decisioning-with-ai-driven-insights ; Truckstop product page: https://truckstop.com/product/risk-factors/

(12) myCOI funding — Life Insurance International / Crunchbase: https://www.lifeinsuranceinternational.com/news/mycoi-secures-funding-to-grow-insurance-certificate-tracking-business/ ; Crunchbase profile: https://www.crunchbase.com/organization/my-coi

(13) TrustLayer Series A — PR Newswire, August 2021: https://www.prnewswire.com/news-releases/trustlayer-raises-15m-to-build-the-future-of-insurance-verification-301357564.html ; Crunchbase: https://www.crunchbase.com/organization/trustlayer

(14) TrustLayer ARR estimate — Latka database: https://getlatka.com/companies/trustlayer [Note: Latka self-reported data; confidence Low]

(15) Coupa acquisition by Thoma Bravo — Supply Chain Dive: https://www.supplychaindive.com/news/coupa-8b-sale-private-equity-thoma-bravo-procurement-management-platform/638946/

(16) SAP Ariba market share — AppsRunTheWorld: https://www.appsruntheworld.com/top-10-procurement-software-vendors-and-market-forecast/

(17) Singapore LTA Goods Vehicle requirements: https://onemotoring.lta.gov.sg/content/onemotoring/home/buying/vehicle-types-and-registrations/commercial-vehicle/goods-vehicle-and-engineering-plant.html ; Cross-border GVP: https://onemotoring.lta.gov.sg/content/onemotoring/home/driving/entering_and_exiting_singapore/buses--taxis-and-goods-vehicles-registered-in-asean-countries.html

(18) Indonesia carrier registration — no centralized public API confirmed; gap documented based on absence of results across ASEAN carrier-vetting searches.

(19) ASEAN Freight & Logistics Market — Verified Market Research: https://www.verifiedmarketresearch.com/product/asean-freight-and-logistics-market/

(20) ASEAN Road Freight Transport Market — Mordor Intelligence: https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market

(21) Freight Broker Software Market — Verified Market Research: https://www.verifiedmarketresearch.com/product/freight-broker-software-market/ [Note: broad definition; low confidence as carrier-vetting TAM proxy]

---

## Assumptions to Validate

[ASSUMED-1]: Sanctions/KYC tools are rarely applied to sub-enterprise freight counterparty vetting in the US or SEA.
- to validate: Ask 10 mid-market brokers (TIA member companies with $50M–$500M annual brokerage volume) whether their carrier onboarding checklist includes any OFAC or beneficial-ownership check; ask the same of SEA shippers tendering to local 3PLs.

[ASSUMED-2]: SEA shippers and 3PLs below multinational tier perform zero formal carrier vetting beyond confirming a truck license is current.
- to validate: Ask 10 mid-market SEA shippers and 3PLs (Thailand, Indonesia, Malaysia) to walk through their full carrier onboarding checklist; document whether any third-party data check is performed and which registry/system is queried.

[ASSUMED-3]: Fewer than 5% of US freight brokers run OFAC screens on carriers at onboarding.
- to validate: Survey sample of TIA member broker-compliance officers; cross-check with FMCSA or TIA compliance guidance documents on OFAC applicability to motor-carrier onboarding.

[ASSUMED-4]: Blue Yonder and Oracle TMS standardized carrier onboarding in their SEA-deployed instances does not include CSA or fraud-signal data.
- to validate: Request a product demonstration from both vendors focused on their SEA carrier onboarding workflow; confirm which data sources are queryable and whether US FMCSA integration is available for international deployments.
