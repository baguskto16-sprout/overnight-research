# Value Chain — Risk-management solutions across the logistics journey (worldwide scan)

**Run:** 2026-05-14-0107 | **Topic:** logistics-risk-mgmt-worldwide | **Generated:** unattended overnight pipeline | **Mode:** sandbox

This artifact is the consolidated value-chain mapping across the six stage slices of the freight risk journey: vendor procurement, TMS/dispatch, fleet & driver management, in-transit visibility & cargo IoT, security & escort, and cargo insurance & claims. Each stage section was produced by a dedicated value-chain-mapper agent, validated per-stage by source-validator, and (where weak claims existed) re-anchored by targeted deep-research passes. A final cross-stage validator pass aggregated diversity and called out cross-stage inconsistencies.

## Provenance & gate

- Six stages, all individually graded **ship-with-flag** by source-validator
- Final corpus gate: **ship-with-flag** (53.2% Low, 32.9% Med, 13.9% High across 568 numbered claims)
- 328 unique source domains across the corpus; 5 market-research aggregators (Mordor, MarketsAndMarkets, Grand View, GMInsights, Precedence) appear in 3+ stages and were auto-overridden to Low confidence under the quality-bar rule
- Hard-blocker corrections inserted as [VERIFY-N] tags must be resolved before external use:
  - VERIFY-1 (project44 ~$210M vs ~$175M ARR — GAAP-revenue vs ARR mislabeling; reconcile against any audited disclosure)
  - VERIFY-2 (Nirvana Series D $100M/$1.5B vs alternate $80M/$830M reading; confirm against Form D)

## Reading guide

Each stage section follows the same internal structure: solution category overview, named players (worldwide + SEA flag), activities/economics, market sizing with diversity check, preliminary pain points (full pain-point write-ups live in the companion `raw-claude-pain-points-logistics-risk-mgmt-worldwide.md` file).

---


# STAGE 1

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


---

# STAGE 2

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

---

# STAGE 3

# Stage 3: Fleet & Driver Management / Telematics — Value Chain

*Run ID: 2026-05-14-0107 | Generated: 2026-05-14*

---

## Solution Category Boundaries

Fleet and driver management / telematics is not a single category. Vendors cluster into five distinct sub-categories, and the most competitive platforms span multiple:

| Sub-category | What it does | Regulatory anchor | SEA relevance |
|---|---|---|---|
| **ELD / HOS compliance** | Records driver hours electronically, enforces duty-status rules | FMCSA ELD mandate (US); no equivalent mandate in SEA as of 2025 | Low regulatory pull; commercial value from fuel/route optimization |
| **Full fleet management suite** | GPS tracking + ELD + maintenance + fuel + driver behavior in one platform | Compliance-adjacent | Core product in SEA where operations need basic GPS |
| **Dashcam / driver safety (video telematics)** | Inward- and outward-facing cameras with AI event detection, driver coaching | FMCSA CSA scores (US) | Growing rapidly in SEA; government road-safety push |
| **Asset and trailer tracking** | Passive/solar GPS on trailers, containers, non-powered assets | None | High relevance for SEA cargo risk; multi-modal freight |
| **Insurance-grade telematics** | Normalized driving-behavior data fed to underwriters for UBI / PAYD pricing | State-by-state (US); Lloyd's emerging standards | <5% of commercial policies priced with telematics globally (1) |

**Multi-category spans:**
- Samsara, Motive, Geotab, and PowerFleet each span ELD + full fleet + video telematics + asset tracking.
- Lytx and Netradyne are video-telematics specialists that add GPS and fleet ops secondarily.
- Cambridge Mobile Telematics (CMT) and IMS/Trak Global sit primarily in insurance-grade telematics but launched fleet-safety products in 2025–26 (1).
- Solera's Omnitracs + SmartDrive + Spireon portfolio spans full fleet + video + asset tracking post-acquisition.

---

## Vendor Profiles (Top 15)

### 1. Samsara (NYSE: IOT)

**What it does:** Connected Operations Platform combining GPS telematics, FMCSA-compliant ELD, AI dashcam (video-based safety), equipment and asset tracking, and environmental sensor monitoring on a single cloud platform and hardware stack.

**Primary user:** Mid-size to large commercial fleet operators (100–10,000 vehicles); also enterprise shippers and public-sector fleets.

**Business model:** Per-vehicle per-month SaaS subscription bundled with proprietary hardware (customer does not own hardware); standard 36-month contracts; hardware embedded in subscription economics. Pricing: ~$27–33/vehicle/month for core telematics; $40–60/vehicle/month with AI dashcam add-on. (2)

**Notable financial (FY2025, year ended Feb 1 2025):** (3)
- Revenue: $1.25B (full year FY2025), +33% YoY
- ARR: $1.46B at fiscal year-end, up from $1.10B
- Core Customers (>$100k ARR): 2,506
- Total Core Customers (>$5k ARR): 20,000+
- Gross margin: 76%
- Operating loss narrowing; reached first quarterly GAAP profitability in Q3 FY2025
- Public: NYSE: IOT; market cap ~$22B as of May 2026

**Pros:**
- Largest open integration ecosystem for fleet ops: 350+ pre-built partner apps including project44, FourKites, Highway (carrier vetting), and SambaSafety (insurance risk). (4)
- Single-platform approach eliminates multi-vendor fragmentation; 90%+ of $100k+ ARR customers use multiple applications.
- Proprietary AI model trained on 14 trillion data points; processing-at-edge dashcam reduces cellular bandwidth costs.

**Cons:**
- Mandatory 36-month hardware-bundled contracts create high switching costs and upfront commitment for smaller fleets.
- US + Canada account for >95% of revenue; limited direct SEA presence; reseller-dependent internationally.
- Premium pricing relative to SEA-native vendors; ARPU model designed for fleets that can absorb $30–60/truck/month.

**SEA presence:** Limited — no dedicated SEA office as of 2025; operates in North America, Europe, and APAC but primarily through resellers in APAC. No SEA-specific compliance module (no ELD mandate in SEA). (5)

---

### 2. Motive (formerly KeepTruckin; pending IPO: NYSE: MTVE)

**What it does:** AI-powered fleet management platform combining GPS tracking, FMCSA-compliant ELD, AI dashcam, spend management (fuel cards, fleet cards), and driver coaching on a vertically integrated stack.

**Primary user:** Small to mid-size commercial carriers (US/Canada trucking); expanding upmarket to enterprise. Serves construction, oil & gas, agriculture, and logistics.

**Business model:** Per-vehicle per-month SaaS + hardware; average contract value $5k/year for SMB; enterprise accounts at ~$375k ACV. Hardware includes dashcams and GPS devices. (6)

**Notable financial (from S-1 filed Dec 23 2025):** (6, 7)
- Revenue: $370M (FY2024, year ended Dec 31 2024), +19% YoY
- ARR: $417M at Dec 31 2024; $501M at Sep 30 2025 (+28% YoY)
- Core Customers (>$7.5k ARR): 8,204 at Dec 31 2024; 9,201 at Sep 30 2025
- Large Customers (>$100k ARR): 349 at Dec 31 2024; 494 at Sep 30 2025
- Connected assets: ~1M+ vehicles on platform
- Gross margin: ~70%
- Net Dollar Retention: Core 110%; Large 126%
- Pre-IPO valuation: $2.85B (~6x ARR); IPO ticker MTVE applied
- Private; Google-backed; total equity raised ~$600M

**Pros:**
- Full-stack vertical integration (ELD + video + spend management) provides data flywheel competitive advantage.
- Strong SMB and mid-market penetration with freemium ELD driving upsell to video and spend management.
- Estimated $175M in fuel and fraud savings delivered to customers in 2024. (7)

**Cons:**
- Revenue concentrated in US/Canada (>99% of revenue as of Sep 2025); minimal international presence. (6)
- Slower revenue growth (19%) vs. Samsara (33%) despite comparable scale; unit economics pressure from large Pakistan-based workforce (~3,200 of 4,508 employees). (6)
- Limited enterprise brand recognition outside North America trucking sector.

**SEA presence:** None operationally for commercial fleet product. Has R&D offices in Vietnam and other APAC locations but commercial operations are US/Canada only. (8)

---

### 3. Geotab (private)

**What it does:** Open fleet management platform combining GPS telematics, ELD (US/Canada/EU), driver behavior scoring, EV fleet management, and an open SDK (MyGeotab/Geotab Marketplace) enabling third-party app integrations.

**Primary user:** Mid-size to large fleets; strong in government/municipal fleets, enterprise logistics, and utilities; sold exclusively through 500+ authorized resellers worldwide.

**Business model:** Hardware sold through resellers + per-vehicle per-month SaaS subscription; open SDK enables reseller white-labeling. Pricing set regionally by resellers. (9)

**Notable financial:** (10)
- Revenue: ~$681M estimated by end of 2024 (up from $412M in 2021)
- Subscribers: 5M+ active vehicle subscriptions globally
- Customers: ~100,000 globally
- Processes 100B+ data points daily
- Privately held; sole owner CEO Neil Cawse; no outside investors
- ABI Research ranked Geotab #1 global commercial telematics vendor for four consecutive years (2022–2025) (11)

**Pros:**
- Widest open ecosystem and SDK: 200+ Marketplace solutions; preferred telematics partner for project44 globally. (12)
- Truly global via reseller network: 165 countries; EU and Latin America market leader by active subscriptions.
- OEM partnerships with major truck OEMs reduce aftermarket installation friction.

**Cons:**
- Reseller-dependent model creates inconsistent customer experience across geographies.
- No native video telematics; depends on third-party integrations for dashcam/AI safety.
- Privately held with no public disclosure: financial data unverified and relies on third-party estimates.

**SEA presence:** Direct — Singapore office opened Jan 2021; authorized resellers in Indonesia, Malaysia, Thailand, Philippines, Singapore. Indonesia and Philippines identified as fastest-growing SEA markets. Geotab Ace (generative AI assistant) launched for SEA customers Oct 2025. (13)

---

### 4. Verizon Connect (part of Verizon Communications)

**What it does:** Enterprise fleet management and telematics platform (GPS tracking, ELD, video, workforce scheduling) for North American and select international markets; consolidated from three legacy brands (Fleetmatics, Telogis, Verizon Networkfleet).

**Primary user:** Large enterprise fleets and government fleets; North America focus.

**Business model:** Per-vehicle per-month SaaS + hardware; enterprise multi-year contracts; sold direct and through Verizon business channels. (14)

