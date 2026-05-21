# Stage 1: Vendor Procurement & Counterparty Risk Solutions
## Worldwide Solution-Landscape Scan — Logistics Risk Management
*Research date: 2026-05-14 | Pass 1 draft*

---

## 1. Stage Definition & Boundaries

**What this solution category covers:**
Vendor procurement and counterparty risk solutions are software platforms, data feeds, and hybrid services that freight brokers, 3PLs, and shippers use to answer one question before a load moves: *Is this carrier who they say they are, and are they safe to use?*

The workflow begins when a broker first encounters a carrier (pre-booking identity check), extends through onboarding (document collection, insurance verification, FMCSA authority check), and continues as a persistent monitoring obligation (insurance renewal alerts, authority lapses, CSA score deterioration, double-brokering signals).

**In-scope boundary:**
- Dedicated carrier-vetting platforms: RMIS, Descartes MyCarrierPortal, Highway, Carrier411, Carrier Assure, CarrierSource, eCarrierCheck, VETCarriers, FreightValidate
- Freight-fraud detection point tools: Highway Load Lock, Overhaul FraudWatch, Descartes MacroPoint FraudGuard 2.0, TIA Watchdog
- Compliance / CSA-score monitoring feeds: DAT CarrierWatch, SaferWatch, FMCSA SAFER (government baseline)
- TMS modules with embedded vetting submodules: Descartes MacroPoint (capacity + FraudGuard), Transporeon carrier network qualification (Europe), Cargobase (SEA/global)
- Identity / KYB tools applied to logistics counterparties: AU10TIX (Israeli IDV provider, integrated via FreightValidate), LexisNexis Risk Solutions (B2B identity data layer)
- Insurance-status verification utilities: Reliance Partners API, TriumphPay payment network with carrier identity verification

**Out-of-scope:**
General supplier-risk platforms (Coupa Risk, Aravo, EcoVadis) are excluded unless they have a documented logistics-counterparty module. Cargo physical security hardware (locks, seals, GPS trackers) is Stage 4 in this framework. In-transit visibility platforms (project44, FourKites) are Stage 3, although several platforms (Overhaul, MacroPoint) span both.

**Why this stage exists:**
The US trucking market has ~600,000 active registered motor carriers (1) and processes approximately $900 billion in freight annually. The FMCSA registers carriers with minimal identity verification — an MC number can be obtained for ~$300 in under a week. This structural gap enables identity impersonation, double brokering, and "change of ownership" fraud. CargoNet reported 3,625 cargo theft incidents in the US and Canada in 2024, a 27% increase year over year, with estimated losses of $454.9 million (2). Freight fraud and double brokering schemes cost victims an estimated $500 million to $700 million in freight payments annually beyond the physical cargo losses (3). TIA's 2024 fraud survey found the average member company lost over $400,000 to fraud, with 43% naming unlawful brokerage as their top concern (4). These financial exposures make counterparty risk tooling economically rational for any broker writing $10M+ in annual revenue.

---

## 2. Activities Performed by These Solutions

1. **Carrier identity establishment** — Match a carrier's MC/DOT number against the FMCSA SAFER database, Secretary of State registration, and proprietary intelligence networks to confirm the entity is real and not impersonating a legitimate carrier. Providers: Descartes MyCarrierPortal (Intellivite validation), Highway (Carrier Identity Engine), RMIS (pre-registration check), FreightValidate (FMCSA + SoS cross-check + AU10TIX biometric layer). (5, 6, 7)

2. **Document collection and structured packet completion** — Digitally collect carrier onboarding packets including W-9/W-8 forms, certificates of insurance (COI), signed broker-carrier agreements, operating authority copies, and equipment/trailer certifications. Providers: Descartes MyCarrierPortal, RMIS, VETCarriers, MyCarrierPackets (now part of MyCarrierPortal). Descartes MCP reduces onboarding to under 5 minutes for 97%+ of carriers already in its database. (8)

3. **Insurance status verification and monitoring** — Check that cargo, liability, and workers' comp coverage is active, meets minimum limits, and names the broker as certificate holder; alert on renewals, cancellations, and coverage lapses. Providers: RMIS (proprietary insurance certificate database, largest in industry), DAT CarrierWatch (daily status checks), Reliance Partners API (real-time COI issuance), SaferWatch (FMCSA financial responsibility filings monitoring). (9, 10)

4. **Safety score assessment and ongoing compliance monitoring** — Pull FMCSA CSA scores, SMS BASIC percentiles, roadside inspection records, out-of-service rates, and crash data; generate a simplified risk rating (A–F or Acceptable/Warning/Alert); monitor daily for changes. Providers: Carrier Assure (proprietary A–F score from 2M+ DOT numbers analyzed daily), Carrier411 (FreightGuard reports + BASIC monitoring for 4,500+ broker users), SaferWatch, DAT CarrierWatch. (11, 12)

5. **Fraud signal detection and double-brokering flags** — Identify behavioral anomalies: carrier accepting loads beyond observed power unit capacity, suspicious email domain used for rate confirmations, GPS location spoofing during transit, FMCSA contact-information hijacking, unusual change-of-ownership patterns. Providers: Highway (Load Lock — protected 5M+ loads through 2024 with zero strategic cargo theft; blocked 914,719 fraud attempts in 2024 alone), Descartes MacroPoint FraudGuard 2.0, Overhaul FraudWatch (flagged 8% of shipments in early deployment as high-risk), TIA Watchdog (1,600+ fraud reports logged Sep 2024–Feb 2025). (13, 14, 15, 16)

6. **Approved-vendor list / preferred-carrier network management** — Maintain a curated list of pre-vetted, contract-approved carriers with compliance scores and performance history, automatically blocking carriers that fall out of compliance from appearing in dispatch queues. Providers: Descartes MyCarrierPortal (custom compliance standards + TMS block integration), Highway (Trusted Freight Exchange — verified carrier directory exclusive to vetted participants), RMIS (carrier directory with automated routing rules in TMS). (17, 18)

7. **Beneficial-ownership and KYB checks at the small-transporter tier** — Verify the actual owners of a small carrier entity, cross-reference against sanctions lists, adverse-media databases, and state licensing records to detect shell-company fraud or criminal-enterprise infiltration. Providers: LexisNexis Risk Solutions (data layer used by larger brokers in custom workflows), AU10TIX (biometric + document verification layer integrated via FreightValidate), TriumphPay payment network (carrier entity validation before payment release). (19, 20, 21)

---

## 3. Sub-Category Map

### Sub-category A: Carrier Vetting Marketplaces / Onboarding Platforms
**Definition:** Platforms that manage the end-to-end carrier onboarding workflow — document collection, identity verification, compliance check, and ongoing monitoring — as a standalone SaaS product or TMS add-on.
**Differentiator:** Depth of existing carrier database (how many COIs already on file), speed of onboarding, breadth of TMS integrations.
**Business model archetype:** Monthly SaaS subscription tiered by broker volume, with per-carrier onboarding fees for new additions.
**Representative vendors:**
- Descartes MyCarrierPortal (acquired $24M, Sep 2024)
- RMIS by Truckstop (acquired March 2021)
- VETCarriers (BrokerCarrier)
- eCarrierCheck
- MyCarrierPackets (now absorbed into Descartes MCP)

