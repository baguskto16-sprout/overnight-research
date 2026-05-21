## Stage 1: Vendor Procurement & Sub-Carrier Onboarding (Counterparty Risk)

*Value chain: Risk-management solutions for the freight/logistics journey*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*

---

### Description

Solutions in this stage help shippers, freight brokers, and 3PLs verify, onboard, and continuously monitor sub-carriers, owner-operators, and transport intermediaries before and during a freight engagement. The actor buying these solutions needs confidence that every transporter in their network is who they claim to be, holds valid authority and insurance, has an acceptable safety record, and is not engaged in identity fraud or double-brokering.

---

### Activities

1. Automated carrier identity verification: validate FMCSA/DOT authority, operating license, and beneficial-ownership via government registry lookups and AI-powered document authentication.
2. Certificate of Insurance (COI) collection, OCR parsing, and continuous monitoring with automated expiry/coverage alerts pushed to the broker or shipper.
3. Safety-record scoring: aggregate FMCSA CSA BASIC scores, out-of-service rates, crash history, and inspection records into predictive carrier grades or risk tiers.
4. Fraud and double-brokering detection: real-time signals including newly registered MC numbers, dispatch-service flagging, phishing-email pattern matching, and cross-network complaint databases.
5. Vendor onboarding workflow automation: digital carrier-packet collection, TMS integration (McLeod PowerBroker, MercuryGate, BrokerPro), and ongoing compliance monitoring throughout the load lifecycle.

---

### Revenue Model

SaaS subscription tiered by number of monitored carriers (typical entry point ~$340/month per brokerage seat) plus per-lookup transaction fees for identity calls; some vendors layer in performance-based earn-outs on API volume.

---

### Cost Drivers

Government-registry API access fees, data-licensing from FMCSA/SAFER, insurance-certificate OCR processing costs, identity-verification biometric engine licensing (e.g., AU10TIX), cloud infrastructure for real-time monitoring, and customer-success headcount to handle carrier disputes.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global carrier onboarding & compliance platform market, 2024 | ~$1.4–1.5 billion | Low — multiple small research firms converging; no Tier-1 analyst cross-validation available | (1)(2) |
| North America sub-segment, 2024 | ~$590 million | Low — same sourcing cluster; figures from trade-press market research houses only | (2) |
| Global market projected, 2033 | ~$3.8–4.2 billion (CAGR ~13–14%) | Low — forecast only, same sourcing concern | (1)(2) |
| FMCSA-registered active property brokers in US, 2023 year-end | 28,351 active property brokers + 1,078 HH-goods brokers (addressable buyer set for US tools) | Medium — derived from FMCSA registration statistics reported in trade press | (3) |
| FMCSA active USDOT-registered motor carriers, US, 2024 | ~2.09 million (total incl. intrastate); ~787,000 interstate/hazmat-specific | Medium — FMCSA Pocket Guide 2024 (government) | (4) |
| Cargo theft losses, North America, 2024 | $455 million+ reported; NICB estimates $35 billion total including unreported | Medium — NICB/CargoNet primary data, BSI/TT Club secondary | (5)(6) |
| Double-brokering/strategic theft as % of US incidents, 2024 | 18% of US cargo theft incidents are "strategic" (fraud, impersonation, document forgery) | High — BSI/TT Club 2024 Cargo Theft Report PDF, primary sourced from law enforcement partnerships | (6) |
| TIA fraud complaint surge, Sep 2024 – Feb 2025 | 1,600+ reports in 6-month period, 65% increase vs prior period; 22% of broker respondents lost >$200K to fraud in 6 months | High — TIA State of Fraud April 2025 report (industry association primary) | (7) |
| SEA-specific market size for carrier onboarding/compliance tools | Data gap — no country-level figure available; APAC fastest-growing region at ~16.2% CAGR per same market-research cluster | N/A | (2) |

**Notes on market size sourcing:** The $1.4–1.5 billion global figure comes from a cluster of secondary market-research firms (GrowthMarketReports, MarketIntelo, DataIntelo) that appear to share a common primary study; they count as one source under cross-validation rules. A second, independent, Tier-1 source for this specific segment was not found. Flag: `Geography mismatch — no SEA country-level figure found; APAC regional CAGR used as proxy; field validation needed.`

---

### Solutions Profiled

---

#### Solution 1: Highway (highway.com)

- **Country of origin:** USA (Dallas, TX)
- **Parent / prior name:** Independent; CEO Jordan Graft previously ran TriumphPay; launched 2022
- **What it does:** Real-time carrier identity verification and load-level fraud protection for freight brokers — validates rightful-owner identity, detects dispatch-service interception, and locks loads to verified carriers via "Load Lock" at pickup.
- **Primary user:** Freight brokers (70 of top-100 US brokers per company claim); some shipper direct use
- **Business model:** SaaS subscription per brokerage; pricing undisclosed publicly; per-load Load Lock+ module adds incremental transaction pricing
- **Pricing:** Not publicly disclosed (1)
- **Pros:**
  - Broadest broker network penetration (1,050+ brokers) of any pure-play carrier-identity vendor (1)
  - Real-time identity check at pickup, not just onboarding — catches fraud at the load stage
  - Deep TMS integrations: McLeod PowerBroker, MVMNT, and certified partners (8)(9)
  - FTV Capital + Lead Edge Capital minority growth investment (Aug 2025) signals institutional validation (10)