**Notable financial:** (14, 15)
- Revenue: ~$735M estimated (reported as part of Verizon's "Corporate and other" segment; not separately disclosed in Verizon 10-K)
- Market share: ~5.56% in Transportation & Fleet Management category (Enlyft estimate)
- ABI Research 2025: Tier-1 Leader (Top Implementer) in commercial telematics ranking (11)
- International commercial operations (Australia, UK, EU) divested to Geotab in 2023–24 (16)

**Pros:**
- Deep enterprise relationships through Verizon parent network; bundled with Verizon cellular contracts.
- Named ABI Research Top Implementer 2025: strong go-to-market and time-to-value metrics.
- Strong integration with Verizon's own LTE/5G network reduces connectivity costs.

**Cons:**
- Divested all international (Australia, Europe) commercial operations to Geotab; now effectively a North America-only fleet product. (16)
- Not independently reporting financials; limited growth transparency.
- Less innovative than Samsara or Geotab on platform openness and AI features per ABI Research. (11)

**SEA presence:** None — all APAC operations divested to Geotab. (16)

---

### 5. Webfleet (Bridgestone subsidiary)

**What it does:** European-focused full fleet management platform (formerly TomTom Telematics); GPS tracking, driver behavior, EV fleet management, tachograph integration (EU compliance), and tire performance integration (Bridgestone parent data).

**Primary user:** Small to large commercial fleets in Europe; strong in light commercial vehicles (delivery, trade services).

**Business model:** Per-vehicle per-month SaaS + hardware; sold direct and via resellers; tire-as-a-service integration with Bridgestone fleet tire programs.

**Notable financial:** (17, 18)
- European subscribers: ~783,000 subscriptions in Europe (light, medium, heavy CV) at end 2024
- European commercial CV telematics market: $6.7B subscription revenue by end 2024; Webfleet ~5.1% share
- Global customers: 60,000+ organizations worldwide
- Revenue not separately disclosed; part of Bridgestone's Mobility Solutions segment

**Pros:**
- Strongest tachograph and EU driver-hours compliance integration; purpose-built for EU regulatory environment.
- Bridgestone parent provides tire-wear data overlay for fleet cost optimization.
- Frost & Sullivan recognized as best practice leader in European commercial telematics 2025. (18)

**Cons:**
- Limited outside Europe; North America and APAC presence minimal.
- No dedicated FMCSA ELD compliance module; not designed for US HOS regulation.
- Revenue opaque; Bridgestone doesn't break out Webfleet contribution.

**SEA presence:** Limited — available in select APAC markets via resellers; no dedicated SEA office or local compliance module. Not a primary SEA market player. (17)

---

### 6. Lytx

**What it does:** Video telematics specialist: inward/outward AI dashcam, driver coaching, risk scoring, and fleet safety analytics, with GPS and ELD as secondary offerings. Operates the world's largest fleet driving database.

**Primary user:** Mid to large commercial fleets prioritizing safety and insurance cost reduction; significant public-sector fleet presence.

**Business model:** Per-camera per-month SaaS + hardware (DriveCam device sold/leased); multi-year contracts; data analytics licensing to insurers. (19)

**Notable financial:** (19, 20)
- Valuation: $2.5B+ (Permira majority stake acquired Jan 2020 for excess of $2.5B)
- Customers: 5,500+ organizations; 5.5M+ drivers protected; 90+ countries
- Driving database: 300B+ miles processed
- Market share: Frost & Sullivan reported Lytx at >60% of the video telematics specialist market (pre-Samsara/Motive dashcam scale-up)
- Revenue: Not publicly disclosed; private (Permira-backed since 2020)

**Pros:**
- Deepest ML training dataset (300B+ miles, 27-year history) enabling highest event-detection accuracy.
- Strong insurer relationships: data licensing to insurers and risk managers; integration with SambaSafety and broker platforms.
- Recently added full telematics (GPS, ELD) to compete with Samsara and Motive on full-suite basis.

**Cons:**
- Primarily US-centric despite 90-country reseller reach; limited direct SEA market development.
- Private equity ownership (Permira) creates pressure for exit; platform investment pace uncertain.
- Samsara and Motive have largely commoditized AI dashcam, pressuring Lytx's pricing power in midmarket.

**SEA presence:** Reseller network in 90+ countries including SEA; no dedicated SEA office; reseller-dependent with no local compliance or language support confirmed. (20)

---

### 7. Netradyne

**What it does:** AI-first video telematics platform using multi-directional cameras and edge computing for real-time driver coaching, safety scoring, and event detection; no on-premise DVR reliance.

**Primary user:** Mid to large commercial trucking and logistics fleets; strong in last-mile delivery (Amazon fleet partnership historically).

**Business model:** Per-vehicle per-month SaaS + proprietary multi-camera hardware (Driveri system); multi-year contracts.

**Notable financial:** (21)
- Series D: $90M raised Jan 2025 at $1.35B pre-money valuation (Point72 Private Investments lead; Qualcomm Ventures)
- Total funding: $297M over 6 rounds; 13 investors including SoftBank Vision Fund ($150M Series C, July 2021)
- Customers: 3,000+ fleets; 450,000+ active subscribers
- Data: 18B+ miles processed; 99% alert accuracy claim
- Revenue: Not publicly disclosed; private unicorn ($1B+ valuation)
- India's first telematics unicorn designation after Series D (2025)

**Pros:**
- Edge-computing architecture: all AI processing on device; real-time coaching without cloud round-trip latency.
- 360-degree vehicle coverage (front, side, rear, interior) in a single hardware platform.
- Strong safety outcomes: customers report ~50% collision reduction.

**Cons:**
- Smaller customer base and fleet footprint vs. Lytx and Samsara; 450k subscribers vs. Lytx's 5.5M drivers.
- North America and India primary markets; limited SEA commercial presence.
- Dependent on SoftBank/Point72 funding; path to profitability not publicly disclosed.

**SEA presence:** None confirmed for commercial fleet product. India is primary non-US market; no SEA office or reseller program identified. (21)

---

### 8. Solera (Omnitracs + SmartDrive + Spireon)

**What it does:** Solera's fleet solutions division combines: Omnitracs (TMS-adjacent fleet management + ELD + driver workflow); SmartDrive (video telematics + driver safety); Spireon (trailer and asset tracking); eDriving (digital driver risk management). Combined into one enterprise fleet intelligence portfolio.

**Primary user:** Large enterprise fleets and carriers in North America; Omnitracs historically dominant in US truckload.

**Business model:** Per-vehicle per-month SaaS + hardware per product line; enterprise multi-year contracts; cross-sell across portfolio. (22)

**Notable financial:** (22)
- Omnitracs: ~15,000 customers; 250M miles/week tracked
- Spireon: 13,000+ customers; ~4M connected devices; 900B data points/year
- Solera (parent) is private; PE-backed (Vista Equity Partners); no consolidated fleet-segment revenue disclosed
- Trimble telematics ($300M revenue, $200M ARR) acquired by Platform Science in Jan 2025 with Trimble retaining 32.5% stake (23)

**Pros:**
- Broadest portfolio within single PE parent: ELD + video + asset tracking + driver risk enables cross-product upsell.
- Omnitracs' legacy position in US truckload creates deep carrier penetration in North America.
- Spireon provides non-powered asset/trailer tracking capability peers lack natively.

**Cons:**
- Integration of multiple acquisitions (Omnitracs, SmartDrive, Spireon, eDriving) not fully unified on single platform; multi-dashboard reality for customers.
- North America only; no meaningful SEA or international commercial fleet presence.
- PE ownership and financial opacity limit partner and investor confidence in long-term product roadmap.

**SEA presence:** None — North America focused; no SEA operations identified. (22)

---

### 9. Webfleet (Platform Science) — formerly Trimble Transportation Telematics

**What it does:** Platform Science provides an in-cab Virtual Vehicle platform that enables fleet operators and OEMs to run multiple third-party apps on a single in-cab device (telematics, workflow, compliance), including apps from Trimble TMW TMS; acquired Trimble's global transportation telematics units Jan 2025.

**Primary user:** Large asset-based carriers; OEM-partnered fleets (Daimler Trucks/Western Star/Freightliner, Paccar/Kenworth/Peterbilt).

**Business model:** Per-vehicle per-month platform fee + application fees per app deployed; OEM embedded partnerships.

**Notable financial (Trimble telematics at time of divestiture):** (23)
- Trailing 12-month revenue: ~$300M
- ARR at Q2 2024: ~$200M
- Trimble retains 32.5% equity stake in Platform Science post-acquisition
- Platform Science: private; venture-backed; no standalone revenue disclosed

**Pros:**
- Only platform with native OEM in-cab deployment for Daimler and Paccar trucks; no aftermarket hardware install required.
- App marketplace model allows carriers to run Trimble TMW TMS data, ELD, and third-party safety tools from one screen.
- Trimble TMW/McLeod TMS integration is native rather than API-based.

**Cons:**
- OEM-dependent go-to-market limits addressable market to new truck buyers; aftermarket penetration requires separate hardware.
- Early-stage combined company (acquisition completed Jan 2025); integration risk high.
- No SEA OEM partnerships; globally focused on North America.

**SEA presence:** None. (23)

---

### 10. Cartrack / Karooooo (NASDAQ: KARO)

**What it does:** Real-time GPS fleet tracking, driver behavior monitoring, stolen vehicle recovery, and fleet management SaaS; originated in South Africa; SEA second-largest and fastest-growing revenue region.

**Primary user:** Small to mid-size commercial fleets and private vehicles in emerging markets; Singapore, Malaysia, Thailand, Indonesia, and Philippines in SEA.

**Business model:** Per-vehicle per-month SaaS subscription; hardware installed by Cartrack technicians; direct sales force model (no resellers). Subscription revenue = 98% of total. (24)

**Notable financial (FY2025, year ended Feb 28 2025):** (24, 25)
- Global subscribers: 2.3M (17% YoY growth)
- SEA + Middle East subscribers: 274,000+ (12% of total; +21% YoY at Aug 2024; 31% constant-currency subscription revenue growth in SEA in Q4 FY2025)
- Q4 FY2025 subscription revenue: ZAR1,086M (~$60M USD at ~18 ZAR/USD)
- FY2025 EPS: ZAR29.81 (+25% YoY); Adjusted EPS ZAR31.67 (+33%)
- Operating profit margin: ~34% in Q4 FY2025
- Listed NASDAQ: KARO

**Pros:**
- Only publicly listed (NASDAQ) pure-play fleet telematics with dedicated and growing SEA operations (direct offices, local staff).
- Subscription model with 98% recurring revenue and 34% operating margin; highly capital-efficient.
- Stolen vehicle recovery differentiates in high-theft SEA and Africa markets.

**Cons:**
- Hardware relies on Cartrack-proprietary device; limited open API ecosystem for third-party integration.
- Emerging-market positioning means product sophistication lags Samsara/Geotab on AI features, open SDK, and integration depth.
- SEA revenue still represents only ~12% of group revenue; scale is early relative to North American peers.

**SEA presence:** Yes — direct offices in Singapore, Malaysia, Thailand, and Indonesia; local sales and installation teams; 274,000+ SEA subscribers. Explicitly identified as primary SEA growth market. (24, 25)

---

### 11. TransTRACK (Indonesia; private)

**What it does:** Fleet operation optimizer and supply chain integrator built for Indonesian and SEA commercial fleets; GPS tracking, driver behavior, cargo monitoring, and logistics API integration.

**Primary user:** Indonesian logistics, FMCG, mining, plantation, and financial-leasing fleets.

**Business model:** SaaS subscription + local hardware installation; Series A funding confirmed at IDR185B ($12M) led by Eurazeo and Cocoon Capital. (26)

**Notable financial:** (26)
- Funding: $12M Series A (Eurazeo, Cocoon Capital, IFP Securities, Eight Star, AppWorks)
- Installed base: 100,000+ fleet management units in SEA (Berg Insight ranking, 2024)
- Revenue: Not publicly disclosed; private
- Recognized by Berg Insight as one of top 3 SEA fleet management providers (with Cartrack and Jimi IoT) (27)

**Pros:**
- Only Indonesian-founded and Indonesian-headquartered major fleet platform; deep local regulatory and operational knowledge.
- Supply chain API integrations purpose-built for Indonesian FMCG and logistics stack.
- Expanding to Singapore, Malaysia, and Middle East markets.

**Cons:**
- Limited geographic reach outside Indonesia and nascent SEA expansion.
- Revenue and financial metrics not publicly disclosed; due-diligence opacity.
- Product sophistication likely below global Tier-1 vendors on AI and video telematics.

**SEA presence:** Yes — primary market is Indonesia; expanding to Singapore, Malaysia, Middle East. (26)

---

### 12. Jimi IoT (China-headquartered; global)

**What it does:** GPS tracking device manufacturer and IoT platform; provides white-label telematics hardware and software to SEA local fleet operators and resellers; not a branded fleet management product.

**Primary user:** SEA local telematics service providers seeking white-label hardware; small fleets buying through local resellers.

**Business model:** Hardware device sales + platform licensing to resellers; B2B2C white-label model dominant. (28)

**Notable financial:** (27, 28)
- Installed base: 200,000+ fleet management units in SEA (Berg Insight, 2024)
- Revenue: Not publicly disclosed; private Chinese company
- One of top 3 SEA fleet management providers by installed base (Berg Insight 2024)

**Pros:**
- Largest installed base in SEA by device count; cost-competitive hardware.
- White-label model enables local SEA providers to brand their own fleet product.
- Broad hardware portfolio: OBD dongles, hardwired GPS, solar-powered asset trackers.

**Cons:**
- Not a direct-to-fleet brand; market presence is through resellers, creating fragmented customer experience.
- No advanced AI/video telematics product in SEA comparable to Lytx or Netradyne.
- Chinese origin creates data sovereignty concerns for enterprise and government customers.

**SEA presence:** Yes — distributed via local resellers across SEA; primary market in Indonesia, Thailand, Philippines, Vietnam. Not a direct sales operation. (27, 28)

---

### 13. PowerFleet (NASDAQ: AIOT) — includes MiX Telematics + Fleet Complete

**What it does:** Global AIoT SaaS fleet management formed from merger of Powerfleet + MiX Telematics (closed Apr 2024) + acquisition of Fleet Complete; GPS tracking, ELD (US/Canada), driver behavior, asset tracking, and cold-chain monitoring.

**Primary user:** Mid to large enterprise fleets across North America, Africa, Europe, APAC; strong in South Africa, Middle East.

**Business model:** Per-vehicle per-month SaaS + hardware; multi-year enterprise contracts.

**Notable financial:** (29)
- FY2025 revenue: $362.5M (+26% YoY); ~75% recurring SaaS
- Combined subscribers at merger close (Apr 2024): 1.8M; expanded to 2.8M by FY2025
- Listed NASDAQ: AIOT
- ABI Research 2025: ranked #1 in innovation in commercial telematics competitive ranking (11)
- MiX Telematics (legacy) had offices in South Africa, UK, US, Uganda, Brazil, Mexico, and Australasia

**Pros:**
- Third-largest global fleet telematics company by subscriber base (2.8M); genuinely global.
- ABI Research top innovation ranking reflects strong R&D investment post-merger.
- MiX Telematics legacy APAC presence (Australia) provides beachhead for broader APAC expansion.

**Cons:**
- Integration of three separate companies (Powerfleet + MiX + Fleet Complete) creates near-term complexity and customer confusion.
- Limited dedicated SEA presence; APAC footprint is primarily Australasia-focused.
- Not yet profitable on consolidated basis; integration costs weigh on margins.

**SEA presence:** Limited — Australia direct operations; limited reseller coverage in broader SEA; no dedicated SEA office confirmed. (29)

---

### 14. Cambridge Mobile Telematics (CMT) — insurance-grade telematics

**What it does:** Mobile-first telematics platform using smartphone sensor data (and optional hardware tags) to score driving behavior for insurance underwriting, claims, and fleet safety; primarily serves auto insurers; launched DriveWell Fleet for commercial auto Jan 2026.

**Primary user:** Personal and commercial auto insurers for UBI/PAYD pricing; expanding to fleet operators for safety coaching.

**Business model:** Per-policy or per-vehicle licensing fee to insurers; B2B2C model (insurer is customer; driver/fleet is end-user). (1)

**Notable financial:** (1, 30)
- Frost & Sullivan 2024 Market Leadership Award: telematics insurance and connected claims
- Scale: Largest telematics service provider by data processed (self-described; founded out of MIT)
- Revenue: Not publicly disclosed; private; funding undisclosed
- DriveWell Fleet launched Jan 2026 addressing commercial auto: <5% of commercial policies globally priced with telematics data (1)

**Pros:**
- Software-only (BYOD smartphone sensor) enables 100% fleet telematics coverage without hardware installation cost.
- Deepest insurer integration: partnerships with major P&C carriers in US, UK, Europe for personal lines; now expanding commercial.
- Normalized data layer across multiple TSPs enables carrier-agnostic underwriting.

**Cons:**
- Insurer-dependent distribution; fleet operators are not direct customers.
- Commercial fleet product (DriveWell Fleet) is newly launched Jan 2026; track record limited.
- Smartphone-based data quality lower than hardwired OBD/CAN-bus telematics for HGV applications.

**SEA presence:** None identified; US/Europe/UK primary markets. (1)

---

### 15. Greenroad Technologies

**What it does:** Driver behavior telematics and safety management using proprietary driving-event scoring; focuses on predictive analytics and driver coaching rather than real-time video; serves bus, utilities, oil & gas, and logistics fleets.

**Primary user:** Public-sector fleets, utilities, bus operators, logistics operators in 80+ countries.

**Business model:** Per-vehicle per-month SaaS; multi-year enterprise contracts; reseller-distributed.

**Notable financial:** (31)
- Revenue: ~$15M estimated (2025); smaller player in global landscape
- Customers: "hundreds" of organizations across 80 countries
- Founded: 2004; private; venture-backed
- Launched Digital Edge™ telematics platform July 2024

**Pros:**
- Longest-running driver behavior analytics history (since 2004); deep domain expertise in coaching methodology.
- Sector specialization (bus, utilities, oil & gas) creates defensible niches Samsara/Geotab don't prioritize.
- No proprietary hardware required; works with third-party GPS.

**Cons:**
- Revenue scale ($15M) too small to sustain global product investment against better-funded competitors.
- No video telematics; losing relevance as AI dashcam becomes table-stakes.
- Limited SEA commercial presence.

**SEA presence:** Limited — available in 80+ countries via resellers; no dedicated SEA sales or office confirmed. (31)

---

## Market Sizing

### Global Fleet Telematics / Commercial Vehicle Telematics

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global commercial vehicle telematics market size | $24.3B | 2024 | Medium — GMI Insights (specialist) | (32) |
| Global fleet management market (broader definition incl. software) | $28.6B | 2023 | Medium — MarketsandMarkets | (33) |
| Global fleet management market projected | $55.6B | 2028 | Low — single firm forecast | (33) |
| North America fleet management systems (active units) | 17.4M units | 2023 | Medium — Berg Insight (specialist) | (34) |
| North America fleet management projected | 30.5M units | 2028 | Low — Berg Insight forecast | (34) |
| Commercial vehicle telematics CAGR 2025–2034 | 12.9% | — | Medium — GMI Insights | (32) |
| ELD/HOS compliance devices in US heavy trucks | 3.5M trucks covered | 2024 | High — FMCSA ELD mandate data | (35) |
| US telematics adoption rate in heavy commercial trucks | >78% (mandate-driven) | 2024 | High — FMCSA | (35) |
| Commercial telematics subscriptions globally projected | 126M | 2027 | Low — ABI Research projection | (36) |

### Global Video Telematics Market

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global video telematics market size | $1.69B | 2024 | Medium — GMI Insights | (37) |
| Video telematics CAGR | 17.9% | 2025–2034 | Low — single firm forecast | (37) |
| Video telematics projected installed base (global) | 22M units | 2030 | Medium — Berg Insight via Computer Weekly | (38) |
| Video telematics market share: top 7 vendors | ~42% of market | 2024 | Low — single analyst source | (37) |

*Data gap: No country-level video telematics market size for any individual SEA country found in Tier 1–4 sources. Firm-level validation required.*

### ELD (Electronic Logging Device) Market

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global ELD market size | $14.1B–$15.6B | 2024 | Low — wide range across multiple research firms with no consensus | (39) |
| North America ELD market share | 43% of global | 2024 | Medium — Business Research Insights | (39) |
| ELD market CAGR | ~8.6% | 2024–2033 | Low — single firm | (39) |

*Note: The wide spread ($14.1B–$15.6B across six firms) in ELD market estimates reflects methodological inconsistency; some firms appear to include broader telematics hardware in the ELD category. Cross-validation failed. Treat as approximation only. See Assumed note below.*

### Southeast Asia Fleet Telematics

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| SEA fleet management systems installed base | 3.6M units | 2024 | High — Berg Insight (specialist; primary SEA telematics research firm) | (27, 40) |
| SEA fleet management systems projected | 6.4M units | 2029 | Medium — Berg Insight forecast | (40) |
| SEA fleet management CAGR | 12.3% | 2024–2029 | Medium — Berg Insight | (27, 40) |
| SEA telematics market size | $2.25B | 2025 | Low — Mordor Intelligence; single source | (41) |
| SEA telematics market projected | $4.41B | 2030 | Low — single source | (41) |
| Cartrack/Karooooo SEA+ME subscribers | 274,000+ | Feb 2025 | High — NASDAQ 6-K filing | (24) |
| Cartrack SEA subscription revenue growth | 31% (constant currency) | Q4 FY2025 | High — NASDAQ 6-K | (24) |
| Indonesia registered trucks (truk) | 6,091,822 | 2023 | High — BPS Indonesia primary government statistical source (corrects earlier 23M Mordor figure, which was either total non-motorcycle vehicles ~24.6M or all-vehicle category — not freight fleet) | (BPS) |
| Indonesia total registered motor vehicles | 157,080,504 | 2023 | High — BPS (incl. motorcycles 132M, cars 18M, trucks 6.09M, buses 270K) | (BPS) |
| Vietnam CAGR in telematics | 13.1% | projected | Low — Mordor Intelligence | (41) |

---

## Coverage Map: Freight-Journey Stage Coverage by Vendor

This maps each vendor against the six freight-journey stages from the pass-0 plan.

| Vendor | Stage 1: Vendor Procurement | Stage 2: TMS/Dispatch | Stage 3: Fleet & Driver / Telematics | Stage 4: In-Transit Visibility | Stage 5: Security & Escort | Stage 6: Cargo Insurance |
|---|---|---|---|---|---|---|
| **Samsara** | Via Highway integration (ELD data for vetting) | Via TMS API integrations (350+ partners) | **Primary** | GPS/ELD data feeds project44, FourKites | Safety event alerting | Insurance API (FNOL, UBI data) |
| **Motive** | Limited | Via TMS integrations | **Primary** | GPS data via API | Safety event alerting | Limited |
| **Geotab** | Via MyGeotab SDK | Via Marketplace (project44 preferred partner) | **Primary** | Feeds project44 (preferred partner) | Safety event data | Limited |
| **Verizon Connect** | None | Via enterprise fleet integrations | **Primary** (North America) | Limited | Safety alerting | None |
| **Webfleet** | None | Via enterprise fleet integrations (EU) | **Primary** (Europe) | Limited in US | Limited | None |
| **Lytx** | None | Via fleet integrations | **Primary** (video safety) | GPS secondary | Driver risk scoring | Insurance data licensing |
| **Netradyne** | None | None | **Primary** (video safety) | None | Limited | None |
| **Solera/Omnitracs** | None | Via Omnitracs TMS module | **Primary** | Via Spireon asset tracking | None | None |
| **Cartrack (Karooooo)** | None | None | **Primary** (SEA focus) | GPS feeds | Stolen vehicle recovery | Limited |
| **TransTRACK** | None | Supply chain API | **Primary** (Indonesia/SEA) | GPS feeds | None | None |
| **Platform Science** | None | Via Trimble TMW integration | **Primary** (in-cab) | Limited | None | None |
| **PowerFleet** | None | Via fleet integrations | **Primary** | Asset tracking | None | None |
| **CMT** | None | None | Adjacent (behavior data) | None | None | **Primary** (insurance pricing) |
| **Greenroad** | None | None | **Primary** (behavior) | None | None | Adjacent |

---

## SEA Presence Summary

| Vendor | SEA Presence Level | Mode | Local Language/Reg Support | SEA Customers (est.) |
|---|---|---|---|---|
| Cartrack (Karooooo) | Strong — 274,000+ subscribers | Direct offices (SG, MY, TH, ID) | Yes | 274,000+ |
| TransTRACK | Strong | Direct (Indonesia HQ) + expanding | Yes (Bahasa Indonesia) | 100,000+ |
| Jimi IoT | Strong (by device count) | Via resellers only | Via reseller | 200,000+ |
| Geotab | Moderate | Direct (Singapore office) + authorized resellers (ID, MY, TH, PH) | Partial | Not disclosed |
| PowerFleet / MiX | Limited | Australasia focus; limited SEA | Limited | Not disclosed |
| Webfleet (Bridgestone) | Limited | Reseller only | No | Not disclosed |
| Lytx | Limited | Reseller network (90+ countries) | No | Not disclosed |
| Greenroad | Limited | Reseller (80+ countries) | No | Not disclosed |
| Samsara | None confirmed | APAC via resellers; no SEA office | No | Not disclosed |
| Motive | None | No SEA commercial presence | No | 0 |
| Verizon Connect | None | All APAC divested to Geotab | No | 0 |
| Netradyne | None | India-primary; no SEA office | No | 0 |
| Solera/Omnitracs | None | North America only | No | 0 |
| Platform Science | None | North America only | No | 0 |
| CMT | None | US/Europe | No | 0 |

---

## Cross-References to Stage 1 and Stage 2 Vendors

### Stage 1 → Stage 3 integrations (Vendor Procurement → Telematics)

| Stage 1 Vendor | Stage 3 Integration | Nature of link |
|---|---|---|
| Highway (carrier vetting) | Samsara | Highway integrates with Samsara ELD data to verify carrier identity and HOS compliance during broker onboarding; native integration in Samsara Marketplace (4, 42) |
| Highway | Motive | Similar ELD-data pull for carrier vetting (42) |
| RMIS / MyCarrierPortal | Samsara | Samsara API provides ELD and safety-event data to risk management platforms; insurers access via SambaSafety integration (42) |
| Descartes (MacroPoint) | Geotab | Descartes MacroPoint uses Geotab as one of its preferred telematics data sources for carrier location pinging (ASSUMED-1) |
| Carrier Assure | Samsara, Motive | Carrier safety scoring platforms pull ELD/telematics data for CSA score modeling; specific API confirmed for Samsara (42) |

### Stage 2 → Stage 3 integrations (TMS/Dispatch → Telematics)

| Stage 2 Vendor | Stage 3 Integration | Nature of link |
|---|---|---|
| project44 | Geotab (preferred partner), Samsara, Motive | project44 carrier network; telematics providers send GPS/ETA data to project44 visibility layer; Geotab is a preferred telematics partner (12, 4) |
| FourKites | Samsara, Geotab, Motive | FourKites integrates Samsara GPS for shipper/3PL visibility; native integrations confirmed in Samsara Marketplace (43) |
| Trimble TMW | Platform Science (native), Samsara, Motive | Trimble TMW TMS integrates with Platform Science as primary; also integrates with Samsara and Motive APIs for dispatch workflow (23) |
| McLeod Software | Samsara, Motive, Maven Machines | McLeod has 260+ integrations including ELD telematics providers for driver data in dispatch (44) |
| MercuryGate | Samsara, Geotab | MercuryGate TMS connects to telematics APIs for load-level visibility (ASSUMED-2) |
| Uber Freight, Loadsmart | Samsara, Motive (via ELD ping) | Digital freight brokers ping ELD data for active load tracking; not a deep integration — primarily carrier location via ELD API (ASSUMED-3) |
| Haulio, Kargo (SEA) | Cartrack, TransTRACK, Jimi IoT resellers | SEA digital freight platforms pull GPS data from local telematics providers; formal API integrations unconfirmed — primarily manual or SMS-based (ASSUMED-4) |

---

## Preliminary Pain Points (Stage 3 — Telematics / Fleet Data Layer)

1. **Data fragmentation across multi-vendor telematics deployments:** Fleet managers using multiple telematics platforms devote an average of 4–5 hours/week consolidating data; 89% want a single connected platform but only 45% say their current telematics fully meets their needs. (45)

2. **ELD/HOS compliance drives adoption but creates minimum-viable-product trap:** ELD mandate compliance is the purchase trigger for 78%+ of US heavy-truck telematics adoption, but carriers often stop at HOS-only configurations, underutilizing safety and visibility features available in the platform. (35)

3. **Telematics data is not normalized for insurance pricing in commercial lines:** Fewer than 5% of commercial auto policies globally are priced using telematics data; CMT's launch of DriveWell Fleet (Jan 2026) directly addresses this gap, but the ecosystem to ingest and normalize data from 200+ TSPs for underwriting does not yet exist at scale. (1)

4. **SEA carriers and fleets lack ELD regulatory pull:** No SEA country has implemented a mandatory ELD or equivalent Hours-of-Service regulation as of 2025; adoption is commercially voluntary, leading to low telematics penetration among small/informal carriers who represent the majority of SEA freight capacity. [ASSUMED-5] — to validate: confirm with Indonesian Ministry of Transportation whether any GPS tracking mandates exist for trucks above certain GVW, and with LAND TRANSPORT AUTHORITY of Singapore/Thailand DLT

5. **SEA carrier fleet fragmentation makes telematics aggregation impossible for shippers:** The SEA freight market is dominated by small owner-operators (1–5 trucks); Cartrack serves 274k devices but the total addressable commercial vehicle fleet in SEA exceeds 23M in Indonesia alone, indicating <2% telematics penetration among the smallest carriers. (24, 41)

6. **Video telematics adoption in SEA lags hardware cost constraints:** AI dashcams cost $200–500 per device; for Indonesian owner-operators earning $1,000–2,000/month, the ROI case requires insurer subsidization or fleet-aggregator financing that does not yet exist systematically. [ASSUMED-6] — to validate: interview Cartrack SEA sales team on dashcam adoption rate in Indonesia vs. Singapore.

7. **Telematics data siloed from cargo-level risk:** Telematics platforms track the vehicle but not the cargo; cargo IoT (Tive, Sensitech, Roambee) tracks the cargo but not always the vehicle; these two data streams are rarely fused for insurers or risk managers in real time. (Stage 4 boundary)

8. **Driver coaching interventions are North America-centric:** AI safety event detection trained primarily on US and European road conditions; detection accuracy for motorcycles (extremely common in SEA traffic) is lower; Netradyne claims improvements but no third-party SEA validation found. (21)

9. **HOS/ELD data is not portable across borders:** ELD data in a US FMCSA-compliant format is incompatible with EU tachograph standards and has no equivalent in SEA; cross-border visibility for multi-country SEA freight is not achievable through telematics compliance layer.

10. **Insurance claims and telematics rarely speak the same protocol:** Samsara's FNOL/insurance API (FNOL within minutes of safety event) is designed for US insurers; no equivalent integration standard exists for SEA commercial cargo insurers. (42)

11. **Telematics hardware theft and tampering in high-risk SEA corridors:** GPS devices are frequently removed or jammed in high-theft corridors (e.g., North Sumatra to Jakarta); Cartrack offers stolen vehicle recovery as a differentiator, but signal jamming detection is not standard in lower-cost telematics hardware. [ASSUMED-7] — to validate: interview TransTRACK or Cartrack Indonesia operations team on GPS jamming frequency.

12. **Platform lock-in from hardware-bundled contracts limits fleet flexibility:** Samsara and Motive's 36-month hardware-bundled SaaS contracts mean fleets cannot switch telematics provider without write-off of pre-paid subscription; open-platform alternatives (Geotab reseller SDK) have inconsistent regional support quality.

13. **Driver privacy concerns impede dashcam deployment in some SEA jurisdictions:** Inward-facing cameras recording driver behavior may conflict with local labor law or privacy regulations in Indonesia, Malaysia, and Thailand; no published legal framework specifically addresses in-cab video recording in these countries. [ASSUMED-8] — to validate: consult Indonesian Manpower Ministry and PDPA (Thailand) regulations on in-cab surveillance.

14. **Connectivity gaps in rural SEA corridors create telematics blackouts:** Indonesia's archipelago geography and Thailand/Vietnam rural road networks have significant cellular dead zones; telematics data is lost or delayed in these segments, creating risk blind spots for insurers and shippers precisely in the corridors where cargo theft peaks.

---

## Sources for this Stage

(1) Cambridge Mobile Telematics. "DriveWell Fleet Launch." BusinessWire, January 2026. https://www.businesswire.com/news/home/20260115567056/en/Cambridge-Mobile-Telematics-Launches-DriveWell-Fleet

(2) Samsara pricing data. CheckThat.ai / AirPinpoint, 2026. https://checkthat.ai/brands/samsara/pricing | https://airpinpoint.com/compare/samsara-pricing

(3) Samsara FY2025 Earnings. StockTitan SEC Filing summary, March 2025. https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html | Samsara Annual Report (FY2025 ARS cover filed SEC): https://www.sec.gov/Archives/edgar/data/1642896/000164289625000048/iot2025ars.pdf

(4) Samsara Marketplace — project44, FourKites, Highway integrations. https://www.samsara.com/resources/marketplace/project44 | https://www.samsara.com/resources/marketplace/fourkites | https://kb.samsara.com/hc/en-us/articles/10280915886349-Integrate-with-Highway

(5) Samsara Wikipedia / company overview — geographic focus. https://en.wikipedia.org/wiki/Samsara_(company)

(6) Motive S-1 SEC filing, December 23, 2025. https://www.sec.gov/Archives/edgar/data/1646681/000162828025058773/motive-sx1.htm

(7) Motive S-1 Analysis — Tomasz Tunguz. https://tomtunguz.com/motive-s-1/ | Motive press release FY2024. https://gomotive.com/company/news/press-release/motive-closes-record-fiscal-year-fueled-by-ai-innovation-and-accuracy/

(8) Motive international presence — Wikipedia. https://en.wikipedia.org/wiki/Motive_(company)

(9) Geotab business model — Geotab APAC. https://www.geotab.com/apac/

(10) Geotab revenue/subscriber estimates. GrowJo / industry estimates. https://growjo.com/company/GEOTAB | Geotab press release — 5M subscriptions. https://www.geotab.com/press-release/geotab-5-million-subscriptions-milestone/

(11) ABI Research commercial telematics competitive ranking 2025. https://www.abiresearch.com/press/geotab-samsara-and-powerfleet-take-the-top-spots-in-abi-researchs-commercial-telematics-competitive-ranking | https://www.prnewswire.com/news-releases/geotab-samsara-and-powerfleet-take-the-top-spots-in-abi-researchs-commercial-telematics-competitive-ranking-302380732.html

(12) Geotab — project44 preferred telematics partner. https://www.project44.com/partners/geotab/ | https://marketplace.geotab.com/solutions/movement-by-project44/

(13) Geotab SEA Singapore office, Ace launch. https://www.geotab.com/apac/press-release/southeast-asia-expansion/ | https://www.geotab.com/apac/press-release/ace/

(14) Verizon Connect overview and pricing. https://www.verizonconnect.com/

(15) Enlyft market share — Verizon Connect. https://enlyft.com/tech/products/verizon-connect

(16) Geotab acquires Verizon Connect international commercial operations. https://www.geotab.com/press-release/verizon-connect/

(17) Webfleet / Bridgestone — European subscribers and market share. Frost & Sullivan award write-up. https://www.frost.com/wp-content/uploads/2025/02/Webfleet-Solutions-Final-Award-Write-up.pdf

(18) Webfleet — About and company history. https://www.webfleet.com/en_us/webfleet/company/

(19) Lytx — Permira investment and valuation. https://www.lytx.com/news-events/press-release/2020/lytx-announces-majority-investment-from-the-permira-funds | Lytx Wikipedia. https://en.wikipedia.org/wiki/Lytx

(20) Lytx — customer base, driving database, global reach. https://www.lytx.com/

(21) Netradyne Series D and metrics. TechCrunch, January 2025. https://techcrunch.com/2025/01/17/netradyne-snags-90m-at-1-25b-valuation-to-expand-smart-dashcams-for-commercial-fleets/ | Netradyne press release. https://www.netradyne.com/news/netradyne-r-raises-90-million-in-series-d-funding-led-by-point72-private-investments

(22) Solera/Omnitracs acquisition and portfolio. https://www.solera.com/blog/2021/05/17/solera-to-acquire-omnitracs-and-dealersocket/ | Spireon overview. https://www.solera.com/solutions/spireon/

(23) Platform Science / Trimble telematics acquisition. https://www.prnewswire.com/news-releases/platform-science-completes-acquisition-of-trimbles-global-transportation-telematics-business-units-302371696.html | Trimble announcement. https://investor.trimble.com/news/news-details/2024/Platform-Science-to-Acquire-Trimbles-Global-Transportation-Telematics-Business-Units-to-Drive-the-Future-of-Transportation-In-Cab-Technology/

(24) Karooooo Q4 FY2025 results. StockTitan. https://www.stocktitan.net/news/KARO/karooooo-reports-record-q4-and-fy2025-results-fuelled-by-xvv1wen59p0v.html | Karooooo Q2 2025 SEC 6-K. https://www.sec.gov/Archives/edgar/data/1828102/000121390024087420/ea021753501ex99-1_karooooo.htm

(25) Karooooo FY2025 investor release. BusinessWire. https://www.businesswire.com/news/home/20250514850216/en/Karooooo-Reports-Record-Q4-and-FY2025-Results-Fuelled-by-Accelerating-Cartrack-Subscriber-Revenue-Growth-and-Robust-Profitability

(26) TransTRACK Series A funding and market position. https://blog.transtrack.co/en/press-release/transtrack-technology-summit-2024-fleet-innovation-and-expansion-strategy-with-series-a-funding-of-idr185-billion/ | TransTRACK Berg Insight recognition. https://blog.transtrack.co/en/press-release/transtrack-recognized-again-as-one-of-the-largest-fleet-management-providers-in-southeast-asia-by-berg-insight/

(27) Berg Insight — Fleet Management in Southeast Asia (2024 edition summary). IoT Business News (Berg Insight press release). https://iotbusinessnews.com/2024/10/27/19001-the-installed-base-of-fleet-management-systems-in-southeast-asia-to-reach-5-4-million-units-by-2028/ | GlobeNewswire release. https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html

(28) Jimi IoT — SEA installed base. Research and Markets / Berg Insight SEA report. https://www.businesswire.com/news/home/20241105818026/en/Southeast-Asia-Fleet-Management-Market-Report-2024---Fleet-Management-Solutions-in-Southeast-Asia-Expected-to-Double-by-2028-Reaching-5.4-Million-Units---ResearchAndMarkets.com

(29) PowerFleet FY2025 results. https://ir.powerfleet.com/press-releases/detail/484/powerfleet-reports-annual-fy2025-results-a-breakout-year | PowerFleet/MiX merger close. https://www.prnewswire.com/news-releases/powerfleet-and-mix-telematics-close-business-combination-creating-new-top-tier-global-aiot-saas-provider-302105363.html

(30) CMT — Frost & Sullivan 2024 Market Leadership Award. https://www.cmtelematics.com/news/cambridge-mobile-telematics-earns-frost-sullivans-2024-market-leadership-award-for-leading-innovations-in-the-telematics-insurance-and-connected-claims-industry/

(31) Greenroad — revenue estimate and overview. https://greenroad.com/ | Digital Edge launch. https://www.prnewswire.com/apac/news-releases/greenroad-ushers-in-new-era-in-fleet-safety-with-digital-edge-302203890.html

(32) GMI Insights — commercial vehicle telematics market 2024. https://www.gminsights.com/industry-analysis/commercial-vehicle-telematics-market

(33) MarketsandMarkets — fleet management market. https://www.marketsandmarkets.com/ResearchInsight/fleet-management-systems-market.asp

(34) Berg Insight — fleet management North America. Berg Insight press release summary via Computer Weekly. https://www.computerweekly.com/news/366636775/Aftermarket-car-telematics-arena-drives-past-90-million-subscriptions

(35) FMCSA ELD mandate general information. https://www.fmcsa.dot.gov/hours-service/elds/general-information-about-eld-rule | GMI Insights commercial vehicle telematics US share. (32)

(36) ABI Research — commercial telematics subscriptions projection. https://www.abiresearch.com/market-research/product/7781191-commercial-telematics-and-fleet-management

(37) GMI Insights — video telematics market 2024. https://www.gminsights.com/industry-analysis/video-telematics-market

(38) Berg Insight — video telematics 22M units by 2030. Computer Weekly. https://www.computerweekly.com/news/366641036/North-America-drives-video-telematics-market-to-22-million-units-by-2030

(39) Business Research Insights — ELD market $14.x–15.x billion range. https://www.businessresearchinsights.com/market-reports/electronic-logging-device-eld-market-119692

(40) Berg Insight — Fleet Management in Southeast Asia, 2nd Edition (2026). IoT Business News release. https://iotbusinessnews.com/2026/02/26/the-installed-base-of-fleet-management-systems-in-southeast-asia-to-reach-6-4-million-units-by-2029/ | Berg Insight SEA product page. https://www.berginsight.com/fleet-management-in-southeast-asia/

(41) Mordor Intelligence — Southeast Asia telematics market. https://www.mordorintelligence.com/industry-reports/southeast-asia-telematics-market

(42) Samsara InsurTech / insurance API documentation. https://developers.samsara.com/docs/insuretech | SambaSafety integration page. https://www.samsara.com/resources/marketplace/samba-safety

(43) Samsara FourKites integration. https://kb.samsara.com/hc/en-us/articles/360021818732-Integrate-with-FourKites | Samsara project44 integration. https://kb.samsara.com/hc/en-us/articles/360022557031-Integrate-with-project44

(44) McLeod Software — integration ecosystem. https://www.mcleodsoftware.com/ | Maven Machines / McLeod integration. https://www.mcleodsoftware.com/press-releases/maven-machines-integrates-with-mcleod-software-to-improve-fleet-and-driver-workflow/

(45) J.J. Keller fleet manager pain points study; fleet telematics data fragmentation. https://www.jjkeller.com/company/press-releases/jj-keller-study-reports-on-greatest-pain-points-for-fleet-managers | AutoFleet data fragmentation article. https://autofleet.io/blog/solving-data-fragmentation-in-fleet-telematics

(BPS) Badan Pusat Statistik (Statistics Indonesia) — Perkembangan Jumlah Kendaraan Bermotor Menurut Jenis (registered motor vehicles by type), 2023 (data updated Feb 2024): https://www.bps.go.id/id/statistics-table/2/NTcjMg==/perkembangan-jumlah-kendaraan-bermotor-menurut-jenis.html

---

## Assumptions to Validate

[ASSUMED-1]: Descartes MacroPoint uses Geotab as a preferred telematics data source for carrier location pinging in its RTTVP product.
- to validate: Ask Geotab APAC or Descartes MacroPoint product team whether a formal preferred-partner or API agreement exists between Geotab and MacroPoint, and what share of MacroPoint carrier pings come from Geotab devices vs. ELD providers.

[ASSUMED-2]: MercuryGate TMS connects to Samsara and Geotab telematics APIs for load-level in-transit visibility.
- to validate: Ask MercuryGate product management whether pre-built Samsara/Geotab connectors exist in the MercuryGate marketplace, or whether integration is custom-built per customer.

[ASSUMED-3]: Uber Freight and Loadsmart ping ELD data from Samsara and Motive for active load tracking via their carrier networks.
- to validate: Ask Uber Freight or Loadsmart's carrier operations team what share of active loads have telematics-based visibility vs. manual check-calls; whether Samsara/Motive APIs are directly integrated or mediated by a visibility layer (e.g., project44).

[ASSUMED-4]: SEA digital freight platforms (Haulio, Kargo) pull GPS data from local telematics providers via informal or manual integration rather than formal API.
- to validate: Interview Haulio and Kargo product teams on whether they have formal API integrations with Cartrack, TransTRACK, or Jimi IoT; or whether carrier GPS is accessed via driver-submitted WhatsApp location shares.

[ASSUMED-5]: No SEA country has implemented a mandatory ELD or GPS tracking regulation for commercial trucks as of 2025.
- to validate: Check with Indonesian Ministry of Transportation (Kementerian Perhubungan), Thailand Department of Land Transport (DLT), Malaysian JPJ (Road Transport Department), and Singapore Land Transport Authority for any mandatory telematics/GPS regulations on trucks above GVW threshold.

[ASSUMED-6]: AI dashcams are not being financed through insurer subsidy programs in SEA, leaving cost as a primary adoption barrier for small carriers.
- to validate: Interview Cartrack SEA sales team on dashcam adoption rate vs. GPS-only in Indonesia, Malaysia; ask whether any insurer (e.g., Tokio Marine Indonesia, Sompo Indonesia) subsidizes dashcam installation in exchange for telematics data.

[ASSUMED-7]: GPS jamming of telematics devices is a materially frequent occurrence on high-theft corridors in Indonesia (e.g., North Sumatra–Java route).
- to validate: Ask TransTRACK and Cartrack Indonesia operations teams for incident rate data on GPS signal loss events; distinguish between cellular dead zones and active jamming.

[ASSUMED-8]: In-cab driver-facing cameras may conflict with Indonesian, Malaysian, or Thai privacy/labor regulations, creating legal risk for fleet operators.
- to validate: Consult Indonesian Personal Data Protection Law (UU PDP No. 27 of 2022) and Thailand PDPA (2022) on whether in-cab recording of employees requires consent, signage, or labor-union notification; assess whether any fleet operator has faced legal challenge in SEA.


---

# STAGE 4

# Stage 4: In-Transit Visibility & Cargo IoT — Value Chain

*Run ID: 2026-05-14-0107 | Generated: 2026-05-14*

---

## Solution Category Boundaries

In-transit visibility and cargo IoT is a single commercial problem — knowing where cargo is and in what condition — solved by two technically distinct approaches that are increasingly integrated:

### Category A: Real-Time Transportation Visibility Platforms (RTTVPs) / Control Towers

Software-only platforms that aggregate data from carrier APIs, ELD/telematics feeds, EDI milestone events, driver-app pings, ocean carrier portals, and predictive ETA algorithms. The shipper or 3PL installs no hardware on cargo; visibility derives from the carrier's own systems or from polling carrier APIs. Gartner first published a Magic Quadrant for this category in 2020 and has issued it annually since; the 2024 MQ covers seven evaluated vendors. (1)

Sub-types within RTTVP/Control Tower:

| Sub-type | What distinguishes it | Leading example |
|---|---|---|
| **Multimodal visibility platform** | Road + ocean + air + rail in single pane; aggregates carrier-specific data APIs across modes | project44, FourKites, Shippeo |
| **Carrier-network-centric RTTVP** | Built on top of a carrier/TMS network already in place; visibility is a downstream feature | Transporeon / Sixfold, Descartes MacroPoint |
| **Ocean-specialist visibility** | Vessel-to-container tracking focused; integrates with AIS data, port system EDI | Wakeo, Beacon, Blume Global |
| **Cargo security + visibility hybrid** | Adds geofencing, risk-scoring, deviation alerting, incident response to standard RTTVP | Overhaul |
| **Rail/bulk specialist** | Multimodal, particularly rail; used in process industries | IntelliTrans |

### Category B: Cargo IoT — Sensor Hardware + SaaS

Physical trackers attached to or inside the shipment (pallet, box, container) that report data continuously via cellular, satellite, BLE, or LPWAN networks. The shipper, 3PL, or pharma company deploys these independent of whether the carrier has telematics.

Sensor grade sub-types:

| Grade | Sensors included | Unit economics | Reuse model | Typical users |
|---|---|---|---|---|
| **GPS-only tracker** | Location only | $15–50 hardware | Reusable | General cargo, containers |
| **GPS + temperature** | Location + temp | $30–80 hardware | Reusable or single-use | Food, pharma, floral |
| **GPS + multi-sensor** | Location, temp, humidity, shock, light/door, tilt | $50–150 hardware | Primarily reusable | High-value cargo, pharma |
| **Container-grade tracker** | Permanent attachment to steel container; long battery life (solar); dry or reefer | $80–200 hardware | Reusable — affixed to asset | Shipping lines, container lessors |
| **Pharma-grade tracker** | Multi-sensor + calibrated NIST probes + chain-of-custody logging; regulatory audit trail | $60–200 single-use | Single-use or managed return | Pharma manufacturers, CROs |
| **Smart label / disposable** | GPS + temp; form factor is peel-and-stick label; cellular enabled | $5–25 per unit | Single-use | Parcel, e-commerce, last-mile pharma |

### Cross-cutting distinction: Who owns the data?

In RTTVP deployments, the carrier controls the source data (telematics, ELD, tracking app); the visibility platform aggregates it for the shipper's view. The shipper cannot obtain richer data than what the carrier's system generates. In cargo IoT deployments, the shipper or 3PL owns the sensor and the raw data stream; the carrier's level of participation does not affect data quality. This distinction is central to WH2 and WH3 (see Hypothesis Findings section).

---

## Vendor Profiles

### RTTVP / Control Tower Vendors

---

### 1. project44 (Chicago, USA — private)

**What it does:** Multimodal supply chain visibility and decision-intelligence platform aggregating data from 240,000+ global carriers across road, ocean, air, rail, intermodal, and last-mile modes; produces predictive ETAs using ML and generates deviation alerts. (2)

**Primary user:** Enterprise shippers (manufacturers, retailers, CPG), 3PLs managing outbound/inbound freight networks globally.

**Business model:** Per-active-shipment SaaS subscription (tiered by shipment volume and mode mix); enterprise contracts typically $500k–$5M ARR. Revenue is software-only; no hardware sold. (2)

**Notable financial:**
- FY2024: >30% YoY growth in both SaaS and total GAAP revenue; revenue estimated ~$210M (FY2024) per third-party data — note that this ~$210M GAAP-revenue estimate is higher than the ~$175M ARR figure circulating from getlatka.com (cited in Stage 4 pain-points footnote 6); the two are not equivalent (GAAP revenue vs. annualized recurring SaaS contracts) and project44 has not disclosed an audited FY2024 revenue figure; both should be treated as unaudited third-party estimates [VERIFY-1: confirm project44 actual FY2024 revenue and ARR via direct disclosure or audited filing before any commercial use] (2, 3)
- Customer count: 1,000+ leading brands (company-disclosed); 550 customers per one third-party source (3)
- Total raised: $912M across 8 rounds; last disclosed valuation $2.7B (Nov 2022, Series G led by Generation Investment) (4)
- 2024 Gartner MQ: Leader — highest on Ability to Execute and furthest on Completeness of Vision, fourth consecutive year (1)
- Carrier network: 240,000+ carriers; 760+ ELD/telematics integrations; SLA guarantees 90% of contracted TL carriers live within 30 days in North America and Europe (5)
- Q3 2025: Reported 40%+ new ARR growth; operational cash flow breakeven (6)

**Pros:**
- Largest carrier network of any RTTVP; 8+ million vehicles added in China OTR expansion alone (2)
- Single-platform multimodal coverage (ocean, road, air, rail, last-mile) with AI-driven ETA and supply chain decision intelligence layer
- Open network model: suppliers can share data with project44 customers without being project44 customers themselves (5)

**Cons:**
- Carrier onboarding SLA limited to North America and Europe; Asia and LATAM coverage materially thinner (5)
- Visibility quality depends on carrier API/telematics integration quality; subcontracted loads retain a "last-mile" blind spot even post-onboarding (5)
- $2.7B valuation implies premium pricing that excludes mid-market shippers without scale (4)

**SEA presence:** Limited direct presence. One regional VP/GM appointed for ANZ and SEA. No Singapore or Indonesia office confirmed. Operates primarily through resellers and indirect carrier network for APAC. Carrier coverage in SEA is substantially below the 240,000-carrier global figure. (7)

---

### 2. FourKites (Chicago, USA — private)

**What it does:** AI supply chain orchestration and visibility platform covering 1.1M carriers and suppliers globally; processes 3.2M+ supply chain events daily; provides dynamic ETA, exception management, yard management, and dock scheduling. (8)

**Primary user:** Enterprise shippers — particularly CPG (9 of top-10 CPG companies are customers) and food & beverage (18 of top-20 F&B companies). Also 3PLs and carriers. (8)

**Business model:** Per-shipment SaaS subscription; additional modules for yard management, dock scheduling, and analytics add-ons. (8)

**Notable financial:**
- Revenue estimated ~$114M (2024) per third-party data (9)
- Total funding: $292M; last valuation ~$1B (Series D, 2022) (10)
- 2024 Gartner MQ: Leader (1)
- Platform processes 3.2M+ events/day across 200+ territories (8)
- Note: The orchestrator brief references "FourKites acquired by Lineage Logistics 2025" — this is **not confirmed** by research; no acquisition announcement found. Lineage is a customer. [ASSUMED-1]: FourKites remains independent as of May 2026 — to validate: check FourKites press releases or Lineage Logistics investor filings for any M&A.

**Pros:**
- Best-in-class ocean visibility with 100+ ocean carrier integrations and real-time port event correlation
- 1.1M carriers and suppliers pre-connected; fastest time-to-visibility for enterprise customers with complex carrier mixes
- Premier Carrier List program incentivizes carrier tracking compliance via public recognition (10)

**Cons:**
- Revenue growth slowed in 2023–2024 per Gartner critique; customer service scores declined (11)
- Visibility quality for carriers outside core network degrades; only as good as the weakest carrier's data quality (8)
- North America and Europe skewed; SEA carrier coverage substantially below US coverage rate

**SEA presence:** Limited. No SEA office confirmed. Services some APAC CPG customers via global contracts. (8)

---

### 3. Shippeo (Paris, France — private)

**What it does:** Multimodal real-time transportation visibility platform — road, ocean, air, and rail — using AI predictive ETA; European market leader for road freight visibility; expanding into APAC and North America. (12)

**Primary user:** Large European shippers (automotive, food, chemicals, retail) and their logistics providers; growing APAC roster.

**Business model:** Per-shipment SaaS subscription; enterprise annual contracts; white-label options for 3PLs. (12)

**Notable financial:**
- FY2024 revenue: ~$22.3M (13)
- Total funding: >$140M; most recent round $30M Series D-II (Jan 2025), led by Woven Capital (Toyota's fund) (12)
- Customer count: ~50 (enterprise accounts per data source; company claims 150+ global enterprise clients added over 3 years) (12, 13)
- APAC growth: +53% customer growth YoY, +64% shipments tracked (12)
- 28M+ shipments tracked annually across 92 countries (12)
- 2024 Gartner MQ: Leader (1)

**Pros:**
- Highest customer recommendation rate on Gartner Peer Insights for four consecutive years (12)
- Toyota-backed with Woven Capital investment signals deep commitment to Japanese/APAC automotive supply chain
- Strong multimodal coverage: road, ocean, air, rail; meaningful China expansion

**Cons:**
- Revenue ($22.3M) small relative to market leader project44 (~$210M); limited financial runway without additional fundraising
- Limited direct SEA office presence despite APAC growth investment
- Carrier network size undisclosed; European road coverage strongest; Asia coverage partially broker-mediated

**SEA presence:** Limited — no dedicated SEA office confirmed. APAC expansion underway from 2025 with Toyota/Woven Capital backing; some APAC automotive OEM customers. (12)

---

### 4. Wakeo (Paris, France — private)

**What it does:** Multimodal supply chain visibility platform focused on international ocean, air, road, and rail flows; covers 180+ countries; strong on trans-oceanic and multimodal freight visibility for European and APAC shippers. (14)

**Primary user:** Shippers and freight forwarders managing international multimodal flows; enterprise manufacturing (Michelin, Air Liquide, Acer).

**Business model:** Per-shipment SaaS subscription. (14)

**Notable financial:**
- Total raised: ~$32.7M; last round €18M Series B (Dec 2023), led by Statkraft Ventures (14)
- Customers include: Air Liquide, Michelin, Acer, Faurecia, Chryso (14)
- Operates across 180+ countries; multimodal coverage (sea, air, rail, road) (14)

**Pros:**
- Strong multimodal sea + air focus; useful for freight forwarders managing mixed-mode flows
- Sustainability tracking layer (carbon calculation per shipment) embedded in platform
- Cost-effective alternative to project44/FourKites for mid-market European shippers

**Cons:**
- Smaller carrier network and financial base than Tier 1 RTTVPs
- Limited North American penetration
- No disclosed SEA office or direct customer presence

**SEA presence:** No confirmed SEA office. Operates in APAC via carrier API integrations; limited direct SEA customer base. [ASSUMED-2]: Wakeo has indirect coverage of SEA ocean freight via its ocean carrier API integrations but no direct SEA commercial presence — to validate: check Wakeo reseller agreements or APAC customer references. (14)

---

### 5. Transporeon / Sixfold (Ulm, Germany — owned by Trimble Inc.)

**What it does:** Europe's largest freight network platform (145,000+ carriers, 1,300+ industrial shippers, 100+ major retailers); Sixfold provides the real-time road visibility layer via carrier app and telematics pings; AI-based ETA across 40+ countries in 25 languages. (15)

**Primary user:** European shippers and retailers managing road freight; carriers on the Transporeon network.

**Business model:** Network subscription for shippers + per-load transaction fees for carrier bookings; Sixfold visibility bundled or add-on. (15)

**Notable financial:**
- Trimble acquired Transporeon in 2023 for ~$1.9B; Trimble Transportation revenue ~$1.5B combined (16)
- Transporeon network: 145,000 carriers, 1,300 shippers, 100+ large retailers (15)
- Monitors €500M+ worth of goods in real-time daily for customers in 40+ countries (15)

**Pros:**
- Largest carrier network in Europe by headcount; network effects create data density advantage
- Bundled TMS + visibility + carrier booking in one platform reduces integration complexity for European shippers
- AI-driven ETA from Sixfold is strong on European road freight

**Cons:**
- Primarily European road freight; Asia coverage thin
- Trimble parent ownership may limit agility versus pure-play RTTVP vendors
- No meaningful SEA presence

**SEA presence:** None confirmed. European road freight network. (15)

---

### 6. Descartes MacroPoint (Waterloo, Canada — subsidiary of Descartes Systems, DSGX)

**What it does:** Carrier-centric RTTVP with 216,000+ carrier coverage; built for freight brokers and 3PLs as a third-party visibility solution; FraudGuard capability launched 2024 to detect fraudulent tracking data and identity theft in load assignments. (17)

**Primary user:** Freight brokers, 3PLs, shippers in North America; expanding globally.

**Business model:** Per-load tracking SaaS; subscription to MacroPoint carrier network; add-on capacity sourcing module for load matching. (17)

**Notable financial:**
- Part of Descartes Systems (NASDAQ: DSGX); Descartes FY2025 (Jan 31 2025) revenue ~$634M; MacroPoint is one of several SaaS products within Descartes (16)
- 216,000+ carrier coverage; 1M+ US/Canada TL lanes (17)

**Pros:**
- Explicitly built as a third-party visibility solution — covers 3PL-managed and broker-tendered loads including subcontracted assets (17)
- FraudGuard 2024 directly addresses carrier identity fraud, which is epidemic in North American brokerage (17)
- Native integration with McLeod, TMW, and other TMS platforms used by brokers (17)

**Cons:**
- North America-centric; global coverage uneven
- Competing against project44's larger carrier network for enterprise-grade use
- No SEA presence

**SEA presence:** None confirmed. (17)

---

### 7. Overhaul (Austin, Texas, USA — private)

**What it does:** Supply chain risk management platform combining real-time visibility (RTTVP), cargo security monitoring (geofencing, deviation alerts, driver behavior), and incident response coordination; acquired FreightVerify in Aug 2025 for automotive/healthcare item-level visibility. (18, 19)

**Primary user:** Pharmaceutical shippers, technology companies (Microsoft, Dyson), automotive manufacturers; high-value and risk-sensitive cargo.

**Business model:** Per-shipment SaaS subscription; premium tier for managed monitoring with 24/7 human response team; security alert integration. (18)

**Notable financial:**
- Total raised: ~$260M ($55M Jan 2025 + $105M Series C Aug 2025, led by Springcoast Partners and Edison Partners) (18, 19)
- ~350 customers including Microsoft, Dyson, Bristol Myers Squibb, CEVA Logistics, Arvato (18)
- Safeguards >$1.4T in cargo trade; 99.9% shipment protection rate (company-claimed) (18)
- 2024 Gartner MQ: Challenger (1)
- Post-FreightVerify: adds 6 of top-10 automotive manufacturers to roster (19)

**Pros:**
- Combines RTTVP visibility with cargo-security response in a single platform — no other vendor in Gartner MQ does this (18)
- FreightVerify acquisition adds item-level warehouse-to-destination visibility for automotive/healthcare (19)
- Managed monitoring service (human-in-loop) differentiates from pure-software RTTVPs (18)

**Cons:**
- Premium pricing; positioned for high-value cargo only; not viable for bulk or commodity freight
- Post-acquisition integration risk (FreightVerify, announced Aug 2025)
- SEA presence not confirmed

**SEA presence:** No confirmed SEA office. Serves global enterprise customers via hub offices. [ASSUMED-3]: Some APAC deployments exist given pharma and tech customer base, but no direct SEA commercial team confirmed — to validate: ask Overhaul sales team about APAC accounts. (18)

---

### 8. Blume Global (Pleasanton, CA, USA — owned by WiseTech Global, WTC.AX)

**What it does:** Multimodal supply chain orchestration platform combining intermodal TMS execution (rail, road, ocean, barge) with real-time visibility; unique in pairing execution with end-to-end container-level visibility. (20)

**Primary user:** Intermodal marketing companies (IMCs), beneficial cargo owners with complex rail-ocean-road supply chains; Class I railroads as data partners.

**Business model:** SaaS subscription for orchestration + visibility; enterprise contracts; bundled with CargoWise (WiseTech) ecosystem. (20)

**Notable financial:**
- WiseTech acquired Blume in Feb 2023 for $414M (20)
- Blume FY2024 revenue forecast ~$65–70M at acquisition (growing ~45–55% post-acquisition) (20)
- Customers: BNSF Logistics, Canadian Pacific, C.H. Robinson, CSX, Florida East Coast Railway, Hapag-Lloyd, Kansas City Southern, Maersk, Norfolk Southern, Union Pacific (20)
- Presence in 170+ countries (20)

**Pros:**
- Only platform that pairs intermodal execution (TMS) with end-to-end visibility — uniquely useful for complex US intermodal supply chains
- WiseTech parent integrates Blume with CargoWise TMS used by major freight forwarders globally
- Native digital twin (Blume Maps) of supply chain enables proactive disruption management

**Cons:**
- Primarily North American intermodal focus; limited European and negligible APAC road coverage
- Post-acquisition integration complexity with WiseTech CargoWise product suite
- No SEA presence

**SEA presence:** None confirmed. (20)

---

### 9. GoComet (Newark, NJ / Bengaluru, India / Singapore — private)

**What it does:** AI-powered multimodal supply chain visibility and automation platform combining freight rate procurement, container tracking, shipment visibility (ocean, air, road, rail), invoice reconciliation, and workflow automation for shippers; strong Asia-Pacific presence. (21)

**Primary user:** Mid-market to large shippers in Asia and Europe; pharma (Sun Pharma, Lupin), CPG (Unilever), chemicals, rubber. (21)

**Business model:** SaaS subscription per company/module; modular pricing (rate procurement, container tracking, visibility, invoice reconciliation). (21)

**Notable financial:**
- FY2024 revenue: SGD 3.65M (~$2.7M USD) — early-stage commercial scale (21)
- Raised $7M Series A; Singapore office; 230+ employees (21)
- 230+ enterprise customers across 35 countries; Philippines accounts for ~20% of SEA portfolio (21)

**Pros:**
- Native SEA presence (Singapore office); understands region-specific complexity (multi-island, multi-modal, broker-dominated)
- Philippines, Indonesia, India customer base gives ground-level carrier network knowledge
- Affordable SaaS tier relative to Tier 1 RTTVPs — accessible to mid-market SEA shippers

**Cons:**
- Revenue and scale substantially smaller than Tier 1 RTTVPs; limited carrier network size
- Limited public disclosure on carrier coverage depth in SEA
- Not in Gartner MQ

**SEA presence:** Yes — Singapore commercial office; active customers in Philippines, India, Indonesia, Malaysia; ~20% of SEA portfolio in Philippines. (21)

---

### Cargo IoT — Sensor Hardware + SaaS Vendors

---

### 10. Tive (Boston, MA, USA — private)

**What it does:** Cargo IoT tracking platform combining multi-sensor trackers (GPS, temperature, humidity, shock, light/door, tilt) with a cloud SaaS platform for real-time condition monitoring; single-use and reusable tracker form factors; 5G-connected. (22)

**Primary user:** Pharmaceutical/life sciences shippers, food & beverage, high-value electronics; customers include 3PLs and cargo insurers using Tive data to underwrite risk. (22)

**Business model:** Hardware + SaaS hybrid. Trackers sold or leased; annual cloud platform subscription per company; optional managed monitoring add-on (24/7 staffed). Revenue from: tracker sales + annual SaaS fees + per-shipment monitoring charges. (22)

**Notable financial:**
- Series C: $40M (Jan 2025), led by WiL (World Innovation Lab) and Sageview Capital; total raised $120M (22)
- 60% YoY revenue growth in H1 2024; 64% growth in tracker shipments in same period (23)
- 900+ customers; 350+ new customers added in 2024 (22, 23)
- Products: Solo 5G (single-use / reusable); TT-4000 (reusable, 15-month battery life) (22)

**Pros:**
- 5G-connected tracker enables near-real-time data push vs. batch uploads of older cellular trackers
- Both single-use (disposable) and reusable form factors; Green Program for tracker return and refurbishment (22)
- FDA DSCSA and EU FMD compliance documentation built into platform — critical for pharma

**Cons:**
- Hardware capital cost is non-trivial at scale; tracker economics require volume commitments
- SEA cellular network compatibility requires device-by-device verification (varies by country)
- No confirmed SEA distribution partner

**SEA presence:** No confirmed SEA office or distribution partner. Global expansion planned with Series C proceeds; hardware must be certified for local cellular bands. [ASSUMED-4]: Tive trackers are deployed by some pharma/CPG customers in SEA via parent company's global logistics partners, but without a local support entity — to validate: ask Tive sales team about APAC distribution. (22)

---

### 11. Sensitech / Carrier Global (Beverly, MA, USA — subsidiary of Carrier Global, CARR)

**What it does:** Cold chain monitoring hardware (temperature loggers, multi-sensor trackers) and SaaS platform (TempTale and Lynx Digital Platform); FDA 21 CFR Part 11 compliant; acquired Berlinger & Co (pharma-grade temp monitoring, Switzerland) in Aug 2024. (24)

**Primary user:** Pharmaceutical manufacturers, food producers, cold chain logistics operators; compliance-driven deployments where regulatory audit trail is mandatory.

**Business model:** Hardware sales (data loggers, reusable trackers) + annual SaaS platform license for Lynx; aftermarket: replacement batteries, calibration services, and GxP support. (24)

**Notable financial:**
- Carrier Global (NYSE: CARR) overall revenue: $22B (FY2024); Sensitech is part of Carrier's Climate and Sustainability Technologies segment — specific revenue not disclosed separately (24)
- Carrier holds largest market share in global cold chain monitoring market (~16–26% combined with other Carrier-owned brands) (24)
- Berlinger & Co acquisition completed Aug 2024: adds ultra-precise pharma-grade loggers for clinical trials and biotech (24)
- Launched Lynx FacTOR in March 2025: SaaS platform automating end-to-end pharmaceutical product release (24)

**Pros:**
- Largest installed base in pharmaceutical cold chain monitoring globally; GxP/GDP-compliant by design
- Berlinger acquisition extends coverage into ultra-low temperature (−70°C) and clinical trial tracking
- Carrier Global distribution: 200+ countries via HVAC/refrigeration service network creates unmatched aftermarket reach

**Cons:**
- Hardware business model means capital cost per shipment is higher than SaaS-only competitors
- Innovator's dilemma: entrenched in single-use logger model while startups (Tive, Roambee) push connected real-time IoT
- Primary focus on pharma cold chain; limited general cargo or high-value goods positioning

**SEA presence:** Yes — via Carrier Global's APAC distribution network; Sensitech hardware available through Carrier's HVAC/refrigeration service partners in Indonesia, Malaysia, Thailand, Singapore, Philippines. (24)

---

### 12. Controlant (Reykjavik, Iceland / global — private)

**What it does:** Real-time IoT cold chain monitoring platform for pharmaceutical supply chains; Saga Card introduced 2024 for unit-level pharma tracking; calibrated sensors; real-time cloud monitoring with command center managed services; Nippon Express strategic partnership (June 2024). (25)

**Primary user:** Pharmaceutical manufacturers (Pfizer, Novartis-tier clients); vaccine distribution; biotech cold chain.

**Business model:** IoT hardware (reusable tracker + single-use Saga Card) + managed SaaS subscription; per-device active monitoring fee. (25)

**Notable financial:**
- FY2024 revenue: ~$174M per third-party estimate (unverified) (26)
- Funding: $35M closed Nov 2024 ($25M equity + $10M debt); prior $40M in Sep 2023; total raised ~$130M+ (25)
- Pfizer: major customer (COVID-19 vaccine global distribution) (25)
- Partnership with Nippon Express Holdings (Jun 2024): expands reach into Japan and APAC logistics network (25)

**Pros:**
- Pharmaceutical-grade calibration and chain-of-custody logging; real-time cloud monitoring with staffed command center
- Saga Card 2024 enables unit-level serialization — addresses FDA DSCSA track-and-trace requirements
- Nippon Express partnership opens direct APAC distribution channel (25)

**Cons:**
- Pharma-only focus; not applicable to general cargo
- Revenue concentration risk (large pharma customer dependency)
- High-cost managed service model; not self-serve

**SEA presence:** Limited — Nippon Express partnership provides indirect channel into APAC (Japan-first, then SEA). No direct SEA office confirmed. (25)

---

### 13. Roambee (Santa Clara, CA, USA — private)

**What it does:** Unified cargo visibility platform combining IoT sensor-enabled tracking (GPS, temperature, humidity, shock, light) with non-IoT data aggregation; 5G smart label launched May 2024; 50+ of its 300+ customers are in the global Top 100 in pharma, food, electronics, chemicals, automotive. (27)

**Primary user:** Global enterprise shippers across pharma, food, electronics, chemicals, automotive, packaging.

**Business model:** Monthly platform + managed services fee (all-inclusive per agreed shipment volume + mix of sensor vs. non-sensor shipments); Roambee manages analytics dashboards on behalf of customer. (27)

**Notable financial:**
- Total raised: ~$23.7M across 6 rounds; second RevTek Capital financing closed Feb 2024 (27)
- 300+ customers; 50+ from global Top 100 companies (27)
- 10 global offices (locations not fully disclosed) (27)
- Introduced first true 5G GPS smart label (peel-and-ship, 4"×6") in May 2024 — integrates GPS, 5G, and NIST-calibrated sensors for temperature, humidity, shock, and light (27)

**Pros:**
- Unified platform handles both IoT-enabled and non-IoT shipments in a single view — reduces gap between sensor-equipped and software-only tracking
- Smart label form factor enables near-disposable economics with real-time capability
- Managed analytics model reduces customer IT burden

**Cons:**
- Small total funding relative to competitors; limited capital for global expansion
- 5G smart label requires mature 5G cellular network — limited use in SEA markets with 4G/3G majority coverage
- Limited public data on SEA customer count or office presence

**SEA presence:** [ASSUMED-5]: Roambee's 10 global offices likely include at least one APAC hub (India confirmed via ABI Research coverage); direct SEA customer presence through global enterprise deployments but no confirmed SEA office — to validate: ask Roambee APAC team or check LinkedIn office listings. (27)

---

### 14. ORBCOMM (Rochelle Park, NJ, USA — private, formerly NASDAQ: ORBC)

**What it does:** Industrial IoT hardware and software for reefer container monitoring, dry container tracking, and asset management; OGx next-generation satellite IoT service launched 2024; 600,000+ reefer containers under management since 2007; 1M+ dry container devices shipped in 2024. (28)

**Primary user:** Shipping lines (reefer and dry container operators), container leasing companies, logistics operators managing refrigerated assets.

**Business model:** Hardware sale (CT 1010, CT 3600 devices) + per-device monthly SaaS subscription for platform access and data; satellite connectivity fee for OGx tier. (28)

**Notable financial:**
- ORBCOMM taken private by GI Partners in 2021 for ~$1.1B; not publicly reporting revenue post-acquisition (28)
- 1M+ assets managed globally; 600,000 reefer container devices in field since 2007 (28)
- OGx satellite IoT (Oct 2024): SC 1000 solar-powered tracker for off-grid/remote tracking (28)
- CT 1010 dry container device (Oct 2024): door-open alerts, fire alerts, container damage monitoring (28)

**Pros:**
- Deepest reefer container installed base globally; shipping line-preferred for compliant reefer monitoring
- OGx satellite IoT enables coverage in remote ocean and inland areas without cellular coverage
- Established relationships with top-10 global shipping lines (container leasing companies)

**Cons:**
- Hardware-centric model; OGx subscription economics less competitive versus newer cellular-IoT entrants
- Private post-buyout; limited financial transparency
- Legacy platform architecture; newer competitors (Tive, Roambee) offer more advanced multi-sensor capabilities

**SEA presence:** Yes — via global shipping line customers (reefer and dry container fleets transiting SEA ports); direct office presence unclear post-privatization; Ecoinsoft in Cambodia is a confirmed OGx customer. (28)

---

### 15. Globe Tracker (Copenhagen, Denmark — private)

**What it does:** IoT asset tracking and monitoring for shipping containers (reefer, dry, tank); per-asset model at $0.99/day all-in (hardware + connectivity + platform); targets ocean carriers, container lessors, and shippers of high-value cargo. (29)

**Primary user:** Ocean carriers, container lessors, high-value cargo shippers (pharmaceutical, electronics).

**Business model:** Per-day per-asset subscription (hardware amortized into subscription); all-inclusive at $0.99/asset/day. (29)

**Notable financial:**
- Private; limited financial disclosure
- Engaged with 5 of top-10 global ocean carriers and 2 of top-5 freight forwarders (company-claimed) (29)
- Customer: North Sea Container Line (largest integrated shipping + logistics company in Northern Europe) (29)

**Pros:**
- Per-day pricing model eliminates capital expenditure barrier; predictable OpEx
- Engaged with top global carriers suggests credibility at enterprise scale
- Covers reefer, dry, and tank containers; broad asset applicability

**Cons:**
- Small company; limited disclosed funding and financial scale
- $0.99/day model requires massive volume to be commercially viable for the vendor
- SEA presence unconfirmed; primarily European customer base

**SEA presence:** [ASSUMED-6]: Globe Tracker reaches SEA via ocean carrier customers' global container fleets but has no direct SEA office — to validate: check Globe Tracker's Asia representative listing or ask via carrier customer contacts. (29)

---

### 16. Logmore (Helsinki, Finland — private)

**What it does:** QR-code-activated cold chain data logger for single-use tracking; temperature, humidity, and shock; smartphone-readable QR code eliminates need for separate reader hardware; designed for cost-sensitive cold chain segments (food, pharma, life sciences). (30)

**Primary user:** Pharmaceutical shippers (GDP compliance), food exporters, clinical trial logistics; primarily European and Nordic markets.

**Business model:** Per-logger hardware sale + optional SaaS dashboard subscription; single-use disposable economics. (30)

**Notable financial:**
- Private; no disclosed revenue or funding figures found in research
- [ASSUMED-7]: Logmore revenue and customer count remain undisclosed — to validate: contact Logmore directly for commercial terms.

**Pros:**
- Ultra-low cost per shipment (QR-code reader: any smartphone; no proprietary gateway needed)
- Sustainability advantage: smaller carbon footprint than real-time cellular trackers
- GDP-compliant chain-of-custody documentation built-in

**Cons:**
- Passive logger: data is not transmitted real-time; must be scanned at waypoints — not an RTTVP-compatible data source
- No real-time alerting; excursion discovered at scan point, not during transit
- Limited APAC presence

**SEA presence:** [ASSUMED-8]: No confirmed SEA commercial presence; devices available via Nordic/EU distributors who may ship globally — to validate: check Logmore website reseller network. (30)

---

### 17. Carrier-Embedded IoT — Hapag-Lloyd Live Position (Hamburg, Germany — public: HLAG.DE)

**What it does:** Carrier-native IoT visibility product, not a third-party vendor; Hapag-Lloyd fitted >2/3 of its entire dry container fleet with GPS IoT devices as of April 2024; provides door-to-door Live Position tracking with Live ETA (75% more accurate than static schedule predictions). WiseTech Global partnership announced Feb 2026 to distribute IoT data into CargoWise ecosystem. (31)

**Primary user:** Hapag-Lloyd customers (shippers, freight forwarders) receiving containers on Hapag-Lloyd services.

**Business model:** Visibility as a service feature bundled with Hapag-Lloyd container bookings; no separate charge. Data licensing to ecosystem partners (WiseTech/CargoWise) is an emerging revenue stream. (31)

**Notable financial:**
- Hapag-Lloyd fleet: 2M+ TEU capacity; >2/3 fitted with IoT as of April 2024 (31)
- WiseTech Global: ~$2.8B revenue (FY2025 AUD); CargoWise platform used by 15,000+ freight forwarders globally (31)

**Note on category:** Carrier-embedded IoT (Hapag-Lloyd, Maersk Smart Containers, ZIM Hoopo trackers) blurs the line between carrier service and cargo IoT vendor. Listed here as reference because it affects shipper adoption of third-party IoT: if the carrier already provides IoT visibility, the shipper may not deploy a separate sensor.

**SEA presence:** Yes — Hapag-Lloyd operates globally including all major SEA ports; Live Position available to any Hapag-Lloyd customer. (31)

---

## Market Sizing

### Global RTTVP Market

| Metric | Value | Confidence | Sources |
|---|---|---|---|
| Global RTTVP market size (2024) | [ASSUMED-7]: ~$1B (Gartner 2021 forward projection for 2024, via FreightWaves) — aggregator estimates of $3.2B–$4.2B (DataIntelo, MarketIntelo, Valuates) contradict the Gartner-attributed figure by 3–4× and cannot be substantiated; Berg Insight "Real-Time Transportation Visibility Platforms — 1st Edition" (July 2024) covers this market but figures are paywalled. To validate: purchase Berg Insight report (€300–€500) | Low — Gartner figure is 2021 projection, not measured outcome; aggregator figures methodology-undisclosed | (32, 33) |
| CAGR (2024–2033) | 17.8%–19.2% [aggregator figure — same caveat as above] | Low — commercial forecast; wide range reflects definitional variation | (32, 33) |
| Projected market size (2033) | $13.5B–$18.7B [aggregator figure — caveat above] | Low — long-horizon commercial forecast | (32, 33) |
| North America share of global market (2024) | ~38% | Medium — consistent across two aggregators | (32, 33) |
| Asia Pacific CAGR (2025–2033) | ~20.5% (fastest-growing region) | Low — commercial forecast | (32) |
| Gartner MQ Leaders (2024) | project44, FourKites, Shippeo | High — Gartner primary publication | (1) |
| Gartner MQ Challenger (2024) | Overhaul | High — Gartner primary publication | (1) |
| Gartner MQ Niche Players (2024) | IntelliTrans, (others not publicly confirmed) | High — IntelliTrans press release | (34) |

Note on RTTVP market sizing (revised after deep-research): The aggregator range $3.2B–$4.2B (DataIntelo, MarketIntelo, Valuates, OpenPR) cannot be attributed to a primary research firm and contradicts Gartner's 2021 forward projection of ~$1B for 2024 (cited by FreightWaves, April 2021) by 3–4×. The only specialist primary research firm publishing a dedicated RTTVP market report is Berg Insight ("Real-Time Transportation Visibility Platforms — 1st Edition," July 2024, author Rickard Andersson), whose market-size figures are gated behind a paid subscription (€300–€500). Treat the $3.2B–$4.2B aggregator figure as unverified; Gartner's $1B 2024-projection figure as the defensible — though now-aged — anchor pending Berg Insight purchase. Confidence: Low.

### Global Cold Chain Monitoring / Cargo IoT Market

| Metric | Value | Confidence | Sources |
|---|---|---|---|
| Global cold chain monitoring market (2024) | $7.03B–$7.63B | Medium — multiple commercial research firms; consistent range | (35, 36) |
| CAGR (2025–2033/2034) | 9.57%–13.2% | Low — commercial forecast | (35, 36) |
| Projected market size (2033) | $16.67B–$23.29B | Low — long-horizon commercial forecast | (35) |
| Reefer container remote tracking shipments (2023) | 765,000 units worldwide | Medium — Berg Insight primary research firm | (37) |
| Reefer container tracker CAGR (2023–2028) | 8.7% | Medium — Berg Insight | (37) |
| Reefer container trackers projected (2028) | ~1.2M units | Medium — Berg Insight | (37) |
| ORBCOMM reefer containers in field | 600,000+ (since 2007) | High — company disclosed | (28) |
| Carrier Global (Sensitech) cold chain market share | Largest single vendor (~16–26% combined) | Medium — MarketsandMarkets cited by multiple re-publishers | (35) |

### SEA-Specific Market Size

| Metric | Value | Confidence | Sources |
|---|---|---|---|
| ASEAN cold chain logistics market | [ASSUMED-8]: $8B–$20B (wide range reflects 35–55% divergence across secondary research sources — Research and Markets $8.34B-$12.70B 2023→2028; TechSci $8.61B 2023 7.82% CAGR; Verified Market Research $13.5B 2024; Mordor $19.76B 2026→$25.54B 2031). No primary corroboration found from ASEAN Secretariat, ADB, World Bank, GCCA Asia-Pacific report, Bain, McKinsey, or country statistical offices. Forecast CAGR: 7–9% through 2028–2031. To validate: GCCA member-access cold storage capacity report; bottom-up aggregation from Indonesia BPS, Thailand NESDC, Vietnam GSO | Low — secondary-only, no primary corroboration, wide divergence | (38) |
| Indonesia cold chain logistics market (2024) | ~$5.08B; 9.60% CAGR to 2034 | Low — commercial forecast; single source | (39) |
| Indonesia share of ASEAN cold chain | 21.65% of ASEAN total [Mordor-derived; not corroborated by ASEAN Secretariat or ADB] | Low — single secondary source, no primary corroboration | (38) |
| SEA-specific RTTVP market size | Data gap — no country-level or SEA-specific RTTVP market size found in any source tier | — | — |
| SEA cargo IoT adoption rate | Data gap — no quantified SEA IoT-per-shipment adoption rate found | — | — |

**Data gap:** No SEA-specific RTTVP market size (distinct from cold chain logistics) found at any source tier. Field validation with regional logistics associations (Singapore Logistics Association, ASEAN e-Commerce Alliance) required.

---

## Coverage Map — Freight Journey Stages

The six freight journey stages from the run plan (pass-0-plan.md):

| Stage | Description | Covered by RTTVPs? | Covered by Cargo IoT? | Coverage quality |
|---|---|---|---|---|
| 1. Vendor procurement / pre-booking | Carrier vetting before engagement | No — RTTVP coverage begins post-booking | No | Not applicable |
| 2. Booking / dispatch / handoff | Load tendering, carrier assignment, first mile pickup | Partial — project44 and FourKites cover pickup ETA; subcontractor assignment may not register | Partial — sensor activation at pickup depends on who deploys | Weak for subcontracted first-leg |
| 3. In-transit (primary leg) | Primary carrier movement, line-haul | Strong — core RTTVP use case; ELD + telematics feed | Strong — sensor transmits continuously | Best coverage of all stages |
| 4. Intermodal / mode handoff | Container-to-truck drayage, rail interchange, port terminals | Partial — ocean/port event visibility depends on carrier EDI; drayage gap common | Partial — sensor continues transmitting but data context (who has custody?) lost | Significant gap |
| 5. Last mile / subcontractor delivery | Final-leg carrier (often unintegrated with RTTVP) | Weak — subcontracted last-mile carriers often not onboarded in RTTVP (confirmed by project44 own documentation: Coop Denmark "lacked end-to-end overview of carrier and subcontractor deliveries") (5) | Depends on sensor survival to delivery point | Critical gap |
| 6. Delivery confirmation / POD | Signed delivery, condition confirmation | Partial — ETA accuracy; POD confirmation varies by carrier | Yes — sensor can confirm delivery window condition | Partial |

---

## SEA Presence Summary

| Vendor | Category | SEA Office | SEA Customers (confirmed) | SEA Coverage notes |
|---|---|---|---|---|
| project44 | RTTVP | No (VP/GM for ANZ+SEA appointed) | Unknown | Carrier API coverage thin in SEA; operates via resellers |
| FourKites | RTTVP | No | Some APAC CPG accounts (global contracts) | 1.1M carrier network — SEA coverage unquantified |
| Shippeo | RTTVP | No | APAC OEMs (automotive, Yamaha) | APAC growing +53% YoY; no dedicated SEA office |
| Wakeo | RTTVP | No | No confirmed SEA accounts | Ocean freight API coverage includes SEA lanes |
| Transporeon/Sixfold | RTTVP | No | No | European road network only |
| Descartes MacroPoint | RTTVP | No | No | North America-centric |
| Overhaul | RTTVP/Security | No | Possible via global pharma/tech customers | No confirmed SEA commercial team |
| Blume Global | RTTVP/Intermodal | No | No | North American intermodal focus |
| GoComet | RTTVP | Yes (Singapore) | Philippines, Indonesia, Malaysia, India | Native SEA presence; strongest local option |
| Tive | Cargo IoT | No | Possible via global pharma customers | Hardware needs local cellular band certification |
| Sensitech/Carrier | Cargo IoT | Yes (via Carrier Global) | Yes — via Carrier's APAC HVAC/refrigeration network | Most accessible in SEA for cold chain hardware |
| Controlant | Cargo IoT | No (Nippon Express partnership) | Indirect via Nippon Express Japan/APAC | Indirect APAC access via partnership |
| Roambee | Cargo IoT | Likely India hub | Unknown | Smart label 5G penetration limited in SEA |
| ORBCOMM | Container IoT | Unknown post-privatization | Yes — via shipping line reefer fleet | Reefer monitoring via carrier-embedded hardware |
| Globe Tracker | Container IoT | No | Unknown | Via ocean carrier fleet customers |
| Logmore | Cold chain logger | No | Unknown | EU-Nordic focused; global shipping possible |
| Hapag-Lloyd Live Position | Carrier IoT | Yes — global ports including SEA | Yes — any Hapag-Lloyd customer | Most accessible carrier-embedded IoT in SEA |
| TransTRACK | Fleet telematics/visibility | Yes (Indonesia) | Yes — Indonesian fleet operators | Covered in Stage 3; referenced here for SEA context |

---

## Working Hypothesis Test Results

### WH2: RTTVP Visibility Breaks at Handoff to Subcarriers

**Finding: Evidenced — partially confirmed, nuanced**

Evidence supporting WH2:
1. project44's own customer documentation confirms the gap: Coop Denmark A/S cited that before implementing project44, they "lacked an end-to-end overview of our carrier and subcontractor deliveries." (5) This is the RTTVP vendor's own case study language, not a critic's claim.
2. project44's carrier onboarding SLA covers 90% of contracted TL carriers in North America and Europe — but explicitly excludes Asia and LATAM in the SLA scope. (5) Subcontracted carriers in SEA who are not on the 240,000-carrier network generate no visibility data.
3. FourKites: "data is only as good as the carriers' data, and some carriers are difficult to get onboarded, especially for cross-border shipments." (8) FourKites explicitly acknowledges this limitation.
4. Gartner's 2024 MQ critique notes that "RTTVP vendors' ability to support multiple modes and geographies varies significantly — not all RTTVP vendors are able to support complex transportation networks." (11)
5. The fundamental architecture of RTTVPs creates structural handoff blindness: visibility requires carrier participation (API key, telematics device, app ping). When a primary carrier sub-tenders to a local carrier — common in SEA where last-mile is handled by owner-operators or small local truckers — the subcontracted entity is almost never pre-integrated in the RTTVP's carrier network.

Evidence partially contradicting / qualifying WH2:
- project44 expanded its Network Management Center (NMC) to track carriers "regardless of connection type" — meaning even non-API-connected carriers can be monitored through alternative methods (driver app, EDI milestone events). This reduces but does not eliminate the gap. (5)
- Descartes MacroPoint was explicitly built as a third-party visibility tool and claims parity between owned-fleet and subcontracted-load visibility through broker data sharing. (17) This architecture reduces the handoff gap for broker-managed freight.

**Conclusion for WH2:** Largely confirmed. The RTTVP visibility gap at subcarrier handoff is structural in the current carrier-API architecture. Gap severity varies by platform (Descartes MacroPoint, which was built for 3PL/broker use, has better subcontracted-load coverage) and geography (North America/Europe have higher carrier onboarding rates than SEA). In SEA, where last-mile delivery is dominated by unintegrated micro-carriers, the gap is wider than in mature RTTVP markets.

---

### WH3: Cargo IoT Is Point-Deployed, Not Journey-Deployed

**Finding: Evidenced — confirmed with nuance**

Evidence supporting WH3:
1. Carrier-embedded IoT (Hapag-Lloyd Live Position, ZIM Hoopo, Maersk Smart Containers) covers the ocean leg only — it does not follow the shipment into road/rail legs because the IoT device is attached to the container, which remains at the port after unloading when road drayage takes over. The cargo inside travels in a different vehicle with no sensor. (31)
2. ORBCOMM's 600,000 reefer container devices and 1M dry container devices are carrier-operated and carrier-data: the shipping line sees the container; the shipper sees the container; neither sees the inland drayage leg. (28)
3. Tive's model requires the shipper or 3PL to actively place a sensor inside the shipment — this is per-leg-of-journey deployment, but in practice, supply chain managers commonly deploy trackers for the high-value leg (transoceanic) and not the inland last-mile. (22) [ASSUMED-9]: Tive tracker deployment rates by journey leg (transoceanic vs. inland) are not publicly disclosed — to validate: ask Tive how many customers deploy sensors for end-to-end vs. ocean-only legs.
4. Sensitech / cold chain logger model: traditional single-use data loggers (the dominant deployed technology in pharma cold chain) start at origin and travel to destination, but data is downloaded at destination only — not transmitted in real-time. This means even when sensors are physically present on the journey, the visibility signal is post-hoc, not real-time. (24)
5. Controlant's managed service model provides real-time monitoring for pharma shippers — but Controlant explicitly targets the pharma segment, which represents a small fraction of overall cargo volume. (25)
6. The economic barrier: at $50–150 per multi-sensor tracker (hardware), deploying a tracker on every shipment leg is cost-prohibitive for commodity freight. Industry practice is to deploy on high-value cargo (pharma, electronics, luxury) and skip commodity freight entirely.

Evidence partially contradicting WH3:
- Roambee's unified platform (sensor + non-sensor in same dashboard) and smart label model attempts to lower the economics barrier for per-shipment sensor coverage. At $5–25 per smart label, deployment on more legs becomes viable.
- Tive's Green Program and Solo Pro single-use tracker encourage per-shipment deployment at lower cost than reusable trackers.
- Hapag-Lloyd Live Position fitted >2/3 of 2M containers with carrier IoT — for all containers on Hapag-Lloyd services, this provides continuous ocean-transit tracking (but only for the ocean leg).

**Conclusion for WH3:** Confirmed, with the following precision: cargo IoT deployment is not merely point-deployed but is *value-segment-deployed* — sensor coverage concentrates on the highest-value leg (typically ocean transit or pharma cold chain) and the most expensive cargo segments. For standard general cargo in SEA, sensors are rarely deployed at all. For pharma/cold chain, sensors typically cover the primary controlled leg (ocean, air) but fall out of the data stream when the cargo enters the uncontrolled last-mile environment. Carrier-embedded IoT (Hapag-Lloyd, Maersk) covers the ocean leg without shipper action but creates a false sense of end-to-end coverage — the IoT device stays with the container at the port, not with the cargo in the delivery truck.

---

## Cross-References to Stages 1–3

**Stage 1 (Carrier vetting):** Project44 and FourKites integrate with carrier-vetting platforms (e.g., project44 integrates with Samsara, Stage 3 confirmed). Carrier vetting data from Highway and Carrier Assure is not fed back into RTTVP platforms in real-time, creating a separation between carrier risk qualification (pre-booking) and in-transit behavioral monitoring.

**Stage 2 (TMS/dispatch):** Transporeon's Sixfold visibility is native to the Transporeon TMS network — the only case where TMS booking and visibility share a carrier network without separate onboarding. All other Tier 1 RTTVPs require separate carrier onboarding distinct from TMS booking, creating a registration gap for newly-tendered subcontracted loads.

**Stage 3 (Telematics):** Samsara confirmed 350+ pre-built partner apps including project44 and FourKites (Stage 3). This means telematics-connected carriers on Samsara automatically feed location data to project44/FourKites without additional carrier onboarding friction — the 760+ ELD integrations cited by project44 include Samsara. However, SEA fleets on TransTRACK (Stage 3 — Indonesian-native telematics) are not confirmed as integrated with Tier 1 RTTVPs.

---

## Preliminary Pain Points (this stage)

- RTTVP carriers API integration requires per-carrier onboarding; subcontracted carriers who appear only at handoff moment are not pre-registered, creating real-time blindness exactly when risk peaks. (5)
- Carrier tracking data quality degrades by geography: North American ELD-compliant carriers transmit GPS every 1–15 minutes; SEA unregulated carriers may have no telematics at all, making the same RTTVP platform produce radically different ETA accuracy by region. (5, 8)
- Carrier-embedded IoT (Hapag-Lloyd, Maersk) creates port-to-port visibility but not door-to-door: IoT devices stay attached to containers at discharge ports while cargo moves inland in third-party trucks with no sensor. (31)
- Single-use pharma data loggers capture the temperature record but do not transmit in real time — excursion discovered at destination, not during transit, too late for shipper intervention. (24)
- Sensor economics make per-shipment IoT deployment unviable for commodity freight: at $50–150 per multi-sensor tracker, deploying on 10,000 shipments/month requires $500k–$1.5M/month in hardware capex, which only pharma/luxury segments can justify.
- RTTVP ETA prediction quality drops sharply at intermodal handoffs (container-to-truck drayage, port terminal dwell) where carrier API data is replaced by port EDI milestone events — which are infrequent and time-lagged. (11)
- Subcontracted last-mile carriers in SEA (owner-operators, informal fleets of 1–5 trucks) have no telematics and no RTTVP integration; this is structurally invisible to every RTTVP currently in production. (5, 8)
- Smart container IoT (Hapag-Lloyd, ZIM) creates data that belongs to the carrier, not the shipper — shippers access it as a portal view but cannot pull the raw data feed into their own supply chain systems without API agreements not yet universally offered.
- Sensor data from different legs (ocean carrier IoT + shipper-deployed IoT + RTTVP) lives in separate platforms with no single pane of glass — the shipper must reconcile three data sources manually for a standard door-to-door shipment.
- Cold chain excursion liability is ambiguous when multiple carriers handle the shipment: the sensor records the excursion but determining which carrier had custody when the excursion occurred requires manual log reconciliation, delaying claims and disputes.
- Cargo IoT in SEA faces cellular network fragmentation: 5G-dependent trackers (Tive Solo 5G, Roambee smart label) require consistent 5G coverage that does not yet exist in Indonesian outer islands, Philippine provinces, or Myanmar, limiting tracker utility to urban/port hubs. [ASSUMED-10]: 5G coverage in rural SEA freight corridors is <20% as of 2025 — to validate: check GSMA Intelligence coverage data for Indonesia, Philippines, Vietnam. (38)
- RTTVP pricing models (per active shipment, $500k–$5M ARR enterprise contracts) exclude mid-market SEA shippers with 50–500 shipments/month who cannot achieve the volume thresholds for enterprise pricing — creating an underserved mid-market gap that GoComet partially addresses. (21, 2)
- Gartner's 2024 critique flagged FourKites for slowed revenue growth and declined customer service scores, and project44 for unprofitability — signaling that the RTTVP category has not yet demonstrated sustainable unit economics at scale. (11)
- Tracker return logistics in single-use programs (Tive Green Program) add reverse-logistics cost and carbon emissions in markets without established device-return infrastructure — particularly acute in SEA where last-mile delivery is informal. (22)

---

## Sources for this stage

(1) https://www.project44.com/press-releases/project44-named-a-leader-in-the-2024-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms-for-fourth-consecutive-year/
(2) https://www.project44.com/press-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue/
(3) https://getlatka.com/companies/project44
(4) https://www.generationim.com/our-thinking/news/project44-raises-80-million-valuing-company-at-27-billion-up-12-from-january-despite-widespread-downturn-in-b2b-saas-valuations/
(5) https://www.project44.com/press-releases/project44-introduces-first-ever-carrier-onboarding-sla-to-accelerate-visibility-results-for-shippers/
(6) https://www.freightwaves.com/news/project44-achieves-cash-flow-breakeven-40-arr-growth-in-q3-2025
(7) https://www.prnewswire.com/news-releases/project44-announces-expansion-into-australia-new-zealand-302242525.html
(8) https://www.fourkites.com/carrier-faq/
(9) https://getlatka.com/companies/fourkites-inc
(10) https://www.fourkites.com/press/fourkites-raises-100m-for-supply-chain-visibility/
(11) https://www.freightwaves.com/news/freighttech-friday-gartner-critiques-real-time-visibility-market-players
(12) https://www.shippeo.com/press-releases/shippeo-raises-30m-strategic-round-led-by-woven-capital-to-accelerate-us-and-apac-expansion
(13) https://getlatka.com/companies/shippeo
(14) https://tech.eu/2023/12/04/wakeo-raises-18m-for-supply-chain-visibility-and-sustainability/
(15) https://www.supplychainit.com/transporeon-and-sixfold-join-forces-to-build-the-most-powerful-real-time-visibility-network-in-the-world/
(16) https://www.railwayage.com/intermodal/wisetech-global-acquires-blume-global/
(17) https://www.descartes.com/resources/news/new-descartes-macropoint-capabilities-help-combat-fraud-transportation-and-logistics
(18) https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html
(19) https://www.prnewswire.com/news-releases/a-new-era-of-supply-chain-transparency-begins-overhaul-acquires-freightverify-302533020.html
(20) https://www.blumeglobal.com/newsroom/blume-global-now-runs-logistics-operating-platform-natively-google-cloud/
(21) https://www.prnewswire.com/in/news-releases/gocomet-raises-7-million-series-a-funding-872253680.html
(22) https://www.globenewswire.com/news-release/2025/01/23/3014338/0/en/Tive-Secures-40-Million-in-Series-C-Funding-Led-by-WiL-Sageview-Capital.html
(23) https://www.globenewswire.com/news-release/2024/07/30/2920922/0/en/Tive-Celebrates-60-Year-over-Year-Revenue-Growth.html
(24) https://www.marketsandmarkets.com/ResearchInsight/cold-chain-monitoring-market.asp
(25) https://www.controlant.com/insights/controlant-closes-a-usd35-million-funding-round-to-advance-market-expansion
(26) https://getlatka.com/companies/controlant
(27) https://www.prnewswire.com/news-releases/roambee-raises-15-2m-to-help-shippers-monitor-and-automate-their-supply-chain-300993924.html
(28) https://blog.orbcomm.com/driving-iot-innovation-orbcomms-highlights-of-2024/
(29) https://www.freightwaves.com/news/globe-tracker-launches-cargo-tracking-monitoring-equipment
(30) https://www.logmore.com/post/cold-chain-monitoring
(31) https://www.hapag-lloyd.com/en/company/press/releases/2024/04/hapag-lloyd-launches-first-dry-container-tracking-product--live-.html
(32) Gartner 2021 projection of RTTVP market growing from ~$300M (2020) to ~$1B (2024), cited by FreightWaves: https://www.freightwaves.com/news/gartner-publishes-first-magic-quadrant-for-real-time-transportation-visibility (aggregator figures retained for cross-reference: https://www.openpr.com/news/3761839/real-time-transportation-visibility-platform-market-size — flagged as methodology-undisclosed)
(33) Berg Insight "Real-Time Transportation Visibility Platforms — 1st Edition" (July 2024), Rickard Andersson — market-size figures paywalled, report listing: https://www.berginsight.com/real-time-transportation-visibility-platforms (aggregator cross-reference retained: https://reports.valuates.com/market-reports/QYRE-Auto-34I14270/global-real-time-transportation-visibility-platform — flagged as methodology-undisclosed)
(34) https://www.intellitrans.com/2024/04/01/intellitrans-placed-in-2024-magic-quadrant-for-real-time-transportation-visibility-platforms/
(35) https://straitsresearch.com/report/cold-chain-monitoring-market
(36) https://www.polarismarketresearch.com/industry-analysis/cold-chain-monitoring-market
(37) https://www.berginsight.com/the-cold-chain-tracking-and-monitoring-market/
(38) ASEAN cold chain logistics — no primary corroboration; secondary sources diverge 35–55%: Mordor https://www.mordorintelligence.com/industry-reports/asean-cold-chain-logistics-market ; Research and Markets https://www.researchandmarkets.com/reports/5825876/asean-cold-chain-logistics-market ; TechSci Research (ASEAN cold chain) ; GCCA Asia Pacific 2025 trends (qualitative, not dollar-sized): https://www.gcca.org/magazine-article/asia-pacific-cold-chain-market-trends-2025/
(39) https://www.researchandmarkets.com/reports/5912628/indonesia-cold-chain-logistics-market-report
(40) https://macropoint.com/network/
(41) https://www.over-haul.com/overhaul-acquires-freightverify/
(42) https://www.shippeo.com/press-releases/shippeo-named-a-leader-in-the-2024-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms
(43) https://www.controlant.com/insights/disrupting-the-pharma-supply-chain-with-iot
(44) https://www.freightwaves.com/news/shippeo-raises-40m-to-further-supply-chain-visibility-platform-expansion
(45) https://www.gcca.org/magazine-article/asia-pacific-cold-chain-market-trends-2025/

---

## Assumptions to Validate

[ASSUMED-1]: FourKites remains an independent company as of May 2026; no acquisition by Lineage Logistics confirmed.
- to validate: Check FourKites press releases at fourkites.com/press and Lineage Logistics investor filings at onelineage.com/investors for any M&A announcements.

[ASSUMED-2]: Wakeo has indirect SEA ocean freight coverage via ocean carrier API integrations but no direct SEA commercial presence.
- to validate: Check Wakeo's reseller/partnership page at wakeo.co and LinkedIn for APAC hires or partner announcements.

[ASSUMED-3]: Overhaul has some APAC pharma/tech deployments given its Fortune 100 customer base, but no confirmed direct SEA commercial team.
- to validate: Ask Overhaul sales team (over-haul.com/contact) about APAC accounts.

[ASSUMED-4]: Tive trackers reach SEA via pharma/CPG customers' global logistics partners without a dedicated local support entity.
- to validate: Ask Tive APAC representative (tive.com/contact) about SEA distribution model and cellular band certifications for Indonesia and Philippines.

[ASSUMED-5]: Roambee operates at least one APAC hub (India confirmed in industry coverage); direct SEA customer presence via global enterprise deployments but no confirmed SEA-specific office.
- to validate: Check Roambee contact page (roambee.com/contact) for APAC office locations; ask about Singapore or Indonesia presence.

[ASSUMED-6]: Globe Tracker reaches SEA via ocean carrier customers' global container fleets but has no direct SEA office.
- to validate: Request Globe Tracker APAC representative contact via globetracker.com.

[ASSUMED-7]: Logmore revenue and customer count are undisclosed; company is pre-revenue-disclosure stage.
- to validate: Contact Logmore directly via logmore.com or check Finnish Companies Registry (PRH) for annual reports.

[ASSUMED-8]: Logmore devices are available globally via EU/Nordic distributors but Logmore has no confirmed SEA commercial presence.
- to validate: Check Logmore partner/distributor page for APAC entries.

[ASSUMED-9]: Tive tracker deployment rates by journey leg (transoceanic vs. inland) are not publicly disclosed.
- to validate: Ask Tive product team what proportion of their 60%+ revenue growth came from full end-to-end deployments vs. ocean-only deployments.

[ASSUMED-10]: 5G coverage in rural SEA freight corridors is <20% as of 2025, limiting real-time cellular IoT tracker utility outside of urban/port zones.
- to validate: Check GSMA Intelligence 2025 coverage data for Indonesia (outer islands), Philippines (provincial Mindanao/Visayas), Vietnam (northern highlands); cross-reference with Ericsson Mobility Report APAC chapter.

---

# STAGE 5

# Stage 5: Security, Escort & Physical Protection — Value Chain

*Run ID: 2026-05-14-0107 | Generated: 2026-05-14*

---

## Stage Definition and Boundaries

Stage 5 covers the physical-security and security-services layer that sits alongside the in-transit journey — the countermeasures deployed to detect, deter, prevent, or respond to cargo theft, vehicle hijacking, and physical threats to freight assets. It is distinct from Stage 4 (in-transit visibility and cargo IoT) in that Stage 4 provides situational awareness, while Stage 5 adds active intervention capability: armed or unarmed escort, secure-parking networks, security-operations centers that coordinate law enforcement response, theft-recovery networks, and cargo-security professional services that help actors design and assess their security posture.

Stage 5 adjoins Stage 4 in practice because the best cargo-security platforms combine sensors (IoT/GPS) with security-response capability — Overhaul is the clearest example. However, the unit of analysis here is the security-service or physical-protection dimension, not the telematics platform (already covered in Stage 4).

Stage 5 adjoins Stage 6 (insurance and claims) in that cargo insurance underwriting and premium calculation are increasingly contingent on what security measures a shipper or carrier has deployed; security certifications (TAPA FSR/TSR/PSR) directly affect insurability and premium. The claims outcome is a downstream consequence of Stage 5 effectiveness.

**What counts as Stage 5:**
- Cargo-security GRC platforms and threat-intelligence services (BSI Supply Chain Security / SCREEN, TT Club loss-prevention advisory, Verisk CargoNet as a theft-alert and recovery-coordination network)
- Secure-parking networks (TruckParkingClub, SecurSpace, Bosch Secure Truck Parking, TAPA PSR-certified locations)
- Armed and unarmed escort services — global players in LATAM (Brink's, Prosegur, G4S / Allied Universal, GardaWorld) and corridor-specialists (Solutions Group International / SGI, Overhaul SensiGuard's Emergency Response Team in LATAM, LoJack Mexico SVR)
- In-cab security technology as a dedicated physical-security play distinct from fleet telematics — engine immobilizers, panic buttons, door sensors deployed specifically for anti-theft (Motive Mexico security suite, Frotcom remote immobilization, Mastergard, LoJack SVR)
- Theft-recovery and incident-response coordination services (Verisk CargoNet 24/7 ops center + law enforcement alerts, Overhaul Global Security Operations Center / GSOC, SensiGuard Emergency Response Team)
- Security consulting and standards bodies that set the commercial architecture of Stage 5 (TAPA Americas/EMEA/APAC, ASIS International, BSI consulting)

**What Stage 5 does NOT cover (adjacent but excluded):**
- Fleet dashcams and driver-safety coaching (Stage 3)
- Pure GPS/IoT cargo sensors used for temperature or shock monitoring without security-response capability (Stage 4)
- Carrier-onboarding fraud vetting at the pre-dispatch stage (Stage 2)
- Insurance claims management and financial settlement after an incident (Stage 6)
- Maritime piracy / port-side security (out of scope per input file)

---

## Sub-Category Taxonomy

| Sub-category | Description | Primary user | Representative vendors |
|---|---|---|---|
| **A. Cargo-security GRC platforms & threat intelligence** | Software platforms providing supply chain risk intelligence: stolen-cargo databases, theft-alert dissemination, route-risk scoring, carrier/partner vetting for security posture | Shippers, 3PLs, insurers | Verisk CargoNet, BSI Connect Screen, TT Club loss prevention | 
| **B. Security consulting & standards advisory** | Professional services: security audits, TAPA certification support, cargo-theft mitigation strategy, training, policy design | Large shippers, 3PLs, logistics operators | BSI Supply Chain Consulting, TT Club advisory, ASIS International, Kroll supply chain risk |
| **C. Security-operations centers (SOC/GSOC) & incident response** | 24/7 human-staffed monitoring centers that coordinate response between shipper, carrier, law enforcement on active theft or emergency | High-value cargo shippers (pharma, electronics, automotive) | Overhaul GSOC, SensiGuard Emergency Response Team (now Overhaul), SGI Strategic Operations Center |
| **D. Secure-parking networks** | Physical networks of vetted, security-compliant truck-parking locations bookable by carriers; reduce "at rest" theft risk | Carriers, 3PLs, shippers specifying secure stops | TruckParkingClub, SecurSpace, Bosch Secure Truck Parking (Europe), TAPA PSR-certified yards |
| **E. Armed and unarmed escort services — high-risk corridors** | Physical convoy escort, armored-vehicle escort, or guard riding along freight for highest-risk lanes (LATAM hijacking corridors, Southeast Asia) | Shippers of high-value or humanitarian cargo in LATAM, MENA, SEA | Brink's Global Services, Prosegur, G4S / Allied Universal, GardaWorld, SGI, Titan Force (Malaysia) |
| **F. In-cab security tech — anti-theft hardware** | Engine immobilizers, panic buttons, door-open sensors, smart locks deployed specifically to prevent or interrupt an active theft; distinct from fleet telematics | Carriers (especially in Mexico/Brazil) | Motive Mexico security suite, Frotcom, LoJack / Solera SVR, Mastergard, ContGuard |
| **G. Theft recovery coordination** | Stolen-asset recovery networks integrating law enforcement, databases of stolen cargo descriptors, and active pursuit coordination | Shippers, insurers, 3PLs | Verisk CargoNet recovery ops, LoJack Mexico SVR + law enforcement, Overhaul SensiGuard ERT |

---

## Vendor Profiles by Sub-category

---

### Sub-category A: Cargo-Security GRC Platforms & Threat Intelligence

---

#### A1. Verisk CargoNet (Jersey City, NJ, USA — subsidiary of Verisk Analytics, VRSK)

**What it does:** The cargo theft prevention and recovery network for North America. Maintains a database of theft incident data from law enforcement, carriers, insurers, manufacturers, and retailers with 144 data fields per incident. Provides theft-alert dissemination to members within hours of a reported incident; connects victim companies with law enforcement at local, state, regional, and national levels. Products include TheftAlert (real-time dissemination of actionable theft details), RouteSearch (two-year theft-map visualization by custom route), RouteScore (ML-based risk score 0–100 by commodity, origin/destination, day, truck stop), and AlertSEARCH (carrier vetting by suspect name, phone, email). (1)

**Primary user:** Carriers (asset-based), freight brokers, shippers (manufacturers, retailers, pharma), cargo insurers, law enforcement (free). (1)

**Business model:** Membership subscription (annual); pricing not publicly disclosed. RouteScore available as premium add-on. Law enforcement access free of charge. (1)

**2024–2025 headline data:**
- 2024: 3,625 cargo theft incidents across US/Canada (27% increase vs. 2023); estimated losses $454.9M; average theft value $202,364 (1, 2)
- 2025: 3,594 supply chain crime events (roughly flat on volume); confirmed thefts up 18% to 2,646; estimated losses surged to ~$725M (60% jump); average theft value $273,990 (+36%) as organized crime shifted to higher-value targets (3)
- Strategic theft (fictitious pickups, identity theft, AI-assisted fraud) now 18% of all US incidents per BSI/TT Club (4)

**Pros:**
- Only dedicated national cargo-theft intelligence network integrated with US/Canadian law enforcement
- RouteScore ML model provides quantitative pre-shipment risk assessment — most granular in market for North America
- AlertSEARCH enables carrier-fraud vetting (cross-reference suspects by phone/email) — rare capability

**Cons:**
- Coverage confined to US and Canada; no LATAM, EMEA, or APAC intelligence network
- Recovery rates for stolen cargo industry-wide remain low (ATRI: 74% of stolen goods disappear permanently); CargoNet's network does improve outcomes but is not a guarantee (5)
- Membership pricing opaque; small carriers often don't subscribe due to cost

**SEA presence:** None. North America only. No confirmed operations, resellers, or data partnerships in SEA. (1)

---

#### A2. BSI Supply Chain Security / BSI Connect Screen (London, UK — part of BSI Group, private)

**What it does:** BSI's supply chain security services combine (i) Connect Screen, a web-based platform accessing "the largest proprietary global supply chain risk intelligence database" with 20+ risk ratings across 200+ countries covering security, compliance, CSR, and business continuity; (ii) cargo-theft consulting and freight security advisory; and (iii) co-authoring the annual BSI/TT Club Cargo Theft Report — the primary global theft-trend publication for the logistics industry. DHS adopted BSI's supply chain solutions for government procurement. (6, 7)

**Primary user:** Large shippers, importers, government agencies, manufacturers seeking supplier risk monitoring and supply chain security intelligence. (6)

**Business model:** Platform subscription (Connect Screen) + consulting day-rate for advisory engagements. BSI Group 2024 total revenue GBP 757.4M (+4%); supply chain intelligence programmes "delivered strong growth" per annual report; consulting segment declined 11% due to "challenging advisory markets." Specific supply chain security revenue not disclosed separately. (8)

**SCREEN intelligence product:** Covers 200+ countries; used by security, continuity, and CSR leaders. Primary use case is supplier risk assessment, not real-time cargo tracking — more of a GRC layer than an incident-response tool. (6)

**Pros:**
- BSI/TT Club annual Cargo Theft Report is the most-cited public global dataset on cargo crime trends; brand positions BSI as the authoritative intelligence source
- Connect Screen covers 200+ countries — the broadest country coverage of any listed platform here; relevant for shippers with global supply chains including SEA
- DHS government client base signals deep vetting of the platform's data quality

**Cons:**
- Connect Screen is a risk-intelligence database, not an active theft-alert or recovery-coordination tool; does not replace CargoNet for operational incident response
- Consulting segment revenue under pressure — indicates competitive market for cargo security advisory
- Limited evidence of SEA-specific cargo-theft intelligence depth vs. broad country risk ratings

**SEA presence:** BSI operates in the region (Singapore office, regional clients) and Connect Screen covers SEA countries in its intelligence database. However, the cargo-theft advisory consulting focused on SEA road freight specifically is thin in publicly documented output. [ASSUMED-1]: BSI has Singapore-based consultants who support SEA clients on supply chain security but do not maintain a dedicated SEA cargo-theft intelligence desk comparable to its North America or Europe operations — to validate: confirm with BSI Singapore office whether SEA road freight security advisory is a practice area or incidental to broader supply chain risk work. (6, 8)

---

#### A3. TT Club — Loss Prevention & Supply Chain Security Advisory (London, UK — mutual insurer, TT Mutual Management Ltd)

**What it does:** TT Club is the leading mutual insurer for the international transport and logistics industry (port operators, container lessors, freight forwarders, road carriers). Its loss prevention function is not a standalone commercial product but a member service: it publishes Supply Chain Security Bulletins, maintains an animated theft-scenario library, co-produces the annual cargo theft report with BSI, and provides individual member engagements (security audits, incident analysis, risk mitigation recommendations). In 2024, TT Club conducted 230+ member engagements across 30 countries. (9, 10)

**Primary user:** TT Club insurance members — international logistics operators, port/terminal operators, container lessors, freight forwarders. (9)

**Business model:** Mutual insurance model — loss prevention is bundled into membership rather than sold separately. 2024 gross earned premiums: $284.2M; net result $4.8M; member retention 93%. (10)

**Pros:**
- Annual cargo theft report (BSI/TT Club) is the most downloaded and cited public cargo-crime data source globally; gives TT Club outsized influence on industry security standards
- 230+ member engagements per year across 30 countries indicates operationally active loss prevention team, not just publication work
- Mutual model aligns insurer incentives with member loss reduction; no profit motive to understate risk

**Cons:**
- Loss prevention is a member benefit, not a scalable commercial product; non-members cannot purchase TT Club security advisory services
- Limited quantitative incident-response tools (no RouteScore equivalent, no real-time alert network)
- Focused on insured member base; small transporters not in the TT Club ecosystem do not access these services

**SEA presence:** TT Club has members throughout APAC and maintains loss prevention engagement with those members. No dedicated SEA cargo-theft security desk. SEA coverage is indirect through global membership engagement model. (9, 10)

---

### Sub-category B: Security Consulting & Standards Advisory

---

#### B1. TAPA — Transported Asset Protection Association (Americas / EMEA / APAC, non-profit industry body)

**What it does:** TAPA is the standards body for cargo-supply-chain security. Its three certified standards are:
- **FSR** (Facility Security Requirements) — for warehouses and logistics facilities
- **TSR** (Trucking Security Requirements) — for road transport operators; covers vehicle security, tracking, driver conduct, communication
- **PSR** (Parking Security Requirements) — for truck-parking and cargo-yard operators; specifies physical security requirements (fencing, CCTV, lighting, access control)

TAPA EMEA operates the TIS (TAPA Intelligence System), a cargo-crime database recording incidents globally. In 2022–2024, TIS recorded 157,421 cargo crimes across 129 countries. (11, 12)

**Primary user:** Shippers requiring certified supply chain partners (especially electronics, pharma, automotive), logistics operators seeking TAPA TSR to win enterprise shipper business, parking operators seeking PSR certification to list on TAPA's Secure Parking tool. (12)

**Business model:** Membership fees + certification audit fees (audits conducted by third-party audit bodies: DNV, SGS, DQS Global, Bureau Veritas). Standards certification is a commercial differentiator for certified operators. (11)

**TAPA APAC:** GSR (Guarding Security Requirements) is certifiable in APAC only — unique to region. TAPA APAC covers Singapore, Malaysia, Thailand, Indonesia, Japan, Australia, China, India, and others. Standards reviewed every 3 years. (13)

**TAPA EMEA PSR growth (2024):** Parking operators joining TAPA's PSR standard rose 150% year-on-year across 17 European countries, indicating rapid adoption. Added 1,637 new certified parking spaces in France, UK, Romania, Ireland, Spain, Germany, Czech Republic, Hungary May–July 2024. (14)

**Pros:**
- Only globally recognized standards framework for cargo-supply-chain security — FSR/TSR are de facto requirements for high-value shipper programs (Apple, Dell, Philips supply chains)
- TIS cargo-crime database is the only independently operated global cargo-crime intelligence system; supplements CargoNet (North America) and provides global coverage
- PSR standard specifically addresses the "at-rest" theft risk (41% of thefts occur during transit but parking is a primary attack vector)

**Cons:**
- Certification benefits primarily flow to operators already in high-value shipper ecosystems; small carriers in emerging markets often cannot afford or access certification
- TAPA APAC presence is thinner than EMEA — fewer certified facilities in SEA than in Europe for comparable cargo volumes
- No active incident-response capability; purely a standards and intelligence body

**SEA presence:** TAPA APAC chapter covers SEA countries. TAPA APAC's GSR standard is unique to the region. [ASSUMED-2]: The number of TAPA FSR/TSR/PSR certified facilities in Indonesia and Thailand is materially lower than in Singapore and Malaysia, which are the APAC hubs with most multinational-facing operations — to validate: request TAPA APAC certified-operator count by country. (13)

---

#### B2. ASIS International (Alexandria, VA, USA — non-profit, 34,000+ members globally)

**What it does:** The world's largest membership organization for security management professionals. Develops ANSI-accredited security standards including ANSI/ASIS ORM.1-2017 (Security and Resilience in Organizations and Their Supply Chains) — the standard underpinning enterprise supply chain security programs. Maintains a global network of Certified Protection Professionals (CPP) who execute cargo security consulting, risk assessments, and facility security plans. (15)

**Primary user:** Corporate security directors, risk managers, logistics security consultants, government agencies.

**Business model:** Membership fees, conference revenue, certification examination fees, standards sales.

**Pros:**
- CPP credential is the standard hiring benchmark for corporate cargo security roles at large 3PLs and shippers
- 34,000+ global members provide an informal professional network for intelligence sharing that supplements formal databases

**Cons:**
- ASIS is a professional association, not an active security-services vendor; its value is in standards and professional development, not incident response or technology
- Limited direct involvement in SEA cargo security market as a formal standards body

**SEA presence:** ASIS chapters in Singapore, Malaysia, Indonesia, Thailand. (15)

---

### Sub-category C: Security Operations Centers (SOC/GSOC) & Incident Response

---

#### C1. Overhaul — Security-Services & GSOC Dimension (Austin, TX, USA — private)

**What it does (security/risk dimension for Stage 5):** Overhaul operates a 24/7 Global Security Operations Center (GSOC) that provides active intervention for cargo theft events — not just monitoring. When a shipment deviation or threat is detected, Overhaul's GSOC connects directly to local law enforcement, coordinates recovery, and provides real-time support to the carrier driver. Reports $5B in cargo recovered (cumulative, company-disclosed). Claims 99.9% shipment protection rate and 98% disruption prevention rate. (16)

**Acquisition background (security-specific):** In February 2023, Overhaul acquired SensiGuard security services from Sensitech (a Carrier Global subsidiary), becoming the largest in-transit supply chain cargo security provider by headcount. SensiGuard operated for 20+ years as the premier high-value cargo monitoring and emergency-response service (pharma, electronics). The acquisition added 350+ employees including a dedicated Emergency Response Team (ERT), plus offices in Brazil, Mexico, and Czech Republic. Financing: $73M growth financing closed alongside the acquisition. (17)

**August 2025 acquisition:** Overhaul acquired FreightVerify (automotive-focused item-level visibility platform: 100M+ shipments tracked, 70,000 monthly active users, 6 of world's largest auto OEMs) — extends Overhaul's item-level visibility into security correlation. (18)

**Total funding:** Series C: $105M (led by Springcoast Partners, Edison Partners; Morgan Stanley Investment Management / 1GT participated); plus $55M prior round and the $73M SensiGuard financing. (19, 20)

**Primary user:** Pharmaceutical, electronics, automotive, AI hardware, food & beverage shippers with high-value cargo requiring active security monitoring + incident response. Named clients: Pfizer, Dell, Microsoft, Johnson & Johnson, Novo Nordisk, Schneider Electric. (16)

**Business model:** Platform subscription per shipment; security monitoring services layered on top; incident response bundled into enterprise contract. Pricing not publicly disclosed.

**Pros:**
- Only platform combining real-time cargo IoT visibility with an active security operations center staffed to coordinate law enforcement response — bridges Stage 4 and Stage 5
- SensiGuard acquisition gave Overhaul a proven 20-year track record in high-value cargo monitoring (pharma cold chain + electronics) plus LATAM and European office infrastructure
- $1.4T in cargo protected (company-disclosed); Fortune 100 customer base provides reference-able enterprise validation

**Cons:**
- Revenue not publicly disclosed; valuation implied by $105M Series C is likely in the $500M–$1B range given typical Series C multiples, but this is not confirmed
- No confirmed SEA office or SEA-specific law enforcement integration; LATAM and Europe infrastructure vs. SEA gap is material
- High-value cargo focus (pharma, electronics) means pricing is calibrated for Fortune 100; SME shippers in SEA would likely find cost prohibitive

**SEA presence:** No confirmed SEA office. Operations in North America, LATAM (Brazil, Mexico), and Europe (Czech Republic). [ASSUMED-3]: Overhaul monitors shipments that transit through SEA for global pharma and electronics customers but does not have local law enforcement integration or physical presence in SEA — to validate: confirm with Overhaul whether any SEA customers exist and whether regional law enforcement coordination capability exists. (16, 17)

---

#### C2. Solutions Group International (SGI) (Riverside, CA, USA — private)

**What it does:** Armed and unarmed security escort services for high-value freight and pharmaceutical cargo in the US, Mexico, and Canada. All personnel are former law enforcement or military. Maintains an internal Strategic Operations Center (SOC) with watch officers providing 24/7 real-time tracking and support from SOC to field teams during transit. Operates escort teams for individual semi-trucks and convoys. (21)

**Primary user:** Pharmaceutical shippers, high-value electronics and luxury goods shippers in US-Mexico-Canada lanes.

**Business model:** Per-escort service contract (custom quotation); SOC monitoring included.

**Pros:**
- All personnel from law enforcement / military background — operational credibility in violent-threat corridors (Mexico)
- Internal SOC provides continuity of command during active escort — not dependent on third-party dispatch
- 40-hour mandatory training program with proprietary curriculum

**Cons:**
- US/Mexico/Canada only; no LATAM coverage south of Mexico, no EMEA or APAC capability
- Small private firm — no disclosed revenue or headcount beyond "multiple regional training centers"
- Escort services are visible security signal — can attract criminal intelligence about cargo value

**SEA presence:** None. (21)

---

### Sub-category D: Secure-Parking Networks

---

#### D1. TruckParkingClub (USA — private, CAT Scale-backed)

**What it does:** Online marketplace connecting truck drivers with bookable parking locations across the US. Drivers book hourly, daily, weekly, or monthly parking via web or mobile app. Property owners (trucking companies, repair shops, CDL schools, trailer lessors, truck stops) list excess capacity; TruckParkingClub takes a commission on bookings and manages onboarding and quality control. Security varies by location; not all locations are security-vetted. In 2024, partnered with GenLogs to combine cargo-crime intelligence with parking-location intelligence to alert drivers to high-risk parking areas. (22, 23)

**Network size:** 2,262+ locations as of July 2025 (doubled in six months); targeting 10,000 locations by end of 2026. CAT Scale (largest truck weighing network in North America) made strategic investment in 2025. (23)

**Primary user:** US long-haul truck drivers (OTR) needing secure or convenient parking; shippers/3PLs specifying parking requirements for high-value loads.

**Business model:** Commission on booking transactions; majority of each booking goes to property owner. (23)

**Pros:**
- First-mover at scale in the US on-demand truck parking marketplace; network effect as more drivers and property owners join
- GenLogs partnership begins to create a security layer — alerting drivers to theft-risk zones near parking locations (22)
- CAT Scale investment provides access to largest existing truck-stop network as distribution channel

**Cons:**
- Not a security-certification provider — locations are not required to meet TAPA PSR or equivalent; security quality is variable
- US only; no international operations
- Revenue not disclosed; commission-based model means revenue scales with bookings

**SEA presence:** None. US market only. (22, 23)

---

#### D2. SecurSpace (USA — private)

**What it does:** Online marketplace for on-demand secure truck parking and container/trailer storage. Nationwide US network of vetted yards; security requirements include perimeter fencing, controlled access, 24/7 surveillance, bright lighting, and in some cases on-site security personnel. Suppliers list space with features, photos, and rates; buyers submit booking requests; platform manages payments and documentation. (24)

**Primary user:** Trucking companies, container shippers, 3PLs requiring secured yard space beyond standard truck stops.

**Business model:** Marketplace commission model; buyers pay platform, platform remits to yard operators.

**Pros:**
- More security-focused than TruckParkingClub — requirements include physical security standards at listed yards
- Container and trailer storage capability extends coverage to drayage and intermodal operators

**Cons:**
- Security standards are self-reported by yard operators, not independently certified (no TAPA PSR equivalent)
- US only; no international presence
- Revenue and network size not publicly disclosed

**SEA presence:** None. (24)

---

#### D3. Bosch Secure Truck Parking (Germany / Europe — Bosch subsidiary)

**What it does:** App-based secure truck parking booking platform across Europe. Partner locations certified to TAPA PSR (Parking Security Requirements); security features include fully automated entrance control, 24-hour camera surveillance with AI-based video analytics (Bosch security cameras, intelligent detection), QR code check-in, and video license plate recognition. As of April 2025, 100+ secure locations across Europe. (25)

**Primary user:** European road freight carriers transporting high-value cargo who need TAPA-compliant parking stops.

**Business model:** Booking fee per parking event; parking operators pay to list and receive booking revenue.

**Pros:**
- TAPA PSR certification requirement makes this the highest-security commercially-bookable parking network in Europe
- AI video analytics from Bosch security portfolio — significantly above standard truck-stop surveillance quality
- Integrated with fleet TMS via API for route-based secure-stop planning

**Cons:**
- Europe only; expanding but no APAC presence
- 100+ locations as of 2025 — still thin relative to Europe's truck freight volumes and TAPA's stated need
- Bosch as corporate parent means innovation is paced by corporate R&D cycle, not startup agility

**SEA presence:** None. Europe only. (25)

---

### Sub-category E: Armed & Unarmed Escort Services — High-Risk Corridors

---

#### E1. Brink's (Richmond, VA, USA — NYSE: BCO, public)

**What it does:** Global provider of cash management, secure logistics, and valuable-cargo transport. Brink's Global Services (BGS) transports diamonds, jewelry, precious metals, currency, banknotes, high-tech devices, electronics, pharmaceuticals, and fine art across 100+ countries. In high-risk markets, BGS deploys armored vehicles, armed guards, and coordinated convoy escort. In LATAM, where cargo hijacking is endemic, Brink's operates armored transport and escort for commercial clients (example: in 2024, Brink's provided armed escorts for luxury retailer Farfetch shipments in Brazil and South Africa). (26)

**2024 financials (public, NYSE: BCO):**
- Total revenue: $5,012M (record; +3% vs. 2023; organic growth 12%)
- Latin America segment: $1,311M (+35% organic)
- North America segment: $1,650M
- Europe segment: $1,227M
- Rest of World segment: $824M
(APAC included in "Rest of World"; not broken out separately) (26)

**Note on scope:** Brink's primary revenue driver is cash-in-transit (CIT), not general cargo escort. The secure-logistics segment (BGS) including cargo escort is a meaningful but minority share of overall revenue. BGS annual revenue is estimated at approximately $300M globally per third-party data. (27)

**Primary user:** Central banks, commercial banks, luxury goods manufacturers, pharmaceutical companies, mining companies, government agencies.

**Business model:** Per-shipment or contract-based secure logistics services; armored vehicle fleet owned by Brink's; per-route pricing.

**Pros:**
- Largest global footprint of any secure logistics provider — 100+ countries, operational in every major LATAM market
- Vertically integrated: owns armored vehicles, employs armed guards, operates warehouses and vaults — does not subcontract core operations
- Latin America organic growth 35% reflects strong demand in the highest-theft-risk region globally

**Cons:**
- Core expertise is cash-in-transit, not general commercial cargo escort; cargo beyond cash/valuables/pharma is secondary
- APAC revenue is "Rest of World" segment — materially smaller relative to LATAM; SEA commercial cargo escort is not a core business line
- Armored vehicle logistics has high fixed costs; pricing inaccessible for standard shippers without high-value cargo

**SEA presence:** Brink's operates affiliate companies in Asia Pacific with a focus on international secure transport of precious metals, diamonds, currency. SEA operations documented in Philippines, Singapore, Thailand, Malaysia, Indonesia. Primary focus is cash management for banks and financial institutions, not commercial road cargo escort. [ASSUMED-4]: Brink's SEA operations are predominantly CIT (cash-in-transit) for banks, with general cargo escort available on a custom-quotation basis but not marketed as a standard product — to validate: confirm with Brink's APAC commercial team whether commercial cargo escort (non-cash) is offered as a standard service in Indonesia and Thailand. (26, 27)

---

#### E2. Prosegur (Madrid, Spain — listed: PSG.MC, public)

**What it does:** Global security services company with significant LATAM presence. Operates Prosegur Security (manned guarding, technological security) and Prosegur Cash (cash-in-transit, valuable logistics). Offers cargo escort for high-value shipments: "planning and deployment of manned escorts for high-value cargo almost anywhere in the world." In LATAM, Prosegur Cash operates international cash transport with claimed "200% growth in international cash transport service in H1 2025." Also provides bonded cargo security, container security, and supply chain mobile patrol for ports and logistics facilities. (28, 29)

**2024 regional revenue (group):** LATAM contributed 48.9% of total revenues (~€1.755B); Latin America 62% of Prosegur Cash sales in 2024. No SEA-specific revenue disclosed. (28)

**Primary user:** Banks, retailers, pharmaceutical manufacturers, luxury goods, major companies with high-value shipping requirements.

**Business model:** Service contracts; per-shipment escort fees; annual guarding contracts for logistics facilities.

**Pros:**
- Dominant LATAM market position in both cash logistics and cargo security; operates in Brazil, Argentina, Chile, Peru, Colombia where cargo theft rates are highest globally
- LATAM breadth means more corridor coverage than any other escort provider in the region
- Prosegur Cash's technology integration (GPS tracking, armored fleet management) is more advanced than typical guard companies

**Cons:**
- LATAM-focused; APAC including SEA operations are limited relative to LATAM scale
- Cargo escort for general commercial cargo (non-cash, non-luxury) may be custom-quoted rather than standard product in SEA

**SEA presence:** Prosegur operates in Indonesia (500+ employees, acquired PT Wiratanu Persada Tama in 2019), Singapore, and Philippines. SEA operations focus primarily on cash management rather than commercial cargo escort. Singapore-based entity listed at Safety & Security Asia 2025 trade show. [ASSUMED-5]: Prosegur's Indonesia and Singapore operations offer cargo security services on request but their primary SEA revenue comes from cash management for banks and retailers — to validate: confirm with Prosegur Indonesia commercial team the proportion of revenue from cargo escort vs. CIT. (28, 29)

---

#### E3. G4S / Allied Universal (London, UK + Conshohocken, PA, USA — G4S acquired by Allied Universal in 2021; Allied Universal is private)

**What it does:** G4S, now a subsidiary of Allied Universal, operates across 120+ countries with 700,000+ employees (combined Allied Universal, post-G4S acquisition, is an $18B company). In transport and logistics security, G4S offers: secure storage and logistics solutions, security risk management consulting, crisis management, fraud prevention, and manned guarding for logistics facilities. G4S Thailand: 23,000+ employees, 38+ years in market; offers manned security, close protection, risk consulting. G4S Indonesia: 11,800+ employees, nationwide workforce. (30, 31)

**Primary user:** Banks, government agencies, corporate campuses, industrial facilities, logistics operators.

**Business model:** Service contracts for manned guarding + per-engagement consulting.

**Pros:**
- Largest integrated security company globally by headcount and revenue (combined Allied Universal $18B)
- SEA presence in all four target geographies (Indonesia, Malaysia, Thailand, Singapore) via G4S subsidiary operations
- Risk management consulting capability (travel, event, crisis, fraud) complements manned guarding for high-value cargo clients

**Cons:**
- G4S's cargo escort for road freight in SEA is not prominently marketed; core revenue in SEA is manned guarding for facilities and cash-in-transit
- Integration with Allied Universal may be slow to produce new SEA cargo-security products
- No dedicated cargo-theft recovery network or SOC equivalent

**SEA presence (confirmed):** G4S operates in Singapore, Malaysia, Thailand (18,000+ employees), Indonesia (11,800+ employees). Physical presence in all four target geographies. Cargo escort capability is available but not a standard marketed product. (30, 31)

---

#### E4. GardaWorld (Montreal, Canada — private)

**What it does:** One of the world's largest privately held security companies. Operates in 45+ countries. Services include armed escort and secure logistics, risk intelligence (in-house risk analysis unit), executive protection, cash management. FY2024 revenue (year ending January 31, 2024): CAD $5,875–$5,925M (approximately $4.4B USD). (32)

**Primary user:** Mining companies, oil & gas, financial institutions, government contracts, high-value cargo shippers.

**Business model:** Service contracts; per-engagement pricing for escort and risk intelligence.

**Pros:**
- Substantial risk intelligence capability (in-house analysis unit) that provides pre-mission threat assessment for escort operations — differentiated from pure guard companies
- Strong in high-risk and conflict environments (MENA, Africa) where some SEA shipping lanes connect

**Cons:**
- Less APAC presence than G4S/Allied Universal or Brink's; primary markets are North America, EMEA, LATAM
- Revenue disclosure limited (private company)
- No confirmed SEA cargo escort capability specifically for road freight

**SEA presence:** Limited. [ASSUMED-6]: GardaWorld has limited direct SEA cargo security operations and would service SEA through subcontractors or partner security firms — to validate: check GardaWorld's "Where we operate" and confirm which SEA countries have direct operations vs. affiliate. (32)

---

#### E5. Titan Force Sdn. Bhd. (Kuala Lumpur, Malaysia — private)

**What it does:** Malaysian security company offering vehicle escort services nationwide. Services: armed/unarmed escort, real-time GPS tracking and communication, route risk assessment and planning, rapid response mobile patrol backup. Covers highways, industrial zones, and border areas across Malaysia. Target clients: logistics companies transporting high-value goods (jewelry, electronics, industrial materials), cash and document transport, corporate VIP escort. Licensed and certified security firm. (33)

**Primary user:** Malaysian logistics operators, banks, high-value cargo shippers.

**Business model:** Custom quotation per escort engagement; contract-based guarding.

**Pros:**
- Local Malaysian operator — regulatory compliance, cultural knowledge, Malay-language capability
- Nationwide coverage including East Malaysia (Sabah, Sarawak) which international firms often cannot service cost-effectively
- Vehicle escort integrated with armed guard capability for highest-risk consignments

**Cons:**
- Limited to Malaysia; no regional SEA coverage
- No disclosed revenue, headcount, or certification status (TAPA TSR, ISO 18788)
- No technology platform or SOC equivalent — manual dispatch model

**SEA presence:** Malaysia only. (33)

---

### Sub-category F: In-Cab Security Tech — Anti-Theft Hardware

---

#### F1. Motive — Mexico Security Suite (San Francisco, CA, USA — private, formerly KeepTruckin)

**What it does (Mexico/high-risk market dimension):** In May 2024, Motive launched its full fleet management platform in Mexico; in September 2024 it launched a dedicated anti-theft security suite built specifically for Mexico's violence-intensive cargo theft environment. Components include: (i) engine immobilizer (disables vehicle remotely when theft detected), (ii) door sensors (instant tamper alert), (iii) panic button (driver sends covert distress signal to dispatcher), (iv) Asset Gateway Mini (prevents theft of trailers/cargo via automatic vehicle-asset pairing and continuous live location), (v) live video feeds + 360° recording. (34, 35)

**Context:** Mexico's security risks are acute: a truck is stolen every 38 minutes; 86% of cargo theft incidents involve violence; 61,000+ insured vehicles were stolen in one year (Oct 2023 – Sep 2024) with a 41.4% recovery rate. (34)

**Primary user:** Mexican fleet operators, carriers transporting goods in high-risk corridors (CDMX, Puebla, Guanajuato, Estado de Mexico).

**Business model:** Hardware (device) + SaaS subscription per vehicle (Motive's standard model extended to Mexico); enterprise contracts for larger fleets.

**Pros:**
- First major North American fleet management platform (Motive has $2.3B+ funding) to build Mexico-specific security features into its standard product — signals this is a product, not a custom solution
- Panic button + immobilizer combination is specifically calibrated for violent cargo theft (where GPS alone is insufficient if the driver is being threatened)
- Integrates with Motive's existing ELD, video, and fleet management — single-vendor simplicity for fleets already on platform

**Cons:**
- Mexico (and LATAM) specific features; not yet confirmed as a standard product for SEA or other high-risk markets
- Hardware requires installation — upfront cost is a barrier for owner-operators
- No independent security operations center; dispatchers must act on alerts themselves (no SOC escalation path unless shipper has one)

**SEA presence:** Motive is not yet operating in SEA as of May 2026. Latin America expansion is the current priority market. [ASSUMED-7]: Motive's Mexico security suite features (panic button, immobilizer) would be technically deployable in SEA markets like Indonesia and Thailand which have analogous cargo theft risk profiles — to validate: confirm with Motive product team whether Mexico security features will be available internationally. (34, 35)

---

#### F2. Frotcom (Lisbon, Portugal — private, operates globally)

**What it does:** Fleet management SaaS with a dedicated remote vehicle immobilization feature. Allows fleet managers to remotely stop a stolen vehicle's engine via the platform. Also includes panic button alerts for driver emergencies. Operates across LATAM, Europe, and APAC. Specifically documents cargo theft in Latin America as a target market for its anti-theft features. (36)

**Primary user:** Fleet operators (3PLs, carriers) in medium to high theft-risk markets; documented LATAM user base.

**Business model:** SaaS subscription per vehicle + hardware device.

**Pros:**
- Remote immobilization integrated into fleet management platform — lowers barrier vs. buying standalone anti-theft hardware
- Documented LATAM and European deployment; more geographic reach than Motive's Mexico-only security features

**Cons:**
- Immobilization capability is table stakes for fleet management (many competitors offer it); differentiation is narrow
- No law enforcement integration or recovery network — alert without escalation path

**SEA presence:** Frotcom markets internationally; SEA deployment not confirmed but technically deployable. [ASSUMED-8]: Frotcom has customers in APAC but no confirmed SEA-specific cargo-theft-focused deployments — to validate: confirm with Frotcom APAC sales team. (36)

---

#### F3. LoJack / Solera (Westlake, TX, USA — Solera Inc., private; LoJack Mexico is operated by subsidiary)

**What it does:** LoJack is the original stolen vehicle recovery (SVR) system — RF-based (not GPS) in the US, GPS-based in Mexico. LoJack Mexico, operated by Solera as a subsidiary, provides stolen vehicle recovery services with direct law enforcement integration; claimed 90% vehicle recovery rate in Mexico for enrolled vehicles (as of Solera's January 2024 LoJack LE launch). LoJack Mexico + Overhaul partnership (announced 2020, still active): Overhaul integrates LoJack Mexico's SVR capability and law enforcement network into its supply chain security platform for Mexico-operating shippers. (37, 38)

**Primary user:** Automotive insurers, commercial fleet operators in Mexico and Latin America, supply chain operators using Overhaul's platform in Mexico.

**Business model:** Annual subscription per vehicle + recovery service fee; OEM/insurer channel deals.

**Pros:**
- Direct law enforcement integration for vehicle recovery in Mexico (unique institutional relationships hard to replicate quickly)
- 90% recovery rate for enrolled vehicles in Mexico — best documented recovery metric in the LATAM market
- Overhaul partnership extends LoJack's law enforcement network to supply chain cargo security use cases

**Cons:**
- SVR is a reactive capability (post-theft), not preventive
- Mexico and LATAM focus; limited SEA relevance
- LoJack brand is being consolidated into Solera's broader product portfolio — long-term product independence uncertain

**SEA presence:** None. LATAM (primarily Mexico and Brazil) focused. (37, 38)

---

### Sub-category G: Theft Recovery Coordination

*Note: Verisk CargoNet (A1) and Overhaul GSOC (C1) are also primary recovery coordination tools — cross-referenced here rather than duplicated.*

#### G1. NICB — National Insurance Crime Bureau (Des Plaines, IL, USA — non-profit, insurance industry body)

**What it does:** Non-profit organization established by US property-casualty insurance companies to address insurance fraud and vehicle theft. Maintains cargo theft data, provides law enforcement support, conducts cargo theft investigations. Partners with CargoNet and law enforcement agencies. Publishes quarterly cargo theft data as public reporting. (39)

**Primary user:** US insurance companies, law enforcement, shippers seeking theft trend data.

**Business model:** Funded by insurance company memberships (non-profit).

**Pros:**
- Insurance-funded; aligned incentives for accurate theft data and recovery support
- Provides public cargo theft statistics that supplement CargoNet's member-only data

**Cons:**
- US only; no international operations
- Advisory body, not an active real-time recovery network

**SEA presence:** None. (39)

---

## Journey-Stage Coverage Map

The six freight-journey stages from the input research plan:

| Stage | 1. Vendor Procurement | 2. Dispatch & Loading | 3. In-Transit (Road) | 4. Handoffs & Multi-Leg | 5. Arrival & Delivery | 6. Claims & Incident Response |
|---|---|---|---|---|---|---|
| **Verisk CargoNet** | Carrier vetting (AlertSEARCH) | Risk scoring (RouteScore) | Alert dissemination | Partial | Partial | Recovery coordination |
| **BSI Connect Screen** | Supplier risk assessment | Risk intelligence | Route country risk | Partner vetting | Delivery location risk | Intelligence input |
| **TT Club Loss Prevention** | Standards advisory | Training | Theft mitigation guidance | Partial | Partial | Claims (separate insurer function) |
| **Overhaul GSOC** | — | Pre-shipment compliance | 24/7 active monitoring + response | Handoff monitoring | Delivery confirmation | Recovery coordination, incident report |
| **SGI / Escort providers** | — | — | Armed escort | Convoy handoff | Delivery escort | — |
| **TruckParkingClub / SecurSpace** | — | — | Secure stop booking | — | — | — |
| **Motive Mexico security suite** | — | — | Immobilizer, panic button, live video | — | — | — |
| **LoJack Mexico SVR** | — | — | Recovery if stolen | — | — | Recovery |
| **TAPA FSR/TSR/PSR** | Partner certification criteria | Certified facilities | TSR compliance standard | Certified handoff points | — | Standards framework |
| **Brink's / Prosegur / G4S** | — | — | Armed escort, armored transport | Armored handoff | Secure delivery | — |

---

## Market Sizing

### Market Size Table

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global secure logistics market (CIT + cargo escort + valuables transport — broad definition) | $91.5B | 2024 | Medium | (40) — Grand View Research; broad market incl. cash management |
| Global secure logistics market projected 2030 | $153.4B | Proj. 2030 | Low — single source | (40) |
| Latin America secure logistics market | $3.63B | 2024 | Medium | (41) — Grand View Research |
| Latin America cargo security market (distinct from secure logistics; GPS + software + escort) | $560M | 2024 | Low — single source | (42) — Ken Research; field validation needed |
| Global cargo security market (technology segment only — IoT, screening, software) | $3.1B | 2024 | Low | (43) — Ken Research; distinct from services |
| Global cargo security market technology projected 2033 | $7.8B | Proj. 2033 | Low — single source | (43) |
| Global secure logistics market (broader category encompassing cargo escort + armored transport + cash-in-transit) | $47.6B (2025); APAC share ~31.6% (~$15.1B) | 2025 | Medium — Mordor Intelligence with disclosed methodology (BIS data, customs manifests, company filings, primary interviews) | (44a) |
| High-value cargo escort services (narrow sub-segment, prior $21.3B figure REPLACED) | [ASSUMED-11]: No stand-alone primary sizing exists. The DataIntelo $21.3B global / $4.5B APAC figures cannot be reconciled with the combined ~$15.8B total secure-logistics revenue of the four largest operators (Brink's $5.0B + GardaWorld ~$5.8B + Prosegur Cash $2.2B + Loomis $2.8B). To validate: obtain Frost & Sullivan or IBIS World armored car services APAC report | Low — bottom-up contradicts the aggregator figure | (44b) |
| North America cargo theft direct losses (Verisk CargoNet, US + Canada) | $454.9M | 2024 | High — primary source (Verisk) | (1, 2) |
| North America cargo theft direct losses (2025 preliminary) | $725M | 2025 | High — primary source (Verisk) | (3) |
| US cargo theft total cost incl. indirect (ATRI) | $6.6B annually | 2024–2025 | High — ATRI research study | (5) |
| Global cargo crimes recorded 2022–2024 (TAPA TIS) | 157,421 incidents across 129 countries; 5–6% reporting loss value = €2.7B in reported losses | 2022–2024 | High — primary TAPA TIS data | (11) |
| LATAM cargo theft annual losses (estimated, includes unreported) | $1.5B–$5.5B | 2024 | Low — range from multiple sources; high unreporting rate | (45, 46) |
| Indonesia security services market (all services) | [ASSUMED-12]: ~$1.3B implied (Ken Research aggregator; loosely consistent with MarketLine's 1.2% APAC share ≈ $1.2B if APAC ≈ $100B). Operational scale verifiable: Polri BUJP data shows 5,670 licensed security companies and 856,002 personnel in Indonesia (2022, via Kapolri statement). To validate: request BPS KBLI-80 revenue tables or ABUJAPI national aggregate member statistics | Low — Ken Research / MarketLine both secondary; primary revenue data not publicly accessible | (47) |
| Mexico cargo theft annual losses (Circulo Logistico estimate, in MXN converted) | ~$368M | 2024 | Medium — local industry body | (46) |
| Global private security services market | $334.8B | 2024 | Low — range $261–$334B across sources; definitions differ | (48) |
| TT Club gross earned premiums | $284.2M | 2024 | High — audited annual report | (10) |
| Brink's total revenue (proxy for scale of armed logistics market) | $5,012M | 2024 | High — public company filing | (26) |

**Geography mismatch note on "Asia Pacific" figures (revised after deep-research):** The original $4.5B Asia Pacific high-value cargo escort figure (DataIntelo) has been replaced with Mordor Intelligence's $15.1B APAC secure logistics (2025) — a broader category whose methodology is disclosed and which is roughly consistent with bottom-up aggregation of named operators. Country-level SEA cargo-security market size remains a data gap — no government statistics, multilateral, or audited research firm source provides a SEA-specific cargo security services market size. This requires field validation through ABUJAPI (Indonesia), Frost & Sullivan APAC armored services, or commission of country-level data.

**Data gap — SEA cargo security market:** No confirmed country-level market size for Singapore, Indonesia, Thailand, or Malaysia cargo security services (distinct from broader security services) exists in any tier-1 or tier-2 source found during this research. The most relevant proxy is the Indonesia security services total ($1.3B across all security verticals, Ken Research). For pitch purposes, use LATAM as the risk-profile analog and assume SEA cargo security market is proportionally smaller given lower incident rates and earlier-stage market development.

---

## Current Players by Region

### North America

- **Verisk CargoNet** — Dominant in cargo-theft intelligence, alert dissemination, and law enforcement coordination; US + Canada only; Verisk Analytics subsidiary
- **Overhaul** (Austin, TX) — Largest in-transit cargo security services provider post-SensiGuard acquisition; GSOC, pharma/electronics focus
- **Solutions Group International (SGI)** (Riverside, CA) — Armed escort specialist for US-Mexico-Canada high-value and pharma lanes; ex-law enforcement staff
- **TruckParkingClub** — Leading secure-parking marketplace; 2,262+ US locations; CAT Scale-backed
- **SecurSpace** — National secure yard marketplace; vetted locations for trucks, trailers, containers
- **Brink's Global Services** (Richmond, VA) — Armored cargo logistics; 100+ countries; BGS ~$300M revenue (27)
- **GardaWorld** (Montreal) — Cash and cargo security, risk intelligence; ~$4.4B CAD revenue FY2024 (32)
- **NICB** — Insurance-funded cargo theft intelligence and law enforcement support (non-profit)

### Latin America

- **Brink's** — Largest secure logistics operator; LATAM segment $1.31B in 2024; dominant in Brazil, Mexico, Argentina (26)
- **Prosegur Cash** — Second-largest in LATAM; 62% of Prosegur Cash sales from LATAM; strong in Brazil, Argentina, Chile, Peru (28)
- **LoJack Mexico (Solera)** — Leading stolen vehicle recovery + law enforcement network in Mexico; claimed 90% recovery rate (38)
- **Overhaul** (LATAM offices in Brazil and Mexico post-SensiGuard acquisition) — Cargo security monitoring and incident response for multinational shippers in LATAM corridors (17)
- **SGI** — US-Mexico-Canada armed escort specialist (21)
- **Motive** (Mexico) — AI-powered security suite (panic button, immobilizer, door sensor) launched 2024; not escort but in-cab security tech (34)

### Europe / EMEA

- **TAPA EMEA** — Standards body; PSR certified parking 150% growth in 2024 across 17 countries (14)
- **Bosch Secure Truck Parking** — TAPA PSR-certified parking network; 100+ locations in Europe as of 2025 (25)
- **Securitas** (Stockholm, Sweden) — Revenue $15.27B in 2024; offers secure transport and escort across Europe and globally (49)
- **Brink's** — Europe segment $1.23B in 2024; secure logistics for valuables and pharmaceuticals (26)
- **G4S / Allied Universal** — Pan-European manned security with cargo escort capability (30)

### SEA — Singapore / Indonesia / Thailand / Malaysia

- **G4S / Allied Universal** (Indonesia: 11,800+ employees; Thailand: 23,000+ employees; plus Singapore and Malaysia) — Manned guarding, secure storage, risk consulting; cargo escort available but not a primary marketed product (30, 31)
- **Prosegur** (Indonesia: 500+ employees; Singapore; Philippines) — Cash management primary; cargo security on request (29)
- **Brink's** (APAC operations in Singapore, Thailand, Malaysia, Indonesia) — CIT primary; commercial cargo escort on custom quotation (27)
- **Titan Force Sdn. Bhd.** (Kuala Lumpur, Malaysia) — Local Malaysian vehicle escort specialist; armed/unarmed; nationwide Malaysia coverage (33)
- **TAPA APAC** — Standards body; FSR, TSR, PSR, and GSR (APAC-only guarding standard) certification for facilities and transport operators in region (13)

**SEA player gap:** No confirmed domestic SEA operator equivalent to Verisk CargoNet (dedicated cargo-security intelligence network), TruckParkingClub (secure-parking marketplace), or Overhaul (technology-enabled cargo SOC) was found. The market is served by global security companies (G4S, Prosegur, Brink's) whose primary revenue in SEA comes from cash management for banks, with commercial cargo escort available on a bespoke basis. A technology-enabled cargo security platform native to SEA does not appear to exist at scale. [ASSUMED-9]: The SEA cargo security market is at an earlier stage of specialization than North America and Europe — commercial cargo escort is bundled within general security service contracts rather than offered as a specialized, technology-enabled product — to validate: confirm with G4S Indonesia, Prosegur Indonesia, and local carriers whether dedicated cargo-security SLAs exist separately from general guarding contracts.

---

## Preliminary Pain Points — Stage 5 Actors

### Pain points for shippers / cargo owners:

1. **No cargo-theft intelligence network in SEA equivalent to CargoNet.** Shippers in Indonesia, Thailand, Malaysia have no access to a real-time cargo theft alert network integrating local law enforcement and incident databases. CargoNet is US/Canada only; TAPA TIS has EMEA depth but limited SEA granularity. Shippers rely on ad hoc police reports and carrier calls. (1, 11)

2. **Security service quality is invisible until a theft occurs.** A shipper specifying "security escort" in a 3PL contract has no standard metric to verify the 3PL's subcontracted escort provider meets any minimum standard. TAPA TSR certification exists but adoption in SEA is limited; no equivalent to TAPA's certification coverage in Europe. (13)

3. **High-value cargo shipper pricing is calibrated to Fortune 100, not SME.** Overhaul, SensiGuard, and similar platforms are priced for enterprise pharma and electronics clients. A mid-size SEA food and beverage shipper cannot afford the same per-shipment security monitoring and SOC response package. (16)

4. **41% of thefts happen at rest — but secure parking infrastructure in SEA is immature.** TruckParkingClub and Bosch Secure Truck Parking are US/Europe only. In Indonesia and Thailand, highway rest areas are not security-certified; no bookable TAPA PSR-equivalent parking exists. (14, 25; BSI/TT Club 2024: 41% of thefts during transit, but many involve rest stops)

5. **Incident response coordination after a theft is manual and slow.** When a theft occurs in SEA, shippers must manually call police, 3PL, carrier, insurer, and local security contacts. There is no automated dispatch to a security operations center that can simultaneously alert law enforcement and coordinate response in the local language and jurisdiction. (4, 5)

6. **Strategic theft (AI-assisted fraud) is growing but prevention tools focus on physical security.** BSI/TT Club 2024 report documents 18% of US incidents are "strategic thefts" using forged documents, impersonation, and AI. Physical escort and GPS trackers do not stop a fraudulent carrier that legally takes possession of a load. Security solutions in Stage 5 are not designed to address this attack vector. (4)

7. **Insurance pricing is not differentiated by Stage 5 security posture.** Shippers with TAPA-certified carriers, GSOC monitoring, and secure-parking compliance often pay similar premiums to shippers with no security program, because insurers lack real-time data on what security measures are in place per shipment. (Connected to Stage 6 pain points.) (10)

8. **Indonesian and Thai road freight theft is underreported, making it hard to quantify the risk and justify security investment.** Unlike Mexico (Overhaul annual report), Brazil (Overhaul), or the US (CargoNet), there is no annual cargo theft report for Indonesia or Thailand with reliable incident-level data. Shippers underestimate risk; security budgets are justified by anecdote rather than data. (ASSUMED-10: Thailand and Indonesia cargo theft rates are significantly underreported relative to actual occurrence due to low carrier incentive to report and no centralized collection agency — to validate: interview local freight associations in Indonesia and Thailand.) 

### Pain points for carriers / transport operators:

9. **Small carriers in SEA cannot afford dedicated cargo security technology.** The per-vehicle cost of Overhaul's monitoring ($X/shipment), Motive's security suite hardware ($150–$300 upfront), or TAPA TSR certification audit (several thousand USD per certification cycle) is prohibitive for owner-operators or small fleets of 5–10 trucks. (5, 16)

10. **Panic buttons and immobilizers require dispatcher staffing to be effective.** A panic button alert without a 24/7 monitoring center to receive and act on it is useless. Most small carriers in SEA do not have 24/7 dispatch; the security technology layer requires an operational capability that does not yet exist at the SME level. (34)

11. **Driver safety is a shared cost burden not allocated in the rate.** In Mexico and LATAM, where 86% of cargo thefts involve violence against the driver, the security risk is borne entirely by the driver or small carrier without the financial protection that comes from cargo insurance coverage extending to personal injury or kidnapping. This applies similarly in high-theft SEA corridors. (34)

12. **Armed escort signals cargo value — creating a targeting paradox.** Using a visible security escort communicates to potential criminals that the cargo is high value, potentially increasing rather than reducing targeting. This well-documented paradox in LATAM security practice means escort services must be covert or blended into normal traffic. (BSI/TT Club 2024)

13. **LATAM convoy operations require institutional law enforcement relationships that take years to build.** LoJack Mexico's 90% recovery rate derives from decades of law enforcement integration. New entrants cannot replicate this network effect quickly; this creates a high barrier to entry for security-tech providers trying to add real recovery capability. (37, 38)

### Pain points for security-service providers:

14. **Stolen cargo often cannot be recovered even when location is known.** ATRI research finds 74% of stolen goods disappear permanently. Law enforcement resources for cargo theft are limited relative to violent crime; even with Verisk CargoNet alerts, police response to cargo theft is frequently deprioritized. (5)

15. **Security certification does not guarantee security execution.** A TAPA TSR-certified carrier may still experience a theft if a driver violates protocol (e.g., deviating from approved route, accepting an unsolicited stop). Certification creates a floor but not a ceiling; ongoing compliance monitoring is expensive and operationally intensive. (12)

---

## Hypothesis Findings — Stage 5 Contribution

**WH4 (Incident response is reactive and slow):** Stage 5 research strongly confirms this hypothesis. The most advanced incident-response platform (Overhaul GSOC) exists but is priced for Fortune 100 and has no SEA infrastructure. The gap between what a large pharma shipper receives (24/7 GSOC + law enforcement coordination) and what a mid-size SEA shipper receives (a carrier phone call hours after a theft) is extreme. The hypothesis should be refined: it is specifically the *affordable and locally integrated* incident response that is absent in SEA, not the existence of the technology globally.

**New finding — Security market maturity gap in SEA:** North America has CargoNet (dedicated intel network), ATRI data, Overhaul, TruckParkingClub, and state-level cargo-theft task forces. Europe has TAPA TIS, Bosch Secure Truck Parking, and active PSR certification growth. SEA has: G4S, Prosegur, Brink's (all with cash-management as primary revenue), local guard companies (Titan Force etc.), and TAPA APAC standards (thinner adoption). The gap is not that security services don't exist in SEA — they do — but that they are fragmented, not cargo-specific, not technology-enabled, and not integrated with a regional incident-intelligence network.

**Potential whitespace identified:** A SEA-focused cargo security intelligence and response platform — combining a regional theft incident database (analogous to CargoNet but for SEA road freight), secure-stop mapping (analogous to Bosch/TruckParkingClub), and a shared SOC accessible to mid-size 3PLs and carriers on a per-shipment basis — does not appear to exist. This is consistent with the venture hypothesis that an integrated risk layer bridging visibility (Stage 4) and security response (Stage 5) is missing.

---

## Sources for This Stage

(1) https://www.cargonet.com/cargo-theft-data/

(2) https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/

(3) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2025-theft-trends/

(4) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown)

(5) https://truckingresearch.org/2025/10/new-atri-research-confirms-the-high-costs-of-cargo-theft-to-industry/

(6) https://www.bsigroup.com/en-US/products-and-services/bsi-connect/connect-screen/

(7) https://www.scmr.com/article/department_of_homeland_security_picks_bsi_groups_supply_chain_solutions

(8) https://iioa.global/bsi-2024-full-year-results/

(9) https://www.ttclub.com/loss-prevention/supply-chain-security/

(10) https://www.ttclub.com/news-and-resources/corporate-literature/article/financial-highlights-2024

(11) https://iumi.com/newsletter-march-2025/global-cargo-crime-the-scale-of-the-problem-and-the-role-of-tapa/

(12) https://tapaemea.org/standards-trainings/trucking-security-requirements/

(13) https://tapa-apac.org/tapa-standards/

(14) https://tapaemea.org/news/operators-joining-tapas-truck-parking-standard-rise-150-year-on-year-in-17-countries-across-europe/

(15) https://www.asisonline.org/security-news/standards-guidelines/

(16) https://www.over-haul.com/

(17) https://www.prnewswire.com/news-releases/overhaul-acquires-sensiguard-to-become-largest-in-transit-supply-chain-cargo-security-provider-301739973.html

(18) https://www.prnewswire.com/news-releases/a-new-era-of-supply-chain-transparency-begins-overhaul-acquires-freightverify-302533020.html

(19) https://www.freightwaves.com/news/overhaul-hauls-in-105-million-of-series-c-funding

(20) https://www.stocktitan.net/news/MS/morgan-stanley-investment-management-s-1gt-invests-in-series-c-rmn6zzxiiul1.html

(21) https://www.solutionsgroupinternational.com/service-divisions/security-escorts-for-high-value-freight-pharma/

(22) https://truckparkingclub.com/news/truck-parking-club-and-genlogs-launch-security-initiative-against-cargo-crime/

(23) https://www.prnewswire.com/news-releases/truck-parking-club-accepts-strategic-investment-from-cat-scale-company-to-ramp-growth-302503017.html

(24) https://secur.space/

(25) https://www.bosch.com/stories/secure-truck-parking/

(26) https://www.globenewswire.com/news-release/2025/02/26/3032849/35146/en/Brink-s-Announces-Fourth-Quarter-and-Full-Year-2024-Results.html

(27) https://www.apacoutlookmag.com/company-profiles/110-brinks-asia-pacific

(28) https://www.prosegur.us/newsdetails/news/prosegur-increases-sales-in-q3-2024

(29) https://www.prosegur.co.id/about-us/prosegur-in-indonesia

(30) https://www.g4s.com/who-we-are/where-we-operate/g4s-in-asia-pacific

(31) https://connect.amchamthailand.com/list/member/g4s-security-services-thailand-limited-1841

(32) https://www.prnewswire.com/news-releases/gardaworld-announces-financial-guidance-for-fiscal-year-ending-january-31-2024-and-intends-to-amend-the-maturity-date-of-its-term-loan-b-due-2026-to-2029-302040627.html

(33) https://titanforce.com.my/vehicle_escort_service/

(34) https://gomotive.com/company/news/press-release/motive-introduces-new-ai-powered-security-tools-purpose-built-for-customers-in-mexico-to-reduce-theft-and-improve-security-2024-09-11/

(35) https://gomotive.com/company/news/press-release/motive-brings-ai-powered-safety-security-and-fleet-management-solution-to-mexico-2024-05-16/

(36) https://www.frotcom.com/features/remote-vehicle-immobilization

(37) https://over-haul.com/about/partnerships__trashed/lojack-mexico/

(38) https://www.prnewswire.com/news-releases/lojack-mexico-and-overhaul-partner-to-help-safeguard-the-supply-chain-throughout-mexico-301079295.html

(39) https://www.nicb.org/prevent-fraud-theft/cargo-theft

(40) https://www.grandviewresearch.com/press-release/global-secure-logistics-market

(41) https://www.grandviewresearch.com/horizon/outlook/secure-logistics-market/latin-america

(42) https://www.kenresearch.com/latin-america-cargo-security-market

(43) https://marketintelo.com/report/cargo-security-market

(44a) Mordor Intelligence — Secure Logistics Market, methodology disclosed (BIS data, customs manifests, company filings, primary interviews); 2025 = $47.6B global, APAC ~31.6%: https://www.mordorintelligence.com/industry-reports/secure-logistics-market
(44b) Bottom-up corroboration of secure-logistics scale from operator filings: Brink's 2024 10-K total revenue $5.012B (https://www.brinks.com/en/investors); GardaWorld 2024 revenue ~$5.8B (https://www.garda.com/investors); Prosegur Cash 2024 revenue €2.2B (https://www.prosegurcash.com/en/investors); Loomis 2024 revenue ~$2.8B (https://www.loomis.com/en/investors). Combined ~$15.8B across the top four operators is inconsistent with a $21.3B cargo-escort-only sub-segment.

(45) https://insightcrime.org/news/brief/land-piracy-leads-to-loss-of-30-billion-a-year-in-latin-america/

(46) https://over-haul.com/mexico-annual-cargo-theft-report-2024/

(47) https://www.kenresearch.com/industry-reports/indonesia-security-services-market

(48) https://www.researchandmarkets.com/report/private-security

(49) https://www.securitas.com/en/newsroom/regulatory-press-releases/securitas-ab-full-year-report-2024--januarydecember/

---

## Assumptions to Validate

[ASSUMED-1]: BSI has Singapore-based consultants who support SEA clients on supply chain security but do not maintain a dedicated SEA cargo-theft intelligence desk comparable to its North America or Europe operations.
- to validate: contact BSI Singapore office and confirm whether SEA road freight security advisory is a named practice area, and whether any SEA-specific cargo theft data is produced internally or for clients.

[ASSUMED-2]: The number of TAPA FSR/TSR/PSR certified facilities in Indonesia and Thailand is materially lower than in Singapore and Malaysia, which are the APAC hubs with most multinational-facing operations.
- to validate: request certified-operator count by country from TAPA APAC (contact: info@tapa-apac.org) and compare Singapore/Malaysia vs. Indonesia/Thailand.

[ASSUMED-3]: Overhaul monitors shipments that transit through SEA for global pharma and electronics customers but does not have local law enforcement integration or physical presence in SEA.
- to validate: confirm with Overhaul APAC sales team (or via investor relations) whether any SEA customers exist and whether regional law enforcement coordination capability (comparable to Mexico/Brazil integration) has been established.

[ASSUMED-4]: Brink's SEA operations are predominantly CIT (cash-in-transit) for banks, with general cargo escort available on a custom-quotation basis but not marketed as a standard product.
- to validate: confirm with Brink's APAC commercial team in Singapore whether commercial cargo escort (non-cash) is offered as a standard priced service in Indonesia and Thailand, and request any pricing examples.

[ASSUMED-5]: Prosegur's Indonesia and Singapore operations offer cargo security services on request but their primary SEA revenue comes from cash management for banks and retailers.
- to validate: confirm with Prosegur Indonesia commercial team the proportion of revenue from cargo escort vs. CIT; ask whether pharmaceutical or electronics cargo escort is a named service.

[ASSUMED-6]: GardaWorld has limited direct SEA cargo security operations and would service SEA through subcontractors or partner security firms.
- to validate: check GardaWorld's "Where we operate" page for specific SEA country listings and confirm whether any direct office or regional partner exists in Indonesia, Malaysia, Thailand, or Singapore.

[ASSUMED-7]: Motive's Mexico security suite features (panic button, immobilizer) would be technically deployable in SEA markets like Indonesia and Thailand which have analogous cargo theft risk profiles, but Motive has not yet brought these features to SEA markets.
- to validate: confirm with Motive product team (APAC contacts) whether Mexico security features (engine immobilizer, panic button, door sensor) will be offered internationally, and whether any APAC pilot has been initiated.

[ASSUMED-8]: Frotcom has customers in APAC but no confirmed SEA-specific cargo-theft-focused deployments.
- to validate: confirm with Frotcom APAC sales team whether remote immobilization feature is deployed with any SEA carrier customers specifically for cargo theft prevention.

[ASSUMED-9]: The SEA cargo security market is at an earlier stage of specialization than North America and Europe — commercial cargo escort is bundled within general security service contracts rather than offered as a specialized, technology-enabled product.
- to validate: interview at least three logistics/security managers at SEA 3PLs (K+N, DHL, or Kerry) and ask whether cargo security is procured as a bundled guard contract or as a specific cargo-protection service; ask whether they use any technology-enabled SOC.

[ASSUMED-10]: Thailand and Indonesia cargo theft rates are significantly underreported relative to actual occurrence due to low carrier incentive to report and no centralized collection agency.
- to validate: interview officers from the Indonesian Logistics Association (ALFI) and Thai Logistics Association to confirm whether industry-level cargo theft tracking exists; compare with police/Polri crime statistics for cargo-specific incidents.

---

# STAGE 6

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
- Addresses the global SME under-insurance gap through per-load access model (Loadsure's marketing cites "70 million small shippers" without insurance, but this figure is vendor-only with no primary anchor; the directional under-insurance picture is supported by IUMI 2024 reporting USD 22.64B in global cargo premiums against ~USD 24T in world merchandise trade per WTO, implying 53%–69% of trade-by-value moves without adequate cargo cover at typical 0.2%–0.3% rates)
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


---
