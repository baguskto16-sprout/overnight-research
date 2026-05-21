# Logistics Risk-Management Solutions — Worldwide Value Chain

Run ID: 2026-05-20-1124
Date: 2026-05-20
Topic: Solutions that logistics actors use to manage operational and physical risk across the freight journey (vendor procurement → dispatch → in-transit → handoffs → delivery → post-incident).
Unit of analysis: solutions (software, hardware, service, hybrid) — not carriers.
Geography: worldwide scan; SEA (Singapore, Indonesia, Thailand, Malaysia) is the target deployment market for the downstream venture.
Source: assembled from 6 vertical-slice stages in this run; full audit trail in pass-1-drafts/, pass-2-validation/, pass-3-deep-research/.

## Table of contents

1. Pre-dispatch — Vendor procurement & onboarding
2. Dispatch — Freight procurement & tendering
3. In-transit — Visibility & monitoring
4. Multi-leg handoffs — Subcontractor chain integration & control towers
5. Delivery — POD, last-leg verification & security
6. Post-incident — Claims, insurance & recovery

---

## Stage 1 — Pre-dispatch: vendor procurement & onboarding

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

---

## Stage 2 — Dispatch: freight procurement & tendering

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
- Risk-feature strengths: API-first model enables insurance at tender for brokers without in-house underwriting capability. [VERIFIED-VIA-PLAYWRIGHT 2026-05-20]: https://www.roanokegroup.com/cargo-api-integration/ — Roanoke offers Quote, Issuance, and Cargo Certificate APIs via CoverageDock™ that integrate with shipper TMS. Product scope (Quote / Issuance / Certificate) confirmed; SEA road freight applicability still not disclosed on this page.

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

---

## Stage 3 — In-transit: visibility & monitoring

## Stage 3: In-Transit — Visibility & Monitoring

### Description

This is the active freight leg: cargo has left origin and the risk question shifts from counterparty identity (Stage 1) to operational certainty — where is the load, is it on plan, is condition within spec, and is it secure against theft, tampering, and route deviation. The density of named global players is higher here than in any other stage of the value chain. The solutions stack disaggregates into at least seven distinct product categories (RTTVPs, fleet telematics, per-shipment IoT sensors, cold-chain sensors, anti-theft hardware, crime-corridor intelligence, and AI dashcams) — none of which is the same product, though vendors increasingly bundle across categories.

---

### Activities

1. **Real-time location tracking and ETA prediction**: GPS-network pinging of trucks, containers, and shipments via ELD connections, cellular asset trackers, or carrier API integrations; translating raw position data into predicted arrival windows with confidence intervals.
2. **Cargo condition monitoring**: Per-shipment IoT sensors capturing temperature, humidity, shock, light exposure, and door-open events; feeding excursion alerts to shipper, 3PL, and insurer in near-real time.
3. **Anti-theft and tamper detection**: Covert GPS trackers, geofence-breach alerts, dwell-time flagging at high-risk locations (truck stops, fuel stations in theft corridors), ignition-event anomalies, and cargo-seal integrity monitoring.
4. **Driver behavior and HOS compliance monitoring**: In-cab ELD units and AI dashcams capturing hard-braking, speeding, fatigue signals, and FMCSA Hours-of-Service log data; feeding risk scores to safety managers and, increasingly, insurers.
5. **Crime-corridor and route risk scoring**: Applying historical theft-incident data, cartel activity, and law enforcement intelligence to flag high-risk routes and dwell points before or during transit, especially in Mexico, Brazil, South Africa, and LATAM corridors — and emerging SEA maritime piracy corridors.

---

### Revenue Model

SaaS subscription (per-vehicle/per-asset/per-month) for telematics and RTTVP layers; hardware sale plus per-shipment data subscription for IoT sensor layers; enterprise annual contract + professional services for control-tower integrations.

### Cost Drivers

Cellular/satellite data transmission costs (especially for remote or ocean routes), IoT hardware manufacturing and logistics (for sensor vendors), carrier integration and data-normalization engineering labor, and law-enforcement data licensing for crime-corridor intelligence.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global commercial vehicle telematics market (Mordor Intelligence, 2024E) | $23.45B | Medium — single market research firm; wide divergence with MarketsandMarkets ($5.4B) reflects scope differences | (1), (2) |
| Global commercial vehicle telematics market (MarketsandMarkets, 2024) | $5.4B | Medium — narrower definition (software-focused); divergence from Mordor noted | (2) |
| Samsara self-stated TAM (global commercial telematics + commercial surveillance + trailer/cargo tracking) | $54.6B | Medium — company estimate from S-1 filing; directionally useful as floor for combined telematics + visibility TAM | (3) |
| Samsara FY2026 annual revenue (ended Jan 31, 2026; NYSE: IOT 10-K) | $1.62B | High — audited SEC filing | (4) |
| Motive S-1 ARR (2025, filed Dec 2025) | ~$500M ARR | Medium — S-1 disclosure; company-stated | (5) |
| Global supply chain visibility software market (Market Research Future, 2024) | $3.2B | Low — single market research firm; definition excludes hardware; low confidence as RTTVP-specific proxy | (6) |
| Global real-time cold chain monitoring market (Grand View Research, 2024) | $35.0B | Low — includes all cold chain infrastructure; broad definition overstates pure-sensor/visibility sub-segment | (7) |
| SEA fleet management installed base (Berg Insight via ResearchAndMarkets, end-2023) | 2.8M units active | High — Berg Insight cited in multiple trade outlets; CAGR 13.7% forecast to 5.4M units by 2028 | (8), (9) |
| SEA fleet management penetration rate (2024E, Berg Insight) | ~17.5% of commercial fleet vehicles | Medium — Berg Insight estimate; field validation needed against MOTL/LLDT data | (9) |

**Data gap — RTTVP-specific market size:** No government statistics agency or multilateral body publishes an RTTVP-specific market size figure. The Gartner Magic Quadrant names vendors but does not publish a market-size figure in its public press releases. The $3.2B supply-chain-visibility figure (Market Research Future) and comparable estimates from other market research firms ($1.4B–$4.2B range) are single-source, methodologically opaque, and should not be treated as TAM without field validation. The best available proxy is vendor ARR disclosure: project44 ($210M+ GAAP revenue in FY2024),(10) Shippeo ($22.3M ARR in 2024),(11) and FourKites (disclosed cash-flow breakeven in 2023, valuation undisclosed post-2021 Series E).(12)

**Data gap — cold chain sensor sub-segment:** The $35B Grand View Research figure conflates refrigerated transport infrastructure with sensor/monitoring software. A credible cold-chain sensor TAM for pharma specifically is not isolable from available public sources; field validation required with Sensitech, Controlant, and ELPRO on their reported contract values.

---

### Current Players by Region

**Global (RTTVP — Real-Time Transportation Visibility Platforms):**

- **project44** (Chicago, NYSE pre-IPO private) — #1 RTTVP by Gartner 2024 Magic Quadrant "Ability to Execute" and "Completeness of Vision" axes for second consecutive year; 240,000+ global carriers in network; 1,300+ enterprise brand customers; $912M total raised (Series G $80M at $2.7B valuation, Nov 2022, CMA CGM + Goldman Sachs + TPG); FY2024 revenue $210M+ at 30%+ YoY growth; sole vendor authorized to transfer logistics data in/out of China with 8M+ vehicles.(10)(13)
- **FourKites** (Chicago) — Gartner 2024 Magic Quadrant Leader (fourth consecutive year); reached cash-flow breakeven 2023; $10M strategic investment from Mitsui for APAC expansion; serves ocean, FTL, LTL, rail, last-mile modes globally.(12)
- **Shippeo** (Paris) — Gartner 2024 Magic Quadrant Leader (first time); $137M total raised (Series D-II $30M, Jan 2025); FY2024 revenue $22.3M; EU-origin with record North America and APAC growth in 2024.(11)(14)
- **Wakeo** (Paris) — multimodal (ocean + overland) visibility; €30M+ total funding (€18M round Dec 2023); acquired LKW Walter's technology (July 2024) for European road visibility; APAC footprint limited.(15)
- **Transporeon Visibility** (Ulm, Germany; now Trimble) — integrated into Trimble after $1.98B acquisition (Dec 2022); includes Sixfold real-time visibility network; dominant European road freight network.(16)
- **Descartes MacroPoint** (Waterloo, Canada; TSX/NASDAQ: DSGX) — carrier-integrated visibility with FraudGuard layer; recognized by G2 as Fall 2024 Leader; deep broker/3PL US penetration; extended to fraud detection (see Stage 1).(17)

**Global (Fleet Telematics — vehicle/driver layer):**

- **Samsara** (San Francisco; NYSE: IOT) — $1.62B FY2026 revenue (ended Jan 31, 2026); 98% subscription revenue; 2,506 customers >$100K ARR; Gartner and Frost & Sullivan recognized; US commercial fleet market dominant, limited SEA presence.(4)
- **Motive** (formerly KeepTruckin; San Francisco; MTVE.PVT, S-1 filed Dec 2025) — ~$500M ARR in 2025; $2.85B valuation (Series F $150M, 2022); ELD + AI dashcam + fleet intelligence stack.(5)(18)
- **Geotab** (Oakville, Canada; private) — world's largest commercial telematics provider by subscription count; 6M+ connected vehicles across 160 countries; largest provider in both Europe and Latin America by active subscriptions; reseller model through 400+ resellers globally.(19)
- **Trimble Transportation** (Westminster, CO) — enterprise TMS + telematics stack (Omnitracs was acquired by Solera 2021; Trimble retains transportation platform); strong US long-haul fleet presence.
- **Webfleet** (Amsterdam; Bridgestone subsidiary) — EU commercial fleet telematics leader; embedded in Bridgestone tire customer relationships; strong in Europe, limited SEA presence.

**Global (IoT Per-Shipment Sensors):**

- **Tive** (Boston) — 2M trackers sold as of Dec 2024; 850+ global shipper/LSP/retail customers; 60% YoY revenue growth H1 2024; $100M booked ARR (May 2026); per-shipment model (disposable Solo Lite and reusable tracker options); temperature, humidity, shock, light, location multi-sensor.(20)(21)
- **Roambee** (Santa Clara; India + SEA ops) — hardware + SaaS supply chain visibility; received strategic investment from Indonesia's MDI Ventures for SEA expansion; ABI Research spotlighted for multi-connectivity asset tracking; covers pharma, chemicals, consumer electronics.(22)
- **Sensitech** (Beverly, MA; Carrier Global subsidiary) — largest cold-chain sensor market share; pharma and food focus; TempTale GEO X launched Feb 2024 for life sciences; acquired Berlinger & Co. (Aug 2024) for pharma cold-chain expansion; Lynx FacTOR SaaS for pharmaceutical release evaluations (Mar 2025).(23)
- **Controlant** (Reykjavik + Boston) — reusable IoT data loggers for pharma cold chain; Pfizer COVID-19 vaccine cold chain partnership: achieved <0.1% product loss rate (vs. 25–50% pre-digital baseline); Pfizer deployed across 5B+ doses; end-to-end time/temperature/light monitoring with cloud analytics.(24)

**Global (Integrated Risk + Visibility — control tower + anti-theft):**

- **Overhaul** (Austin, TX) — in-transit supply chain risk management platform combining real-time monitoring, predictive risk intelligence, cargo theft recovery, and insurance; safeguards $1.4T in cargo trade; $105M Series C (Aug 2025, Springcoast Partners + Edison Partners); customers include Microsoft, Bristol Myers Squibb, CEVA Logistics, Arvato; Gartner 2024 Magic Quadrant Challenger.(25)(26)
- **PowerFleet** (Woodcliff Lake, NJ; NYSE: AIOT) — IoT fleet + cargo tracking, covert anti-theft hardware, industrial truck monitoring; FY2025 revenue $362.5M (+26% YoY), 75% SaaS; FY2026 guidance $440–$445M.(27)

**SEA (Regional Fleet Telematics):**

- **Cartrack / Karooooo** (Johannesburg; NASDAQ: KARO) — largest installed base in SEA among named providers; SEA subscription revenue +30% Q1 2026; SEA is second-largest contributor to group revenue and fastest-growing region; SGD 334.6M group revenue FY2024.(28)(29)
- **TransTRACK** (Jakarta, Indonesia) — Indonesia-dominant fleet telematics; 10,000+ units; 500+ clients; Series A $12M (Eurazeo + Cocoon Capital); launched at GIICOMVEC 2024 and Transport & Logistic Indonesia 2024; HOS/driver behavior + temperature + E-seal monitoring.(30)
- **Jimi IoT** (Shenzhen; SEA-active) — Berg Insight top-3 SEA provider by installed base (>100K units); hardware-first GPS tracker manufacturer with fleet SaaS overlay; primarily serves budget-tier fleet operators.(9)
- **DTC** (Bangkok, Thailand) — top-5 SEA fleet management provider (Berg Insight); Thailand-domestic dominant; product covers fleet tracking, fuel monitoring, driver behavior.(9)
- **Onelink** (Bangkok, Thailand) — top-5 SEA fleet management provider (Berg Insight); Thailand-based; fleet GPS + telematics.(9)