- **Cons / gaps:**
  - FMCSA/US-centric data; no documented SEA regulatory data layer
  - Revenue and pricing undisclosed; scale hard to independently verify
  - Focuses exclusively on trucking/road freight; multimodal or ocean not covered
  - Only carrier identity layer — does not bundle insurance procurement or incident response
- **SEA presence:** No — no offices, resellers, or publicly documented customers in Singapore, Indonesia, Thailand, Malaysia, Vietnam, or Philippines. Platform is anchored to FMCSA data; no equivalent regulatory integration for SEA registries documented. (11)
- **Funding / scale:** Strategic growth equity investment led by FTV Capital, with Lead Edge Capital, announced August 2025; amount undisclosed. 1,050+ broker customers including 70 of top-100 US brokers. (10)
- **Sources:** (1)(8)(9)(10)

---

#### Solution 2: Descartes MyCarrierPortal (formerly Assure Assist / MyCarrierPortal)

- **Country of origin:** USA; acquired by Descartes Systems Group (Canada, NASDAQ: DSGX) in September 2024 for ~$24 million up-front + up to $6 million earn-out
- **What it does:** Carrier identity vetting, onboarding workflow automation, ongoing compliance monitoring (insurance, authority, safety record), and incident-based risk scoring for brokers and shippers.
- **Primary user:** Freight brokers and shippers (thousands of active subscribing companies; hundreds of thousands of carriers in database) (12)
- **Business model:** SaaS subscription; pricing undisclosed post-acquisition
- **Pricing:** Not publicly disclosed post-acquisition (prior to acquisition, pricing was not publicly listed)
- **Pros:**
  - Now backed by Descartes ($651M FY2025 revenue), providing data-network depth and enterprise integrations (13)
  - February 2024 Incident Reporting feature adds crowd-sourced fraud signal to carrier risk scores (14)
  - "Thousands of active subscribing companies" at time of acquisition — established market position (12)
  - Carrier Assure partnership (predictive A–F safety scoring) extends analytics layer (15)
- **Cons / gaps:**
  - US and Canada road trucking focus; no documented SEA regulatory integration
  - Acquisition integration risk — product roadmap may shift under Descartes ownership
  - Pricing opaque post-acquisition
- **SEA presence:** No — Descartes operates globally (651M revenue, global logistics network) but MyCarrierPortal specifically is positioned for North American FMCSA-regulated carriers; no SEA carrier-registry data layer documented. (12)(13)
- **Funding / scale:** Acquired Sept 2024 by Descartes Systems (DSGX) for $24M + $6M earn-out. Parent Descartes: $651M FY2025 revenue, public company. (12)(13)
- **Sources:** (12)(13)(14)(15)

---

#### Solution 3: Truckstop RMIS (formerly Registry Monitoring Insurance Services, LLC)

- **Country of origin:** USA; founded 1996; acquired by Truckstop.com (formerly Internet Truckstop Group) in March 2021
- **What it does:** Automated carrier COI collection and insurance monitoring, operating-authority compliance, and SaferWatch safety-data integration — marketed as Compliance-as-a-Service (CaaS) for brokers and 3PLs.
- **Primary user:** Freight brokers and 3PLs; powers carrier compliance for RXO, Loadsmart, and many of North America's largest brokerages
- **Business model:** SaaS subscription; Lite tier $340/month; Premium tier custom pricing (16)
- **Pricing:** Lite at $340/month (16)
- **Pros:**
  - Largest database of carrier certificates of insurance in North America (16)
  - 1996 vintage: longest market track record in segment; customer list includes Coyote Logistics, Echo Global, BNSF Logistics, Penske (16)
  - Native SaferWatch integration supplies FMCSA safety scores in same product; bundled "CaaS" pitch to brokers is proven
  - Claims 80% faster carrier onboarding vs. manual workflows (16)
- **Cons / gaps:**
  - US and Canada road carrier data only; no international carrier registry API documented
  - Part of Truckstop's load-board ecosystem — value diminishes for brokers on other platforms
  - Lite tier limited to basic monitoring; advanced fraud detection requires add-ons
- **SEA presence:** No — explicitly US/Canada coverage; no documented SEA carrier-registry integration, resellers, or customers in region. (16)
- **Funding / scale:** Private subsidiary of Truckstop.com (owned by ICONIQ Growth and other PE investors); no standalone revenue disclosed. Truckstop.com claims largest freight marketplace in North America. (17)
- **Sources:** (16)(17)

---

#### Solution 4: Carrier Assure

