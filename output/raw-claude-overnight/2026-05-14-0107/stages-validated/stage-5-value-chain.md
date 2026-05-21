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