### Sub-category B: Carrier Identity & Fraud Detection Point Tools
**Definition:** Specialized tools focused narrowly on detecting impersonation, double brokering, and identity fraud at or near the load-booking event, typically via behavioral analytics and real-time signal processing rather than document workflows.
**Differentiator:** Real-time processing at dispatch speed; load-level not just carrier-level granularity; often include ML behavioral-anomaly detection.
**Business model archetype:** Per-load fee or subscription tied to load volume; sold as a layer on top of existing TMS.
**Representative vendors:**
- Highway (Carrier Identity + Load Lock)
- Overhaul FraudWatch
- Descartes MacroPoint FraudGuard 2.0
- FreightValidate
- TIA Watchdog (association-managed, member-only)

### Sub-category C: Compliance Monitoring Data Feeds
**Definition:** Data services that continuously pull government records (FMCSA, DOT) and synthesize changes into actionable risk signals or carrier scores, typically consumed via API or integrated into TMS compliance dashboards.
**Differentiator:** Coverage breadth (% of active US carriers), update frequency, alert configurability.
**Business model archetype:** Annual subscription per monitored carrier count or flat-rate access tier.
**Representative vendors:**
- DAT CarrierWatch (500,000+ carrier database, daily status checks)
- SaferWatch (FMCSA monitoring + proprietary risk classification)
- Carrier Assure (predictive A–F score from 2M+ DOT numbers)
- Carrier411 (FreightGuard performance reports + BASIC monitoring; 4,500+ broker subscribers)
- FMCSA SAFER (government baseline, free — used directly or as underlying data source by all commercial providers)

### Sub-category D: TMS-Embedded Onboarding / Capacity Modules
**Definition:** Carrier vetting functionality embedded within larger TMS or load board platforms, where onboarding and compliance checking is a module rather than the core product.
**Differentiator:** Frictionless workflow integration for existing TMS users; no separate login; carrier data pre-populated from load board history.
**Business model archetype:** Module add-on fee to base TMS subscription, or bundled in mid/enterprise tier.
**Representative vendors:**
- Descartes MacroPoint Capacity (FMCSA integration + FraudGuard module)
- Transporeon carrier qualification network (Europe; 210,000+ carriers in network; Trimble-owned since April 2023)
- Cargobase (Singapore-based TMS with carrier procurement; offices in SG, MY, NL, MX, US)
- Truckstop.com carrier onboarding (load board + RMIS integration)

### Sub-category E: Identity/KYB Layers Applied to Logistics
**Definition:** General-purpose identity verification and business verification tools that have been deployed or integrated into freight vetting workflows, providing biometric verification, government document authentication, and beneficial-ownership data.
**Differentiator:** Document authenticity checking at a depth freight-native tools don't offer; global coverage for verifying non-US carriers.
**Business model archetype:** Per-verification API fee or enterprise license.
**Representative vendors:**
- AU10TIX (Israeli IDV provider; integrated via FreightValidate; verifies government IDs from 190+ countries in <4 seconds)
- LexisNexis Risk Solutions (B2B identity + KYB data layer; used by large broker compliance teams)
- TriumphPay (payments network with carrier entity validation and factoring-assignment tracking as identity signal)

### Sub-category F: Insurance Verification & AP-Side Carrier Vetting
**Definition:** Tools that verify insurance at the carrier-appointment or payment stage, reducing duplicate coverage disputes and ensuring payment reaches legitimate parties.
**Differentiator:** Integration into financial workflows (AP, factoring, payables), not just dispatch.
**Business model archetype:** API-based per-transaction fee; bundled with insurance brokerage revenue.
**Representative vendors:**
- Reliance Partners (insurance brokerage with API-enabled per-load cargo insurance + COI verification; integrated with project44, Truckstop)
- TriumphPay (carrier payment network; wallet verification; fraud-signal flag if carrier accepts volume beyond capacity)

---

## 4. Representative Vendors — Detailed

---

### 4.1 Descartes MyCarrierPortal (formerly Assure Assist / MyCarrierPackets)
- **HQ:** Waterloo, Ontario, Canada (Descartes Systems Group) | Founded: acquired September 2024 for ~$24M
- **What it does:** Carrier onboarding and risk monitoring SaaS that collects carrier packets, verifies insurance and FMCSA authority, IRS W-9 validation, and monitors ongoing compliance for freight brokers and shippers.
- **Primary user:** Freight broker, 3PL, shipper
- **Business model:** SaaS monthly subscription — Standard plan starts at $500/month (unlimited users, prebuilt TMS integrations, fraud prevention tools); Enterprise at custom pricing. Starter tier for brokers with <12 months authority also available. (8)
- **Pros:**
  - Proprietary Intellivite validation service onboards 97%+ of active US carriers in <5 minutes because COI already on file (8)
  - Deep TMS integration library covering McLeod, Turvo, AscendTMS, and others
  - Post-acquisition access to Descartes MacroPoint FraudGuard creates combined onboarding + in-transit fraud detection capability (22)
- **Cons:**
  - Pricing starts at $500/month — cost-prohibitive for solo or <50 load/month brokers
  - Coverage is US and Canada only; no documented non-North American carrier database
  - Post-acquisition product roadmap integration with MacroPoint still evolving (2024–2025 transition period)
- **SEA presence:** NO — US and Canada carrier data only; no offices, resellers, or local-regulation support documented (vendor website, no international footprint listed)
- **Approx. customer count / scale:** Serves "hundreds of thousands of carriers and thousands of brokers and shippers in the trucking industry" per acquisition press release (23)

---

### 4.2 RMIS by Truckstop
- **HQ:** Westlake Village, California, USA | Founded: 1996; acquired by Truckstop.com March 2021
- **What it does:** Automated carrier compliance and onboarding platform with the industry's largest insurance certificate database; monitors insurance, authority, and safety records for freight brokers.
- **Primary user:** Freight broker, 3PL
- **Business model:** SaaS subscription — RMIS Lite starts at $340/month; Pro tier at custom/enterprise pricing (typically $500+ per month per broker size and volume). (24)
- **Pros:**
  - Registers ~1 new carrier every 12 seconds; 97%+ of active US carriers already in database (25)
  - Operated since 1996 — deepest insurance certificate archive in the market
  - Major broker clients include Coyote Logistics, GlobalTranz, Echo Global Logistics, Penske (25)
- **Cons:**
  - US and Canada only; FMCSA-centric data source limits applicability for international carrier networks
  - Owned by Truckstop.com (also a load board) — competitors on the load board side may avoid a vendor where their commercial counterpart has the same parent
  - Pricing creates a floor that excludes micro-brokers
- **SEA presence:** NO — North America only; no SEA offices, resellers, or local-regulation support (vendor website)
- **Approx. customer count / scale:** 130 employees at headquarters; customers include top-10 US brokers (25)

---