- **Country of origin:** USA
- **Parent:** Independent; has integration partnership with Descartes MyCarrierPortal (15)
- **What it does:** Predictive AI carrier safety scoring (A–F grades) by analyzing FMCSA data — safety scores, inspections, violations, out-of-service rates — compared to peer carriers; designed to surface future-risk not visible in snapshot FMCSA data alone.
- **Primary user:** Freight brokers using FMCSA data for carrier qualification
- **Business model:** SaaS subscription (pricing not publicly disclosed)
- **Pricing:** Not publicly disclosed
- **Pros:**
  - Analyzes 2 million+ DOT numbers daily; real-time predictive grades (15)
  - Differentiates from SAFER snapshots by benchmarking against peer carrier cohorts
  - MyCarrierPortal partnership extends reach to Descartes customer base
- **Cons / gaps:**
  - FMCSA/US-only data universe; no international equivalent
  - Niche scoring layer — not a full onboarding workflow or insurance-monitoring product
  - Scale and financial details not publicly disclosed
- **SEA presence:** No (15)
- **Sources:** (15)

---

#### Solution 5: Carrier411

- **Country of origin:** USA
- **Parent:** Independent (founder-run)
- **What it does:** Monitor and research motor carrier insurance, authority, and safety-rating changes for FMCSA-registered carriers; brokers get alerts when safety ratings, insurance, or authority status changes; tracks 1 million+ companies.
- **Primary user:** Freight brokers (~80% of customer base per company claim) (18)
- **Business model:** SaaS subscription (pricing not publicly disclosed; alerts-based monitoring model)
- **Pricing:** Not publicly disclosed
- **Pros:**
  - Historical logs of every insurance/authority inspection per carrier — audit trail for broker liability defense
  - 1 million+ carrier records; covers every FMCSA-registered entity
  - Low entry-cost alternative to full-suite RMIS for small brokers
- **Cons / gaps:**
  - US-only FMCSA data universe
  - No identity verification, document OCR, or fraud-signal layer beyond public FMCSA data
  - Founder-run; unclear succession/acquisition trajectory
- **SEA presence:** No (18)
- **Sources:** (18)

---

#### Solution 6: FreightValidate

- **Country of origin:** USA
- **Parent:** Independent; AU10TIX (Israel/global identity-verification SaaS) selected as biometric engine partner, announced December 2024
- **What it does:** Carrier and freight broker identity verification using facial recognition and document authentication (biometric + AI) to combat identity theft, double brokering, and fictitious pickups; operates a Fraud Alert system shared with regulators and law enforcement.
- **Primary user:** Shippers, carriers, freight brokers, load boards, and factoring companies
- **Business model:** SaaS subscription; pricing not publicly disclosed
- **Pricing:** Not publicly disclosed
- **Pros:**
  - Biometric identity layer (AU10TIX facial recognition) differentiates from FMCSA-data-only tools (19)(20)
  - Claims 90% reduction in cargo theft incidents for users (20) — [ASSUMED-1]: This 90% claim is from AU10TIX's own case study and has not been independently audited — to validate: ask FreightValidate customers for pre/post incident rate data
  - Fraud Alert database shared with law enforcement gives network-effect value
- **Cons / gaps:**
  - US market focus; no SEA carrier registry or regulatory data integration documented
  - Small vendor — scale, customer count, and financials not publicly disclosed
  - 90% theft reduction claim is vendor-sourced only; not independently verified
- **SEA presence:** No documented presence. (19)(20)
- **Sources:** (19)(20)

---

#### Solution 7: Overhaul FraudWatch

- **Country of origin:** USA (Austin, TX)
- **Parent:** Overhaul Group Inc. (cargo risk management platform); $298M total raised, Series C $105M led by Springcoast Partners (Aug 2025) (21)
- **What it does:** AI-powered pre-shipment carrier and driver identity verification integrated into Overhaul's broader supply-chain risk platform; analyzes global shipment data, booking patterns, communication signals, and FMCSA authority to flag high-risk carriers before load assignment.
- **Primary user:** Shippers and 3PLs with complex, high-value freight
- **Business model:** SaaS platform subscription (enterprise; pricing not publicly disclosed); FraudWatch is a module within Overhaul's broader cargo-security platform
- **Pricing:** Enterprise custom pricing; not publicly disclosed
- **Pros:**
  - Claims $100M+ in losses prevented for customers in early-adoption phase (2024) (22)
  - 14% of screened US carriers flagged as high-risk; 12% found operating without proper FMCSA authority (22)
  - Layered verification: pre-booking credentials check + pickup identity verification via photo
  - 2025 FreightWaves Fraud Fighters Award winner (23)
  - Global monitoring capability (7 control towers worldwide) — potential for non-US deployment
- **Cons / gaps:**
  - Fraud screening is FMCSA-anchored; international/SEA carrier verification requires local regulatory data not currently documented
  - Enterprise-priced — out of reach for small to mid-size 3PLs and brokers
  - No documented SEA office or customer
- **SEA presence:** Unknown — Overhaul operates globally and claims 7 worldwide control towers, but no named SEA office, customer, or carrier-registry integration documented. (21)
- **Sources:** (21)(22)(23)

---

#### Solution 8: CargoNet (Verisk)