---

### Preliminary Pain Points (this stage)

- **RTTVPs lose signal below the integration threshold.** project44 and FourKites achieve high tracking compliance for large carriers connected via ELD API or EDI, but when a 3PL subcontracts to a small owner-operator not integrated with any network platform, visibility reverts to manual check-in or nothing. In the US, 91.5% of carriers operate 10 trucks or fewer — exactly the tier below the ELD-API integration threshold. [ASSUMED-1]: Fewer than 20% of shipments tendered by mid-market 3PLs to small carriers achieve automated location pings at intervals tighter than 2 hours — to validate: ask operations managers at mid-market 3PLs to pull tracking-compliance reports for their bottom-quartile carrier tier.

- **IoT sensor data is siloed to whoever buys the sensor — not shared across the chain.** A shipper who deploys Tive or Roambee sensors owns that data; their 3PL and insurer do not have API access unless a bilateral data-sharing agreement exists. Cold-chain excursion alerts from Sensitech TempTale are typically reported to the shipper's QA team but are not automatically pushed to the cargo insurer for mid-transit premium adjustment or early intervention — even when the excursion would trigger a claim. [ASSUMED-2]: Fewer than 10% of cargo insurance policies include a contractual right to receive in-transit sensor feeds from the insured's IoT devices — to validate: ask cargo underwriters at Lloyd's and AIG whether they specify IoT data-access rights in policy wording for temperature-sensitive cargo.

- **Cold-chain sensor data is increasingly insurance-relevant but the insurer-sensor integration does not exist at scale.** Controlant demonstrated <0.1% product loss for Pfizer vaccine logistics; the actuarial signal is clear. Yet cargo insurers pricing pharmaceutical policies still rely on shipper-declared temperature logs rather than continuous IoT telemetry. The gap creates a moral hazard: shippers have every incentive to deploy sensors but no structural pressure to share excursion data until claim time.(24)

- **SEA telematics is fragmented with no ELD mandate and sub-20% fleet penetration as of 2024.** Berg Insight estimates 17.5% penetration of commercial fleet vehicles in SEA (2024), with no equivalent to the US FMCSA ELD mandate that forced US fleets above 10 trucks to install compliant devices. Indonesia has pilot ELD programs in Jakarta and West Java but no national mandate. This means the driver behavior and route-deviation signals available to a US shipper via Samsara or Motive dashcam feeds are structurally unavailable for most SEA freight movements.(9)(30)

- **Crime-corridor intelligence for LATAM, MENA, and SEA is thin, fragmented, and not integrated into visibility platforms.** Overhaul provides crime-corridor risk scoring for US, Mexico, and Brazil corridors; BSI/TT Club and CargoNet publish annual theft maps; but no visibility platform integrates real-time crime-corridor signals into route-deviation alerts as a standard feature. The Strait of Malacca saw a 281% YoY surge in sea piracy in the first half of 2025, yet no commercial RTTVP product offers automated piracy-corridor risk scoring for SEA maritime legs as a shipping-visibility feature.(31)

- **Driver-safety AI dashcam data is fleet-owned, not risk-pool-shared.** Lytx and Samsara dashcam platforms generate rich driver-behavior signals (harsh braking, speeding, fatigue indicators) that reduce accident rates; Lytx reports 56% reduction in risky driving behaviors. However, this data is held by the fleet operator and is not shared with cargo insurers or shippers in real time. Small carriers below 10 trucks — the majority of the US carrier population — do not operate dashcam systems at all.(32)

- **Visibility platforms produce ETA signals but not cargo-condition signals for dry freight.** RTTVPs excel at location and ETA; they carry no cargo-condition layer for non-temperature-sensitive dry freight (electronics, automotive parts, consumer goods). Yet these are the highest-theft commodity categories per BSI/TT Club 2024. The monitoring gap at the cargo-condition layer for dry freight is structural: no ambient sensor is deployed, so shock events, tampering, and door-open alerts are absent.(31)

---

### Sources for this stage

(1) Mordor Intelligence — "Global Commercial Vehicle Telematics Market Size." https://www.mordorintelligence.com/industry-reports/commercial-vehicle-telematics-market

(2) MarketsandMarkets — "Future Commercial Vehicle Telematics Market." https://www.marketsandmarkets.com/Market-Reports/future-commercial-vehicle-telematics-market-227143770.html

(3) Samsara S-1 Registration Statement, FY2021, SEC filing. https://www.sec.gov/Archives/edgar/data/0001642896/000119312521334578/d261594ds1.htm [TAM: $54.6B composed of $32.9B global commercial telematics + $19.9B commercial surveillance + $1.8B trailer/cargo tracking]

(4) Samsara Form 10-K (FY2026, ended Jan 31, 2026), $1.62B revenue. https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html

(5) Motive S-1 analysis (filed Dec 2025), ~$500M ARR. https://www.saastr.com/5-interesting-learnings-from-motive-at-500000000-arr-and-the-match-up-with-samsara/ ; Motive $150M Series F announcement. https://gomotive.com/blog/motive-150m-raise-for-ai-global-expansion/

(6) Market Research Future — "Supply Chain Visibility Software Market, 2024." https://www.marketresearchfuture.com/reports/supply-chain-visibility-software-market-41303 [Note: single source; range across firms $1.4B–$4.2B; confidence Low as RTTVP-specific proxy]

(7) Grand View Research — "Cold Chain Monitoring Market, 2024." https://www.grandviewresearch.com/industry-analysis/cold-chain-monitoring-market [Note: $35B figure includes refrigerated infrastructure; pure sensor/SaaS sub-segment not isolable; confidence Low for narrow cold-chain sensor TAM]

(8) ResearchAndMarkets / Berg Insight — "Southeast Asia Fleet Management Market Report 2024." BusinessWire announcement. https://www.businesswire.com/news/home/20241105818026/en/Southeast-Asia-Fleet-Management-Market-Report-2024---Fleet-Management-Solutions-in-Southeast-Asia-Expected-to-Double-by-2028-Reaching-5.4-Million-Units---ResearchAndMarkets.com

(9) Berg Insight (via GlobeNewswire) — SEA top players, installed base, penetration data. https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html

(10) project44 FY2024 results press release. https://www.project44.com/press-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue/

(11) Shippeo — Gartner 2024 Magic Quadrant Leader press release; $22.3M ARR per Latka. https://www.shippeo.com/press-releases/shippeo-named-a-leader-in-the-2024-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms ; https://getlatka.com/companies/shippeo [Note: Latka self-reported; confidence Medium]

(12) FourKites — 2024 Gartner Magic Quadrant Leader press release; cash-flow breakeven disclosure. https://www.fourkites.com/press/fourkites-named-a-leader-in-the-2024-gartner-magic-quadrant-for-fourth-consecutive-year/

(13) project44 Series G press release — $80M at $2.7B valuation, Nov 2022; Goldman Sachs, CMA CGM, TPG participation. https://www.project44.com/press-releases/project44-raises-80-million-valuing-company-at-2-7-billion-up-12-from-january-despite-widespread-downturn-in-b2b-saas-valuations/ ; Series F ($420M, Thoma Bravo + TPG + Goldman, Jan 2022). https://www.project44.com/press-releases/project44-receives-420-million-investment/

(14) Shippeo Series D-II ($30M, Jan 2025); total $137M raised. https://www.freightwaves.com/news/shippeo-raises-40m-to-further-supply-chain-visibility-platform-expansion

(15) Wakeo €18M funding round (Dec 2023); LKW Walter tech acquisition (July 2024). https://tech.eu/2023/12/04/wakeo-raises-18m-for-supply-chain-visibility-and-sustainability/

(16) Trimble acquisition of Transporeon ($1.98B, Dec 2022); Sixfold integration. https://investinestonia.com/transporeon-sixfold-makes-a-2b-exit-and-becomes-a-unicorn/

(17) Descartes MacroPoint FraudGuard launch (April 2024). https://www.descartes.com/resources/news/new-descartes-macropoint-capabilities-help-combat-fraud-transportation-and-logistics ; G2 Fall 2024 Leader. https://macropoint.com/news/fall-2024-g2-grid-report/

(18) Motive $2.85B valuation (Series F). https://www.freightwaves.com/news/motive-raises-valuation-to-2-85b-after-closing-150m-funding-round

(19) Geotab — Wikipedia + corporate site: 6M+ connected vehicles, 160 countries, 50,000+ fleet customers. https://en.wikipedia.org/wiki/Geotab

(20) Tive — 2M trackers sold (Dec 2024). https://www.globenewswire.com/news-release/2024/12/03/2990695/0/en/Tive-Hits-Two-Million-Real-Time-Shipment-Visibility-Trackers-Sold.html

(21) Tive — 60% YoY revenue growth H1 2024; 130+ new customers. https://www.globenewswire.com/en/news-release/2024/07/30/2920922/0/en/Tive-Celebrates-60-Year-over-Year-Revenue-Growth.html ; $54M funding announced (FreightWaves). https://www.freightwaves.com/news/tive-raises-54m-to-expand-shipment-tracker-sales-globally

(22) Roambee + MDI Ventures (Indonesia) strategic investment. https://www.prweb.com/releases/roambee_secures_strategic_investment_from_indonesia_s_mdi_ventures_and_enters_rapidly_growing_240b_southeast_asia_iot_market/prweb15939627.htm

(23) Sensitech / Carrier — TempTale GEO X launch (Feb 2024); Berlinger acquisition (Aug 2024); Lynx FacTOR (Mar 2025). https://www.carrier.com/carrier/en/worldwide/news/news-article/sensitech-launches-next-generation-iot-supply-chain--monitoring-devices.html

(24) Controlant — Pfizer COVID-19 vaccine cold chain case study; <0.1% product loss; 5B+ doses deployed. https://www.controlant.com/insights/the-supply-chain-innovations-behind-the-worlds-largest-vaccine-programme ; Supply Chain Brain coverage. https://www.supplychainbrain.com/articles/34070-ensuring-the-quality-and-safety-of-the-pfizer-vaccine-in-the-pandemic

(25) Overhaul — $105M Series C (Aug 2025); $1.4T cargo safeguarded; customers Microsoft, BMS, CEVA, Arvato. https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(26) Overhaul — Gartner 2024 Magic Quadrant Challenger positioning. https://over-haul.com/gartner-magic-quadrant-2024/

(27) PowerFleet FY2025 annual results — $362.5M revenue, 75% SaaS, 26% YoY growth. https://ir.powerfleet.com/press-releases/detail/484/powerfleet-reports-annual-fy2025-results-a-breakout-year

(28) Karooooo / Cartrack SEC filing — SEA performance, Q1 2026 +30% subscription growth. https://www.sec.gov/Archives/edgar/data/1828102/000121390024087420/ea021753501ex99-1_karooooo.htm

(29) Karooooo SGD 334.6M group revenue FY2024; SEA second-largest regional contributor. https://iol.co.za/business-report/companies/2026-01-21-karooooo-accelerates-growth-with-20-increase-in-subscription-revenue/

(30) TransTRACK Series A $12M (Eurazeo + Cocoon Capital); 10,000+ units, 500+ clients; GIICOMVEC 2024. https://blog.transtrack.co/en/press-release/transtrack-technology-summit-2024-fleet-innovation-and-expansion-strategy-with-series-a-funding-of-idr185-billion/

(31) BSI Consulting and TT Club 2024 Cargo Theft Report (April 2025 edition) — SEA piracy +281% YoY in Strait of Malacca; top theft countries Brazil, Mexico, India, US, Indonesia, Chile, China, Germany, South Africa. https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/ ; PDF. https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown)

(32) Lytx — 2024 Fleet Safety Report covering 4,500+ customers, 200,000+ vehicles; 56% reduction in risky driving behaviors. https://www.lytx.com/news-events

---

### Geography & SEA Presence Matrix