### 4.3 Highway
- **HQ:** Dallas, Texas, USA | Founded: 2022
- **What it does:** Carrier Identity platform — verifies who is actually hauling the freight using behavioral analytics, identity checks, and load-level monitoring (Load Lock product) to prevent impersonation, double brokering, and fraudulent email domain spoofing.
- **Primary user:** Freight broker, 3PL
- **Business model:** SaaS subscription (tiered plans — Identify, Connect, Monitor); Load Lock is a load-volume-based add-on. Pricing not publicly disclosed; contact for quote. (26)
- **Pros:**
  - 1,050+ broker clients including 70 of the top 100 US brokers; blocked 914,719 fraud attempts in 2024 (13, 26)
  - Load Lock has protected 5M+ loads since launch with zero documented strategic cargo theft incidents (13)
  - Investment from FTV Capital (August 2025) validates institutional-grade positioning
- **Cons:**
  - US-centric carrier identity data (FMCSA-based); limited applicability to non-FMCSA international carrier verification
  - No disclosed pricing — limits self-service evaluation by budget-constrained brokers
  - Founded 2022 — youngest entrant among incumbents; long-term data depth still building
- **SEA presence:** NO — US/Canada focused; no SEA offices or presence documented. All carrier intelligence based on FMCSA/interstate carrier data. (26)
- **Approx. customer count / scale:** 1,050+ brokers; newsletter: 5,000+ logistics professionals (26, 13)

---

### 4.4 Carrier411
- **HQ:** USA (exact city not publicly disclosed) | Founded: 2005
- **What it does:** Carrier qualification and monitoring platform providing safety ratings, FMCSA BASIC scores, insurance and authority monitoring, and FreightGuard performance reports submitted by broker community.
- **Primary user:** Freight broker, shipper
- **Business model:** Annual subscription per user; pricing not publicly disclosed but positioned as mid-market; freemium single-lookup option available for casual users.
- **Pros:**
  - 4,500+ broker subscribers plus 600 large shippers and institutional users including FMCSA itself (11)
  - FreightGuard community-sourced performance reports fill a gap in pure government-data approaches
  - 20+ years of historical carrier performance data
- **Cons:**
  - Relies heavily on FMCSA public data — no proprietary identity-verification layer comparable to Highway or MyCarrierPortal
  - Community-report system (FreightGuard) is subject to competitive manipulation; quality controls not disclosed
  - No documented fraud-prevention tooling beyond monitoring alerts
- **SEA presence:** NO — US carrier database; no international presence documented
- **Approx. customer count / scale:** 4,500+ broker subscribers, 600 large shippers (11)

---

### 4.5 Carrier Assure
- **HQ:** USA | Founded: circa 2017
- **What it does:** Predictive carrier performance scoring platform using data science and algorithmic analysis of FMCSA records, tracking reliability, insurance status, and community feedback to generate an A–F grade for each carrier's likelihood of delivering safely.
- **Primary user:** Freight broker, 3PL, shipper
- **Business model:** Freemium (Individual plan: free, unlimited SuspectCarrier reports); Premium: $149/month (unlimited scores and reports); Enterprise: custom pricing with API integration and analytics. (27)
- **Pros:**
  - Analyzes 2,000,000+ DOT numbers daily — widest continuous monitoring coverage of any standalone scorer
  - Predictive (forward-looking score) vs. compliance-only (point-in-time status check) is a genuine differentiator
  - $149/month entry price accessible to small brokers; free tier lowers discovery barrier
- **Cons:**
  - A–F scoring is proprietary — limited transparency into weighting methodology
  - Data sourced from public FMCSA records plus community reports; no biometric or document-verification capability
  - Score alone doesn't prevent fraud if a fraudster hasn't yet generated adverse data
- **SEA presence:** NO — US and Canada carrier scoring only
- **Approx. customer count / scale:** Not publicly disclosed; partnership with Descartes MyCarrierPortal for integrated vetting workflows (27)

---

### 4.6 SaferWatch
- **HQ:** USA | Founded: circa 2005
- **What it does:** Continuous FMCSA carrier compliance monitoring service that pulls operating authority, insurance filings, CSA scores, and roadside inspection data to generate real-time Acceptable/Warning/Alert ratings for individual carriers.
- **Primary user:** Freight broker, 3PL
- **Business model:** Annual subscription or per-monitored-carrier fee; integrates with TMS and load boards via API.
- **Pros:**
  - Direct integration with FMCSA SAFER data feed — real-time vs. batch updates
  - Long track record (20 years) with broad TMS integration library
  - Monitoring is automated and continuous, not just point-in-time at onboarding
- **Cons:**
  - FMCSA data only — no proprietary fraud signals or identity verification beyond government records
  - UI and UX described as dated by users compared to newer entrants (28)
  - No documented expansion beyond US/Canada carrier universe
- **SEA presence:** NO — FMCSA-centric; no international presence
- **Approx. customer count / scale:** Integrated with dozens of TMS providers including uShip, Dr. Dispatch (28)

---

### 4.7 DAT CarrierWatch
- **HQ:** Beaverton, Oregon, USA (DAT Freight & Analytics, owned by Roper Technologies) | Founded: service launched ~2005
- **What it does:** Carrier monitoring service providing access to 500,000+ transportation company profiles with MC authority, safety ratings, insurance status, and daily automated alerts for changes in carrier status, authority, and crash data.
- **Primary user:** Freight broker, 3PL
- **Business model:** Standalone subscription or bundled into DAT One platform; custom enterprise pricing.
- **Pros:**
  - 500,000+ carrier database — one of the widest US coverage sets for monitoring
  - Daily automated alerts for changes in insurance, authority, safety rating — proactive not reactive
  - Native mobile alerts via DAT One app
- **Cons:**
  - Relies exclusively on FMCSA/DOT public records; no proprietary fraud-detection layer
  - Owned by Roper Technologies (public company) — product investment pace constrained by corporate portfolio dynamics
  - No SEA coverage; US and Canada focus only
- **SEA presence:** NO — US and Canada only (vendor website)
- **Approx. customer count / scale:** Part of DAT Freight & Analytics, the largest load board in North America with 200M+ load postings processed annually; DAT One has broad broker adoption (29)

---

### 4.8 Overhaul (FraudWatch product)
- **HQ:** Austin, Texas, USA | Founded: 2016
- **What it does:** Supply chain risk management platform with FraudWatch as its fraud-detection product — performs two-step carrier and driver verification at carrier-assignment and at pickup, with AI-powered photo analysis, license verification, and real-time risk scoring to prevent double brokering and impersonation before the load moves.
- **Primary user:** Enterprise shipper, large 3PL, pharma/electronics/high-value goods manufacturers
- **Business model:** Enterprise subscription; pricing not publicly disclosed; sold as module within broader Overhaul risk platform. (30)
- **Pros:**
  - Pickup-point verification catches fraud after onboarding — addresses a gap in purely onboarding-stage tools
  - Claimed to have saved customers $100M+ in potential losses in 2024 early deployment (15)
  - Operates in Latin America with Mexico-specific intelligence (Spanish/Portuguese language support; Mexico privacy policy); clients include Microsoft, Bristol Myers Squibb, Dyson (30)