- **Country of origin:** USA
- **Parent:** Verisk Analytics (NASDAQ: VRSK) — acquired CargoNet 2012
- **What it does:** Cargo theft prevention and recovery intelligence network; real-time fraud-alert push service (fictitious pickups, double brokering, identity theft), RouteScore predictive route risk tool, and law enforcement coordination. AlertSEARCH lets brokers check suspect entities by phone, email, or name.
- **Primary user:** Freight brokers, shippers, 3PLs, insurers, law enforcement
- **Business model:** Subscription intelligence service (pricing not publicly disclosed)
- **Pricing:** Not publicly disclosed
- **Pros:**
  - 15+ years of cargo theft incident data — largest incident database in North America
  - Law enforcement coordination network: intelligence shared across police, FBI, insurer community
  - RouteScore ML tool predicts route-level theft probability before dispatch
  - 576 fictitious pickup events documented in 2023 (vs. average 66/year 2012–2022) — data informs the alert network's accuracy (5)
- **Cons / gaps:**
  - North America–centric incident database; limited SEA theft intelligence
  - Focuses on theft/fraud alerts not full carrier onboarding workflow; complement to, not replacement for, RMIS/MyCarrierPortal
  - Pricing and scale metrics not publicly disclosed
- **SEA presence:** No documented SEA presence or regional incident database. (5)
- **Sources:** (5)

---

#### Solution 9: Transporeon (now Trimble Transportation)

- **Country of origin:** Germany (Ulm); acquired by Trimble Inc. (NASDAQ: TRMB) for €1.88 billion in April 2023
- **What it does:** Cloud-based freight procurement and carrier qualification platform covering shipper-to-carrier sourcing, freight exchange, slot booking, and visibility; every carrier vetted for company registration, VAT ID, transport licence, and cargo insurance before platform access.
- **Primary user:** Large European and international shippers and logistics service providers
- **Business model:** SaaS platform subscription; enterprise pricing (not publicly disclosed); ~€190M revenue in 2023
- **Pricing:** Enterprise custom pricing
- **Pros:**
  - 210,000+ carriers and 1,500+ shippers/retailers on platform — largest carrier-qualified network in Europe (24)
  - Pre-verified carrier network: shippers skip manual licence/insurance checks for platform carriers
  - Adds $5 billion+ to Trimble's TAM per management commentary (25)
  - Multi-modal (road, intermodal, container) and cross-border EU regulatory compliance built in
- **Cons / gaps:**
  - EU-centric regulatory data (VAT, transport licence); limited documented SEA carrier registry integration
  - Enterprise-priced; not accessible to SME shippers or SEA small 3PLs
  - Post-acquisition integration complexity; some product-roadmap uncertainty
- **SEA presence:** Unknown — Transporeon has 18 offices in 27 countries but no named SEA office documented in public sources. Platform is built around European regulatory data. (24)(25)
- **Sources:** (24)(25)

---

#### Solution 10: CEFIC SQAS (Safety & Quality Assessment System)

- **Country of origin:** Belgium / EU-wide (CEFIC — European Chemical Industry Council)
- **Parent:** CEFIC (industry association body); assessments conducted by accredited third-party auditors (DQS, TÜV AUSTRIA, AENOR, and others)
- **What it does:** Standardized third-party audit scheme for qualifying road transport, intermodal, and chemical-distribution carriers on safety, quality, HSE, and social responsibility; used by EU chemical shippers (BASF, Bayer, Dow, etc.) to pre-qualify carriers and distributors; 2,500+ companies assessed.
- **Primary user:** Chemical-industry shippers requiring carrier qualification; carriers seeking shipper approval
- **Business model:** Fee-per-audit (assessor charges carrier directly); CEFIC maintains the questionnaire and database; shippers access carrier SQAS reports for free via CEFIC portal
- **Pricing:** Audit cost varies by auditor (typically €1,500–€3,000 per assessment per market norm); (26) [ASSUMED-2]: Specific SQAS audit pricing is not publicly listed — to validate: contact a CEFIC-accredited assessor such as DQS or TÜV AUSTRIA for current tariff
- **Pros:**
  - 30+ year track record; trusted by European chemical majors as prerequisite for carrier approval
  - Covers HSE, safety management system, driver training, subcontracting practices, and social compliance
  - Assessment report shared with multiple chemical customers from single audit — carrier pays once, many shippers benefit
- **Cons / gaps:**
  - EU/Europe road transport only; no SEA carrier registry or equivalent scheme in APAC
  - Does not produce a pass/fail certificate — outputs a detailed report; acceptance decisions left to individual shipper
  - Chemical-sector specific; not directly applicable to general freight/3PL onboarding
  - Not an automated SaaS tool; manual audit-based process
- **SEA presence:** No (26)(27)
- **Sources:** (26)(27)

---

#### Solution 11: AsiaVerify