| Solution Category | US | EU | LATAM | SEA Presence |
|---|---|---|---|---|
| RTTVP (project44, FourKites, Shippeo, Wakeo, MacroPoint) | Strong | Strong (Shippeo, Wakeo, Transporeon) | Partial | Partial — project44 APAC office; FourKites APAC office; carrier data density low |
| Fleet telematics — enterprise (Samsara, Motive, Geotab, Webfleet) | Strong | Strong (Geotab, Webfleet) | Geotab dominant | Minimal — Geotab resellers; Samsara/Motive not established in SEA |
| Fleet telematics — SEA-native (Cartrack, TransTRACK, Jimi IoT, DTC, Onelink) | None | None | None | Yes — Berg Insight top-5 SEA providers |
| IoT per-shipment sensors (Tive, Roambee, Sensitech) | Strong | Partial | Partial | Roambee has SEA ops (MDI Ventures); Tive limited; Sensitech pharma-specific |
| Cold-chain specialist (Controlant, ELPRO, Berlinger/Sensitech) | Strong | Strong | Minimal | Pharma corridors only; no SEA-native player identified |
| Anti-theft / covert tracking (PowerFleet, Overhaul, CalAmp) | Strong | Partial | Overhaul LATAM active | No confirmed SEA presence |
| Crime-corridor intelligence (Overhaul, BSI, CargoNet) | Strong | Partial | Overhaul Mexico/Brazil | No SEA-native crime-corridor intelligence product identified |
| AI dashcam / driver safety (Lytx, Samsara, Motive, Netradyne) | Strong | Partial | Minimal | No confirmed SEA market presence |

**SEA data gap:** No SEA-native RTTVP, cold-chain sensor, anti-theft hardware, or crime-corridor intelligence product was identified in research. The SEA fleet monitoring market is dominated by basic GPS fleet tracking (Cartrack, TransTRACK, Jimi IoT) — a product category two generations behind the Samsara/FourKites/Overhaul stack on risk-management capabilities.

---

### Assumptions to Validate

[ASSUMED-1]: Fewer than 20% of shipments tendered by mid-market 3PLs to small carriers achieve automated location pings at intervals tighter than 2 hours.
- to validate: Ask operations managers at 5–10 mid-market 3PLs ($100M–$1B annual revenue) to pull a tracking-compliance report for their bottom-quartile carrier tier (by trailer count); define "tracking compliance" as automated pings with <2-hour gaps from origin to delivery; compare against top-quartile carriers.

[ASSUMED-2]: Fewer than 10% of cargo insurance policies include a contractual right to receive in-transit sensor feeds from the insured's IoT devices.
- to validate: Review 20 cargo policy wordings from Lloyd's syndicates and US surplus lines carriers covering pharmaceutical and electronics shipments; confirm whether any policy contains a clause specifying sensor-data access rights or excursion notification requirements as a condition of coverage.

[ASSUMED-3]: SEA freight visibility above basic GPS tracking (i.e., condition monitoring, anti-theft scoring, ETA prediction with confidence intervals) is exclusive to multinational shippers operating their own vendor-managed logistics programs.
- to validate: Interview 10 mid-market SEA shippers (Indonesia, Thailand, Malaysia) on whether their 3PL or carrier provides temperature monitoring, shock alerts, or ETA-prediction data for any shipment — and whether they pay extra for that capability.

[ASSUMED-4]: FourKites and project44 APAC offices serve primarily ocean-container-visibility use cases (ocean tracking via AIS + port events) rather than SEA overland truck tracking.
- to validate: Request product demonstrations from both vendors specifically for SEA overland FTL truck tracking; confirm carrier API/ELD integration count for Indonesian, Thai, and Malaysian truck fleets.

[ASSUMED-5]: The ZIM / FourKites relationship cited in briefing materials is a strategic investment or partnership (not acquisition); research found no acquisition announcement and ZIM is being acquired by Hapag-Lloyd.
- to validate: Pull ZIM's most recent 20-F or 6-K filings for any FourKites equity stake or partnership disclosure; check FourKites press page for ZIM joint announcement. [NEEDS-ATTENDED-FETCH if Hapag-Lloyd acquisition closes and ZIM SEC filings become unavailable]

---

## Stage 4 — Multi-leg handoffs: subcontractor chain integration & control towers

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

(10) SAP Business Network for Logistics product page. https://www.sap.com/resources/supply-chain-control-tower [VERIFIED-VIA-PLAYWRIGHT 2026-05-20: page reachable; describes SAP supply chain control tower (cloud, AI/ML/IoT-driven, end-to-end visibility, integrates with TMS/ERP/WMS). Pricing not disclosed on public page — would require SAP sales engagement to obtain.]

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

(27) Grand View Research — "Control Tower Market Size & Share | Industry Report 2030." https://www.grandviewresearch.com/industry-analysis/control-towers-market [VERIFIED-VIA-PLAYWRIGHT 2026-05-20: page reachable (Cloudflare challenge cleared); confirms $9,671.2M in 2024 → $32,138.4M by 2030, CAGR 23.0% (2025–2030), North America largest 2023, operational segment 83.04% revenue share 2024. NOTE: aggregator-source validator override keeps this Low despite reachability.]

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


---

## Stage 5 — Delivery: POD, last-leg verification & security

## Stage 5: Delivery — POD, Last-Leg Verification & Security

*Researched: 2026-05-20. References loaded: imi-value-chain-template.md (data center template used as structural guide; freight-specific adaptations applied), wp-conventions.md.*

---

### Description

This is the final freight leg: the load reaches the consignee, proof of delivery (POD) is captured, and the security infrastructure — convoy escorts, anti-theft hardware, yard monitoring, and driver-safety enforcement — reaches its peak operational importance. The actor set spans digital software vendors (POD platforms, route-optimization SaaS, driver-safety AI), physical security providers (armed escort companies, yard-surveillance services), and anti-theft hardware manufacturers (covert GPS trackers, immobilizers). This stage is the most theft-exposed leg in many corridors because cargo dwells at unsecured distribution yards, parking lots, and consignee receiving docks before unloading — and because the POD event itself is a control point where fraud (forged signatures, GPS-spoofed timestamps) is structurally easy.

---

### Activities

1. **Digital POD capture and fraud-flagging**: Drivers capture timestamped GPS photos, electronic signatures, and barcode scans at delivery; platforms flag anomalies (signature mismatch, location offset, timestamp gap) against route data in real time.
2. **Last-leg route optimization and delivery-window scheduling**: B2B last-mile route optimization SaaS sequences multi-stop delivery runs, enforces delivery-window compliance, and dynamically reroutes around dwell congestion or access restrictions at industrial consignee sites.
3. **Driver-safety enforcement at the delivery event**: AI dashcam and ELD platforms capture harsh braking, fatigue signals, and parking-lot maneuver behavior at the delivery site; dedicated delivery-workflow apps enforce departure checklists, lift-gate operation protocols, and dwell-time caps.
4. **Physical convoy and armed escort services**: Armed or unarmed escort teams accompany high-risk cargo loads through crime-corridor routes (SP–RJ corridor in Brazil, Jalisco/Guanajuato in Mexico, Eastern Seaboard in Thailand, Jakarta–Surabaya in Indonesia); escort is arranged on a per-trip basis.
5. **Yard and dwell-location security monitoring**: AI-enabled security cameras, remote video monitoring, and yard management software track trailer positions, door-open events, and unauthorized access during the dwell period at carrier yards, distribution centers, and consignee facilities.
6. **Anti-theft hardware deployment**: Covert GPS trackers, immobilizers, and geofenced alert systems are installed on trailers or within cargo loads; recovery networks coordinate with law enforcement on stolen-vehicle/cargo retrieval.

---

### Revenue Model

Physical escort and guarding: hourly or per-trip armed-escort fee plus annual contract for dedicated logistics security corridors. Digital POD and route-optimization: SaaS subscription per driver seat or per delivery stop. Anti-theft hardware: one-time device sale plus recurring cellular-data and platform subscription (per-asset/month). Yard surveillance: monthly monitoring contract with hardware lease or purchase option.

### Cost Drivers

Physical escort: labor (armed guard wages, supervisor overhead, vehicle fleet), liability insurance, and police-coordination fees in high-risk corridors. Digital software: R&D, mobile-app hosting, carrier integration engineering. Anti-theft hardware: device manufacturing and cellular connectivity. Yard surveillance: camera hardware amortization, 24/7 remote monitoring operator labor, and AI model training costs.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global private security services market (2024) | $334.8B | Medium — ResearchAndMarkets/Business Research Insights single-firm estimate; directionally consistent across multiple sources | (1) |
| Armored vehicle escort services growth (2024) | +22% YoY | Low — single market research summary; no audited primary | (1) |
| Brazil cargo theft incidents (2024) | 10,478 incidents; estimated losses $221M direct | High — National Association of Cargo Transport and Logistics (NTC&Logística) primary data via Overhaul annual report and WLRN public media | (2)(3) |
| Brazil: share of South America cargo theft | 68% of South American incidents in 2024 | High — BSI/TT Club 2024 Cargo Theft Report (PDF, processed via markitdown); cross-validated with Overhaul Brazil Annual Report 2024 (PDF, processed via markitdown) | (4)(3) |
| Brazil: hijacking as share of theft type | 81% of Brazil theft events in 2024 | High — Overhaul Brazil Annual Report 2024 (PDF, processed via markitdown) | (3) |
| Mexico cargo theft incidents (2024) | ~24,000 incidents; losses exceed $368M (7B MXN) | Medium — Overhaul Mexico Annual Report 2024 (gated); incident count per Overhaul/TT News; loss figure per Circulo Logistico estimate | (5)(6) |
| Global: facility theft share of all cargo theft (2024) | 16% of global incidents (up from prior year) | High — BSI/TT Club 2024 Cargo Theft Report (PDF, processed via markitdown) | (4) |
| Global: hijacking share of all cargo theft (2024) | 21% of global incidents | High — BSI/TT Club 2024 Cargo Theft Report (PDF, processed via markitdown) | (4) |
| Proof of Delivery software market (2024, broader definition) | $1.42B–$3.2B | Low — DataIntelo/MarketIntelo single-firm estimates; scope and methodology opaque; treat as directional only | (7) |
| Onfleet last-mile delivery platform revenue (2024) | $35M ARR, ~900 customers | Low — Latka self-reported data; not audited | (8) |
| DispatchTrack revenue (2024) | $8.5M ARR (Latka); ~$36.2M per Growjo | Low — self-reported/estimated; not audited; sources diverge | (9)(10) |
| Indonesia: share of Asia cargo theft | 14% of Asia cargo theft in 2024 | Medium — BSI/TT Club 2024 Cargo Theft Report; cross-referenced with Stage 1 data | (4) |

**Data gap — escort services sub-segment revenue:** No government statistics body or multilateral source isolates revenues for cargo escort (as distinct from total private security) in Brazil, Mexico, Indonesia, or SEA. The $334.8B global private security market is the broadest proxy; country-level escort market revenue for these freight corridors requires field validation with Securitas Ibero-America, GardaWorld, and regional Brazilian escort companies.

**Data gap — POD software market (country-specific):** No country-level government or multilateral source isolates POD software spend in Brazil, Mexico, Indonesia, or SEA. The $1.42B–$3.2B global figure is from single-firm market research with opaque methodology. Field validation with DispatchTrack, Onfleet, and Bringg on LATAM and SEA contract counts needed.

**Data gap — yard management software market (freight-security specific):** The broader yard management software market is estimated at $450M–$4.2B globally (wide range across market research firms); no freight-security-specific or country-level sub-segment figure was found in any government, multilateral, or audited corporate source.

---

### Current Players by Region

**Global — Digital POD Platforms (B2B):**

- **DispatchTrack** (San Jose, CA) — B2B delivery management platform with electronic POD (photo, signature, barcode), route optimization, and ETA notification; focuses on furniture, appliance, food & beverage, building supplies verticals; $8.5M–$36.2M ARR (estimates diverge); 221 employees.(9)(10)
- **Onfleet** (San Francisco, CA) — Last-mile delivery operations platform; $35M ARR, ~900 customers as of June 2024; strong in grocery, pharmacy, courier; B2B freight is a secondary market.(8)
- **Bringg** (Tel Aviv/New York) — Delivery orchestration platform serving 800+ enterprise customers; POD module with photo/signature capture; serves carriers, retailers, 3PLs; no confirmed exit or acquisition as of May 2026; continues as independent vendor.
- **Locus** (Bangalore; acquired by Ingka Group/IKEA, October 2025) — AI-powered dispatch management platform; $82.5M total funding; 1B+ deliveries in 30+ countries; strong India and SEA presence (Unilever, Nestlé, Bukalapak); acquired by Ingka Investments targeting €100M in annual delivery savings for IKEA global operations; continues to serve external customers.(11)(12)
- **GreenMile** (Brazil — São Paulo) — Last-mile delivery platform targeting LATAM; driver app with POD (signature, photo), route optimization, real-time fleet monitoring; natively Portuguese/Spanish; key differentiator for Brazil-specific regulatory needs such as ANTT compliance overlays. [ASSUMED-1]: GreenMile is the dominant B2B digital POD platform in Brazil's mid-market freight sector — to validate: ask 10 mid-market Brazil distribution companies (food & beverage, automotive parts) what POD software they use and whether digital POD has replaced paper.