- **Cons:**
  - Enterprise pricing only — not accessible to small/mid-tier brokers
  - FraudWatch is a recent product (2024 launch); customer count not disclosed
  - Platform crosses Stage 1 and Stage 3 (in-transit visibility) — counterparty risk is one module in a broader offering
- **SEA presence:** PARTIAL — Platform serves global brands; language support includes Spanish and Portuguese but no documented SEA offices, resellers, or local-language support for Bahasa/Thai. Mexico operations confirmed (30)
- **Approx. customer count / scale:** $105M Series C raised August 2025; "safeguards over $1.4 trillion in cargo trade at any given moment" (30, 31)

---

### 4.9 Descartes MacroPoint FraudGuard 2.0
- **HQ:** Waterloo, Ontario, Canada (Descartes Systems Group, NASDAQ: DSGX) | FraudGuard launched 2024; FraudGuard 2.0 launched July 2025
- **What it does:** In-transit fraud detection module built into MacroPoint TMS visibility platform; analyzes billions of location data points to flag GPS spoofing, fake location pings, route deviations, and behavioral fraud signals; paired with Descartes MyCarrierPortal for combined onboarding + in-transit fraud prevention.
- **Primary user:** Freight broker, 3PL, enterprise shipper
- **Business model:** Included for all MacroPoint subscribers at no additional cost; MacroPoint is a SaaS subscription product. (32)
- **Pros:**
  - Available at no additional charge to existing MacroPoint users — zero marginal adoption cost
  - Analyzes billions of data points; 16 real-time in-transit risk alert types
  - Combined with MyCarrierPortal acquisition (Sep 2024) creates an end-to-end onboarding-to-delivery counterparty risk suite
- **Cons:**
  - Only adds value for customers already using MacroPoint visibility — not a standalone counterparty risk product
  - FraudGuard 2.0 is very recent (July 2025); limited field-validated performance data
  - Data processing scope is primarily North American load network
- **SEA presence:** PARTIAL — Descartes Systems Group has global operations and SEA clients for customs/regulatory compliance modules; MacroPoint specifically has North American focus. Descartes' broader platform operates in 195 countries but the carrier-vetting capability targets US/Canada. (33)
- **Approx. customer count / scale:** Descartes (parent) serves 25,000+ customers globally; MacroPoint FraudGuard customer count not separately disclosed (33)

---

### 4.10 TIA Watchdog
- **HQ:** Alexandria, Virginia, USA (Transportation Intermediaries Association member tool)
- **What it does:** Member-only fraud reporting and monitoring platform where TIA-member freight brokers submit and review reports of carrier fraud incidents, unlawful brokerage, and identity theft; creates a shared blacklist intelligence layer across member brokerages.
- **Primary user:** TIA-member freight brokers (US-centric)
- **Business model:** Included in TIA membership fee (not a standalone commercial product); TIA membership is association dues-based.
- **Pros:**
  - Community-intelligence model captures fraud patterns not yet in FMCSA records
  - 1,600+ fraud reports logged Sep 2024–Feb 2025 (65% increase from prior period) — active and current dataset (16)
  - Association backing provides legal framework for sharing otherwise sensitive carrier complaints
- **Cons:**
  - Members-only access limits network effect; not available to non-TIA brokers
  - Manual report submission — no automated signal ingestion from TMS or load boards
  - Not a carrier vetting workflow tool — no onboarding, document collection, or monitoring capability
- **SEA presence:** NO — US industry association tool; no international scope
- **Approx. customer count / scale:** TIA has approximately 1,300 member companies; Watchdog is subset of active reporters (16)

---

### 4.11 FreightValidate
- **HQ:** Leoma, Tennessee, USA | Founded: 2023
- **What it does:** Carrier and freight broker identity verification platform that cross-references FMCSA data, Secretary of State records, and public databases to validate MC/DOT numbers; integrates AU10TIX biometric identity verification for real-person confirmation; assigns Validated/Not Validated/Warning status.
- **Primary user:** Freight broker, shipper, carrier (self-verification option), load board operator, factoring company
- **Business model:** SaaS subscription at $99/month; exploring lower-cost tiers. (7)
- **Pros:**
  - $99/month pricing is the most accessible among commercial vetting tools — opens the small-broker segment
  - Siri voice integration ("Hey Siri, check MC number XXXXX") enables dispatcher-speed field lookups
  - AU10TIX biometric layer (Israeli IDV technology) adds document authentication depth that FMCSA-only tools lack
- **Cons:**
  - Founded 2023 — smallest and newest entrant; carrier database depth not yet validated vs. incumbents
  - Single-founder company in Leoma, TN — execution risk and scale limitations
  - US and Canada coverage only
- **SEA presence:** NO — US and Canada only
- **Approx. customer count / scale:** Not disclosed; early-stage company

---

### 4.12 eCarrierCheck
- **HQ:** USA | Founded: circa 2010
- **What it does:** Carrier risk profile lookup combining 50+ data points from FMCSA and proprietary sources to generate a free carrier risk score; also functions as a carrier directory/leads tool. Premium API and dashboard available.
- **Primary user:** Freight broker, shipper
- **Business model:** Freemium (free lookup, no login required); premium dashboard; API pricing on request.
- **Pros:**
  - Zero-cost entry tier — accessible to any broker for ad-hoc carrier lookups
  - 50+ data points including beyond basic FMCSA authority status
  - Dual use as carrier discovery and vetting tool
- **Cons:**
  - Free tier lacks ongoing monitoring — one-time check only
  - No fraud detection, document collection, or biometric verification capability
  - Limited brand recognition vs. Carrier411 or Carrier Assure in comparable bracket
- **SEA presence:** NO — US/Canada carrier data only
- **Approx. customer count / scale:** Not disclosed

---

### 4.13 VETCarriers (BrokerCarrier)
- **HQ:** USA | Founded: circa 2018
- **What it does:** End-to-end carrier vetting, onboarding, network management, and lane intelligence platform that screens every carrier against current FMCSA data and insurance on each interaction; blocks bad actors from onboarding within 5 minutes or less.
- **Primary user:** Freight broker
- **Business model:** SaaS subscription; pricing not publicly disclosed.
- **Pros:**
  - All-in-one scope: vetting + onboarding + network management + lane intelligence in one platform
  - Real-time FMCSA check on every carrier interaction (not just initial onboarding)
  - Load announcement and lane-based capacity matching adds utility beyond pure vetting
- **Cons:**
  - Less established market presence vs. RMIS or MyCarrierPortal
  - No documented customer count or case studies publicly available
  - No fraud-detection tooling beyond FMCSA compliance monitoring
- **SEA presence:** NO — US/Canada carrier database
- **Approx. customer count / scale:** Not disclosed

---

### 4.14 Transporeon (Trimble, carrier network qualification — Europe)
- **HQ:** Ulm, Germany (acquired by Trimble for €1.88B, completed April 2023) | Founded: 2000
- **What it does:** European freight network platform connecting 1,500+ shippers and 210,000+ carriers; includes carrier qualification module requiring documents, licenses, approvals, and certificates before a carrier can participate in shipper tenders; supports EMEA carrier compliance, eCMR, and EU regulatory requirements.
- **Primary user:** Shipper (European enterprise), European 3PL/LSP
- **Business model:** SaaS platform subscription for shippers; carrier access free or subsidized; shipper pays for access to the network and transactional software modules.
- **Pros:**
  - 210,000+ carrier network is the largest qualified carrier network in Europe; dominant for shipper-side freight procurement (34)
  - Deep EU regulatory coverage including eCMR, transport licensing, GDPR-compliant data handling
  - Trimble parent provides capital for technology investment; AI natural-language carrier search launched 2024