- **Country of origin:** Singapore / Hong Kong (APAC-focused)
- **Parent:** Independent
- **What it does:** Real-time KYB (Know Your Business), UBO (Ultimate Beneficial Ownership), and AML compliance checks sourced directly from official government registries across 14 Asian jurisdictions (450M+ entities), with instant English translations. Supports freight logistics players needing counterparty KYB in APAC.
- **Primary user:** Compliance teams at financial services, fintech, logistics, and trade-finance companies operating across Asia
- **Business model:** API/SaaS subscription; per-search pricing available; enterprise contract pricing
- **Pricing:** Not publicly listed (API pricing on request) (28)
- **Pros:**
  - Only identified vendor with native, real-time access to official government registries across 14 APAC markets including Singapore (ACRA), Indonesia (AHU Online/OSS), Malaysia, Thailand, Vietnam, Philippines (28)
  - UBO layer addresses beneficial-ownership blind spot for SEA carrier vetting
  - No reliance on intermediary data brokers — direct registry connections reduce latency and accuracy risk
- **Cons / gaps:**
  - General-purpose KYB/AML; not freight-specific (no carrier safety scores, COI tracking, or FMCSA-equivalent safety data)
  - Does not monitor carrier insurance certificates or regulatory safety ratings
  - Would need integration with freight-specific data layers to serve as a full carrier-onboarding solution
- **SEA presence:** Yes — headquartered in Singapore; covers 14 APAC markets natively; direct API integrations to Indonesian OSS/AHU and Singapore ACRA (28)
- **Sources:** (28)

---

#### Solution 12: Kargo Technologies (Indonesia)

- **Country of origin:** Indonesia (Jakarta)
- **Parent:** Independent; investors include AC Ventures, Teleport (AirAsia Group), Intudo Ventures, Peak XV (formerly Sequoia India/SEA), January Capital, Tenaya Capital, Cypress Capital
- **What it does:** Indonesia's largest B2B trucking platform and freight marketplace (Kargo Nexus AI-enabled TMS); pre-screens and vets transporters before admission to the marketplace; provides shipper-side tools for carrier management, reputation scoring, and real-time load tracking across a network of 50,000+ trucks.
- **Primary user:** Indonesian shippers (FMCG, chemicals, e-commerce, construction) and mid-size transport operators
- **Business model:** Commission/take-rate on freight transactions brokered through the marketplace; SaaS TMS module pricing for shipper-side (pricing undisclosed)
- **Pricing:** Not publicly disclosed (29)
- **Pros:**
  - Largest vetted trucking network in Indonesia (50,000+ trucks, 6,000+ active shippers) (29)
  - Addresses onboarding problem in context: Indonesian truckers include thousands of informal owner-operators with no prior formal vetting process
  - Kargo Nexus TMS can serve as a local-regulatory-compliant onboarding/management layer for Indonesian shippers
- **Cons / gaps:**
  - Indonesia-only; no documented cross-SEA expansion
  - Carrier vetting methodology not publicly documented in detail — [ASSUMED-3]: Kargo's transporter vetting process likely relies on document submission and reputation signals rather than a formal scoring or insurance-monitoring system comparable to US tools — to validate: interview Kargo BD team or an active shipper customer on their vetting workflow
  - Not a stand-alone counterparty-risk SaaS; vetting is embedded in marketplace/TMS
- **SEA presence:** Yes — Indonesia only. Singapore, Thailand, Malaysia: no. (29)
- **Sources:** (29)(30)

---

#### Solution 13: Logisly (Indonesia)

- **Country of origin:** Indonesia (Jakarta)
- **Parent:** Independent; investors include Monk's Hill Ventures (lead Series A, 2020, $6M)
- **What it does:** B2B digital logistics platform digitizing truck ordering, carrier management, and tracking for corporate shippers in Indonesia; verifies carriers before platform admission; 1,000+ corporate shipper customers across FMCG, chemicals, e-commerce, and construction.
- **Primary user:** Corporate shippers in Indonesia; mid-size transport operators seeking digital freight access
- **Business model:** Commission on freight transactions; platform subscription for shipper TMS features
- **Pricing:** Not publicly disclosed (30)
- **Pros:**
  - Carrier verification embedded in platform entry — addresses informal trucker onboarding problem in Indonesia
  - 1,000+ verified corporate shipper clients; established trust signal with enterprise buyer
  - Algorithmic carrier–load matching provides data on carrier reliability over time
- **Cons / gaps:**
  - Last disclosed funding is Series A ($6M, Nov 2020); no confirmed Series B; financial runway unclear (30)
  - Indonesia-only; no documented cross-SEA coverage
  - Carrier vetting detail not publicly documented
- **SEA presence:** Yes — Indonesia only. (30)
- **Sources:** (30)

---

### Out-of-scope notes

- **Greenscreens.ai:** Pricing/spot-rate risk for brokers; no counterparty identity or compliance layer. Out of scope for this stage.
- **RXO Connect:** RXO uses RMIS for carrier compliance; RXO Connect is the load-tendering interface, not a stand-alone counterparty-risk solution. Stage-adjacent (downstream execution), not Stage 1.
- **Loadsmart:** Uses RMIS for carrier compliance; ShipperGuide TMS has carrier management features but no stand-alone counterparty-risk product documented. Stage-adjacent.
- **Convey / TransImpact:** Parcel optimization and freight-procurement benchmarking; no carrier identity/compliance module documented. Out of scope.
- **Privy (Indonesia):** General e-KYC and digital signature SaaS for Indonesian fintechs; not freight-specific and not a carrier compliance platform. Potentially combinable with freight tools but not in scope as-is.

