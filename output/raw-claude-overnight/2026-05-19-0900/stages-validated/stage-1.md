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

---

## Stage 1: Vendor Procurement & Sub-Carrier Onboarding (Counterparty Risk)

*Solutions covered: Highway, Carrier Assure, RMIS/Truckstop, Descartes MyCarrierPortal, Overhaul FraudWatch, CargoNet/Verisk, FreightValidate, AsiaVerify, Kargo Technologies, Logisly*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*

---

### Pain point 1.1

**Description:** Freight brokers and shippers suffer direct cargo losses and liability exposure because their carrier onboarding workflows pass noncompliant, fraudulent, or high-risk carriers without detecting the problem. Current tools — even automated ones — verify authority and insurance at a point in time but do not continuously monitor carrier status, ownership changes, or behavioral fraud signals throughout the load lifecycle. Carriers that pass initial screening regularly commit fraud during or after load assignment, costing the industry an estimated $725 million in losses in 2025 alone.

**Who bears it:** Freight brokers (28,351 active property brokers registered with FMCSA in the US; equivalent brokerage populations in EU and SEA), shippers using third-party logistics providers, and ultimately cargo owners whose freight is not recovered.

**Estimated cost:**
- Direct fraud losses: ~$725 million industry-wide across North America in 2025 (up from ~$454.9 million in 2024), of which roughly one-third is attributable to double-brokering and one-third to fictitious pickups/identity theft (1)(2)
- Average loss per fraudulent load: ~$40,000–$365,000 depending on fraud type; average fictitious pickup cost surged to $365,000 per incident in Q1 2024 (2)(3)
- Per-company fraud cost: TIA reports 22% of broker respondents lost more than $200,000 in a single six-month period (Sep 2024–Feb 2025); average accumulated company fraud cost approximately $400,000 (4)(2)
- Litigation tail: median trucking nuclear verdict reached $36 million; carrier insurance minimum of $750,000 (unchanged since 1980) covers less than 1.5% of the median nuclear verdict, leaving brokers exposed when they hired under-insured carriers (5)
- Indirect cost: investigation time per incident, reputational damage with shipper customers, and insurance premium increases for brokers with fraud claims history (unquantified but flagged in trade press) (1)(2)

**Willingness to pay:** Not sourced from buyer surveys. Highway SaaS entry point is undisclosed; Truckstop RMIS Lite starts at $340/month per brokerage seat; per-load pricing for tools like Load Lock adds transaction cost that established brokers absorb as cost of doing business. Implied ceiling based on average fraud loss per company (~$400,000/year) suggests substantial WTP, but no published WTP survey found.

**Frequency:**
- 83% of freight brokers experienced at least three types of fraud in the six months Sep 2024–Feb 2025; TIA Watchdog recorded 1,600+ reports in the same period, a 65% increase vs. the prior period (4)
- 14% of US motor carriers screened at pickup by Overhaul FraudWatch flagged as high-risk; 12% found operating without proper FMCSA authority (3)
- Strategic thefts (fictitious pickups, identity impersonation, document forgery) grew 1,475% between 2022 and 2024 and now represent approximately one-third of all cargo crime (1)(6)
- Descartes MyCarrierPortal received 4,468 incident reports in the 12 months Feb 2024–Jan 2025, approximately 3× the volume of competing fraud-reporting platforms (7)
- Truckstop blocked over 8,600 fraudulent carrier onboarding attempts in 2024; double-broker report volume up 400% since 2022 (2)
- Approximately 8% of FraudWatch-enabled shipments encountered high-risk carriers, drivers, or double-brokering attempts (3)