- **Cons:**
  - European focus — limited applicability for non-EU carrier vetting (no FMCSA data integration)
  - No identity-fraud detection tooling comparable to US-market tools (double brokering is less acute in EU regulatory environment but rising)
  - Carrier qualification checks document compliance only — no behavioral fraud signals or predictive scoring
- **SEA presence:** NO — EMEA focus; no documented SEA offices or carrier network in Southeast Asia. Trimble has broader global TMS customers but Transporeon carrier network is European. (34)
- **Approx. customer count / scale:** 210,000+ carriers, 1,500+ shippers, 120,000 transports/day (34)

---

### 4.15 Cargobase
- **HQ:** Singapore | Founded: 2013
- **What it does:** Cloud-based TMS for enterprise shippers covering spot-buy procurement, freight tendering, carrier management, and freight audit; includes carrier onboarding workflow as part of procurement module; used in 50+ countries; offices in Singapore, Malaysia, Netherlands, Mexico, and the United States.
- **Primary user:** Enterprise shipper, regional 3PL
- **Business model:** SaaS subscription; pricing on request; serves listed companies and large enterprises across automotive, electronics, semiconductor, and other verticals.
- **Pros:**
  - Only major TMS platform with both Singapore HQ and documented offices in Malaysia — genuine SEA-regional presence with local operational teams
  - SOC 2 compliant; won Best Supply Chain Software at LogiSYM APAC 2023
  - Covers all freight modes; operates in 50+ countries including SEA and Europe
- **Cons:**
  - TMS-level carrier management (procurement workflow) — not a purpose-built counterparty-risk or fraud-detection platform
  - No dedicated fraud-signal monitoring, behavioral analytics, or biometric identity verification
  - No documented local-regulation integration for Indonesia STNK/KIR, Thailand DLT, or Malaysia LPKP permit verification
- **SEA presence:** YES — HQ in Singapore; office in Kuala Lumpur, Malaysia; serves SEA enterprise shippers (35)
- **Approx. customer count / scale:** Listed companies and enterprise shippers in 50+ countries; SOC 2 certified; specific ARR not disclosed (35)

---

### 4.16 AU10TIX
- **HQ:** Hod Hasharon, Israel (with offices in Amsterdam, New York, London, Singapore) | Founded: 2002
- **What it does:** AI-powered identity verification and fraud detection platform with roots in airport border control; verifies government-issued documents from 190+ countries in under 4 seconds; integrated into FreightValidate as the biometric and document authentication layer for carrier identity.
- **Primary user:** Platform integrator (FreightValidate is the direct logistics deployment); underlying customers are freight brokers and shippers via FreightValidate
- **Business model:** API-based per-verification fee; enterprise license for high-volume deployments.
- **Pros:**
  - Has authenticated billions of identities; prevented $18B+ in identity fraud globally (20)
  - Government document verification from 190+ countries — only tool that can authenticate non-US carrier identity documents
  - Singapore office provides genuine SEA regional footprint for commercial and technical support
- **Cons:**
  - Not a logistics-native product — freight application depends entirely on FreightValidate integration, which is itself an early-stage company
  - Per-verification pricing model can be expensive at scale for high-volume carrier vetting
  - Logistics vertical is a small slice of AU10TIX's broader identity-verification business
- **SEA presence:** YES — Office in Singapore; globally deployed; can verify documents from SEA countries (Indonesia KTP, Thai national ID, Malaysia MyKad) — not logistics-specific deployment but capabilities exist. (20)
- **Approx. customer count / scale:** Serves major financial services, gig economy, and logistics platforms globally; not logistics-specific customer count disclosed

---

### 4.17 Reliance Partners
- **HQ:** Chattanooga, Tennessee, USA | Founded: 2009
- **What it does:** Commercial trucking insurance brokerage with API-enabled technology layer providing real-time COI access, per-load cargo insurance issuance, and insurance verification integration for freight brokers and TMS platforms; integrates with project44 and Truckstop marketplace.
- **Primary user:** Freight broker, 3PL (insurance verification use case)
- **Business model:** Insurance brokerage commissions; API-enabled per-load insurance issuance earns premium per policy; not a SaaS subscription model. (36)
- **Pros:**
  - Only provider combining insurance brokerage + API-enabled COI verification in a single service
  - Per-load cargo insurance issuance fills gap where carrier coverage is insufficient for high-value loads
  - Integration with project44 embeds insurance checks into existing visibility workflows
- **Cons:**
  - Insurance brokerage business model — not a technology platform; commercial relationships drive product access
  - US trucking market only; no documented international insurance verification capability
  - Conflict of interest risk: insurer and COI verifier in same entity
- **SEA presence:** NO — US commercial trucking focus
- **Approx. customer count / scale:** Described as "America's fastest-growing privately held insurance agency" focused on transportation (36)

---

### 4.18 TriumphPay
- **HQ:** Dallas, Texas, USA (subsidiary of Triumph Financial, NASDAQ: TBK) | Founded: 2019 (as a product)
- **What it does:** Carrier payments network for freight that validates carrier identity at the payment stage; tracks factoring assignments, flags carriers accepting loads beyond capacity as a double-brokering signal; provides structured payment data as a carrier identity layer for brokers.
- **Primary user:** Freight broker, 3PL (AP/payment automation), carrier (factoring and QuickPay)
- **Business model:** Payment processing fee per transaction; QuickPay fee charged to carrier for accelerated payment; data network subscription for brokers.
- **Pros:**
  - Payment-layer carrier verification catches fraud that pre-booking tools miss (carriers passing onboarding but diverting payments)
  - Historical load + payment data creates a behavioral baseline for carrier capacity validation
  - Integration with Highway (Load Limit feature) combines identity scoring with payment behavior
- **Cons:**
  - Fraud prevention is a secondary function — primary value is payment automation; fraud signals are a byproduct
  - Network effect limited to TriumphPay-participating brokers and carriers
  - US trucking market focus; no documented international payment network
- **SEA presence:** NO — US market only
- **Approx. customer count / scale:** Not publicly disclosed; parent Triumph Financial is a public company (NASDAQ: TBK); specific TriumphPay metrics not disclosed

---

### 4.19 LexisNexis Risk Solutions (logistics application)
- **HQ:** Alpharetta, Georgia, USA (RELX Group) | Founded: 1970 (RELX entity)
- **What it does:** Business identity and KYB data layer used by larger freight brokers and logistics firms to verify carrier entity beneficial ownership, run adverse-media checks, and screen against sanctions and watch lists; not logistics-specific but applied to small-carrier KYB by compliance-mature brokers.
- **Primary user:** Large freight broker (enterprise compliance teams), logistics-focused financial institutions
- **Business model:** Data licensing — per-query API fee or enterprise annual license.
- **Pros:**
  - Deepest beneficial-ownership and adverse-media database available in the US
  - AML, sanctions, and KYC compliance capabilities that FMCSA-native tools don't replicate
  - Global data coverage — can KYB carriers in virtually any jurisdiction