---

### Current Players by Region

**North America (US/Canada):**
- Highway — dominant pure-play carrier identity / fraud prevention; 1,050+ broker customers; Series-level growth equity (FTV Capital, Lead Edge)
- Descartes MyCarrierPortal — carrier onboarding/compliance; largest carrier-vetting platform by broker count at acquisition; now under Descartes ($651M public company)
- Truckstop RMIS — largest COI/insurance monitoring database in North America; integrated into Truckstop.com load board ecosystem; $340/month entry
- Carrier Assure — predictive AI safety scoring layer; integrated with Descartes MyCarrierPortal
- Carrier411 — monitoring-alerts tool; 1M+ carrier records; 15-year history; broker-focused; founder-run
- FreightValidate — biometric identity verification with AU10TIX engine; fraud alert network shared with law enforcement
- Overhaul FraudWatch — enterprise pre-shipment fraud detection module; $298M raised; 7 global monitoring towers; 2025 FreightWaves Fraud Fighters Award winner
- CargoNet (Verisk) — cargo theft intelligence network; 15+ year incident database; route-risk scoring

**Europe:**
- Transporeon (Trimble) — carrier qualification embedded in freight exchange; 210,000+ vetted carriers; €1.88B acquisition price; EU regulatory compliance native
- CEFIC SQAS — third-party carrier audit scheme for chemical shippers; 2,500+ assessed companies; 30-year track record; accredited auditors across EU (DQS, TÜV AUSTRIA, AENOR)

**Southeast Asia (SEA — Indonesia, Singapore, Thailand, Malaysia, Vietnam, Philippines):**
- Kargo Technologies (Indonesia) — largest vetted trucking marketplace in Indonesia; 50,000+ trucks; AC Ventures / AirAsia/Teleport backed; carrier vetting embedded in marketplace
- Logisly (Indonesia) — digital carrier verification for corporate shippers; 1,000+ corporate clients; Monk's Hill Ventures backed; Series A stage
- AsiaVerify (Singapore) — general-purpose KYB/AML/UBO checks across 14 APAC registries; not freight-specific but only identified APAC tool with native government-registry access for SEA carrier entity verification

**Gap documented:** No stand-alone, freight-specific carrier-onboarding and compliance tool analogous to Highway, RMIS, or MyCarrierPortal was identified for SEA markets outside Indonesia. Singapore, Thailand, Malaysia, Vietnam, and Philippines have no documented equivalent product.

---

### Preliminary Pain Points (this stage)

1. Manual COI collection remains the dominant practice at small-to-mid-size US brokers: the verification process is "almost entirely manual, with someone opening a PDF, reading the coverage limits, and comparing them against minimum requirements"; nearly half of carriers abandon onboarding before completion due to friction. (31)
2. Manual carrier onboarding averages 7–14 business days and a 35–45 minute per-carrier effort before first load assignment; automated tools reduce this to 24–48 hours but adoption is uneven. (31)
3. Double brokering and identity fraud are accelerating rapidly: TIA Watchdog recorded a 65% surge in fraud complaints in a six-month period (Sep 2024–Feb 2025); 83% of freight brokers experienced at least three fraud types in the same period. (7)
4. Strategic theft (impersonation, document forgery, fictitious pickup) represents 18% of all US cargo theft incidents in 2024 — up from a historical baseline driven directly by gaps in carrier identity verification at onboarding and pickup. (6)
5. Overhaul FraudWatch found 14% of screened US motor carriers are flagged as high-risk and 12% lack proper FMCSA authority — evidence that current onboarding practices routinely pass noncompliant carriers. (22)
6. Beneficial ownership is a structurally underserved check: current tools (RMIS, MCP, Highway) verify FMCSA authority and insurance but do not systematically verify beneficial ownership of carrier entities, leaving double-shell and nominee-carrier schemes undetected.  [ASSUMED-4]: Most US carrier-onboarding tools do not run full beneficial-ownership lookups on carrier entities — to validate: ask RMIS/MyCarrierPortal sales teams whether UBO checks are part of standard product
7. North American tool designs are FMCSA-centric and not portable to SEA: Indonesia, Thailand, Malaysia, and Vietnam do not have equivalent centralized carrier safety databases or COI registries; the same SaaS products cannot be deployed without local data-layer rebuilding.
8. SEA shippers and 3PLs are exposed to informal sub-carrier engagement: Indonesian and regional logistics ecosystems include large informal transporter populations with no formal safety rating, insurance certificate, or beneficial-ownership record — tools like Kargo and Logisly partially address this through marketplace vetting but lack depth equivalent to US compliance standards.
9. Certificate of insurance fraud is a growing attack vector: forged COIs are submitted during onboarding, and manual review at most brokers cannot detect sophisticated forgeries without biometric or OCR-plus-insurer-verification tools. (19)(20)
10. TIA reported 22% of broker respondents lost more than $200,000 to fraud in a single six-month period — direct financial evidence of the cost of vendor-procurement blind spots. (7)
11. Tool adoption is concentrated at large brokers: Highway serves 70 of top-100 US brokers, but the US has 28,000+ active property brokers — the long tail of small brokers, shippers, and emerging-market operators remains unserved by structured carrier verification tools. (1)(3)
12. Post-onboarding monitoring is inconsistent: even where onboarding is automated, many brokers do not run continuous monitoring of carrier insurance, safety score changes, or authority revocations after first-load assignment — flagged as a gap in Truckstop/RMIS marketing materials. (16)