**Global — Last-Mile B2B Route Optimization:**

- **Locus** — See above; most relevant SEA player post-Ingka acquisition.
- **OptimoRoute** (San Francisco) — Route planning and delivery tracking; serves distributors, field service companies; geographically agnostic; no disclosed funding round post-$25M Series B (2021).
- **Workwave Route Manager** (Holmdel, NJ; part of Workwave by Divisions Maintenance Group) — Route optimization for field service and distribution; primarily US/EU.

**Global — Driver Safety Enforcement at Delivery:**

- **Samsara** (San Francisco; NYSE: IOT) — $1.62B FY2026 revenue (98% SaaS); Samsara Driver App includes delivery workflows with electronic delivery confirmation, stop checklists, and parcel barcode scanning; dashcam captures in-cab and exterior events at delivery stops (harsh braking, backing alerts); not a dedicated POD platform but integrates delivery evidence into fleet safety record.(13)
- **Lytx** (San Diego, CA; private, Leonard Green & Partners) — DriveCam AI dashcam platform; 4,500+ fleet customers, 200,000+ vehicles; records and scores driver behavior during last-mile delivery stops (backing, lift-gate operation, parking-lot maneuvers); 56% reduction in risky driving behaviors reported; does not include full digital POD workflow but captures video evidence at delivery dwell events.(14)
- **Netradyne** (San Diego, CA) — $90M Series D (January 2025, Point72 Private Investments); $1.35B valuation; 18B+ driving miles in dataset; Driver.i AI dashcam system; Amazon is a customer; expanding from US/India to Germany, UK, Australia, New Zealand as of 2025; no confirmed SEA deployment.(15)
- **Motive** (San Francisco; S-1 filed December 2025) — ~$500M ARR; Motive Driver App includes delivery-stop workflows; AI dashcam captures events at delivery locations; ELD data preserves dwell-time and HOS compliance records for last-mile drivers.(16)

**Global — Convoy / Armed Escort Services:**

- **Securitas Ibero-America** (Securitas AB; Stockholm; Nasdaq OMX: SECU B) — 9% of Securitas Group global sales (~MSEK 11,138 / ~$1.08B at FY2024 exchange rates); covers Brazil, Mexico, and six Latin American countries; operates guarding, mobile patrolling, and transit escort divisions; cargo escort for high-value loads is a sub-service of the guarding segment; annual report discloses transformation program in Ibero-America as of 2024.(17)
- **Allied Universal** (Santa Ana, CA; private) — Post-G4S acquisition (2021), ~$18B+ revenue; operates in US, UK, Europe, and former G4S territories including Brazil (G4S Brazil was a leading security provider pre-merger); cargo escort is a sub-service under logistics security division; no freight-specific revenue disclosed.(18)
- **GardaWorld** (Montreal; private) — ~CAD $5.9B revenue (FY ending Jan 2024); sold US and Mexico guarding operations to Andrews International in 2009; operates in Canada, UK, Africa, Middle East; not active in LATAM cargo escort markets post-divestiture.(19)
- **Solutions Group International (SGI)** (US-based) — Armed and unarmed escort for high-value freight in US and Mexico corridors; serves pharma, electronics, consumer goods; per-trip engagement model; no public revenue disclosed.(20)
- **PT Garda Bangsa Securindo** (Jakarta, Indonesia) — Physical security and escort services including goods escort in cooperation with TNI (Indonesian military) and POLRI (national police); serves industrial corridors in Java and Sumatra; no public revenue data found.(21)
- **Titan Force Sdn. Bhd.** (Malaysia) — Vehicle escort security across Malaysian highways, industrial zones, and border crossings; domestic Malaysia only; no public revenue or scale data.(22)

[ASSUMED-2]: LATAM and SEA escort providers (PT Garda Bangsa, Titan Force) operate with no integration to shipper TMS or RTTVP platforms — cargo escort is booked by phone or email and has no real-time status API for the shipper — to validate: ask logistics security coordinators at 5 mid-market FMCG companies operating in Brazil and Indonesia whether their convoy escort providers offer any digital tracking or TMS integration.

**Global — Yard / Dwell Security and Monitoring:**

- **PINC (a Kaleris company)** (Atlanta, GA; Accel-KKR-backed) — Merged with ShipXpress and RailcarRx under Kaleris brand (March 2021); PINC is the #1-selling yard management system (YMS); cloud-based yard tracking using RFID, GPS, and camera integrations for trailer/asset location in distribution yards; primary users are shippers and 3PLs with high-volume dock operations; no confirmed LATAM or SEA deployment.(23)
- **Verkada** (San Mateo, CA; private) — $357M ARR (2024, Latka self-reported); $5.8B valuation (December 2025 CapitalG round); enterprise cloud security cameras with AI video analytics for perimeter, yard, and dock monitoring; 30,000+ customers globally; not positioned as a cargo-security specialist but widely deployed in industrial and logistics facility perimeters.(24)(25)
- **Pro-Vigil** (San Antonio, TX) — ~$185.9M annual revenue; AI-enabled remote video monitoring and crime deterrence for construction sites, logistics yards, and distribution centers; deploys mobile surveillance towers and fixed camera networks with 24/7 human-AI monitoring overlay; North America-focused.(26)
- **Stealth Monitoring** (Toronto; North America) — 1,250+ protected sites, 30,000 cameras; logistics yard and construction site remote monitoring; North America primary.(26)
- **Genetec / Avigilon (Motorola Solutions)** — Enterprise physical security information management (PSIM) platforms that aggregate camera, access control, and analytics for large distribution centers; global; used by large 3PLs for gate, dock, and yard access management; Motorola Solutions (NYSE: MSI) $6.2B+ FY2024 revenue.(27)

[ASSUMED-3]: No SEA-native yard management software with security-monitoring capability equivalent to PINC or Trimble YMS exists as a standalone commercial product — to validate: request product demos from Kargo Technologies (Indonesia), Ezyhaul, and regional distribution companies to confirm whether they use any YMS or whether trailer/container dwell tracking is managed through manual gate logs.

**Global — Anti-Theft Hardware (Covert Trackers / Immobilizers):**

- **PowerFleet** (Woodcliff Lake, NJ; NYSE: AIOT) — $362.5M FY2025 revenue (26% YoY growth), 75% SaaS; covert cargo and trailer tracking hardware with cellular and satellite connectivity; geofencing and immobilizer alerts; LoJack Mexico brand (part of CalAmp ecosystem, now separate); strong North America and growing Europe/Mexico presence.(28)
- **CalAmp** (Oxnard, CA; private after de-listing restructuring) — $197M total revenue FY2024; 2.7M subscribers; 10M+ active edge devices; cargo monitoring products include SC iOn one-time-use covert tracker; LoJack México division under Maurizio Iperti for Mexico market; no disclosed Brazil or Indonesia-specific footprint.(29)
- **OnAsset Intelligence** (Dallas, TX; private) — Covert sensor platform for high-value air freight and ground cargo; integrates temperature, shock, and location into per-shipment trackers; pharma and aerospace focus; primarily US/EU corridors; no confirmed SEA or LATAM large-scale deployment found.

[ASSUMED-4]: Anti-theft hardware data feeds (GPS location, geofence breach, immobilizer activation) generated by PowerFleet, CalAmp, and LoJack Mexico are not shared with cargo insurers in real time — these feeds go to the fleet/cargo operator only — to validate: ask cargo underwriters at Lloyd's and AIG whether any cargo policy integrates live anti-theft hardware telemetry from installed tracker systems as a coverage or premium condition.

---

### Geography & SEA Presence Matrix

| Solution Category | US | EU | Brazil | Mexico | Indonesia | Malaysia/Thailand | SEA Native |
|---|---|---|---|---|---|---|---|
| Digital POD platforms (DispatchTrack, Onfleet, Bringg) | Strong | Partial | Partial (GreenMile native) | Partial | Minimal | Minimal | GreenMile (LATAM); Locus (acquired by Ingka, still operates) |
| Last-mile B2B route optimization (Locus, OptimoRoute, Workwave) | Strong | Partial | Partial | Partial | Partial (Locus pre-acquisition) | Partial (Locus) | Locus — strongest SEA player; acquired Oct 2025 |
| Driver safety enforcement (Samsara, Lytx, Netradyne, Motive) | Strong | Partial | Minimal | Minimal | Minimal | Minimal | No SEA-native player |
| Convoy / escort services (Securitas, Allied Universal, SGI) | Strong | Strong | Yes (Securitas Ibero-America, Allied Universal) | Yes (Securitas, SGI) | Yes (PT Garda Bangsa) | Yes (Titan Force MY) | Fragmented; no regional platform |
| Yard / dwell security (PINC/Kaleris, Verkada, Pro-Vigil) | Strong | Partial | Minimal | Minimal | Minimal | Minimal | No SEA-native yard security SaaS identified |
| Anti-theft hardware (PowerFleet, CalAmp, OnAsset) | Strong | Partial | Partial (LoJack Brazil via dealers) | Yes (LoJack Mexico) | Minimal | Minimal | No confirmed SEA-native covert cargo tracker product |

**SEA gap summary:** No SEA-native digital POD platform with fraud-detection features, no SEA-native covert cargo tracker at commercial scale, no yard management software with integrated security monitoring, and no digital convoy-management platform were identified. The region relies on: (a) informal paper POD, (b) basic GPS fleet trackers (Cartrack, Jimi IoT — see Stage 3) without cargo-condition or delivery-verification features, and (c) physical security escorts arranged by phone through local guard companies with no TMS integration.

---

### Preliminary Pain Points (this stage)

- **Paper POD is the norm in B2B freight outside enterprise in all five geographies.** Digital POD penetration in mid-market B2B freight (FMCG, automotive parts, industrial goods) in Indonesia, Thailand, and Brazil is estimated below 30% for non-enterprise carriers. Forged paper PODs are a documented fraud method in cargo insurance claims — BSI/TT Club 2024 notes document manipulation as an enabling factor in organized theft.(4) [ASSUMED-5]: Fewer than 20% of non-enterprise carriers operating in Indonesia, Brazil, and Mexico use any digital POD platform — to validate: ask 10 mid-market shippers in each country to show their current delivery-confirmation workflow and confirm whether paper or digital POD is the default.

- **Facility theft — including at delivery destinations — is the fastest-growing theft type globally.** BSI/TT Club 2024 records facility theft at 16% of global incidents (up from prior year); Overhaul H1 2024 data shows facility theft surged from 4% to 19% of US incidents. Warehouses and distribution centers where cargo dwells before unloading are the highest-growth theft location; yet yard and dwell-location monitoring tools (PINC, Verkada, Pro-Vigil) are absent from almost all SEA and LATAM mid-market logistics facilities.(4)(30)

- **Convoy escort exists in LATAM and SEA but operates fully offline with no shipper integration.** In Brazil, 81% of cargo theft events are armed hijackings; the São Paulo–Rio de Janeiro corridor (BR-116 Rodovia Presidente Dutra) alone accounts for 9.3% of all national incidents.(3) Escort providers (Securitas Ibero-America, PT Garda Bangsa in Indonesia, Titan Force in Malaysia) arrange trips by phone/email with no API, no real-time GPS feed to the shipper, and no alert on escort deviation. The shipper's RTTVP (e.g., project44, TransTRACK) has no visibility into whether an escort is active, deviated, or abandoned.

- **Driver-safety AI dashcam penetration in SEA commercial fleets is sub-20% and falling below the enforcement threshold.** Stage 3 established that SEA fleet telematics penetration is ~17.5% of commercial vehicles (Berg Insight). AI dashcam adoption is a subset of that — Lytx, Samsara, and Netradyne have no confirmed SEA market presence. At-delivery events (harsh backing, parking-lot proximity incidents, dwell overstay) generate no structured data record in the vast majority of SEA freight movements.(31)