- **Cons:**
  - Not logistics-specific — no FMCSA data integration, no carrier compliance monitoring, no COI verification
  - Enterprise pricing only — not accessible to SMB freight brokers
  - Requires broker to build custom integration; no out-of-the-box logistics workflow
- **SEA presence:** YES — LexisNexis Risk Solutions operates globally with coverage in Southeast Asia; can verify Indonesian, Thai, and Malaysian business entities. Not deployed in logistics-specific freight workflow in SEA as of research date. (37)
- **Approx. customer count / scale:** Serves financial services, government, healthcare globally; not logistics-specific customer count

---

### 4.20 FMCSA SAFER (government baseline)
- **HQ:** Washington, D.C., USA (Federal Motor Carrier Safety Administration, US DOT)
- **What it does:** Free government database providing Company Snapshots for all US motor carriers including authority status, insurance filings, safety rating, out-of-service inspection data, and crash history; foundation data source for all commercial carrier vetting products.
- **Primary user:** Freight broker, shipper, carrier, insurer, regulator, any party
- **Business model:** Free public access; FMCSA Open Data Program provides API access at no charge. (38)
- **Pros:**
  - Authoritative — the official US government record; all commercial tools derive from this data
  - Free to access — sets the zero-cost baseline for carrier authority checking
  - MC/DOT number lookup gives authority status, insurance filings, and basic safety data
- **Cons:**
  - Update latency — not real-time; commercial tools add monitoring layers to catch changes faster
  - No identity verification — fraudsters can reference legitimate carrier FMCSA records while impersonating them
  - No predictive scoring, fraud signals, or community reports — data is raw compliance records only
- **SEA presence:** N/A — US federal government system; not applicable to SEA
- **Approx. customer count / scale:** Publicly accessible to all; underlies every US carrier vetting workflow

---

## 5. Market Sizing

### 5.1 Global TAM — Carrier Vetting & Counterparty Risk Tooling

| Metric | Value | Year | Confidence | Sources |
|--------|-------|------|------------|---------|
| Global carrier onboarding & compliance platform market size | $1.62B | 2024 | Low-Medium — growth market research firm, one primary source; no government data available | (39) |
| CAGR (2025–2033) | 12.8% | 2024–2033 | Low — research firm estimate; unverified against primary data | (39) |
| Projected market size by 2033 | $4.38B | 2033 | Low | (39) |
| North America share of global market | ~$670M (~41%) | 2024 | Low-Medium — regional breakdown from same report | (39) |
| Europe share of global market | ~$410M (~25%) | 2024 | Low | (39) |
| Asia Pacific share of global market | ~$340M (~21%) | 2024 | Low — fastest-growing at 16.2% CAGR projected | (39) |
| Freight broker software market (broader TAM) | $20.03B | 2024 | Low — wide variance across reports; includes TMS and non-vetting tools | (40) |

**Cross-validation note:** Multiple market research firms (Mordor Intelligence, DataIntelo, GrowthMarketReports) cite carrier onboarding and compliance platform market at $1.3B–$1.62B in 2024 with 12–14% CAGR. These reports draw from the same underlying methodology and should be treated as a single triangulation point, not three independent sources. A second independent triangulation is not available from government statistics or multilateral sources. Market sizing here is flagged as **Low-Medium confidence**.

[ASSUMED-1]: The $1.62B TAM figure for the global carrier onboarding and compliance platform market is drawn from growth market research reports and may not reflect actual vendor revenue. — to validate: Interview CFOs of RMIS (Truckstop), Descartes investor relations for MacroPoint/MCP revenue contribution, and Highway's investors for ARR estimates.

### 5.2 Adjacent: Freight Fraud Losses as Problem-Scale Proxy

| Metric | Value | Year | Confidence | Sources |
|--------|-------|------|------------|---------|
| US and Canada cargo theft incidents | 3,625 incidents | 2024 | High — Verisk CargoNet, industry-standard source | (2) |
| Estimated cargo theft losses (US + Canada) | $454.9M | 2024 | High — Verisk CargoNet | (2) |
| Estimated freight fraud and double-brokering losses (US, financial fraud not physical cargo) | $500M–$700M | 2024 | Medium — industry estimate, TIA and FreightWaves sourced | (3) |
| Average loss per company surveyed (TIA fraud survey, ~200 respondents) | $400,000+ | 2024 | Medium — survey-based, TIA member sample may skew larger brokers | (4) |
| Cargo theft losses (US + Canada), 2025 surge | $725M estimated | 2025 | High — Verisk CargoNet 2025 annual analysis | (41) |
| Double-brokering fraud increase | 400% in some regions | 2023–2024 | Low — anecdotal/reported; specific geography not cited | (3) |
| Strategic theft growth (2022–2024) | +1,475% | 2022–2024 | Medium — Verisk CargoNet data | (2) |

### 5.3 SEA-Specific Size Estimate

No published country-specific market size estimate exists for carrier vetting and counterparty risk tooling in Southeast Asia as of research date.

**Proxy calculation:**
- ASEAN road freight market: $119.43B in 2025 (Mordor Intelligence) (42)
- US road freight market: approximately $900B annually
- SEA share of global road freight: approximately 13%
- If vendor-vetting tooling adoption in SEA is 5–10% of North America adoption rate (reflecting much lower digitization and no equivalent of FMCSA data feed):
  - North America carrier vetting TAM: ~$670M
  - SEA proxy: $670M × (119/900) × 0.05 to 0.10 = **$4.4M–$8.8M**

This is a bottom-up proxy. Primary data gap: no government statistical agency or multilateral body (World Bank, ADB, OECD) has published a country-specific market size for this sub-segment in ASEAN.

**`Data gap — SEA-specific market size requires primary research: (a) interview with regional logistics technology associations (e.g., Singapore Logistics Association, THAIFTA), (b) survey of digital freight platforms operating in ASEAN (GoGoX, Janio, Haulio) on whether they use formal carrier vetting tools, and (c) ADB digital logistics competitiveness reports for ASEAN countries.`**

### 5.4 Pricing Benchmarks

| Product tier | Representative pricing | Source |
|---|---|---|
| Entry SaaS (carrier onboarding) | $99–$340/month | FreightValidate $99/mo (7); RMIS Lite $340/mo (24) |
| Mid-market SaaS | $394–$500/month | MyCarrierPackets 0–100 shipments/month ~$394 (8); MyCarrierPortal Standard $500/mo (8) |
| Premium / high-volume | $2,500–$3,650/month | MyCarrierPackets 7,500+ shipments; Carrier411 enterprise reported at ~$2,500/mo range (24) |
| Carrier Assure Premium | $149/month | Carrier Assure published pricing (27) |
| Enterprise vetting platform | Custom / $5,000–$10,000+/year | Market estimate reported (28) |
| Per-load protection (estimated) | Not publicly disclosed | Highway Load Lock; Overhaul FraudWatch; pricing contact-for-quote |