---

### Hypothesis Test: WH1

**Working Hypothesis 1:** "Vendor-procurement blind spots: shippers and 3PLs onboard sub-carriers using spreadsheets and reference checks; few tools verify operator legitimacy, insurance coverage, safety record, or beneficial ownership at the small-transporter tier."

**Finding: Partially evidenced, with important nuance.**

- Evidenced for the small-broker and emerging-market tier: manual COI review, 7–14 day average onboarding times, and ~50% carrier abandonment rates during manual processes confirm spreadsheet-and-PDF workflows remain common at small-to-mid operators. (31)
- Evidenced for SEA: no freight-specific counterparty-risk tool comparable to RMIS or MyCarrierPortal exists in Thailand, Malaysia, Singapore, Vietnam, or the Philippines. Indonesia has Kargo and Logisly as partial solutions.
- Partially contradicted for large US brokers: Highway (1,050+ broker customers including 70 of top-100), RMIS (Coyote Logistics, Echo Global, BNSF Logistics, Penske), and MyCarrierPortal (thousands of subscribing companies) show that large-broker adoption of structured tools is material — the blind spot is at the long tail.
- Beneficial ownership gap is real but unquantified: no tool in the US market runs systematic UBO checks as part of standard carrier onboarding. This element of WH1 is evidenced structurally but lacks a published adoption-rate statistic. [ASSUMED-5]: No public data exists on the percentage of US freight brokers running beneficial-ownership checks on carrier entities — to validate: commission or cite a TIA/OOIDA member survey on onboarding practices
- Cargo theft fraud surge directly tracks the verification gap: 18% of US 2024 cargo thefts are "strategic" (fraud/impersonation), and the TIA 65% fraud-complaint surge in H2 2024 is the strongest longitudinal evidence that the WH1 blind spot has direct financial consequences. (6)(7)

---

### Sources for this stage

(1) FreightWaves — "Highway secures investment for carrier fraud platform" (Aug 2025): https://www.freightwaves.com/news/carrier-identity-platform

(2) GrowthMarketReports — "Carrier Onboarding Platform Market Research Report 2033" (Oct 2025): https://growthmarketreports.com/report/carrier-onboarding-platform-market
*Note: This is a secondary market-research vendor; figures should be treated as directional only. No independent Tier-1 cross-validation available for this specific segment size.*

(3) CarrierDetails.com / FMCSA registration statistics — "The Freight Industry by the FMCSA Data: 2024 in Review": https://carrierdetails.com/post/the-freight-industry-by-the-fmcsa-data-2024-in-review/

(4) FMCSA — "2024 Pocket Guide to Large Truck and Bus Statistics": https://www.fmcsa.dot.gov/sites/fmcsa.dot.gov/files/2025-09/FMCSA%20Pocket%20Guide%202024-v6%20508%20.pdf

(5) CargoNet (Verisk) — 2023 Q2 Supply Chain Risk Trends Analysis / 2024 cargo theft data: https://www.cargonet.com/cargo-theft-data/

(6) BSI Consulting and TT Club — "2024 Cargo Theft Report" (April 2025 publication), PDF processed via markitdown: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf

(7) Transportation Intermediaries Association (TIA) — "State of Fraud in the Industry April 2025 Report": https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/

(8) Highway — "McLeod Software and Highway Partner to Bring Carrier Identity Management to PowerBroker Customers": https://highway.com/press-releases/mcleod-software-and-highway-partner-to-bring-carrier-identity-management-to-powerbroker-customers

(9) Highway — "MVMNT and Highway Launch Seamless Integration": https://highway.com/press-releases/mvmnt-and-highway-launch-seamless-integration-to-empower-brokers-with-real-time-carrier-data

(10) Highway / FTV Capital — "Highway Secures Strategic Growth Equity Investment Led by FTV Capital" (Aug 2025): https://ftvcapital.com/2025/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital/

(11) Highway corporate website (existence confirmation only; not used as primary evidence for claims): https://highway.com/

(12) GlobeNewswire / Descartes — "Descartes Acquires MyCarrierPortal" (Sept 2024): https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html

(13) Descartes Systems Group — "Fiscal 2025 Fourth Quarter and Annual Financial Results": https://www.descartes.com/resources/news/descartes-announces-fiscal-2025-fourth-quarter-and-annual-financial-results