- **Anti-theft hardware generates isolated asset-recovery data, not shipper or insurer feeds.** PowerFleet and CalAmp covert trackers are deployed on trailers in LATAM; LoJack México is the leading brand. However, geofence-breach alerts, immobilizer activations, and recovery events go only to the fleet operator or a proprietary control center — they are not shared with cargo insurers, shippers, or RTTVP platforms in real time. Insurers price LATAM cargo risk without access to these signals.(28)(29) [ASSUMED-4 validated directionally by absence of any insurer-hardware integration API in public product documentation.]

- **Last-leg theft at consignee dwell points is undercounted because it blends with shrinkage.** Facility theft at warehouses and receiving docks (3% of incidents at "destination" per Overhaul Q2 2025 data; 16% at "warehouses/distribution centers") often appears in shipper P&L as shrinkage, not insurance claims — because the loss is discovered during receiving count rather than captured as a discrete theft event with a police report. This structural undercount suppresses the incentive to invest in receiving-dock security cameras or tamper-evident seals at the consignee end.

- **POD fraud at the delivery event — including GPS-spoofed photo timestamps — is technically unsolved.** Digital POD platforms (DispatchTrack, Onfleet) capture GPS coordinates and timestamps at the moment of photo capture. However, GPS spoofing devices are available commercially for under $50 and can fake delivery coordinates. No B2B digital POD platform in scope has disclosed a GPS anti-spoof layer for delivery photo verification as a standard product feature. [ASSUMED-6]: No major B2B digital POD platform has deployed hardware-attestation or cryptographic GPS anti-spoof verification as a standard feature as of 2026 — to validate: request product security documentation from DispatchTrack, Onfleet, Bringg, and Locus on how their POD timestamp/location is verified against spoofing.

- **Cold-chain breach at the final leg is not captured by delivery-stage POD.** Most digital POD platforms record a photo and signature at delivery without logging temperature at the moment of consignee handover. For pharmaceutical and food-grade freight, the temperature at delivery (not just in transit) is the regulatory threshold. Sensitech and Tive sensors log continuous temperature but the handover event is not structured into the POD workflow — the sensor data and the delivery event live in separate systems.

---

### Sources for This Stage

(1) ResearchAndMarkets/Business Research Insights — Global Private Security Services Market, $334.8B in 2024; escort services +22% YoY. https://www.researchandmarkets.com/report/private-security

(2) WLRN Public Media — "How crime in Brazil drags down the economy," citing NTC&Logística (National Association of Cargo Transport and Logistics): 10,478 cargo thefts in 2024, $221M in direct losses. https://www.wlrn.org/light/americas/2025-12-11/how-crime-in-brazil-drags-down-the-economy-and-heaps-economic-pain-on-the-nations-poor

(3) Overhaul / TAPA — "Brazil: Annual Cargo Theft Report 2024." PDF at TAPA 2025 National Cargo Theft Conference. https://tapa.memberclicks.net/assets/2025-National-Cargo-Theft-Conferfence/Presentations-for-Sharing/Brazil%20Annual%20Cargo%20Theft%20Report%202024_TAPA.pdf (PDF, processed via markitdown) [Key stats: 88.3% of thefts in South/Southeast/Midwest quadrant; 81% hijacking; 14% pilferage; 4% facility theft; food/drinks 33% of product targets; BR-116 corridor 9.3% of national incidents]

(4) BSI Consulting and TT Club — "2024 Cargo Theft Report," April 2025. https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown) [Global: Brazil 23%, Mexico 13%, US 11%, India 10% of incidents; facility theft 16% globally; hijacking 21%; trucks 76%; facility 18% of modalities; Indonesia 14% of Asia incidents]

(5) TT News / Overhaul — "Old-School Cargo Theft Surges in Mexico": 24,000 incidents in 2024, +16% YoY, worst loss-ratio globally. https://www.ttnews.com/articles/cargo-theft-surges-mexico ; Overhaul Mexico 2024 Annual Report (gated download). https://www.over-haul.com/reports/mexico-annual-cargo-theft-report-2024

(6) Circulo Logistico via Mexico Business News — Mexico cargo theft losses exceed 7B MXN (~$368M) annually. https://mexicobusiness.news/mobility/news/cargo-theft-decreases-2024-risks-remain

(7) DataIntelo / MarketIntelo — Proof of Delivery Software/Platform Market, $1.42B–$3.2B in 2024 [Note: single-firm estimates, methodology opaque; confidence Low]. https://dataintelo.com/report/proof-of-delivery-software-market/amp ; https://marketintelo.com/report/proof-of-delivery-platform-market

(8) Latka — Onfleet revenue and customer data (self-reported): $35M ARR, 900 customers, June 2024. https://getlatka.com/companies/onfleet [Note: Latka self-reported; confidence Low]

(9) Latka — DispatchTrack $8.5M ARR (2024). https://getlatka.com/companies/dispatchtrack [Note: Latka self-reported; confidence Low]

(10) Growjo — DispatchTrack revenue estimate $36.2M. https://growjo.com/company/DispatchTrack [Note: third-party estimate; confidence Low; diverges from Latka figure]

(11) Ingka Group / Locus press release — "Ingka Group Acquires Locus to Transform the IKEA Home Delivery Experience," October 2025; targeting €100M (~$117M) in annual delivery savings. https://locus.sh/press-releases/ingka-group-acquires-locus/ ; https://www.ingka.com/newsroom/ingka-group-acquires-locus-an-ai-powered-logistics-software-company-to-transform-the-ikea-home-delivery-experience/

(12) Locus Crunchbase / Tracxn — $82.5M total funding (Series C $50M, June 2021); investors: GIC Singapore, Qualcomm Ventures, Tiger Global, Falcon Edge. https://www.crunchbase.com/organization/locus-sh

(13) Samsara Form 10-K (FY2026, ended Jan 31, 2026) — $1.62B revenue, 98% subscription. https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html [Delivery workflow and Driver App features referenced in Samsara product documentation; SEC filing confirms revenue base]

(14) Lytx — "2024 Fleet Safety Report": 4,500+ customers, 200,000+ vehicles, 56% reduction in risky driving behaviors. https://www.lytx.com/news-events ; Last-mile case study (Letter Ride / DHL): https://www.prnewswire.com/news-releases/last-mile-delivery-fleet-letter-ride-tackles-risk-in-real-time-with-lytx-driver-safety-program-in-cab-alerts-301239639.html

(15) Netradyne Series D ($90M, January 2025, Point72 Private Investments); $1.35B valuation. TechCrunch: https://techcrunch.com/2025/01/17/netradyne-snags-90m-at-1-25b-valuation-to-expand-smart-dashcams-for-commercial-fleets/

(16) Motive S-1 / SaaStr — ~$500M ARR; S-1 filed December 2025. https://www.saastr.com/5-interesting-learnings-from-motive-at-500000000-arr-and-the-match-up-with-samsara/

(17) Securitas AB — Annual and Sustainability Report 2024 (PDF, processed via markitdown). https://www.securitas.com/globalassets/com/files/annual-reports/eng/securitas_ar2024_eng.pdf [Ibero-America: 9% of group sales; MSEK 11,138 FY2024; covers Brazil, Mexico, and six LatAm countries; transformation program ongoing]

(18) Allied Universal — G4S acquisition completion announcement (April 2021); combined $18B+ revenue, 800,000 employees. https://www.aus.com/press-releases/allied-universal-acquires-g4s-plc-creating-global-integrated-security-services

(19) GardaWorld — Financial guidance press release (FY ending Jan 2024): projected revenues CAD $5,875–$5,925M. https://www.prnewswire.com/news-releases/gardaworld-announces-financial-guidance-for-fiscal-year-ending-january-31-2024-and-intends-to-amend-the-maturity-date-of-its-term-loan-b-due-2026-to-2029-302040627.html [Note: sold US/Mexico guarding to Andrews International in 2009; no current LATAM freight escort presence]

(20) Solutions Group International — Service description for US and Mexico cargo escort. https://www.solutionsgroupinternational.com/service-divisions/security-escorts-for-high-value-freight-pharma/

(21) PT Garda Bangsa Securindo — Company profile: goods and personal escort services in cooperation with TNI/POLRI; 34-province Indonesia presence. https://gbssecurindo.co.id/

(22) Titan Force Sdn. Bhd. (Malaysia) — Vehicle escort security services across Malaysian highways and logistics corridors. https://titanforce.com.my/vehicle_escort_service/

(23) Kaleris / PINC — "Kaleris Announces Merge of Best-In-Class Companies PINC, ShipXpress, and RailCarRX," March 2021. https://www.prnewswire.com/news-releases/kaleris-announces-merge-of-best-in-class-companies-pinc-shipxpress-and-railcarrx-301245966.html ; PINC Accel-KKR growth equity (June 2020). https://www.prnewswire.com/news-releases/pinc-receives-significant-growth-equity-investment-from-accel-kkr-301077668.html

(24) Verkada — $357M ARR (2024, Latka self-reported). https://getlatka.com/companies/verkada [Note: Latka self-reported; confidence Low]

(25) Verkada — $5.8B valuation, Series E/CapitalG round, December 2025. https://www.cnbc.com/2025/12/03/verkada-capitalg-valuation-security.html ; $200M Series E at $4.5B valuation, February 2025. https://siliconangle.com/2025/12/03/security-device-startup-verkada-raises-funding-5-8b-valuation/

(26) Pro-Vigil — ~$185.9M annual revenue; Stealth Monitoring: 1,250+ protected sites, 30,000 cameras. https://pro-vigil.com/ ; competitor comparison: https://www.bossecurity.com/2024/11/01/pro-vigil-remote-monitoring-vs-virtuguard/

(27) Motorola Solutions FY2024 revenue — $6.2B+. https://investor.motorolasolutions.com [Genetec and Avigilon are the video analytics / PSIM platforms within the enterprise security stack; cited by name as referenced in production documentation]

(28) PowerFleet FY2025 annual results — $362.5M revenue (+26% YoY), 75% SaaS, $440–$445M FY2026 guidance. https://ir.powerfleet.com/press-releases/detail/484/powerfleet-reports-annual-fy2025-results-a-breakout-year

(29) CalAmp — "CalAmp Delivers Strong Financial Performance in 2024": $197M revenue, $72M cash, 2.7M subscribers, 10M+ active edge devices; LoJack México division. https://www.calamp.com/press-releases/calamp-delivers-strong-financial-performance-in-2024/

(30) Overhaul — H1 2024 US Cargo Theft Report: facility theft at 19% of incidents (up from 4% in H1 2023); average loss per incident $115,230 (+83% YoY). https://www.prnewswire.com/news-releases/cargo-theft-soars-49-in-first-half-of-2024-amid-rising-criminal-sophistication-reveals-overhaul-report-302228584.html

(31) Berg Insight via GlobeNewswire — SEA fleet management penetration ~17.5% of commercial vehicles (2024E); CAGR 13.7% to 5.4M units by 2028; top SEA players Jimi IoT, Cartrack, TransTRACK, DTC, Onelink. https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html

---

### Assumptions to Validate

[ASSUMED-1]: GreenMile is the dominant B2B digital POD platform in Brazil's mid-market freight sector.
- to validate: Ask 10 mid-market Brazil distribution companies (food & beverage, automotive parts) what POD software they currently use; confirm whether digital POD has replaced paper; ask whether GreenMile or any local platform is the default, or whether carriers use DispatchTrack or Bringg on a global shipper mandate.

[ASSUMED-2]: LATAM and SEA convoy escort providers operate with no TMS or RTTVP integration.
- to validate: Ask logistics security coordinators at 5 mid-market FMCG companies operating in Brazil and Indonesia whether their convoy escort providers offer any digital tracking API, GPS feed, or alert system that integrates with their TMS; document the current communication method (phone, WhatsApp, radio) and whether escort status is visible in any shipper dashboard.

[ASSUMED-3]: No SEA-native yard management software with security-monitoring capability equivalent to PINC or Trimble YMS exists as a standalone commercial product.
- to validate: Request product demonstrations from Kargo Technologies (Indonesia) and Ezyhaul; ask 10 SEA logistics facility managers (3PLs, port-adjacent distribution centers in Jakarta, Bangkok, KL) whether they use any YMS and how trailer/container dwell tracking is currently managed; search for Kaleris/PINC APAC distribution or reseller agreements.

[ASSUMED-4]: Anti-theft hardware data feeds (PowerFleet, CalAmp, LoJack México) are not shared with cargo insurers in real time.
- to validate: Ask cargo underwriters at Lloyd's of London syndicates (LMA Cargo Committee) and AIG Global Marine and Energy whether any cargo policy wording in LATAM requires or incentivizes real-time integration with installed tracker telemetry from PowerFleet or LoJack as a coverage condition or premium factor.