---

## 6. Journey-Stage Coverage Map

Coverage stages: 1=Pre-booking/vendor selection · 2=Booking/dispatch · 3=In-transit visibility · 4=Cargo physical security · 5=Incident response · 6=Claims/insurance

| Vendor | Stage 1 | Stage 2 | Stage 3 | Stage 4 | Stage 5 | Stage 6 |
|--------|---------|---------|---------|---------|---------|---------|
| Descartes MyCarrierPortal | X | X | | | | |
| RMIS by Truckstop | X | X | | | | |
| Highway (Identity + Load Lock) | X | X | X | | | |
| Carrier411 | X | | | | | |
| Carrier Assure | X | | | | | |
| SaferWatch | X | | | | | |
| DAT CarrierWatch | X | X | | | | |
| Overhaul FraudWatch | X | X | X | X | X | |
| Descartes MacroPoint FraudGuard | X | X | X | | | |
| TIA Watchdog | X | | | | | |
| FreightValidate | X | | | | | |
| eCarrierCheck | X | | | | | |
| VETCarriers | X | X | | | | |
| Transporeon (carrier qualification) | X | X | | | | |
| Cargobase | X | X | | | | |
| AU10TIX (via FreightValidate) | X | | | | | |
| Reliance Partners | X | | | | | X |
| TriumphPay | X | X | | | | X |
| LexisNexis Risk Solutions | X | | | | | |
| FMCSA SAFER | X | | | | | |

**Observation:** Overhaul is the only vendor in this category with coverage across five of six stages. Most carrier vetting platforms are narrowly Stage 1 (pre-booking). The Stage 2 extension (booking/dispatch) is where fraud detection at load level — Highway Load Lock, FraudGuard, FraudWatch — creates competitive differentiation.

---

## 7. SEA Presence Summary

### Solutions with confirmed SEA presence

| Vendor | Nature of presence | Evidence |
|--------|-------------------|---------|
| Cargobase | Singapore HQ + Kuala Lumpur office; 50+ country footprint | Company press release, Capterra Singapore listing (35) |
| AU10TIX | Singapore office; global document verification including SEA national IDs | Company website (20) |
| LexisNexis Risk Solutions | Global operations; regional coverage including SEA business entity data | Company website (37) |
| CargoWise (WiseTech Global) | Singapore regional HQ; 195-country deployment; SEA logistics forwarding customers | Vendor website (43) |

### Solutions with no documented SEA presence

All other vendors profiled in Section 4 — Highway, RMIS, Descartes MyCarrierPortal, Carrier411, Carrier Assure, SaferWatch, DAT CarrierWatch, FreightValidate, eCarrierCheck, VETCarriers, Overhaul FraudWatch (limited), Descartes MacroPoint FraudGuard, TIA Watchdog, Reliance Partners, TriumphPay, FMCSA SAFER — have no documented SEA offices, resellers, SEA customers, or local-regulation support.

**Specific named gaps:**
- Highway has no SEA presence as of 2026 per its website, careers page, and press releases; all 225,000+ carrier insights are FMCSA US/Canada-registered carriers. (26)
- RMIS explicitly scopes to "nationwide and in Canada" since 1996; no international expansion announced. (25)
- Carrier Assure analyzes 2M+ US DOT numbers daily but has no data source for Thailand DLT, Indonesia Dishub/Ditjen Hubdat, or Malaysia JPKK permit records. (11)
- No SEA-headquartered carrier vetting platform (comparable to Highway or MyCarrierPortal) has been identified in this research.

**Local-regulation coverage gap (explicit):**
- Indonesia: STNK (vehicle registration), KIR (vehicle roadworthiness test), and Dishub (Directorate General of Land Transportation) carrier operating permit — no commercial vetting platform integrates this data.
- Thailand: DLT (Department of Land Transport) truck operating permit, Route Permit, and Driver License — Thailand DLT has a digital portal (infodlt.dlt.go.th) but no commercial vetting platform ingests it. (44)
- Malaysia: LPKP (Land Public Transport Commission) commercial vehicle operator license — no integration found in any vetting platform reviewed.
- Singapore: Most digitized transport regulation in SEA; Land Transport Authority (LTA) has vehicle registration and license plate data but no API for counterparty risk tools documented.

---

## 8. Preliminary Pain-Point Hooks

These are structural gaps surfaced during the mapping, for handoff to the pain-point-researcher sub-agent. These are observations, not developed pain points.

1. **FMCSA data monopoly creates a US-only analytical moat.** All major carrier vetting platforms build on FMCSA SAFER data, which has no equivalent in Southeast Asia, Europe (partially), or Latin America. The absence of a standardized, machine-readable carrier authority feed in ASEAN means every vetting workflow in the region is manual, ad-hoc, or based on document review — not automated risk scoring. A platform that ingests DLT, Dishub, LPKP, and LTA data and normalizes it into a risk score would replicate the RMIS value proposition for a $119B ASEAN road freight market with zero existing specialized competition.

2. **Identity fraud is migrating from the US to international freight corridors.** Highway blocked fraud attempts from carrier users in 75 countries in 2024. The techniques (MC number hijacking, email domain spoofing, fictitious carrier registration) are now being observed in cross-border APAC freight corridors. No APAC-native tool exists to detect these patterns in the SEA context.

3. **The per-load fraud detection gap.** Most platforms in this category verify carriers once at onboarding and then only alert on compliance lapses. Highway's Load Lock is the only documented per-load identity re-verification product. If a verified carrier identity is compromised after onboarding (e.g., SIM swap, email takeover), the current toolset has no mechanism to catch it at dispatch. This gap affects all geographies equally.

4. **Small-transporter beneficial ownership is unverified in every geography.** Owner-operators and micro-fleets (1–5 trucks) constitute the majority of truck operators in SEA (Indonesia alone has 4M+ registered commercial vehicles, predominantly owner-operated). No commercial tool in this category — US or international — has a scalable solution for KYB at the owner-operator tier in markets without central business registries or credit history.

5. **Insurance verification does not exist outside insurance-mature markets.** Carrier insurance verification (the core product of RMIS, SaferWatch, DAT CarrierWatch) requires that carriers carry documented insurance policies filed with a regulator. In SEA markets where commercial vehicle insurance is underenforced or informal, the verification workflow has no data source to check against. This is a market structure gap, not a technology gap.

---

## Sources for This Stage

(1) FMCSA — active motor carrier count, public data. https://www.fmcsa.dot.gov/registration/fmcsa-data-dissemination-program

(2) Verisk CargoNet, "Cargo Theft Surges to Record Levels in 2024," January 2025. https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/

(3) FreightWaves / industry sources, freight fraud and double brokering losses, 2024. https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/

(4) Transportation Intermediaries Association, "2024 State of Fraud in the Industry" report / key findings. https://news.tianet.org/key-findings-from-the-tia-fraud-report-2024/

(5) Descartes MyCarrierPortal, carrier identity and vetting product page. https://www.mycarrierportal.com/features/carrier-identify-vetting/

(6) Highway, homepage and carrier identity engine description. https://highway.com/