(14) Descartes — "Protecting Your Freight: Descartes MyCarrierPortal Incident Reporting": https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting

(15) Descartes MyCarrierPortal — "Carrier Assure" partner page: https://www.mycarrierportal.com/partners/carrier-assure/

(16) Tekpon / Truckstop RMIS — "Truckstop RMIS Reviews 2025: Pricing & Features": https://tekpon.com/software/truckstop-rmis/reviews/

(17) Truckstop.com — "Truckstop.com Acquires Registry Monitoring Insurance Services (RMIS)" (March 2021): https://truckstop.com/press-releases/truckstop-com-acquires-registry-monitoring-insurance-services-rmis/

(18) Carrier411 — product overview: https://www.carrier411.com/overview.cfm

(19) PR Newswire — "AU10TIX Selected by FreightValidate to Strengthen Freight Industry Security" (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html

(20) AU10TIX — "FreightValidate Users Reduce Cargo Theft Incidents by 90%": https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/

(21) Overhaul / PR Newswire — "Overhaul Secures $105 Million Series C" (Aug 2025): https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(22) FreightWaves / Overhaul — "Overhaul's FraudWatch: a new paradigm in freight fraud prevention": https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention

(23) FreightWaves — "2025 FreightWaves Fraud Fighters Awards": https://www.freightwaves.com/news/2025-freightwaves-fraud-fighters-awards-recognize-freighttech-innovators

(24) Transporeon — "Transporeon platform for carriers": https://www.transporeon.com/en/transporeon-platform-for-carriers

(25) Trimble — "Trimble Completes Transporeon Acquisition" (Apr 2023): https://transportation.trimble.com/resources/press-releases/trimble-completes-transporeon-acquisition

(26) CEFIC — SQAS website: https://cefic.org/resources/sqas/

(27) DQS Global — "SQAS Transportation Safety and Quality Assessment": https://www.dqsglobal.com/en/certify/sqas-assessment

(28) AsiaVerify — product overview and Singapore/Indonesia jurisdiction pages: https://asiaverify.com/ ; https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/

(29) Kargo Technologies / DealStreetAsia — funding and platform overview: https://www.dealstreetasia.com/stories/indonesia-kargo-funding-ac-ventures-405850

(30) TechCrunch — "Indonesian logistics platform Logisly raises $6 million Series A" (Nov 2020): https://techcrunch.com/2020/11/02/indonesian-logistics-platform-logisly-raises-6-million-series-a-to-digitize-truck-shipments/

(31) Highway blog / Truckstop blog — carrier onboarding timelines and COI manual review practices: https://highway.com/posts/the-future-of-efficient-carrier-onboarding-in-freight-brokerage ; https://truckstop.com/blog/carrier-onboarding-monitoring/

---

### Assumptions to validate

[ASSUMED-1]: FreightValidate's claim that users reduce cargo theft incidents by 90% has not been independently audited.
- to validate: Request pre/post incident-rate data from FreightValidate enterprise customers; ask whether the 90% is measured against a comparable baseline or self-selected high-risk accounts

[ASSUMED-2]: CEFIC SQAS audit cost is approximately €1,500–€3,000 per assessment, inferred from market norms for accredited third-party logistics audits.
- to validate: Contact DQS Global, TÜV AUSTRIA, or AENOR for current SQAS tariff schedule

[ASSUMED-3]: Kargo Technologies' transporter vetting relies on document submission and reputation signals rather than a formal insurance-monitoring or safety-scoring system comparable to US tools.
- to validate: Interview Kargo BD team or 2–3 active shipper customers on their vendor-onboarding workflow specifics; ask whether COI-equivalent is collected and monitored

[ASSUMED-4]: Most US carrier-onboarding tools do not run beneficial-ownership (UBO) checks as part of standard carrier onboarding.
- to validate: Ask RMIS, MyCarrierPortal, and Highway sales teams whether UBO checks are included in standard product, and if not, whether customers request them

[ASSUMED-5]: No publicly available statistic exists on the percentage of US freight brokers (particularly the long tail of 28,000+ active brokers) running formal carrier-verification tools versus manual processes.
- to validate: Commission or source a TIA, DAT, or Truckstop member survey covering onboarding-tool adoption rates by broker revenue tier

---

*SEA presence summary (for all solutions in this stage):*
- **Yes (SEA native):** Kargo Technologies (Indonesia only), Logisly (Indonesia only), AsiaVerify (Singapore HQ, 14 APAC markets)
- **Unknown (global claim but no documented SEA footprint):** Overhaul, Transporeon
- **No:** Highway, Descartes MyCarrierPortal, Truckstop RMIS, Carrier Assure, Carrier411, FreightValidate, CargoNet, CEFIC SQAS

*Total solutions profiled: 13 (including 2 out-of-scope confirmed)*
*SEA-present: 3 (none equivalent to US-style RMIS/MyCarrierPortal depth)*
*Biggest data gap: SEA country-level market size; beneficial-ownership adoption rate in carrier onboarding*