[ASSUMED-5]: Fewer than 20% of non-enterprise carriers in Indonesia, Brazil, and Mexico use any digital POD platform.
- to validate: Ask 10 mid-market shippers in each country to walk through their delivery-confirmation workflow; confirm whether drivers use paper or digital POD; if digital, identify the platform and whether it captures GPS-timestamped photos or only signature fields.

[ASSUMED-6]: No major B2B digital POD platform has deployed hardware-attestation or cryptographic GPS anti-spoof verification as a standard product feature as of 2026.
- to validate: Request product security documentation from DispatchTrack, Onfleet, Bringg, and Locus/Ingka on how their POD timestamp and GPS coordinates are verified for authenticity; ask product security teams specifically about GPS spoofing countermeasures and whether any carrier has attempted POD coordinate manipulation on their platform.

---

## Stage 6 — Post-incident: claims, insurance & recovery

## Stage 6: Post-Incident — Claims, Insurance & Recovery

### Description

This stage covers everything that happens after an adverse event — cargo theft, physical damage, temperature excursion, total loss, delay — and before the risk is priced for the next shipment. Actors span (1) cargo underwriters and insurtechs that price and embed coverage; (2) parametric insurance platforms that pay on trigger events without requiring loss proof; (3) cargo claims management software and loss-adjuster networks that handle indemnity claims; (4) theft recovery specialists; and (5) telemetry-to-underwriting feedback loops that close the cycle by using in-transit sensor data to reprice the next policy. This stage is structurally adjacent to Stage 3 (IoT sensors that generate the condition data that feeds claims) and Stage 1 (carrier credentialing that affects insurability). It does not re-document those stages; its scope is the post-incident transaction and the pricing feedback.

---

### Activities

1. **Underwriting and policy issuance**: Pricing cargo risk per-shipment or per-policy using declared value, commodity type, route, carrier history, and — increasingly — telematics or IoT sensor data; issuing coverage as embedded, per-load, or annual open-cover.
2. **Parametric trigger monitoring and payout**: Monitoring agreed objective triggers (temperature exceedance, port delay hours, shock threshold) and executing pre-agreed payouts automatically on trigger confirmation, without a formal claims investigation.
3. **Cargo claims intake, investigation, and settlement**: Receiving first-notice-of-loss (FNOL), dispatching surveyors or loss adjusters, gathering documentation (CMR, bill of lading, commercial invoice, photos), assessing liability, and settling or declining claims — a process that currently averages 30–90 days for international cargo claims.(6)
4. **Theft recovery coordination**: Mobilizing law enforcement, covert GPS tracker activation, and recovery networks (CargoNet in North America; Overhaul in LATAM/EU; local cargo police affiliations) within the first 48–72 hours after a theft report, which is the critical recovery window.
5. **Risk-pricing feedback loop**: Feeding telematics data, excursion records, and claims outcomes back to the underwriting model to reprice the next policy — the mechanism by which IoT-equipped shippers receive discounted premiums and the cargo insurance market moves from declared-value to journey-level pricing.

---

### Revenue Model

Cargo underwriters earn premium income (annual open-cover or per-shipment premium) underwritten on a loss-ratio basis; insurtech MGAs earn a percentage of gross written premium as a managing-general-agent fee plus profit commission; parametric platforms earn premium on trigger-based products (no claims-ratio risk exposure per trigger design); claims management software companies earn annual SaaS license fees from insurers and 3PLs; loss adjusters earn per-claim fees or retainer agreements from carriers/insurers; theft recovery networks charge annual subscription plus success fees per recovery.

---

### Cost Drivers