(7) FreightValidate, About Us + AU10TIX press release. https://freightvalidate.com/aboutus and https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html

(8) Descartes MyCarrierPortal, pricing page. https://www.mycarrierportal.com/features/pricing/

(9) FreightWaves, "RMIS automates carrier compliance for brokers big and small." https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small

(10) Reliance Partners API solutions. https://reliancepartners.com/freight-broker-insurance/api-enabled-solutions/

(11) Carrier411, overview page + FreightCaviar CEO interview. https://www.carrier411.com/overview.cfm and https://www.freightcaviar.com/inside-carrier411-exclusive-interview-with-ceo-darren-brewer/

(12) Carrier Assure, "How Carrier Assure Works." https://www.carrierassure.com/how-it-works

(13) Highway, FTV Capital investment article. https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/

(14) Descartes MacroPoint FraudGuard, feature page. https://macropoint.com/features/fraudguard/

(15) Overhaul FraudWatch, FreightWaves coverage. https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention

(16) TIA, "TIA Releases State of Fraud in the Industry April 2025 Report." https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/

(17) Highway, Load Lock press release. https://highway.com/press-releases/highway-launches-load-lock-redefining-load-level-protection-and-compliance-for-freight-brokers

(18) RMIS, BrokerPro integration partner page. https://www.brokerpro.com/integrations/partners/truckstop-rmis/

(19) LexisNexis Risk Solutions, Identity Verification Solution. https://risk.lexisnexis.com/global/en/products/lexisnexis-identity-verification-solution

(20) AU10TIX, company website and FreightValidate press release. https://www.au10tix.com/ and https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html

(21) TriumphPay, payment verification feature article. https://triumphpay.com/the-future-of-payment-verification-security-structured-data-and-the-payments-network/

(22) Descartes Systems Group, "Descartes Acquires MyCarrierPortal," September 2024. https://www.descartes.com/resources/news/descartes-acquires-mycarrierportal

(23) GlobeNewswire, Descartes MyCarrierPortal acquisition release. https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html

(24) Tekpon, Truckstop RMIS reviews and pricing (user-reported). https://tekpon.com/software/truckstop-rmis/reviews/

(25) FreightWaves, "RMIS automates carrier compliance for brokers big and small." https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small

(26) Highway homepage + careers page. https://highway.com/

(27) Carrier Assure pricing page. https://www.carrierassure.com/pricing

(28) CarrierOwl blog, "Top 7 Carrier411 Alternatives for Freight Brokers in 2026." https://carrierowl.com/blog/carrier411-alternatives

(29) DAT CarrierWatch, product page. https://www.dat.com/carrierwatch

(30) Overhaul, FraudWatch product page. https://www.over-haul.com/product/fraudwatch

(31) PYMNTS.com, "Overhaul Raises $105 Million for Supply Chain Risk Management Platform." https://www.pymnts.com/news/investment-tracker/2025/overhaul-raises-105-million-dollars-supply-chain-risk-management-platform/

(32) Descartes MacroPoint FraudGuard 2.0 press release, GlobeNewswire, July 2025. https://www.globenewswire.com/news-release/2025/07/07/3110885/0/en/Descartes-MacroPoint-FraudGuard-2-0-Provides-Transportation-Industry-with-Next-Generation-Solution-for-Freight-Fraud-Defense.html

(33) Descartes Systems Group, carrier onboarding and fraud prevention solution page. https://www.descartes.com/solutions/transportation-management/carrier-onboarding-fraud-prevention

(34) Transporeon, company / about page + Trimble acquisition press release. https://www.transporeon.com/en/company and https://transportation.trimble.com/resources/press-releases/trimble-completes-transporeon-acquisition

(35) Cargobase, company website + Kuala Lumpur office press release. https://www.cargobase.com/ and https://www.prnewswire.com/apac/news-releases/cargobase-expands-global-footprint-with-new-office-in-kuala-lumpur-malaysia-301989333.html

(36) Reliance Partners, company description. https://reliancepartners.com/

(37) LexisNexis Risk Solutions, global operations. https://risk.lexisnexis.com/global/en/products/lexisnexis-identity-verification-solution

(38) FMCSA, SAFER Web and Open Data Program. https://safer.fmcsa.dot.gov/ and https://www.fmcsa.dot.gov/registration/fmcsa-data-dissemination-program

(39) GrowthMarketReports, "Carrier Onboarding and Compliance Platform Market Research Report 2033." https://growthmarketreports.com/report/carrier-onboarding-and-compliance-platform-market

(40) Verified Market Research, "Freight Broker Software Market." https://www.verifiedmarketresearch.com/product/freight-broker-software-market/

(41) Verisk CargoNet, "Cargo Theft Losses Surge to Estimated $725 Million in 2025," January 2026. https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/

(42) Mordor Intelligence, "ASEAN Road Freight Transport Market." https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market

(43) CargoWise / WiseTech Global, product page. https://www.cargowise.com/

(44) Thailand Department of Land Transport, infodlt.dlt.go.th. https://infodlt.dlt.go.th/en

---

## Assumptions to Validate

[ASSUMED-1]: The $1.62B global carrier onboarding and compliance platform TAM figure is from a growth market research firm; it has not been independently verified against primary vendor revenue data.
- to validate: Request ARR / revenue contribution data from Descartes investor relations (DSGX quarterly reports), Truckstop/RMIS (private), and Highway's FTV Capital backers; triangulate bottom-up from customer count × average ACV.

[ASSUMED-2]: SEA proxy TAM of $4.4M–$8.8M assumes 5–10% digitization adoption rate relative to North America. The actual rate could be lower (0–2%) or higher (15%+) depending on how enterprise shippers operating in SEA (DHL, Kuehne+Nagel, Expeditors) handle carrier vetting in the region.
- to validate: Interview regional operations leads at top-10 freight forwarders in Singapore on current carrier vetting workflow; ask: "Do you use any software to vet your sub-carriers in Indonesia, Thailand, and Malaysia, or is it manual / relationship-based?"

[ASSUMED-3]: Cargobase has a carrier onboarding workflow as part of its TMS procurement module. No dedicated carrier fraud-detection or FMCSA-equivalent compliance monitoring has been confirmed; the carrier management capability is inferred from its freight procurement feature set.
- to validate: Demo Cargobase TMS and request documentation of carrier qualification workflow; ask specifically whether it checks against local authority databases (LTA SG, DLT TH, Dishub ID) or relies on document upload only.

[ASSUMED-4]: Highway Load Lock's per-load pricing model is not publicly disclosed. It is assumed to be a per-load fee or volume-based subscription add-on based on how the product is described.
- to validate: Request pricing from Highway sales team; compare against Overhaul FraudWatch pricing structure.

[ASSUMED-5]: Indonesia STNK/KIR, Thailand DLT, and Malaysia LPKP permit records are not available via any machine-readable public API for commercial carrier vetting integration.
- to validate: Contact Thailand DLT API team (infodlt.dlt.go.th), Indonesia Kemenhub/Dishub developer portal, and Malaysia JPKK/SPAD data access desk to confirm availability of any carrier authority data API.