**Evidenced or assumed:**
(1) HDT Trucking Info — "Cargo Theft's New Playbook: Strategic Fraud, Double Brokering, and Cybercrime Hit Trucking": https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(2) Foreigh — "The Definitive Freight Fraud Report: A Comprehensive Analysis of Schemes, Impacts, and Countermeasures (2025)": https://foreigh.com/blog/freight-fraud-deep-dive
(3) FreightWaves / Overhaul — "Overhaul's FraudWatch: a new paradigm in freight fraud prevention": https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(4) Transportation Intermediaries Association (TIA) — "State of Fraud in the Industry April 2025 Report": https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(5) FreightWaves — "The Freight Broker Insurance Gap Is Now Real": https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(6) BSI Consulting and TT Club — "2024 Cargo Theft Report" (April 2025), PDF processed via markitdown: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(7) Descartes — "Protecting Your Freight: Descartes MyCarrierPortal Incident Reporting": https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting
(8) CargoNet (Verisk) — 2026 Q1 and 2025 full-year cargo theft statistics: https://www.cargonet.com/cargo-theft-data/
(9) AU10TIX / FreightValidate — "FreightValidate Users Reduce Cargo Theft Incidents by 90%": https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/ [Low confidence: vendor own claim, unaudited]
(10) FreightWaves — "Highway: building a fortress against freight fraud": https://www.freightwaves.com/news/highway-building-a-fortress-against-freight-fraud
(11) Highway — "The Hidden Risk Behind Sold MCs and Ownership Changes": https://highway.com/posts/whats-the-hidden-risk-behind-sold-mcs-and-ownership-changes
(12) C.H. Robinson — "How FMCSA Registration Changes Will Impact You in 2025": https://www.chrobinson.com/en-us/resources/blog/how-fmcsa-registration-changes-will-impact-you-in-2025/
(13) PR Newswire / AU10TIX — "AU10TIX Selected by FreightValidate" (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html

**Root Causes**

- **RC1: Point-in-time verification creates a structural window between onboarding and load execution during which carrier status degrades undetected** — Carrier authority, insurance, and safety status are verified at onboarding but the interval between onboarding and load assignment can be days or weeks; authority can be revoked, insurance can lapse, and ownership can change in the interim. FMCSA no longer requires carriers to file evidence of cargo insurance, so brokers receive no automated notification of lapses and must subscribe to separate monitoring tools to detect them. At large brokers using RMIS or MyCarrierPortal continuous monitoring is available, but the long tail of 28,000+ active US brokers has uneven adoption, and no equivalent monitoring infrastructure exists in SEA markets. (FreightWaves insurance gap analysis (5); Foreigh fraud deep-dive (2); FMCSA insurance filing rules)

- **RC2: Carrier identity theft exploits a one-way trust system where credentials are used but identity is not continuously re-verified at load execution** — US carrier identity tools (RMIS, MyCarrierPortal, Carrier Assure) verify the carrier entity against FMCSA data but do not verify the physical identity of the driver or dispatcher at the moment of load assignment or pickup. This creates an impersonation window: a bad actor who obtains a legitimate MC number — through purchase, theft, or shell company registration — presents clean FMCSA credentials while committing fraud. In June 2025, a 135% spike in suspicious MC ownership changes connected to cargo theft reports demonstrated that static credential checks do not protect against identity after credentials are acquired. Highway's Load Lock and FreightValidate's biometric layer partially address this at pickup, but adoption is concentrated at large brokers rather than the full market. (Highway MC ownership analysis (11); TIA fraud report (4); AU10TIX/FreightValidate (13))

- **RC3: FMCSA carrier registry is freely accessible and cheaply exploitable, creating a permanent pipeline of fraudulent new registrations** — FMCSA issued 8,000–9,000 new USDOT applications per month throughout 2024, with 98% of interstate applicants operating 1–5 trucks — the profile most consistent with fraudulent shell carriers. A new MC number can be obtained with minimal documentation; organized crime groups have purchased "thousands of MC numbers" to fuel operations. FMCSA's 2025 registration modernization adds photo ID and selfie verification for company officials, but the five-person Registration Fraud team represents a structurally insufficient response to the volume of new applicants. The resulting environment means that for every fraudulent carrier blocked by screening tools, new entities are registered to replace them. (CarrierDetails.com / FMCSA 2024 statistics (14); FMCSA registration modernization (12); Foreigh fraud analysis (2))

- **RC4: Tool fragmentation means no single workflow covers the full verification stack — brokers must assemble and maintain multiple point solutions** — The functional coverage of identity verification (Highway, FreightValidate), insurance monitoring (RMIS, MyCarrierPortal), safety scoring (Carrier Assure), and fraud intelligence (CargoNet) is divided across separate vendors with separate API integrations, TMS connectors, and subscription contracts. Even well-resourced brokers face integration overhead; small brokers cannot assemble the full stack at all. This structural fragmentation is not a technology failure but a market structure outcome: each vendor addresses one layer, no vendor owns the full risk surface, and the broker bears the integration burden. (Value-chain-mapper Stage 1 solutions analysis; Truckstop RMIS / Foreigh onboarding guide (2)(15))

- **RC5: SEA markets have no equivalent to FMCSA as a carrier safety registry, making US-designed tool architectures architecturally non-portable to the region** — US counterparty-risk tools are built on top of FMCSA SAFER as their ground truth for carrier authority and safety data. No equivalent centralized carrier safety and authority registry exists in Indonesia, Thailand, Malaysia, Vietnam, or the Philippines. Fragmented national registries (Indonesia's AHU Online + OSS for business entities; Thailand's Department of Land Transport; Vietnam's Ministry of Transport) use different data models, languages, and access mechanisms. Tools like Highway, RMIS, and MyCarrierPortal cannot be deployed in SEA without rebuilding their entire data layer — a barrier equivalent in cost to building a new product from scratch. AsiaVerify provides KYB/UBO across 14 APAC registries but is not freight-specific and does not provide safety data. (AsiaVerify product overview (16); CarrierDetails.com FMCSA data (14); ITF-OECD SEA freight regulatory analysis)

---

### Pain point 1.2

**Description:** Freight brokers and shippers lack a mechanism to verify beneficial ownership and persistent real identity of carrier entities, leaving them exposed to nominee-carrier schemes, shell-company double brokering, and sold MC number fraud that pass all standard FMCSA authority and insurance checks. The structural gap persists because current onboarding tools — including the most advanced US solutions — verify the carrier entity but not the human beings controlling it or the ultimate beneficial owner of the business.

**Who bears it:** Freight brokers (US long tail of 28,000+ active property brokers; SEA brokers and 3PLs operating across Indonesia, Thailand, Malaysia, Vietnam, Philippines); shippers engaging spot-market or informal transport capacity; insurers underwriting cargo policies for freight intermediaries.

**Estimated cost:**
- MC ownership-change fraud: In June 2025, a 135% spike in suspicious MC ownership changes was connected to cargo theft reports; average cargo theft per incident $200,000–$365,000 per event (3)(11)
- $35 billion upper-bound estimate for total US cargo theft losses including unreported incidents, with identity-fraud schemes forming a growing component — NICB estimate cited by AU10TIX/FreightValidate (9)(13)
- 11% of reported US freight fraud incidents in 2024 classified specifically as carrier identity theft; at an average $400,000 per company annual fraud cost, identity theft alone generates ~$44,000/year per affected broker (2)
- Litigation exposure when a broker hires a carrier whose true beneficial owner is a sanctioned entity, organized crime affiliate, or shell company: broker faces "negligent hiring" liability and coverage denial — median broker nuclear verdict $36 million; US minimum insurance ~$750,000 (5)
- Investigation cost per suspected ownership-change fraud incident: unquantified in trade press; operationally involves law enforcement referral and insurance claim dispute process that typically runs weeks to months [ASSUMED-1]: Investigation cost per fraudulent MC ownership-change event estimated at $10,000–$50,000 in internal labor, legal, and claim-management cost — to validate: interview freight broker risk managers and cargo claims adjusters for average cost per identity fraud investigation

**Willingness to pay:** Not sourced. [Interview placeholder: ask Highway, RMIS, and MyCarrierPortal enterprise sales teams whether UBO checks are being requested by large-broker customers and at what price point]

**Frequency:**
- 135% spike in suspicious MC ownership changes in June 2025 connected to cargo theft (Highway Freight Fraud Index) (11)
- 83% of brokers experienced at least three fraud types in six months; unlawful brokering (nominee/shell carrier schemes) was the primary tactic cited by 34% of TIA respondents (4)
- Over 200 unresolved insurance claims logged in TIA's fraud database in 2024, a structural residue of identity fraud after the fact (2)
- Indonesia: 64 million+ MSMEs, majority with inconsistent registry records; beneficial ownership verification requires paid detailed reports from AHU Online (~Rp 500,000 per query, ~$30) and registry fragmentation across AHU Online and OSS makes automated UBO checks operationally complex (16)
- [ASSUMED-2]: No public statistic on the percentage of US freight brokers running beneficial-ownership checks on carrier entities — to validate: commission or source a TIA/DAT member survey on onboarding practice by broker revenue tier

**Evidenced or assumed:**
(1) Highway — "The Hidden Risk Behind Sold MCs and Ownership Changes": https://highway.com/posts/whats-the-hidden-risk-behind-sold-mcs-and-ownership-changes
(2) Foreigh — "The Definitive Freight Fraud Report" (2025): https://foreigh.com/blog/freight-fraud-deep-dive
(3) FreightWaves / Overhaul FraudWatch: https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(4) TIA State of Fraud April 2025: https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(5) FreightWaves insurance gap analysis: https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(6) AU10TIX/FreightValidate — NICB $15–$35 billion estimate: https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/
(7) PR Newswire / AU10TIX (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html
(8) AsiaVerify — Indonesia company verification guide (2025): https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/
(9) AsiaVerify — product overview: https://asiaverify.com/
(10) BSI/TT Club 2024 Cargo Theft Report (PDF, markitdown): https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(11) Foreigh carrier onboarding guide (2025): https://foreigh.com/blog/carrier-onboarding-complete-guide-freight-brokers
(12) Authenticate.com — "Freight Brokerage Compliance: Mastering the New FMCSA Rules in 2025": https://authenticate.com/resources/blog/fmcsa-rules-2025/
(13) FinCEN BOI FAQ — Federal beneficial ownership reporting context: https://www.fincen.gov/boi-faqs

**Root Causes**

- **RC1: US carrier-onboarding tools verify the entity on record with FMCSA but are not designed to verify who controls that entity post-registration** — RMIS, MyCarrierPortal, Highway, and Carrier Assure all use FMCSA SAFER as their ground truth. FMCSA records reflect the entity at registration, not subsequent ownership changes. No FMCSA data field tracks beneficial ownership or real-time changes in company control. When an MC number is sold or transferred to a bad actor, all existing tools continue to return a "clean" result because the FMCSA record has not been updated — or the update itself is part of the fraud. This is a design constraint, not a product failure: the tools work correctly against the data they are built on, but that data does not contain beneficial ownership. (Highway sold-MC analysis (1); FMCSA registration structure per CarrierDetails.com (14 from PP1.1); C.H. Robinson FMCSA changes analysis (12 from PP1.1))

- **RC2: The FinCEN Beneficial Ownership Information registry (effective Jan 2024) does not reach freight carrier entities and creates no enforcement link to FMCSA** — The Corporate Transparency Act's BOI reporting requirements, administered by FinCEN, theoretically require small businesses including trucking companies to report beneficial owners. However, the FinCEN registry is not publicly accessible (law enforcement only), is not integrated with FMCSA SAFER, and has faced implementation delays and litigation. No mechanism exists for freight brokers to query FinCEN BOI data as part of carrier onboarding. This means the legal infrastructure for beneficial ownership reporting exists but creates zero practical benefit for freight counterparty verification. (FinCEN BOI FAQ (13); FMCSA regulatory gap per foreigh.com analysis (2))

- **RC3: No commercially available freight-specific tool bundles UBO verification with carrier safety and insurance data into a single decisioning layer** — AsiaVerify provides real-time UBO checks against 14 APAC government registries but is a general-purpose KYB/AML tool with no freight-specific data (no safety scores, COI monitoring, or authority checks). Highway verifies identity at pickup but does not run UBO on the carrier entity. RMIS and MyCarrierPortal do not run UBO checks as part of standard product. [ASSUMED-3]: No US or SEA freight-specific tool currently combines UBO/beneficial-ownership verification with carrier safety scoring and insurance monitoring in a single integrated product — to validate: confirm with RMIS, MyCarrierPortal, and Highway product teams whether UBO is in their roadmap or available as an add-on. The gap is structural: KYB vendors and freight-compliance vendors operate in separate markets with separate sales motions and separate data relationships, and no acquirer has yet bridged the two.

- **RC4: SEA carrier entity verification is structurally harder than in the US because registries are fragmented, language-gated, and not designed for automated API access** — In Indonesia, business entity data requires queries across AHU Online (company registry) and OSS (licensing), with detailed UBO extraction costing ~Rp 500,000 (~$30) per query and available only in Bahasa Indonesia without an intermediary. Thailand, Vietnam, and the Philippines each have distinct registry architectures, access protocols, and data quality levels. AsiaVerify has built direct registry integrations for 14 APAC markets, but freight operators in SEA have no awareness of or workflow integration with such a tool. The operational friction of cross-registry UBO lookups means most SEA shippers and 3PLs simply do not perform them, even informally. (AsiaVerify Indonesia guide (8); AsiaVerify product overview (9); World Bank LPI 2023 — Indonesia ranked 61st, average customs clearance 7 days vs. 1 day for Singapore)

---

### Pain point 1.3

**Description:** Small-to-mid-size freight brokers, emerging-market 3PLs, and SEA logistics operators onboard carriers through manual, spreadsheet-based workflows that are slow, costly, incomplete, and structurally unable to enforce compliance standards consistently. Manual certificate of insurance collection, paper-based carrier packet processing, and reference-check-dependent safety screening create an onboarding process that averages 1–4 days per carrier, costs $25–$50 per carrier in labor time, and fails to catch forged documents and expired coverage that a trained reviewer cannot detect visually.

**Who bears it:** The 28,000+ US active property brokers (70%+ are small businesses with $1–$5 million annual revenue per TIA); Southeast Asian shippers and 3PLs who have not adopted any structured onboarding platform; owner-operators in Indonesia, Thailand, and Vietnam engaging informal sub-carrier networks.

**Estimated cost:**
- Manual onboarding labor: $25–$50 per carrier in staff time (35–45 minutes per carrier at ~$20–$40/hour burdened cost); with automated tools, same process runs 30–60 minutes end-to-end (aggregate cost ~$1–$2 per carrier) (1)(2)
- Carrier abandonment cost: approximately 50% of carriers abandon manual onboarding processes before completion, requiring the broker to restart the process with a new carrier — each abandoned onboarding wastes $12–$25 in labor (from the partial completion) and delays load booking by hours [ASSUMED-4]: The 50% abandonment rate for manual carrier onboarding is cited in Highway/Truckstop marketing materials but lacks an independent primary survey source — to validate: run a carrier-side survey on onboarding abandonment reasons and frequency
- Forged-COI litigation risk: when a carrier submits a forged certificate of insurance and the broker fails to detect it, the broker faces "negligent hiring" liability on cargo claims against that carrier; median trucking verdict $36 million against under-insured carriers; no published statistic on forged-COI prevalence (5)
- Truckstop blocked 8,600+ fraudulent carrier onboarding attempts in 2024, indicating the volume of fraud attempts that manual processes would need to catch without automated tools (6)
- Total annual carrier onboarding and monitoring platform market (including manual-replacement value): estimated $1.4–1.5 billion globally (market research cluster) — Low confidence, single research cluster, no independent Tier-1 source cross-validation (7)

**Willingness to pay:** Truckstop RMIS Lite at $340/month is the market-floor data point for an automated replacement. Automated tools claim 80% faster onboarding vs. manual (Truckstop RMIS marketing — Low confidence, vendor own) and $400,000+ savings on litigation defense in case studies (Foreigh). Most small brokers' cost per carrier onboarding ($25–$50 manual vs. ~$1–$2 automated) suggests a WTP ceiling of $300–$500/month for a tool serving 10+ carriers/month, consistent with RMIS Lite pricing.

**Frequency:**
- Manual COI review involves someone opening a PDF, reading coverage limits, and comparing against minimum requirements — characterized as nearly entirely manual at small-to-mid-size US brokers (2)
- In 2025, leading brokerages automate 70–85% of onboarding steps, but this adoption is concentrated at large operators; the long tail of 28,000+ active brokers has no published adoption rate for structured tools (1)(2)
- Indonesia: 40% truck utilization rate; roughly three-quarters of Indonesia's 1.3 million trucks are owned by single-vehicle operators with no standardized onboarding, insurance, or safety record accessible to shippers (8)(9)
- Indonesia has 64 million MSMEs, the majority with inconsistent registration records — carrier verification in this market requires cross-registry queries that are not automated (10)

**Evidenced or assumed:**
(1) Foreigh — carrier onboarding complete guide (2025): https://foreigh.com/blog/carrier-onboarding-complete-guide-freight-brokers
(2) Highway blog — carrier onboarding: https://highway.com/posts/the-future-of-efficient-carrier-onboarding-in-freight-brokerage
(3) Truckstop blog — carrier onboarding monitoring: https://truckstop.com/blog/carrier-onboarding-monitoring/ [NEEDS-ATTENDED-FETCH: https://truckstop.com/blog/carrier-onboarding-monitoring/]
(4) Truckstop RMIS — product page and Tekpon review: https://tekpon.com/software/truckstop-rmis/reviews/
(5) FreightWaves insurance gap: https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(6) Foreigh freight fraud deep-dive: https://foreigh.com/blog/freight-fraud-deep-dive
(7) GrowthMarketReports — "Carrier Onboarding Platform Market Research Report 2033": https://growthmarketreports.com/report/carrier-onboarding-platform-market [Low confidence: secondary market research vendor, no Tier-1 cross-validation]
(8) TechCrunch — "Logisly raises $6 million Series A" (Nov 2020): https://techcrunch.com/2020/11/02/indonesian-logistics-platform-logisly-raises-6-million-series-a-to-digitize-truck-shipments/
(9) World Bank — "Improving Indonesia's Freight Logistics System" (World Bank working paper): https://documents1.worldbank.org/curated/en/617051540584814484/pdf/WP-PUBLIC-2015-WBG-Improving-Freight-Logistics.pdf [NEEDS-ATTENDED-FETCH: PDF failed to parse]
(10) AsiaVerify — Indonesia verification guide: https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/
(11) Descartes MyCarrierPortal — 350,000 COIs on file, carrier vetted in ~2 minutes: https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting
(12) TIA State of Fraud April 2025 — 70%+ of TIA members are small businesses $1–$5M revenue: https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(13) DHL Discover Indonesia — "6 Risks of Skipping Shipping Insurance": https://www.dhl.com/discover/en-id/logistics-advice/import-export-advice/6-dangers-of-not-getting-shipping-protection

**Root Causes**

- **RC1: Carrier compliance verification tools are designed for the North American FMCSA data environment and do not have a portable equivalent for SEA regulatory data architectures** — Highway, RMIS, MyCarrierPortal, and Carrier Assure are built on FMCSA SAFER as their data ground truth. This is not a gap that can be patched by adding an API integration: equivalent carrier safety registries with real-time data feeds, standardized insurance filing, and authority/revocation tracking simply do not exist in Indonesia, Thailand, Malaysia, or Vietnam. The World Bank LPI 2023 ranks Indonesia 61st (Philippines and Vietnam tied at 43rd, Thailand 34th) with noted deficiencies in logistics competence and infrastructure — the carrier data layer is a component of this infrastructure gap. Any tool serving SEA brokers and shippers must build local data relationships with national transport ministries, insurance regulators, and business entity registries — a data-acquisition cost that no current US-market tool vendor has funded. (World Bank LPI 2023 (17); AsiaVerify jurisdictional coverage (10))

- **RC2: The commercial incentive for building automated onboarding tools is concentrated at large-volume brokers, leaving the long tail — which represents the majority of the market by entity count — structurally unserved** — Tools like Highway (1,050+ broker customers including 70 of top 100) and Descartes MyCarrierPortal (thousands of subscribing companies) demonstrate that the large-broker tier has adopted automation. But 28,000+ active US property brokers exist; 70% of TIA membership generates $1–$5 million in annual revenue — a segment where per-seat SaaS costs of $340–$500/month represent a meaningful budget line item and where integration engineering overhead is prohibitive. In SEA, the economic case is even harder: most freight brokers and 3PLs in Indonesia and Vietnam are smaller and less technology-mature than US counterparts. The result is that manual processes remain default for the majority of the market by entity count. (FTV Capital / Highway investment note (18); TIA fraud report (12); CarrierDetails.com FMCSA broker count (14 from PP1.1))

- **RC3: COI fraud is visually indistinguishable at manual review and requires real-time insurer API verification to detect — a capability most small brokers do not have** — Carriers submit forged Certificates of Insurance with mismatched fonts, incorrect contact details, or Gmail addresses for the insurance agency. Manual reviewers compare the document against expected coverage levels but cannot verify the policy actually exists without calling the insurer directly or querying a real-time insurance-verification API. Small brokers lack both the time and the tool access to run real-time insurer verification. Truckstop RMIS maintains the largest COI database in North America (350,000+ carriers), but carriers not in its database require a separate verification step that defaults to manual. (Carrier Assure blog on COI errors; Truckstop RMIS database (11); Foreigh onboarding guide (1))

- **RC4: Indonesia's 1.3-million-truck fleet is dominated by single-vehicle owner-operators who have no formal safety record, COI registry, or verifiable operating history accessible to shippers** — Approximately three-quarters of Indonesia's trucks are owned by single-vehicle operators who bargain individually with shippers. These operators have not historically maintained COIs or safety records in a format compatible with structured onboarding tools. Digitization via Kargo Technologies and Logisly has begun — Kargo's 50,000-truck network and Logisly's 40,000-truck coverage provide marketplace-based onboarding — but the vetting methodology of both platforms is not publicly documented and almost certainly relies on document submission and reputation signals rather than continuous insurance monitoring or safety scoring. This structural feature of the Indonesian trucking market cannot be resolved by tool design alone; it requires carrier formalization at the market level. [ASSUMED-5]: Kargo Technologies and Logisly do not run continuous insurance monitoring equivalent to Truckstop RMIS — to validate: interview Kargo BD team and active shipper customers on vetting workflow specifics; ask whether COI-equivalent is collected and continuously monitored. (Logisly TechCrunch (8); DHL Indonesia insurance risks (13); AsiaVerify registry analysis (10))

---

### Pain point 1.4 — New pain point (not in original hypothesis)

**Description:** Freight brokers and cargo insurers face a structural gap between the insurance coverage they require carriers to hold ($750,000 minimum auto liability under FMCSA rules, unchanged since 1980) and the actual verdict exposure from nuclear verdicts in trucking litigation (median $36 million; average $27.5 million 2020–2023). Carrier-onboarding tools verify that carriers meet the FMCSA minimum insurance threshold, but this verification is now commercially meaningless as protection against broker liability: a carrier can pass every insurance check and leave the broker holding exposure equivalent to 1.5% or less of the median nuclear verdict. This is a systemic coverage gap that no current counterparty-risk solution is designed to address.

**Who bears it:** Freight brokers, shippers engaging brokers who hired underinsured carriers, and cargo insurers underwriting contingent cargo and broker liability policies.

**Estimated cost:**
- Median trucking nuclear verdict (verdicts >$1M): $36 million — against a minimum carrier insurance floor of $750,000 (1)
- Average trucking verdict 2020–2023: $27.5 million (1)
- $750,000 adjusted for inflation since 1985 would be ~$2.2 million; adjusted for medical/death award increases, ~$3.7 million — current minimum covers under 1.5% of median nuclear verdict (1)
- Largest US trucking verdict in history (2021): $1 billion (1)
- Broker surety bond requirement: $75,000 — covers only payment defaults, not tort liability (1)
- Insurer exposure: US cargo theft losses $454.9 million reported in 2024 per CargoNet; total including unreported estimated $15–$35 billion per NICB (2)(3)

**Willingness to pay:** Not sourced from carrier-onboarding buyer surveys. Freight broker liability insurance and contingent cargo insurance are existing paid products; broker WTP for tools that provide better carrier insurance verification is evidenced by RMIS market pricing but not quantified above the current platform cost. [Interview placeholder: ask freight broker liability insurers whether claims frequency from "negligent hiring of underinsured carrier" is rising and at what premium delta]

**Frequency:**
- Every FMCSA-registered carrier that passes basic insurance verification is technically compliant but potentially massively underinsured relative to litigation exposure
- Truck-tractor tort case filings grew at an average annual rate of 3.7% between 2014 and 2023; nuclear verdict frequency is rising (1)
- 90% of shipments estimated to be uninsured or underinsured — industry estimate (4)

**Evidenced or assumed:**
(1) FreightWaves — "The Freight Broker Insurance Gap Is Now Real": https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(2) CargoNet (Verisk) — 2025/2026 cargo theft data: https://www.cargonet.com/cargo-theft-data/
(3) AU10TIX / NICB — $15–$35 billion annual cargo theft estimate: https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/
(4) DAT Freight & Analytics — carrier insurance guidance: https://www.dat.com/solutions/freight-broker-insurance
(5) Valley Trucking Insurance — "Load Board Liability Gap": https://www.valleytruckinginsurance.com/the-liability-gap-between-broker-load-boards-and-carrier-policies/
(6) DAT — "The Do's and Don'ts of Insurance for Freight Brokers": https://www.dat.com/blog/dos-and-donts-of-freight-broker-insurance-coverage
(7) FMCSA — Insurance Filing Requirements: https://www.fmcsa.dot.gov/registration/insurance-filing-requirements
(8) Carrier Assure / Descartes MyCarrierPortal — coverage threshold verification as standard product feature: https://www.mycarrierportal.com/partners/carrier-assure/
(9) Logistiq — "Excess Cargo Insurance: A Freight Broker's Guide": https://logistiq.com/excess-cargo-insurance-a-freight-brokers-guide/

**Root Causes**

- **RC1: The FMCSA minimum insurance threshold is a legislative floor set in 1985 that Congress has not updated to reflect current medical costs, litigation environment, or cargo values** — The $750,000 auto liability minimum was established in 1985 and has never been updated. Inflation alone would require a floor of ~$2.2 million today; adjusting for the increase in median verdicts would require $3.7 million. Raising the statutory floor requires Congressional action through the Senate Commerce Committee; no successful bill has passed since the threshold was set. Without a regulatory floor increase, the entire carrier-onboarding compliance stack is optimizing for a standard that has been commercially obsolete for decades. (FreightWaves insurance gap analysis (1))

- **RC2: Carrier-onboarding tools are designed to check compliance against regulatory minimums, not against actual broker or shipper risk exposure** — RMIS, MyCarrierPortal, and Highway all verify carrier insurance against the FMCSA-required threshold. None of them assess whether that coverage level is adequate relative to the cargo value being moved, the jurisdiction, or the broker's litigation exposure. This is a scope boundary built into every product: the tool tells you whether the carrier is legally compliant, not whether compliance is sufficient. No product has yet been built that maps carrier insurance adequacy against cargo value plus broker liability exposure in real time. (RMIS product documentation (4 from PP1.3); FreightWaves analysis (1); Carrier Assure partnership (8))

- **RC3: Contingent cargo insurance and broker liability insurance are purchased separately from carrier-onboarding tools, creating a coverage gap that is invisible within the onboarding workflow** — Even when brokers carry contingent cargo insurance (not required by law), that insurance activates only when the carrier's policy fails to cover a claim. The broker must first pursue the carrier's insurer and demonstrate non-recovery before their own contingent policy responds. This creates a multi-step, multi-party coverage chain that is operationally complex and frequently contested. The onboarding tool does not model this chain; it only confirms the carrier's certificate exists at time of check. [ASSUMED-6]: No carrier-onboarding platform currently models the full multi-party coverage chain (carrier insurance → contingent cargo → broker liability) as a single decisioning layer visible to the broker at point of load assignment — to validate: interview RMIS, MyCarrierPortal, and freight broker liability insurers on whether integrated coverage-adequacy assessment exists or is in product roadmap. (FreightWaves analysis (1); Logistiq excess cargo guide (9))

---

### New pain points surfaced beyond working hypotheses

Pain point 1.4 above (the insurance coverage gap and nuclear verdict mismatch) was not part of Working Hypothesis 1 and was surfaced during research. The core finding is that onboarding tool verification is correctly performing against its design spec — the problem is that the design spec (FMCSA minimum insurance) is commercially obsolete, and no current tool bridges the gap between regulatory compliance and actual risk exposure. This represents a whitespace opportunity for a solution that combines carrier onboarding verification with real-time coverage adequacy assessment and broker liability modeling.

---

### Hypothesis test: WH1

**Working Hypothesis 1:** "Vendor-procurement blind spots: shippers and 3PLs onboard sub-carriers using spreadsheets and reference checks; few tools verify operator legitimacy, insurance coverage, safety record, or beneficial ownership at the small-transporter tier."

**Finding: Partially evidenced, with important structural nuance.**

- Strongly evidenced for SEA and small-broker tier: no freight-specific counterparty-risk tool comparable to RMIS or MyCarrierPortal exists in Thailand, Malaysia, Singapore, Vietnam, or Philippines. Indonesia has Kargo and Logisly as partial marketplace-based solutions with undocumented vetting depth. The ~50% carrier abandonment rate in manual processes and the 35–45 minutes per-carrier manual labor time confirm spreadsheet-based workflows remain dominant at small-to-mid operators.
- Partially contradicted for large US brokers: Highway (1,050+ brokers including 70 of top 100), RMIS (Coyote, Echo, BNSF, Penske), and MyCarrierPortal (thousands of companies) show that large-broker automation adoption is material.
- Beneficial ownership element confirmed as structurally unaddressed: No US tool runs systematic UBO checks. The June 2025 135% spike in MC ownership-change fraud confirms this gap has direct financial consequences.
- One hypothesis element rejected: the hypothesis implies the pain is primarily at onboarding. Research shows that post-onboarding monitoring failure (continuous insurance lapse, ownership change detection) is at least as large a contributor as initial onboarding gaps. The pain is not just at the vendor-procurement moment — it persists through the load lifecycle.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Investigation cost per fraudulent MC ownership-change event estimated at $10,000–$50,000 in internal labor, legal, and claim-management cost — to validate: interview freight broker risk managers and cargo claims adjusters for average cost per identity fraud investigation

[ASSUMED-2]: No public statistic on the percentage of US freight brokers running beneficial-ownership checks on carrier entities — to validate: commission or source a TIA/DAT member survey on onboarding practice by broker revenue tier

[ASSUMED-3]: No US or SEA freight-specific tool currently combines UBO/beneficial-ownership verification with carrier safety scoring and insurance monitoring in a single integrated product — to validate: confirm with RMIS, MyCarrierPortal, and Highway product teams whether UBO is in their roadmap or available as an add-on

[ASSUMED-4]: The ~50% abandonment rate for manual carrier onboarding is cited in Highway/Truckstop marketing materials but lacks an independent primary survey source — to validate: run a carrier-side survey on onboarding abandonment reasons and frequency

[ASSUMED-5]: Kargo Technologies and Logisly do not run continuous insurance monitoring equivalent to Truckstop RMIS — to validate: interview Kargo BD team and active shipper customers on vetting workflow specifics; ask whether COI-equivalent is collected and continuously monitored

[ASSUMED-6]: No carrier-onboarding platform currently models the full multi-party coverage chain (carrier insurance → contingent cargo → broker liability) as a single decisioning layer — to validate: interview RMIS, MyCarrierPortal, and freight broker liability insurers on whether integrated coverage-adequacy assessment exists or is in product roadmap

---

### SEA presence summary for solutions in this stage

- **Yes (SEA native):** Kargo Technologies (Indonesia only, ~50,000 trucks), Logisly (Indonesia only, ~40,000 trucks), AsiaVerify (Singapore HQ, 14 APAC markets — general KYB/UBO, not freight-specific)
- **Unknown (global claim, no documented SEA footprint):** Overhaul (7 global control towers claimed; no named SEA office or carrier-registry integration)
- **No:** Highway, Descartes MyCarrierPortal, Truckstop RMIS, Carrier Assure, Carrier411, FreightValidate, CargoNet (Verisk), CEFIC SQAS, Transporeon (Trimble)
- **Biggest SEA data gap:** No carrier-registry equivalent to FMCSA SAFER exists in Indonesia, Thailand, Malaysia, Vietnam, or Philippines; the building block on which all US tools depend is structurally absent

---

### Sources master list (this stage)

(1) FreightWaves — "The Freight Broker Insurance Gap Is Now Real": https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(2) Foreigh — "The Definitive Freight Fraud Report: A Comprehensive Analysis of Schemes, Impacts, and Countermeasures (2025)": https://foreigh.com/blog/freight-fraud-deep-dive
(3) FreightWaves / Overhaul — "Overhaul's FraudWatch: a new paradigm in freight fraud prevention": https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(4) Transportation Intermediaries Association — "State of Fraud in the Industry April 2025 Report": https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(5) BSI Consulting / TT Club — "2024 Cargo Theft Report" (April 2025), PDF markitdown-processed: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(6) HDT Trucking Info — "Cargo Theft's New Playbook: Strategic Fraud, Double Brokering, and Cybercrime": https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(7) Descartes — "Protecting Your Freight: Descartes MyCarrierPortal Incident Reporting": https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting
(8) CargoNet (Verisk) — 2025/2026 cargo theft statistics: https://www.cargonet.com/cargo-theft-data/
(9) AU10TIX / FreightValidate — "FreightValidate Users Reduce Cargo Theft Incidents by 90%": https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/ [Low confidence: vendor own claim, unaudited]
(10) PR Newswire / AU10TIX — "AU10TIX Selected by FreightValidate" (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html
(11) Highway — "The Hidden Risk Behind Sold MCs and Ownership Changes": https://highway.com/posts/whats-the-hidden-risk-behind-sold-mcs-and-ownership-changes
(12) Foreigh — "Carrier Onboarding Complete Guide for Freight Brokers (2025)": https://foreigh.com/blog/carrier-onboarding-complete-guide-freight-brokers
(13) FinCEN — Beneficial Ownership Information FAQ: https://www.fincen.gov/boi-faqs
(14) C.H. Robinson — "How FMCSA Registration Changes Will Impact You in 2025": https://www.chrobinson.com/en-us/resources/blog/how-fmcsa-registration-changes-will-impact-you-in-2025/
(15) AsiaVerify — Indonesia company verification guide (2025): https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/
(16) AsiaVerify — product overview: https://asiaverify.com/
(17) World Bank LPI 2023 press release: https://www.worldbank.org/en/news/press-release/2023/04/21/world-bank-releases-logistics-performance-index-2023
(18) FTV Capital / Highway — "Highway Secures Strategic Growth Equity Investment Led by FTV Capital" (Aug 2025): https://ftvcapital.com/2025/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital/
(19) CarrierDetails.com / FMCSA — "The Freight Industry by the FMCSA Data: 2024 in Review": https://carrierdetails.com/post/the-freight-industry-by-the-fmcsa-data-2024-in-review/
(20) TechCrunch — "Logisly raises $6 million Series A" (Nov 2020): https://techcrunch.com/2020/11/02/indonesian-logistics-platform-logisly-raises-6-million-series-a-to-digitize-truck-shipments/
(21) DHL Discover Indonesia — "6 Risks of Skipping Shipping Insurance": https://www.dhl.com/discover/en-id/logistics-advice/import-export-advice/6-dangers-of-not-getting-shipping-protection
(22) Authenticate.com — "Freight Brokerage Compliance: Mastering the New FMCSA Rules in 2025": https://authenticate.com/resources/blog/fmcsa-rules-2025/
(23) DAT — "Freight Broker Insurance": https://www.dat.com/solutions/freight-broker-insurance
(24) Valley Trucking Insurance — "Load Board Liability Gap": https://www.valleytruckinginsurance.com/the-liability-gap-between-broker-load-boards-and-carrier-policies/
(25) Logistiq — "Excess Cargo Insurance: A Freight Broker's Guide": https://logistiq.com/excess-cargo-insurance-a-freight-brokers-guide/
(26) GlobeNewswire / Descartes — "Descartes Acquires MyCarrierPortal" (Sept 2024): https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html
(27) FTV Capital / Highway investment note (Aug 2025): https://ftvcapital.com/2025/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital/
(28) Carrier Assure / MyCarrierPortal partner page: https://www.mycarrierportal.com/partners/carrier-assure/
(29) FMCSA — Insurance Filing Requirements: https://www.fmcsa.dot.gov/registration/insurance-filing-requirements
(30) Highway blog — carrier onboarding future: https://highway.com/posts/the-future-of-efficient-carrier-onboarding-in-freight-brokerage