Reinsurance purchasing cost and catastrophic loss exposure (for traditional underwriters); actuarial and data science labor (insurtech MGAs); claims adjuster labor, surveyor dispatch, and legal/subrogation costs (loss adjusters); cellular and satellite data ingestion for parametric trigger monitoring; law enforcement coordination and covert recovery operations (theft recovery); and capital required to hold insurance risk on balance sheet (Lloyd's capacity).

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global marine cargo insurance premiums (IUMI 2024 Stats Report) | $22.64B (2024), up 1.6% YoY | High — IUMI primary source, covers all marine cargo globally | (1) |
| Asia/Pacific share of global cargo insurance premiums (IUMI) | 35.15% of $22.64B = ~$7.96B (2024) | High — IUMI primary source | (1) |
| Asia/Pacific cargo premium growth YoY (IUMI 2024) | +8.8% YoY, driven primarily by China (17.6% of global) | High — IUMI primary source; Japan and India posted small declines | (1) |
| Total global marine insurance premiums (all lines; IUMI 2024) | $39.92B (2024), up 1.5% YoY | High — IUMI primary source | (1) |
| TT Club gross earned premiums (mutual; transport & logistics specialty) | $284.2M (2024), stable YoY; 93% member retention; 1,300+ members | High — TT Club 2024 Annual Report | (2) |
| Crawford & Company global revenue (loss adjusting + claims management) | $1.293B (2024), record high, +2% YoY; NYSE: CRD.A | High — corporate press release citing 2024 Form 10-K | (3) |
| Cargo claims management software market (GrowthMarketReports.com) | $1.23B (2024), CAGR 10.6%, projected $3.07B by 2033 | Low — single market research firm; methodologically opaque; treat as directional only | (4) |
| Parametric insurance market size (Global Market Insights) | ~$14.4–15.9B (2024E, all lines; cargo is a sub-segment) | Low — multiple market research firms with divergent estimates; no government or multilateral source; Swiss Re and Munich Re sigma do not publish a dedicated parametric line-item | (5) |
| Cargo theft losses — US + Canada (Verisk CargoNet 2025 full-year) | $725M estimated (2025), up 60% from $455M in 2024; 3,594 incidents | High — Verisk CargoNet primary incident database | (6) |
| Loadsure Series A funding | $11M (March 2022); MMC Ventures lead + Crowley + Insurtech Gateway | High — company press release | (7) |
| Parsyl total funding | ~$66M total (Seed + Series B $25M HSCM Ventures lead + Series C $20M Lightsmith Group lead, January 2025) | High — company press releases | (8) |
| Cover Genius Series E funding | $80M (May 2024); Spark Capital lead; 107% YoY revenue growth 2023; 30M+ customers, 60+ countries | High — GlobeNewswire / company press release | (9) |
| Nirvana Insurance valuation + total funding | $1.5B post-money (Series D, 18 Dec 2025); $100M round led by Valor Equity Partners; $262M+ total raised | High — Nirvana own PRNewswire announcement (primary-corporate); cross-confirmed by TechCrunch Series C coverage | (10) |

**Data gap — SEA cargo insurance sub-market:** No government statistics agency (BPS Indonesia, DOSM Malaysia, OIC Thailand, MAS Singapore) or multilateral body publishes cargo-insurance-specific premium volumes for individual SEA countries. The IUMI Asia/Pacific figure ($7.96B) includes China, Japan, South Korea, and Australia — country-level SEA figures are not isolable from available public sources. Tokio Marine Holdings' annual report (TSE-listed, integrated report 2025) discloses consolidated figures but does not separately break out Indonesia, Malaysia, or Thailand marine cargo premiums. Field validation required with national insurance regulators and Tokio Marine regional heads.

**Data gap — parametric cargo insurance sub-segment:** The $14–16B parametric market estimate covers all lines (weather, agriculture, catastrophe, cyber) and is not cargo-logistics-specific. No credible source isolates a parametric-cargo-only premium figure. Descartes Underwriting (Paris) is the most relevant specialty player; they targeted $200M+ total GWP in 2024 across all parametric lines, with cargo logistics not a primary stated focus.

---

### Current Players by Region

**Global / US — Embedded Cargo Insurtech MGAs:**

- **Loadsure** (London / New York; Lloyd's coverholder) — first-to-market transactional cargo MGA; per-load coverage issued in <40 seconds via API; claims resolved in <3 days (vs. 30–90 days industry benchmark); Insurance Insider 2024 Insurtech Product of the Year; European launch April 2024 (Benelux, DE, FR, Nordics); motor truck cargo product launched February 2024; partner of Amwins, DAT, Trucker Tools; Five Sigma AI claims platform deployed February 2026; Series A $11M (2022).(7)(11)(12) Primary users: freight brokers, carriers, shippers. SEA presence: none confirmed.
- **Parsyl** (Denver; Lloyd's Syndicate 1796) — data-powered cold-chain cargo insurer; manages the Essential Consortium at Lloyd's for pharmaceutical and food/beverage cargo; ColdCover parametric temperature product; Series C $20M (January 2025, Lightsmith Group lead); total $66M raised; significant growth in food, beverage, pharma marine cargo over 24 months.(8) Primary users: pharmaceutical shippers, cold-chain logistics. SEA presence: Lloyd's global market reach but no regional SEA office confirmed.
- **Breeze AI** (New York; formerly Breeze) — AI-powered per-shipment cargo insurance platform for freight forwarders and logistics providers; partnership with Helvetia (strategic investment); US expansion via Great American Insurance Group (August 2025); investors include NFX, 7percent Ventures, Trousdale.(13) Primary users: freight forwarders. SEA presence: none confirmed.
- **Cover Genius** (Sydney; global) — embedded insurance platform covering logistics, travel, retail; $80M Series E (May 2024, Spark Capital); 30M+ customers; 60+ countries; 107% YoY revenue growth (2023); partners include Uber, Ryanair, eBay; logistics is one of four named verticals but cargo-specific GWP not disclosed.(9) SEA presence: yes — 60+ countries; specific SEA cargo logistics partnerships not confirmed.
- **Nirvana Insurance** (San Francisco) — telematics-native trucking insurer; prices coverage using real-time ELD and telematics data (30B+ miles of data); offers motor truck cargo coverage as part of its fleet insurance stack; reached **$1.5B post-money valuation in $100M Series D (December 18, 2025, led by Valor Equity Partners), bringing total funding to $262M+**; founded by former Samsara executive. **Tokio Marine Future Fund** — the $42M CVC arm of Tokio Marine & Nichido Fire Insurance Co., Ltd. (managed by WiL, LLC) — is a confirmed early-stage portfolio investor (Series A participant, 2022) and continues to list Nirvana as an active portfolio company as of 2026; later-round participation is not publicly disclosed.(10)(22) Primary users: US trucking fleets. SEA presence: none; US-only product.

**Global — Parametric Insurance for Logistics:**

- **Descartes Underwriting** (Paris) — parametric specialty insurer covering climate, cyber, and emerging risks; MGA of the Year (The Insurer, 2024); targeted $200M+ GWP in 2024 with >50% growth; 20+ perils across 60+ countries; cargo/logistics not a primary stated product line but weather-related delay parametric applicable.(14) SEA presence: partial — 60 countries in scope; no SEA office named.
- **AXA Climate** (Paris) — parametric climate and weather risk products; agriculture, construction, logistics-adjacent delay triggers; global reach; SEA presence through AXA regional network. SEA presence: yes — AXA has Singapore and broader SEA offices.
- **Hannover Re parametric cell / Munich Re specialty** — provide reinsurance capital behind parametric logistics products; Munich Re's "Full Protection" links IoT sensor data to cargo coverage terms (active loss prevention + enhanced cargo cover + data sharing); original Full Protection concept documented 2018; Munich Re IoT Cover solution is an ongoing product line.(15) SEA presence: both have APAC reinsurance offices.

**Global — Loss Adjusters (Cargo Specialty):**

- **Crawford & Company** (Atlanta; NYSE: CRD.A) — world's largest publicly listed independent claims management provider; $1.293B revenue (2024, record); loss adjusting includes marine cargo; 70+ country footprint; targets $1.5B revenue by FY2026.(3) SEA presence: yes — regional offices in Singapore and broader APAC.
- **Sedgwick** (Memphis; private, KKR-backed) — largest loss adjusting network by headcount (33,000 colleagues, 80+ countries); dedicated cargo casualty team for container and mass-cargo events; specialist expertise in carrier/general average cases.(16) SEA presence: yes — operations in APAC.
- **McLarens** (London; global) — specialist independent loss adjuster with marine roots since 1931; 41-country footprint; marine, cargo, hull, ports and terminals; consumer goods and pharmaceutical cargo specialist teams.(17) SEA presence: yes — Australasia and APAC coverage confirmed.
- **Charles Taylor Adjusting** (London) — specialist marine and cargo loss adjuster; also operates INSIS claims management software platform.(18) SEA presence: yes — APAC operations.

**Global / US — Theft Recovery:**

- **CargoNet (Verisk)** (Jersey City, NJ; Verisk Analytics subsidiary) — the primary US/Canada cargo theft intelligence and recovery network; incident database since 2010; 3,594 incidents tracked in 2025 with $725M estimated losses; law enforcement integration for recovery; TAPA global partnership; no SEA operational presence.(6) Recovery rate: not publicly disclosed by CargoNet; Overhaul (which uses independent recovery methods) reports 96% FTL recovery rate.(19)
- **Overhaul** (Austin, TX) — integrated cargo risk management + recovery + insurance platform; licensed wholesale broker; 96% recovery rate claimed for FTL theft (Overhaul-stated); 86% reduction in cargo theft across client base; partnership with Loadsure for insurance layer; exclusive cargo insurance program since July 2023 offering 50–65% premium discounts vs. standard market for platform users; $105M Series C (August 2025); safeguards $1.4T in cargo trade; offices in US, Brazil, Mexico, Czech Republic.(19)(20) SEA presence: none confirmed.

**SEA — Traditional Cargo Insurers (Conventional; not parametric or insurtech):**

- **Tokio Marine Asia / PT Asuransi Tokio Marine Indonesia / Tokio Marine Singapore** — leading cargo insurer across SEA; marine cargo insurance offered in Singapore, Indonesia, Malaysia, Thailand, Vietnam, Philippines; parent Tokio Marine Holdings FY2024 net income ¥695.81B; group revenue ¥7.42T; TMHCC International GWP $2.7B (2024); Tokio Marine Future Fund (CVC, $42M) has invested in Nirvana Insurance (US telematics insurer).(21)(22) SEA presence: yes — entity-by-entity across all major SEA countries; cargo is a core product line.
- **MSIG (Mitsui Sumitomo Insurance Group)** — MS&AD Group subsidiary; present across SEA (Singapore, Malaysia, Indonesia, Thailand, Vietnam, Philippines); marine cargo is a core product; competes directly with Tokio Marine for marine cargo premium in the region. SEA presence: yes.
- **Sompo Holdings Asia** — Sompo International (global specialty lines arm); Sompo Singapore and country entities across SEA; marine cargo specialty.(23) SEA presence: yes — Singapore HQ for Asia operations.
- **Bolttech** (Singapore) — embedded insurtech platform; Series C $100M (2024); Sumitomo Corporation strategic investment and JV (announced May 2025); 37 markets; 700+ distribution partners; 230+ insurers; 6,000+ products; parametric exploration confirmed as part of product roadmap; logistics-specific cargo coverage not a primary disclosed product line.(24) SEA presence: yes — Singapore HQ; strong SEA first.
- **Igloo** (Singapore) — SEA-rooted full-stack insurtech; transit/purchase protection insurance embedded in e-commerce and logistics platforms (Tokopedia partnership for purchase protection, April 2024); partnerships with Lalamove and Ritase for logistics-embedded products; transit insurance is a listed product; D2C Indonesia launch (October 2024); focus is e-commerce and SME coverage, not commercial cargo.(25) SEA presence: yes — Singapore HQ; Indonesia, Vietnam, Philippines active.

**Global — Claims Management Software:**

- **Guidewire ClaimCenter** (San Mateo; NYSE: GWRE) — dominant P&C insurer core claims platform; not cargo-native but used by major cargo carriers; G2 leader in claims management.(4) SEA presence: yes — APAC insurers use Guidewire.
- **Origami Risk** (Chicago; private) — RMIS + claims management; ~25% RMIS market share; Strong Performer (Forrester); used by risk managers at 3PLs and self-insured shippers.(4) SEA presence: partial.
- **Riskonnect** (Atlanta; private) — integrated risk + claims management platform; used for cargo claims tracking at enterprise shippers and 3PLs.(4) SEA presence: partial.

---

### Geography & SEA Presence Matrix

| Solution Category | US | EU | LATAM | SEA Presence |
|---|---|---|---|---|
| Embedded cargo insurtech MGA (Loadsure, Parsyl, Breeze) | Strong | Loadsure EU launch 2024 | None | None — no SEA product, API, or regulatory filing confirmed |
| Parametric cargo insurance (Descartes Underwriting, AXA Climate) | Partial | Strong (EU origin) | Partial | Partial — AXA Climate through AXA SEA network; Descartes 60-country scope but no SEA cargo product named |
| Telematics-native insurance (Nirvana, Samsara Marketplace) | Strong | None | None | None — US ELD/FMCSA dependent; no SEA product |
| Theft recovery networks (CargoNet, Overhaul) | Strong | Overhaul EU | Overhaul LATAM | None confirmed — critical gap |
| Loss adjusters (Crawford, Sedgwick, McLarens) | Strong | Strong | Partial | Yes — all three have SEA offices; conventional service model |
| Claims management software (Guidewire, Origami, Riskonnect) | Strong | Strong | Partial | Yes — used by SEA insurers but not cargo-native |
| Traditional cargo insurers / SEA-native (Tokio Marine, MSIG, Sompo, Bolttech, Igloo) | Tokio Marine HCC in US | Partial | None | Yes — dominant in SEA; conventional products; parametric thin |

**SEA structural gap:** Embedded per-shipment cargo insurtech (Loadsure model), parametric delay/temperature products, and theft recovery networks are essentially absent from SEA. The market is served by traditional annual cargo policies from Tokio Marine, MSIG, Sompo, and local carriers. Bolttech and Igloo represent the closest SEA-native insurtech equivalents, but neither offers a commercial cargo product comparable in scope or automation to Loadsure or Parsyl.

---

### Preliminary Pain Points (this stage)

1. **Claims resolution averages 30–90 days for international cargo — well above the incident-response window.** Industry data and aggregator sources confirm that complex cargo claims (multi-jurisdiction, high-value, or temperature-sensitive) take 45–90 days to settle; even domestic claims average 30–45 days.(6) Loadsure's model (sub-3-day resolution via automation) is the exception, not the norm, and covers only brokers and carriers that have pre-embedded coverage — the majority of cargo in the world is covered under annual open-cover policies where claims still follow manual surveyor-dispatch workflows.

2. **Insurance pricing is still based on declared value and historical loss rates, not real-time journey signals.** Underwriters pricing cargo policies request declared commodity value, route, and historical claims — not IoT sensor feeds, ELD-derived route deviation data, or real-time carrier behavior scores. Nirvana Insurance and the Samsara Insurance Marketplace are the furthest-advanced in linking telematics to pricing, but they are US-trucking-specific and cover motor liability + cargo as a bundle, not standalone cargo policies. The Munich Re "Full Protection" IoT-linked cargo concept has been articulated since 2018 but has not become a mainstream product at scale. [ASSUMED-1]: Fewer than 5% of global cargo policies are priced with any form of in-transit IoT or telematics input at the underwriting stage — to validate: ask five Lloyd's cargo underwriters and three Asian regional cargo underwriters (Tokio Marine, MSIG, Sompo) whether they accept IoT sensor data as a primary underwriting input and what discount range, if any, they apply.

3. **Subrogation against the sub-contractor tier is structurally broken.** A 3PL who hires a small truck owner-operator (common in SEA, LATAM, and US spot markets) typically bears the cargo loss itself and then attempts to recover from the sub-carrier under subrogation rights. In practice, small carriers hold minimum statutory liability limits (e.g., $100,000 under the Carmack Amendment for US motor carriers) that are far below the cargo value of a high-value load. Waiver-of-subrogation clauses in broker contracts further undermine recovery. The 3PL absorbs the residual and its own loss experience worsens, feeding through to higher premiums — but without the sub-carrier being correctly rated as a risk.(26) [ASSUMED-2]: More than 60% of SEA 3PLs do not contractually require sub-contractors to carry cargo liability insurance beyond national statutory minimums — to validate: review 20 SEA 3PL sub-carrier agreements across Indonesia, Thailand, and Malaysia; record whether a cargo liability minimum is specified and what the limit is.

4. **Cargo theft recovery rates outside North America are low and no SEA-equivalent recovery network exists.** Overhaul reports a 96% FTL recovery rate in the US using its integrated tracking and law enforcement mobilization model.(19) CargoNet does not publicly disclose a comparable recovery-rate figure. In SEA, no equivalent of CargoNet or Overhaul operates: there is no shared theft intelligence network, no law enforcement coordination API, and no real-time GPS recovery mobilization service. BSI/TT Club 2024 identifies Indonesia as a top-10 global cargo theft country; Strait of Malacca sea piracy surged 281% YoY in H1 2025. Recovery is reactive, dependent on local police, and rarely tracked.(27) [ASSUMED-3]: Cargo theft recovery rates in Indonesia and Thailand are below 20% — to validate: ask Tokio Marine, MSIG, and Sompo Asia cargo claims teams what percentage of theft claims result in any recovery of goods; cross-check with local freight police or insurance industry bodies.

5. **Parametric cargo insurance adoption in SEA is negligible.** AXA Climate, Descartes Underwriting, and Munich Re offer parametric products for weather and delay, but none has a disclosed commercial product distributed in the SEA cargo market. Bolttech has "parametric exploration" on its roadmap but no confirmed commercial launch. Igloo covers transit/purchase protection at e-commerce scale but does not offer event-triggered parametric cargo coverage for commercial freight. The result is that SEA cargo shippers — particularly cold-chain and pharmaceutical — face the same claims friction (45–90 days, surveyor-dependent) that parametric insurance is designed to eliminate. [ASSUMED-4]: No commercial parametric cargo insurance product is live in Indonesia, Malaysia, or Thailand as of May 2026 — to validate: search OJK (Indonesia), BNM (Malaysia), and OIC (Thailand) insurer product filings for any parametric cargo product; ask Tokio Marine and Bolttech product teams whether parametric cargo is in their 2026 product roadmap.

6. **IoT sensor data from Stage 3 (Tive, Roambee, Sensitech) does not flow automatically to insurers at FNOL.** As documented in Stage 3, cargo sensors generate excursion alerts in real time, but these are typically siloed to the shipper's QA team. When a claim is filed, the insurer must request the sensor log retroactively — a forensic exercise. The insurer does not receive a live FNOL-equivalent alert at the moment of temperature breach or shock event; instead, the claim is initiated by the shipper, and the sensor log is submitted as evidence alongside invoices and bills of lading. This delay increases both settlement time and dispute risk. [ASSUMED-5]: Fewer than 15% of cargo policies covering temperature-sensitive goods include a clause requiring the insured to transmit sensor alerts to the insurer within 24 hours of an excursion event — to validate: review policy wordings from 10 Lloyd's cargo syndicates and five Asian cargo insurer policies covering pharmaceutical or perishable shipments; check for IoT-notification clauses.

7. **Insurance data for the feedback loop to Stage 1 (carrier onboarding) is not shared across the chain.** Claims outcomes — which carriers generated losses, what routes, what commodity types — are held by insurers and are not structured data that flows back to carrier vetting platforms (Highway, Carrier411, MCP). The result is that a carrier responsible for a $500,000 pharmaceutical theft in 2023 may receive the same safety score from an FMCSA-data-based vetting platform in 2025 if no criminal prosecution or FMCSA action was filed. The insurance loss signal is structurally disconnected from the pre-dispatch vetting signal.

8. **Bundled 3PL cargo insurance in SEA means claims data is fragmented and not standardized.** Shippers in SEA typically purchase cargo coverage through their 3PL (bundled into the freight rate), which means neither the shipper nor the final carrier has direct visibility of policy terms, coverage limits, or claims history. When a loss occurs, the shipper must make a claim through the 3PL, who in turn makes a claim with the insurer — with no direct shipper-insurer relationship. This three-layer claims workflow extends settlement time and makes it impossible for insurers to build a journey-level risk model from fragmentary data.

---

### Sources for this stage

(1) IUMI International Union of Marine Insurance — **Stats Report 2025** (covering 2024 data), directly downloaded and verified via markitdown (6,106 lines extracted): https://iumi.com/wp-content/uploads/2025/11/IUMI-Stats-Report-2025.pdf — confirms global cargo premium $22.64B (2024), Asia/Pacific 35.15% share (~$7.96B), Asia/Pacific cargo +8.8% YoY (China-driven), China 17.6% of global cargo, total marine all-lines $39.92B (2024, +1.5% YoY). Cross-validated via IUMI press release: https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/ and IIMS independent summary: https://www.iims.org.uk/iumi-report-shows-global-marine-insurance-premiums-total-39-92-billion/

(2) TT Club 2024 Annual Report / Financial Highlights — gross earned premiums $284.2M, combined ratio 106%, AM Best A-. https://www.ttclub.com/news-and-resources/corporate-literature/article/financial-highlights-2024 ; https://www.ttclub.com/news-and-resources/corporate-literature/article/tt-club-annual-report-2024-industry-resilience-growth/

(3) Crawford & Company 2024 Full Year Results — record $1.293B revenue, +2% YoY. https://ir.crawco.com/news/news-details/2025/Crawford--Company-Reports-2024-Fourth-Quarter-and-Full-Year-Results/default.aspx

(4) Cargo Claims Management Software Market — GrowthMarketReports.com (2024 estimate $1.23B, CAGR 10.6%); Origami Risk ~25% RMIS market share per AppsRunTheWorld / CBInsights; Guidewire ClaimCenter G2 Leader. https://growthmarketreports.com/report/cargo-claims-management-software-market [Note: single market research firm source; confidence Low; use as directional only]

(5) Parametric insurance market — Global Market Insights (GMI) estimate $14.42B (2024); Market Research Future $15.9B (2024). https://www.gminsights.com/industry-analysis/parametric-insurance-market ; https://www.marketresearchfuture.com/reports/parametric-insurance-market-24564 [Note: all-lines figure; no cargo-specific parametric source found; confidence Low]

(6) Verisk CargoNet 2025 Annual Statistics — $725M estimated losses, 3,594 incidents, +60% YoY from $455M (2024). https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/ ; Claims processing timeline (30–90 days): FreightAmigo https://www.freightamigo.com/en/blog/transport-insurance/how-long-does-a-cargo-insurance-claim-take-to-process/ ; Carmack 120-day final decision: https://fuentesfirm.com/cargo-claim-deadlines-under-the-carmack-amendment/

(7) Loadsure Series A — $11M, March 2022, MMC Ventures lead; claims in <3 days. https://www.loadsure.net/latest/article/loadsure-raises-11-million-series-a-funding-for-its-breakthrough-freight-insurance-technology/ ; Crowley participation: https://www.crowley.com/news-and-media/press-releases/crowley-participates-in-loadsure-11-million-series-a-round-to-close-cargo-insurance-gap/

(8) Parsyl Series B ($25M, HSCM Ventures lead) + Series C ($20M, Lightsmith Group lead, January 2025) + total $66M. https://www.parsyl.com/press-release/parsyl-raises-25m-series-b-to-expand-insurance-and-risk-management-for-essential-supply-chains ; https://www.parsyl.com/media/parsyl-secures-series-c-funding ; Lightsmith press release: https://lightsmithgp.com/news-posts/lightsmith-leads-20-million-investment-round-in-ai-powered-insurer-parsyl-supporting-climate-resilience-in-complex-supply-chains/

(9) Cover Genius Series E ($80M, May 2024, Spark Capital); 30M+ customers; 107% YoY growth. https://www.globenewswire.com/news-release/2024/05/15/2882646/0/en/Cover-Genius-Closes-80M-in-Series-E-Funding-as-Investors-See-700-Billion-Opportunity-in-Embedded-Protection/

(10) Nirvana Insurance Series D — primary company announcement on PRNewswire (Dec 18, 2025): $100M Series D, $1.5B post-money valuation, led by Valor Equity Partners, $262M total funding. https://www.prnewswire.com/news-releases/nirvana-raises-100-million-series-d-funding-led-by-valor-equity-partners-doubling-valuation-to-1-5-billion-302636878.html ; Series C cross-check on TechCrunch: https://techcrunch.com/2025/03/10/nirvana-keeps-on-truckin-with-80m-at-a-830m-valuation-for-its-ai-powered-insurance/ ; Crunchbase News: https://news.crunchbase.com/ai/insurance-platform-nirvana-valuation-nearly-doubles/

(11) Loadsure — Insurance Insider 2024 Insurtech Product of the Year; European launch April 2024; motor truck cargo February 2024. https://fintech.global/2024/04/30/insurtech-mga-loadsure-enters-european-market/ ; https://www.insurancejournal.com/news/international/2024/02/13/760490.htm

(12) Loadsure + Five Sigma AI claims deployment (February 2026). https://coverager.com/loadsure-deploys-five-sigmas-ai-claims-platform-and-clive-to-accelerate-freight-claims/

(13) Breeze AI — Great American Insurance Group US expansion (August 2025); Helvetia strategic investment; NFX + 7percent Ventures investors. https://meantime.global/news/ai-powered-cargo-insurance-platform-breeze-welcomes-expansion-into-us-market-with-great-american-collaboration/ ; https://www.reinsurancene.ws/helvetia-and-breeze-partner-to-revolutionise-cargo-insurance-with-advanced-technology/

(14) Descartes Underwriting — MGA of the Year (The Insurer, 2024); $200M+ GWP target in 2024, >50% growth. https://descartesunderwriting.com/newsroom/parametric-insurer-awards-2024 ; Intelligent Insurer expansion coverage: https://www.intelligentinsurer.com/baden-baden-today/descartes-sets-sights-on-expansion-with-parametric-innovation

(15) Munich Re IoT Cover / Full Protection — cargo IoT-linked insurance combining active loss prevention and enhanced cargo cover. https://www.munichre.com/en/solutions/for-industry-clients/iot-cover.html ; LinkedIn (Stefan Fröhlich, Munich Re): https://www.linkedin.com/pulse/cargo-insurance-meets-iot-stefan-fr%C3%B6hlich

(16) Sedgwick — 33,000 colleagues, 80+ countries; cargo casualty specialist team. https://www.sedgwick.com/loss-adjusting/marine-transportation/

(17) McLarens — 41-country footprint; marine roots since 1931; cargo, hull, ports and terminals specialty. https://www.mclarens.com/expertise/transportation/marine/

(18) Charles Taylor Adjusting — specialist marine and cargo loss adjuster; INSIS claims software. https://www.charlestyloradjusting.com/ [Note: URL to be confirmed in attended fetch if needed]

(19) Overhaul cargo theft recovery rate (96% FTL; 86% theft reduction across client base); exclusive insurance program since July 2023; 50–65% premium discount vs. market; $105M Series C August 2025. https://www.prnewswire.com/news-releases/overhaul-combines-its-cargo-theft-prevention-and-recovery-services-with-an-exclusive-cargo-insurance-program-302220417.html ; https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(20) Overhaul LATAM/EU offices (Brazil, Mexico, Czech Republic). https://wwd.com/sourcing-journal/logistics/cargo-theft-overhaul-supply-chain-risk-visibility-73-million-law-enforcement-1238813482/

(21) Tokio Marine Holdings FY2024 — net income ¥695.81B; revenue ¥7.42T; TMHCC International GWP $2.7B (2024), $2.9B (2025). https://www.tokiomarinehd.com/en/ir/download/ ; TMHCC financials: https://www.tmhcc.com/en/about-us/financial-strength

(22) Tokio Marine Future Fund — $42M CVC of Tokio Marine & Nichido Fire Insurance Co., managed by WiL LLC, launched April 2022. Nirvana Insurance listed as current portfolio company on the fund's own portfolio page (primary disclosure): https://tmfuturefund.com/ ; launch press release: https://www.businesswire.com/news/home/20220419005075/en/Global-Insurance-Company-Tokio-Marine-Launches-Tokio-Marine-Future-Fund-a-42M-CVC-Arm-to-Support-Early-Stage-Startups ; TechCrunch fund-launch coverage explicitly naming Nirvana (April 2022 Series A): https://techcrunch.com/2022/04/19/tokio-marine-future-fund/ ; CBInsights tracker: https://www.cbinsights.com/investor/tokio-marine

(23) Sompo Holdings Asia SEA presence — Sompo Singapore, marine cargo specialty. https://www.sompo-hd.com/en/ [Note: country-specific cargo premium data not found in public filings; confirm with Sompo regional IR]

(24) Bolttech Series C ($100M, 2024); Sumitomo JV announcement (May 2025); 37 markets, 700+ distribution partners. https://bolttech.io/who-we-are/ ; Sumitomo announcement: https://www.sumitomocorp.com/en/asia-oceania/news/topics/2025/group/20250508

(25) Igloo — Tokopedia purchase protection partnership (April 2024); Lalamove and Ritase logistics partnerships; D2C Indonesia launch (October 2024). https://iglooinsure.com/press/e-commerce-insurance-partnership-tokopedia/ ; https://beinsure.com/news/insurtech-igloo-entered-indonesia/

(26) Subrogation and 3PL/sub-contractor insurance gap — Overdrive article on contract traps; MarlinBlue subrogation in cargo insurance. https://www.overdriveonline.com/partners-in-business/independence-growth/article/15709550/contract-traps-for-carriers-additional-insured-subrogation-waivers-and-offsetting ; https://marlinblue.com/claims-subrogation-in-cargo-insurance-from-claim-to-recovery/

(27) BSI Consulting and TT Club 2024 Cargo Theft Report (April 2025 edition) — Indonesia top-10 global cargo theft country; Strait of Malacca piracy +281% YoY H1 2025. https://www.ttclub.com/news-and-resources/publications/article/bsi-consulting-and-tt-club-2024-cargo-theft-report/ [PDF FETCHED + markitdown-converted 2026-05-20 via Playwright phase: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf — DISCREPANCY: the PDF body lists 2024 cargo-theft hotspots as Brazil, Mexico, India, United States, Germany, Chile, and South Africa, and does NOT explicitly name Indonesia in any top-10 ranking nor cite a +281% YoY Malacca piracy figure. Those specifics rely on secondary press-release / trade summaries already cited. The PDF substantiates the report's existence, 2024 cargo-theft type/commodity mix (food & beverage 22%, ag 10%, electronics 9%, fuel 7%; hijackings 21%, vehicle theft 20%, in-transit 41%), and seasonality (Q1 + Q4 elevated) — but Indonesia/Malacca specifics remain attributed to secondary sources only.]

---

### Assumptions to Validate

[ASSUMED-1]: Fewer than 5% of global cargo policies are priced with any form of in-transit IoT or telematics input at the underwriting stage.
- to validate: Ask five Lloyd's cargo underwriters (Beazley, Atrium, Ascot, AXA XL, QBE) and three Asian regional cargo underwriters (Tokio Marine HCC, MSIG, Sompo International) whether they accept IoT sensor data (Tive, Roambee, Sensitech) as a primary underwriting input; document what premium discount, if any, they apply for IoT-equipped fleets vs. non-equipped; determine whether any policy clause requires sensor-feed access as a condition of coverage.

[ASSUMED-2]: More than 60% of SEA 3PLs do not contractually require sub-contractors to carry cargo liability insurance beyond national statutory minimums.
- to validate: Collect and review 20 sub-contractor agreements from Indonesian, Thai, and Malaysian 3PLs (tier 1 and tier 2); look for cargo liability minimum coverage requirements; cross-check against OJK (Indonesia), BNM (Malaysia), OIC (Thailand) minimum statutory cargo liability requirements for hired carriers.

[ASSUMED-3]: Cargo theft recovery rates in Indonesia and Thailand are below 20%.
- to validate: Interview claims managers at Tokio Marine Indonesia, MSIG Thailand, and Sompo Singapore; request aggregate data on the percentage of theft claims in which any portion of goods was recovered; cross-reference with available local police cargo theft statistics if public.

[ASSUMED-4]: No commercial parametric cargo insurance product is live in Indonesia, Malaysia, or Thailand as of May 2026.
- to validate: Search OJK (Indonesia), BNM (Malaysia), and OIC (Thailand) insurer product registries for any product labeled "parametric" in the cargo or marine category; ask Tokio Marine and Bolttech product heads whether parametric cargo is in their 2026 product roadmap; verify AXA Climate's SEA commercial cargo parametric offering (if any) via AXA Asia's commercial lines team.

[ASSUMED-5]: Fewer than 15% of cargo policies covering temperature-sensitive goods include a clause requiring the insured to transmit sensor alerts to the insurer within 24 hours of a temperature excursion event.
- to validate: Review policy wordings from ten Lloyd's cargo syndicates (including Parsyl's Essential Consortium) and five Asian cargo insurer policies (Tokio Marine, MSIG, Sompo) covering pharmaceutical or perishable shipments; identify whether any policy contains an IoT notification clause; ask the brokers (Marsh, Aon, Willis/WTW) whether such clauses are being requested by underwriters at renewal.

[ASSUMED-6]: Tokio Marine's CVC investment in Nirvana Insurance (US telematics insurer) has not produced a product or pilot applicable to the SEA market.
- to validate: Ask Tokio Marine Future Fund (Palo Alto) whether the Nirvana relationship has generated any SEA market exploration; ask Nirvana whether they have evaluated Indonesia, Malaysia, or Singapore as product markets and what the regulatory/data blockers are.
