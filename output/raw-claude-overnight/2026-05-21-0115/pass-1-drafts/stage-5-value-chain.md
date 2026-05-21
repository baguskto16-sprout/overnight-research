## Stage 5: Delivery — POD, Last-Leg Verification & Security

**Research date:** 2026-05-21
**Geography:** Worldwide; SEA (Singapore, Indonesia, Thailand, Malaysia) flagged throughout
**Builds on:** Stage 3 documented Tive/Roambee cargo-sensor condition monitoring and in-transit IoT tracking; Stage 4 documented control towers and ePOD as a data feed into multi-party handoff orchestration. Stage 5 focuses exclusively on the moment of cargo arrival at the B2B consignee and the final-leg security perimeter: ePOD capture, receiving inspection, physical last-leg security (escort/convoy), and marine surveyor inspection at port-of-discharge. Do not re-document in-transit IoT sensors (Stage 3) or multi-party control towers (Stage 4).

---

### Description

Stage 5 is the final-leg moment: cargo arrives at a commercial or industrial consignee (not a residential address), and three distinct risk dimensions must be managed simultaneously. First, evidentiary risk — a digitally timestamped, GPS-anchored, photo-substantiated, signatory-identified proof-of-delivery record that is legally sufficient to bar a cargo claims dispute; paper signature replaced by ePOD mobile capture is the primary solution vector. Second, last-leg physical security — the window from departure of the origin warehouse or port gate to the consignee receiving dock is the highest-risk leg for hijack, cargo diversion, and fictitious delivery; GPS-trackable cages, convoy escort services, and secure logistics firms address this risk. Third, independent condition verification — particularly at ports of discharge for bulk commodities, break-bulk, and high-value industrial shipments, marine surveyors (SGS, Bureau Veritas, Intertek, Cotecna) and cargo inspectors provide independent quantity and quality attestation that is a prerequisite for cargo insurance claims and trade finance settlement. The actors consuming Stage 5 solutions are: large shippers (CPG, pharma, industrial) who need claims-bar evidence; 3PLs and last-mile carriers whose driver workforce executes the delivery and whose liability exposure depends on POD quality; port agents and terminal operators managing cargo release; and trade finance banks requiring independent cargo attestation before releasing payment. SEA-specific dimensions include extremely high paper-POD penetration in Indonesia and Malaysia domestic trucking, absence of biometric or photo-mandatory ePOD standards, port-discharge marine surveyor concentration in Singapore (Port of Singapore is the world's busiest transhipment hub with 39.0 million TEUs in 2024), and documented underreporting of last-leg cargo theft relative to EMEA (TAPA APAC TIS recorded only 343 verified APAC incidents in 2023 vs. 156,503 EMEA incidents — a stark underreporting differential attributed to low reporting culture rather than low incidence).

---

### Activities

1. **Electronic proof-of-delivery capture at the consignee dock.** Driver or delivery agent opens a mobile ePOD app at the point of delivery, captures: GPS coordinates (confirming the correct delivery address), timestamp, electronic or biometric signature from the authorized consignee representative, one or more photos of the cargo in condition at delivery (package/pallet condition, serial number verification for high-value goods), and any short/excess or damage notation. The record is uploaded in real time to a cloud platform accessible to the shipper's claims team and TMS. The shift from paper POD to ePOD eliminates the 24-72 hour lag in paper document return; TT Club and BSI's 2024 Cargo Theft Report documents how "manipulation of paperwork can facilitate unfettered access to cargo and allow criminals to access large volumes over time" — ePOD with GPS-anchoring closes this manipulation vector. (1)

2. **Receiving inspection and condition-versus-BOL discrepancy documentation.** At the consignee's receiving dock, goods are compared against the bill of lading description: quantity count (unit, case, pallet), physical condition (visible damage, packaging breach, seal integrity), temperature log download for cold-chain cargo, and serial-number or batch-number verification for regulated goods (pharma, electronics). Any discrepancy is documented with photos and timestamp within the ePOD system, creating the claims-bar evidentiary record. McKinsey's analysis of mid- and last-mile logistics handovers estimates $45–66B per year in B2B losses attributable to waste at blind handoffs, including short deliveries, damage disputes, and re-delivery costs. (2)

3. **Marine surveyor and independent cargo inspection at port-of-discharge.** For bulk liquid, bulk solid (coal, grain, metal ore), break-bulk, and high-value industrial cargo, the consignee or the trade finance bank instructs an independent inspection firm (SGS, Bureau Veritas, Intertek Caleb Brett, Cotecna, Saybolt) to conduct a draught survey (quantity by ship displacement), cargo condition survey (sampling and lab analysis for contamination or quality deviation), and out-turn survey (cargo recovered from vessel holds vs. bill of lading). The inspection report is the primary document used to trigger: (a) cargo insurance claims for shortage or quality loss, (b) payment release by the issuing bank in a letter-of-credit transaction, and (c) regulatory customs valuation. Port of Singapore (world's busiest transhipment hub, 39.0M TEUs 2024) and Port of Tanjung Priok (Indonesia's primary container gateway, ~9M TEUs 2024) are the primary SEA locations where this activity occurs. (3)

4. **Physical last-leg security: convoy escort, GPS-monitored vehicles, and secure handoff protocols.** For high-value shipments (electronics, pharmaceuticals, precious metals, fuel) transiting high-risk road corridors, a dedicated escort vehicle (manned by armed security guards from firms such as G4S, Securitas, GardaWorld, Brink's, or regional firms) accompanies the cargo truck from the port gate or warehouse to the consignee. The cargo may also be transported in GPS-trackable, tamper-evident steel cages or ISO-standard locked containers with active GPS and tamper sensors. A secure handoff protocol requires driver identification verification (match driver ID to carrier booking) and consignee representative authentication before release. CargoNet data for 2024 documents 3,625 US cargo theft incidents at an average loss of $202,364 per incident, with fictitious pickups (fraudulent handoff at the delivery address) representing the fastest-growing vector at nearly one-third of identity-based theft events. **[Correction 2026-05-21: a "+303%" fictitious-pickup growth figure cited in earlier drafts could not be matched to CargoNet's published year-over-year data; CargoNet's own data shows fictitious-pickup events rose to ~574 in 2024 (+50% YoY) and stand roughly an order of magnitude above the long-run historical baseline (~66/year prior to 2022) — preferred phrasing in derivative outputs.]** (4, 5)

5. **Claims evidence package assembly and dispute resolution support.** The ePOD system and marine surveyor report combine to form a claims evidence package submitted to cargo insurers within the notice-of-claim window (typically 3 days for concealed damage, immediate for visible damage under most freight contracts). Claims processors (insurance adjusters, 3PL claims teams) use the GPS+timestamp+photo+signatory record to adjudicate disputes. Absence of ePOD leaves claims in a "he said/she said" evidentiary state that defaults to the stronger contractual party — typically the carrier — under standard freight contract terms. TT Club (the primary cargo insurer and P&I club for freight operators) uses its annual claims data to confirm that documentation quality is the single largest determinant of claims success rate.

---

### Revenue Model

**ePOD software (standalone and TMS-bundled):** Per-driver per-month SaaS subscription ($29–$150/driver/month for SME standalone; enterprise TMS-bundled ePOD (Oracle OTM, SAP TM, Manhattan Associates, Descartes) priced as modules within parent TMS enterprise contract at $500K–$5M+ total ACV); per-task pricing available ($0.15–$0.25/delivery task). **Marine surveyor / TIC cargo inspection:** Fee-for-service per-inspection or per-shipment (typically $500–$5,000+ per vessel survey engagement for bulk draught surveys; $200–$800 per container for condition inspection; higher for lab analysis); annual framework agreements with major commodity traders and banks. SGS total TIC revenue CHF 6,794M (2024); Bureau Veritas EUR 6,241M (2024); Intertek £3.4B (2024). Cargo inspection is a subset of their broader TIC business. **Physical security / escort:** Contract guarding fee per-guard per-shift plus escort vehicle and equipment charge; GardaWorld total revenue ~$5.9B FY2024; Securitas SEK 161,921M ($15.3B) FY2024; Brink's record $5.012B 2024; escort services are a specialty sub-product of these platforms, not separately disclosed. **GPS-trackable cages/smart locks:** Hardware sale ($800–$3,000 per cage unit) plus SaaS monitoring subscription ($30–$100/unit/month).

---

### Cost Drivers

**ePOD SaaS vendors:** Mobile app development and maintenance across iOS/Android; carrier/driver onboarding and support; API integration cost with TMS/ERP systems; cloud data infrastructure for real-time GPS and photo storage; customer success for enterprise deployments. **Marine surveyor firms:** Lab infrastructure (spectrometry, chromatography, physical testing) and maintenance; licensed surveyor headcount and regional deployment cost; accreditation and certification maintenance (ISO 17020, IFIA, CASCO); port access fees and equipment logistics; professional indemnity insurance for high-value cargo opinions. **Physical security firms:** Labor cost (guard salaries, benefits) is the dominant cost at 55–70% of revenue for guarding businesses; armored vehicle fleet depreciation and maintenance; training and licensing compliance per jurisdiction; insurance for armed escort operations.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global ePOD / proof-of-delivery software market (2024) | $1.42B–$2.1B | Low — commercial market research sources only; range reflects scope divergence across firm definitions (software-only vs. platform); no government statistical agency publishes this figure. Cross-check: Onfleet $35M revenue (2024) + DispatchTrack $8.5M ARR + FarEye $149M revenue = ~$193M from three mid-market players; enterprise TMS-bundled ePOD (Oracle, SAP, Manhattan) embedded revenues not separately disclosed, indicating a broader market well above the named standalone figures. DataIntelo $1.42B; MarketWide $2.1B | (6), (7) |
| Global ePOD software market CAGR (2025–2033) | 17.8%–22.5% | Low — commercial market research; no independent validation; directional only | (6), (7) |
| Global cargo inspection market (2024) | $2.94B | Low-Medium — Straits Research primary figure; consistent with bottom-up: SGS cargo-inspection revenue subset (~$600M est.), Bureau Veritas Agri-Food & Commodities (~$530M est. at 8.5% of EUR 6.24B), Intertek ATIC/Caleb Brett (~$400M est.) suggests $1.5B+ from three named firms alone in this sub-segment | (8) |
| Global marine survey services market (2024) | $4.49B | Low-Medium — Research and Markets; CAGR 6.19%; no IMO or UNCTAD government primary source cross-validated | (9) |
| Global TIC (Testing, Inspection, Certification) market (2024) | ~$200B | Medium — TIC Council Annual Report 2024 (industry association); SGS, Bureau Veritas, Intertek together ~$16B representing ~8% of total; cargo inspection is a structurally important subset but not separately quantified by any government statistical agency | (10) |
| Global secure logistics market (2024) | $90.6B–$101B | Low — wide range across commercial research (Grand View Research, Market Research Future, Fortune Business Insights); includes cash-in-transit, armored vehicles, digital security — scope is far broader than cargo escort/convoy which is not separately disclosed by any major firm; treat as directional for physical security market context only | (11), (12) |
| B2B mid-and-last-mile handoff waste annual (global) | $45B–$66B | Medium — McKinsey analysis of waste attributable to undigitized handoffs at delivery points; includes short deliveries, damage disputes, failed delivery re-work; total including broader handoff waste cited as $65B–$95B | (2) |
| APAC cargo crime losses (2023, TAPA TIS data) | $200.6M verified + material underreporting | Medium — TAPA APAC TIS 2023 Annual Report; 343 verified APAC incidents; TAPA explicitly flags "alarming underreporting" — APAC incidents are 0.2% of global TIS data while EMEA is 99.7%; USD $200.6M is the verified floor, not total market loss | (13) |
| North America cargo theft market (2024) | 3,625 incidents; $455M+ losses; avg. $202,364/incident | High — CargoNet primary data (Verisk subsidiary); 27% increase from 2023; average per-incident value $202,364; identity-based scams now ~1 in 3 theft incidents | (4) |

**Data gap:** No government statistics agency (BPS Indonesia, MIDA Malaysia, NSO Thailand, SingStat) publishes a country-specific market size for ePOD software, cargo inspection services, or cargo escort/convoy security in ASEAN. Country-level market sizing for SEA ePOD requires primary research with logistics associations (Indonesia National Shippers Council/ALFI, Malaysian Shippers Council, Singapore Logistics Association) or investment-bank-commissioned analysis.

---

### Solution Archetypes

#### Archetype A — Electronic Proof of Delivery (ePOD) — Standalone Mobile Capture Platforms

**What it does:** Mobile application installed on a driver's smartphone or tablet that captures at the delivery point: GPS coordinates, timestamp, electronic signature (touchscreen), photo documentation (cargo condition, delivery address, signatory face in some implementations), item scan (barcode/QR), and discrepancy notes. Syncs in real time to a cloud platform accessible to dispatchers, shippers, and claims teams. Some platforms add biometric signatory verification (face match) and customer notification (SMS/email with delivery link).

**Primary user:** Last-mile carriers and 3PLs who need to replace paper POD with an auditable digital record; shippers who require ePOD data as input to their TMS/WMS/ERP for automatic invoice triggering and claims management.

**Business model and pricing:**
- Track-POD (Warsaw, Poland): Per-driver SaaS at $29/driver/month (basic) to $39/driver/month (Pro); per-task model at $0.15/task (L Plan = 6,000 tasks/month at $900/month); enterprise custom. (14)
- Onfleet (San Francisco; $40M+ total funding, $14M Series A + $23M Series B): $149/month entry; Scale plan (5,000 tasks) $1,265+/month; $0.25/task; enterprise custom; $35M revenue 2024 (Getlatka; unaudited). (15)
- DispatchTrack (San Jose; $144M Series A from Spectrum Equity, May 2020): Enterprise-only; serves furniture/appliances/building materials/food distribution; $8.5M ARR 2024 (Getlatka; unaudited). (16)
- FarEye (New Delhi; $100M Series E, TCV investor; $149M revenue FY2024-25, 25.9% YoY growth; 85%+ recurring revenue): Enterprise-grade last-mile platform with ePOD, route optimization, and workforce management; customers include Zalora, ACommerce, Sephora in SEA. SEA flag: Yes — SEA enterprise customers documented. (17)
- Beans.ai (San Francisco; $3.2M seed, 2021; route optimization + ePOD): SME-focused; no enterprise revenue disclosed. SEA flag: Not documented.
- GetSwift (former ASX:GSW): Listed-then-delisted from ASX; software sold to US property fund Stage Equity Partners for $10M; operational status unclear as of May 2026. Do not treat as active market participant. (18)

**Pros:** Eliminates paper document return lag (24-72 hours to real-time); GPS+timestamp+photo creates claims-bar evidentiary record; integrates with TMS/ERP for automatic invoicing; photo documentation of cargo condition at delivery creates clear damage attribution.

**Cons:** Driver adoption requires training and discipline enforcement; connectivity-dependent (offline mode needed in low-signal areas common in rural Indonesia and Malaysia); photo quality depends on driver execution; does not verify that the signatory is the authorized consignee representative (just captures whoever signs); biometric verification adds cost and privacy compliance burden under PDPA (Thailand), PDPA (Malaysia), and Indonesia's PDP Law.

**SEA presence:** FarEye is the only standalone platform with confirmed SEA enterprise customer references (Zalora, ACommerce). Track-POD and Onfleet are primarily NA/EU markets with no confirmed SEA office.

---

#### Archetype B — TMS-Bundled ePOD Modules (Enterprise)

**What it does:** ePOD functionality embedded within a Transportation Management System (TMS) or fleet management platform. Gives shippers and 3PLs ePOD without a standalone app — drivers use the TMS mobile component. Data flows directly into the TMS for invoice triggering, carrier performance scoring, and exception management. Stage 4 control towers (documented in Stage 4) consume this data as an input.

**Primary user:** Enterprise shippers and large 3PLs already running Oracle OTM, SAP TM, Manhattan Associates, MercuryGate, or Descartes TMS; carrier fleets running Samsara, Motive, Karooooo/Cartrack (documented in Stage 3) whose platforms include driver-facing delivery confirmation modules.

**Named platforms:**
- **Oracle OTM (Transportation Management):** Enterprise TMS with mobile driver app including ePOD capture; integrated with Oracle Cloud ERP; pricing is part of broader Oracle Cloud subscription (custom enterprise, typically $1M-$10M+ per year for large shippers). No standalone ePOD pricing disclosed. [ASSUMED-1]
- **SAP TM (Transportation Management):** Bundled into SAP S/4HANA; driver app for ePOD capture; integrated with SAP EWM (warehouse) and FI/CO (finance) for automatic delivery confirmation and billing. SAP total revenue €33.3B FY2024; TM module pricing not separately disclosed. [ASSUMED-1]
- **Descartes ePOD (Routing, Mobile and Telematics):** Descartes' standalone ePOD module for its routing customers; iOS/Android compatible; integrates with ERP (Hansa and others); used by building materials distributor Scott Parnell (UK) for construction/rail/infrastructure deliveries. Descartes FY2025 total revenue $630M+ (audited). SEA: Descartes has APAC logistics software but ePOD module is primarily NA/EU documented. (19)
- **Manhattan Active TM:** Enterprise TMS with carrier execution and ePOD; Manhattan Associates FY2024 revenue $1.00B (audited; 18% growth). SEA: Manhattan has APAC presence; no SEA-specific ePOD reference customers confirmed. [ASSUMED-2]
- **MercuryGate TMS:** Enterprise TMS with mobile ePOD; acquired by Constellation Software (TSX: CSU) in 2022; no separate revenue disclosed. [ASSUMED-2]

**Note:** Karooooo/Cartrack (Stage 3), Samsara (Stage 3), Motive (Stage 3), and TransTRACK (Stage 3) all include driver-facing delivery confirmation in their fleet management platforms — this is their version of TMS-bundled ePOD. Do not re-document here; cross-reference Stage 3.

---

#### Archetype C — Marine Surveyors and Cargo Inspection Services

**What it does:** Independent third-party inspection of cargo quantity and quality at the port of discharge or point of delivery. Services include: draught survey (vessel displacement method for bulk quantity verification), tally survey (unit count for break-bulk or containerized cargo), condition survey (visual and physical assessment of cargo condition vs. bill of lading description), sampling and lab analysis (contamination, quality specification verification for commodities), and out-turn survey (cargo actually recovered from vessel holds). The inspection certificate is legally required for cargo insurance claims, is stipulated in most commodity trade contracts (GAFTA, FOSFA, PORAM for agricultural commodities; IBA for metals), and is required by trade finance banks as a document under letters of credit. This is a professional services market with high certification barriers (IFIA, ISO 17020 accreditation, professional surveyor licensing) and limited technological displacement risk in the near term.

**Primary user:** Commodity traders (palm oil, coal, metals, grain), trade finance banks (documentary credit departments), cargo insurers and P&I clubs, importers of regulated goods (pharma, food), and port authorities requiring independent cargo attestation.

**Business model:** Fee-for-service per inspection engagement. Pricing depends on cargo type, vessel size, and service complexity. Indicative ranges: $500–$3,000 for a standard container condition survey; $2,000–$15,000 for a bulk vessel draught survey; $5,000–$50,000+ for a complex commodity sampling and lab analysis engagement covering multiple commodity lots. Annual master service agreements with major commodity traders and banks standardize pricing per lane and per commodity type.

**Named players and revenue:**

- **SGS SA (Geneva; SIX:SGSN):** World's largest TIC firm; CHF 6,794M total revenue 2024 (2.6% reported growth, 7.5% organic); cargo inspection is a subset of its Natural Resources (oil, gas, minerals, agriculture) and Connectivity & Products segments. Has oil, gas, and chemical inspection operations in Malaysia, Thailand, Indonesia, and Singapore. SEA flag: Yes — full regional coverage; SGS Indonesia, SGS Malaysia, SGS Thailand all operate cargo inspection services. (20)
- **Bureau Veritas SA (Paris; Euronext:BVI):** EUR 6,241M revenue 2024 (6.4% reported, 10.2% organic); Marine & Offshore is ~7% of total revenue (~EUR 437M); Agri-Food & Commodities ~8.5% (~EUR 530M); cargo inspection for commodities and port discharge is core activity. Marine & Offshore delivered "very strong organic growth up 13.2% in Q3 2024." Bureau Veritas Singapore established 1973; full APAC regional network. SEA flag: Yes — Singapore, Malaysia, Indonesia, Thailand offices. (21)
- **Intertek Group plc (London; LSE:ITRK):** £3.4B total revenue 2024 (6.6% constant currency growth); Caleb Brett division is the branded commodity inspection and Saybolt (acquired 2008) is the petroleum inspection brand; together they are world leaders in bulk liquid cargo inspection. Caleb Brett operates in Singapore and major ASEAN ports. SEA flag: Yes — Singapore, Malaysia, Indonesia, Thailand offices. (22)
- **Cotecna SA (Geneva; private):** ~$634M estimated revenue 2024 (Owler/ZoomInfo; unaudited for private company); operates in Singapore; offers cargo inspection, scanning, and verification for agricultural, mineral, and general cargo. SEA flag: Yes — Singapore office confirmed; Thailand and Indonesia via network agents. (23)
- **Saybolt (Core Laboratories subsidiary, NYSE:CLB):** Petroleum, chemicals, and biofuels inspection specialist; Saybolt Singapore Pte. Ltd. established 1983; licensed bunker surveying firm in Port of Singapore (5 surveyors as of May 2024 MPA list); 24/7 laboratory. SEA flag: Yes — Singapore primary; Malaysia and Indonesia via Intertek Caleb Brett/Saybolt network (Saybolt was acquired by Intertek in 2008 and operates under both brands). (24)
- **Inspectorate (Bureau Veritas subsidiary):** Commodity inspection brand within Bureau Veritas; merged into Bureau Veritas Commodities & Trade division; operates across major SEA ports including Singapore, Port Klang (Malaysia), and Tanjung Priok (Jakarta). SEA flag: Yes — via Bureau Veritas regional network. (21)
- **Lloyd's Register (London; private):** Marine survey and classification; primarily vessel classification and statutory survey rather than cargo quantity/quality inspection; relevant for high-value cargo condition surveys on vessels. SEA flag: Yes — Singapore office; maritime surveys throughout SEA. [ASSUMED-3]

---

#### Archetype D — Physical Security: Convoy Escort and Secure Logistics

**What it does:** Provision of armed or unarmed security escort vehicles, secure transport vehicles (armored or reinforced), guard services at delivery points, and GPS-monitored cargo cages for high-value or high-risk cargo on the last road leg. Escort services are contracted for: pharmaceutical shipments to hospitals or distribution centers, electronics shipments to retailers or warehouses, cash and valuables, industrial equipment of unusually high value, and commodity shipments in regions with documented hijack risk. Distinct from in-transit vehicle telematics (Stage 3): escort is a physical presence, not just data monitoring.

**Primary user:** High-value goods shippers (pharma, electronics, luxury goods, precious metals, fuel), banks and financial institutions (cash-in-transit), government agencies, and 3PLs contractually required to provide secure delivery for their shipper clients.

**Business model:** Daily or per-shift contract guarding fee for escort personnel ($500–$2,000/day for 2-person armed escort in SEA markets; higher in conflict-risk zones); armored vehicle rental ($1,000–$5,000/day); GPS cage rental ($30–$100/month/unit SaaS + hardware deposit). Annual retained contracts for regular secure delivery routes.

**Named players:**
- **G4S (Worldwide; subsidiary of Allied Universal since 2021):** 164,000+ employees in Asia Pacific; operates secure cargo transport and port security across Singapore, Malaysia, Thailand, Indonesia, Hong Kong, Philippines; provides point-to-point secure escorts meeting screened-cargo requirements for air cargo transport; cross-border vehicle escorts in Hong Kong. SEA flag: Yes — full regional coverage. (25)
- **Securitas AB (Stockholm; OMX:SECU-B):** SEK 161,921M ($15.3B USD) total 2024 revenue; 44 markets globally; offers guarding and transport security; no separate cargo escort revenue disclosed; Asia Pacific operations include Singapore, Thailand, Malaysia, Indonesia. SEA flag: Yes — but cargo-specific escort is a small sub-product vs. broad guarding. (26)
- **Brink's Company (Richmond, VA; NYSE:BCO):** $5.012B 2024 revenue (record); primary business is cash management (CIT), ATM services, and digital retail security; cargo escort for non-cash goods is not a primary product line. SEA flag: Yes — Singapore, Malaysia, Thailand operations; primarily cash/valuables focus. (27)
- **GardaWorld (Montreal; private):** ~$5.9B revenue FY2024 (guidance); world's largest privately-owned security firm (120,000+ employees); offers cargo security and escort for high-value goods in North America and MENA; limited documented SEA presence vs. EMEA and Americas. SEA flag: Limited — primarily North America and MENA. (28)
- **Allied Universal (Conshohocken PA; private):** Post-G4S acquisition, world's largest security firm; primary market North America; limited direct SEA operations (manages via G4S regional network). SEA flag: Indirect via G4S regional offices. (25)
- **Loomis AB (Stockholm; OMX:LOOM):** Cash-in-transit specialist; limited cargo security outside cash; SEA presence in Singapore and Malaysia. SEA flag: Limited — cash-specific, not general cargo. [ASSUMED-4]
- **Regional SEA private security firms:** Prosegur (Spain; listed; has Singapore operations), ICTS Southeast Asia, and numerous domestic firms (PT Garda Bhakti Nusantara in Indonesia; Securiforce in Malaysia). These are the operational providers for domestic last-mile escort in many SEA lanes where international firms operate through regional JV or franchise structures. [ASSUMED-4]

---

#### Archetype E — GPS-Trackable Cages and Smart Container Locks

**What it does:** Tamper-evident, GPS-equipped physical enclosures (steel cages, ISO-standard lock boxes, or aftermarket smart padlocks) for high-value cargo on the final leg. The cage or lock transmits real-time GPS position, tamper-event alerts (door-open, cut-sensor), and shock events to a monitoring platform. Used for: electronics, pharmaceuticals, luxury goods, and currency. Eliminates the need for an escort vehicle on moderate-risk lanes while still providing active monitoring. Can be combined with geofence alerts that notify a security response team if the cargo deviates from the approved route.

**Named players:**
- **Sealock (UK; private):** GPS-enabled smart container lock for ISO shipping containers; provides real-time monitoring of container door events and position; used by commodity shippers and 3PLs. SEA flag: Not confirmed. [ASSUMED-5]
- **Carrier Transicold / Sensitech (Carrier Global, NYSE:CARR):** Primarily cold-chain monitoring (documented in Stage 3) but also offers tamper-evident packaging and smart lock solutions for pharmaceutical cargo; not a primary cage/lock product. Cross-reference Stage 3.
- **Smartrac / Identiv (San Jose; NASDAQ:INVE):** RFID and NFC-based asset tracking for last-mile delivery verification; not a GPS cage but provides item-level tracking that enables delivery confirmation. SEA flag: Not confirmed. [ASSUMED-5]
- **Vandalproof / various OEM cage manufacturers:** Multiple OEM manufacturers in China and Europe produce GPS-trackable cages; no dominant brand in SEA; procurement is typically commodity-basis. [ASSUMED-5]

**Data gap:** No authoritative market-size figure exists for GPS-trackable cage hardware as a standalone segment. This is a fragmented, commodity-hardware market without a dominant vendor. Vendors typically bundle cage monitoring into their broader IoT subscription revenue.

---

### Named Players by Region

**North America:**
- **DispatchTrack** (San Jose CA; $144M from Spectrum Equity; $8.5M ARR 2024): Enterprise last-mile ePOD platform; furniture/appliances/building materials/F&B distribution primary verticals; thousands of enterprise customers. SEA: No.
- **Onfleet** (San Francisco; $40M+ total funding; $35M revenue 2024): SME to mid-market last-mile delivery management + ePOD; 900 customers; pharmacy, grocery, food delivery primary. SEA: No confirmed office or customer.
- **project44** (Chicago; $637.5M raised; ~$2.7B valuation): Acquired Convey ($255M, 2021) for last-mile visibility; Convey ePOD and delivery-experience capabilities now within project44 Movement platform; primarily enterprise B2C-facing last-mile for retailers and CPG. SEA: Limited — documented in Stage 3 and Stage 4; no confirmed SEA last-mile carrier network. (29)
- **Brink's Company** (NYSE:BCO; $5.012B 2024 revenue): Cash and valuables management; cargo escort for non-cash goods is marginal product. SEA: Yes (Singapore, Malaysia, Thailand) — primarily cash. (27)
- **GardaWorld** (Montreal; private; ~$5.9B FY2024): World's largest private security firm; high-value cargo transport and escort in North America and MENA. SEA: Limited. (28)

**Europe:**
- **Track-POD** (Warsaw, Poland; private): Route optimization + ePOD; per-driver SaaS ($29–$39/driver/month); primarily EU/NA mid-market; no documented SEA office. SEA: No. (14)
- **Beans.ai** (San Francisco; EU-present): Route optimization and ePOD; $3.2M seed; primarily US/EU focus. SEA: Not documented.
- **Routific** (Vancouver; private): Route optimization with ePOD; SME focus; primarily North America. SEA: Not documented.
- **OptimoRoute** (Palo Alto; private): Route optimization + ePOD; acquired by Samsara (NASDAQ:IOT) in April 2022 for $75M; now part of Samsara platform. SEA: Indirect via Samsara (Stage 3; no confirmed SEA).
- **SGS SA** (Geneva; SIX:SGSN; CHF 6,794M 2024): World's largest TIC firm; cargo inspection including marine survey across all SEA major ports. SEA: Yes — full coverage. (20)
- **Bureau Veritas** (Paris; Euronext:BVI; EUR 6,241M 2024): TIC leader; Marine & Offshore and Agri-Food & Commodities divisions cover port-discharge inspection; Inspectorate brand for commodities. SEA: Yes — Singapore, Malaysia, Indonesia, Thailand. (21)
- **Intertek / Caleb Brett / Saybolt** (London; LSE:ITRK; £3.4B 2024): Petroleum and commodity inspection; Saybolt Singapore Pte. Ltd. established 1983. SEA: Yes — Singapore primary, regional network. (22)
- **Securitas AB** (Stockholm; OMX:SECU-B; $15.3B 2024): Security guarding; cargo transport security is a sub-product; SEA via regional offices. SEA: Yes — Singapore, Malaysia, Thailand, Indonesia. (26)

**SEA-specific:**
- **FarEye** (New Delhi; private; $100M Series E; ₹197.5 crore ~$23M USD FY2024-25 revenue; 25.9% growth): Enterprise last-mile platform with ePOD; confirmed SEA customers include Zalora (fashion e-commerce, SEA-wide), ACommerce (Thailand/Indonesia e-commerce logistics), and Sephora (beauty retail, SEA). SEA flag: Yes — documented enterprise customer base across Singapore, Thailand, Indonesia, Malaysia. (17)
- **Cotecna SA** (Geneva; private; Singapore office): Cargo inspection, scanning, and government verification services; Singapore as SEA hub; agents in Thailand and Indonesia for cargo inspection mandates. SEA flag: Yes — Singapore office. (23)
- **Saybolt (Intertek)** (Singapore Pte. Ltd.; established 1983): Petroleum and chemical inspection; licensed bunker surveying firm at Port of Singapore; 24/7 laboratory. SEA flag: Yes — Singapore primary. (24)
- **G4S** (Singapore/Malaysia/Thailand/Indonesia; subsidiary of Allied Universal): Secure cargo transport, port security, cross-border escort; Asia Pacific 164,000+ employees. SEA flag: Yes — full regional coverage. (25)
- **GoComet** (Singapore; documented in Stage 4): AI freight procurement and control tower; includes POD tracking functionality as part of its logistics visibility suite. Cross-reference Stage 4. SEA flag: Yes — Singapore HQ.
- **Karooooo/Cartrack** (Singapore HQ; NASDAQ:KARO): Fleet telematics platform with driver delivery-confirmation module (effectively ePOD for fleet operators); documented in Stage 3. Cross-reference Stage 3. SEA flag: Yes — primary SEA growth market.
- **TransTRACK** (Jakarta, Indonesia; documented in Stage 3): Fleet telematics for Indonesia with delivery confirmation features. Cross-reference Stage 3. SEA flag: Yes — Indonesia primary.

---

### Preliminary Pain Points (this stage)

- **Paper POD remains dominant in SEA domestic trucking, creating a claims-evidence vacuum that carriers exploit.** Indonesia, Malaysia, and Thailand domestic B2B deliveries overwhelmingly use paper delivery notes, which are returned to the shipper's back office with a 24–72-hour lag, are easily manipulated, and provide no GPS anchoring to confirm the delivery location. Manipulation of POD paperwork to cover in-yard theft or short delivery is one of the easiest fraud vectors: BSI/TT Club 2024 Cargo Theft Report explicitly identifies goods-received paperwork manipulation as a mechanism that "allows criminals to access large volumes over time." (1) The TAPA APAC TIS 2023 report confirms that insider participation is a major APAC cargo crime driver, which is precisely the risk environment where paper POD is most exploitable. (13) [ASSUMED-6]

- **Fictitious pickups and fraudulent delivery — the fastest-growing global cargo theft vector — are enabled by weak consignee identity verification at the point of delivery.** CargoNet data shows that identity-based scams accounted for nearly one-third of cargo thefts in 2024 (up from ~8% in 2020) and fictitious pickup incidents rose ~303% in 2023. (4, 5) Standard ePOD capture (a touchscreen signature) does not verify that the signatory is the authorized consignee representative — it only captures whoever is present. Biometric verification (face match against pre-registered authorized personnel), consignee-specific PIN, or driver-to-consignee ID matching are architecturally required to close this fraud vector; none are standard in current ePOD deployments.

- **Marine surveyor inspection at SEA ports is structurally concentrated in the Big 4 TIC firms (SGS, Bureau Veritas, Intertek, Cotecna), with no qualified independent local alternatives for specialized commodity types.** For palm oil (Malaysia and Indonesia are the world's two largest exporters), coal (Indonesia is the world's largest coal exporter), and LNG (Malaysia, Indonesia), the consignee's independent inspection relies almost entirely on one of four multinational TIC firms for draught surveys and sampling. This concentration means that if a major TIC firm has a conflict of interest (e.g., the same firm inspects for both seller and buyer in a commodity trade), the independence claim is compromised. Local Malaysian and Indonesian marine surveyors lack the lab infrastructure and IFIA accreditation required for international commodity contracts. [ASSUMED-7]

- **ePOD data is captured but not systematically used to build claims-bar evidence packages — creating a gap between data collection and claims outcome.** Many shippers implementing ePOD treat it as a delivery confirmation tool rather than a risk management tool. Photos are captured but not reviewed; GPS coordinates are logged but not geocoded against the consignee's address; signatory fields are completed but not cross-referenced against authorized-personnel registries. The result is that when a cargo claim is filed, the ePOD record does not meet the evidentiary standard required by the insurer. McKinsey estimates $45–66B per year in B2B handoff waste globally attributable to documentation failures at delivery — ePOD adoption without evidence-discipline training and claims workflow integration captures only a fraction of this recoverable value. (2)

- **Last-leg hijack and diversion in SEA road transport is underreported and underinsured, creating a structural information gap that prevents appropriate security investment.** TAPA APAC TIS 2023 recorded only 343 verified incidents across all of Asia Pacific vs. 156,503 incidents in EMEA — a 456:1 ratio that TAPA explicitly attributes to underreporting culture, not low incidence. Truck hijacking is confirmed as the top modus operandi in APAC (per TAPA); Indonesia's diverse island geography and Malaysia's North-South Highway corridor are the highest-risk domestic roads for last-leg truck diversion. Without accurate incident data, shippers and insurers cannot price cargo risk correctly, cannot justify investment in escort services or GPS-trackable cages, and cannot design route-specific security protocols. The information gap itself is a risk management failure. (13)

---

### Sources for this Stage

(1) BSI Consulting and TT Club, "2024 Cargo Theft Report," April 2025, https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf — primary industry research; 41% in-transit theft; 76% truck; food & beverage 22% of commodities; 21% hijacking; delivery-site paperwork manipulation documented as fraud vector. PDF processed via markitdown. Medium-High confidence (TT Club is the primary cargo insurance and risk association; annual primary data collection). Published under 2024 Cargo Theft Report label (covering 2024 data) released April 2025.

(2) McKinsey & Company, "Digitizing mid- and last-mile logistics handovers to reduce waste," McKinsey Logistics Insights, January 5, 2024, https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste — McKinsey primary analysis; $65B–$95B total handoff waste; $45B–$66B specifically in B2B last-mile losses. Medium-High confidence (McKinsey primary analysis; methodology described as interviews with logistics executives and analysis of TMS and claims data). [NEEDS-ATTENDED-FETCH]: Full article load timed out; $45B–$66B B2B figure cited via secondary references.

(3) Maritime and Port Authority of Singapore, "Singapore Port Statistics 2024," https://www.mpa.gov.sg/port-marine-ops/port-statistics — Singapore MPA government statistics; 39.0 million TEUs container throughput in 2024. High confidence (government primary statistics). Note: 2024 figure was referenced in search results; cross-check directly at MPA stats page.

(4) CargoNet (Verisk Analytics subsidiary), "2024 Supply Chain Risk Trends Analysis," CargoNet Annual Report, January 2025, https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/ — primary cargo theft data; 3,625 incidents in 2024; 27% increase from 2023; average loss $202,364. Medium-High confidence (CargoNet is the primary US cargo theft database, operated by Verisk; data sourced from law enforcement, insurer, and carrier reports).

(5) Denim Blog / CargoNet data, "How to spot POD fraud in freight," https://www.denim.com/blog/how-to-spot-pod-fraud-in-freight-red-flags-every-broker-should-know — trade press; identity-based scams at nearly one-third of cargo thefts in 2024 (up from ~8% in 2020); fictitious pickup +303% in 2023. Medium confidence (secondary citation of CargoNet primary data; original CargoNet source confirmed in cross-search).

(6) DataIntelo, "Proof of Delivery Software Market Research Report 2033," https://dataintelo.com/report/proof-of-delivery-software-market/amp — commercial market research; $1.42B 2024 market size; 17.8% CAGR. Low confidence (commercial research firm; no disclosed methodology; auto-Low per source protocol).

(7) MarkWide Research, "Electronic Proof of Delivery (ePOD) Solution Market 2026-2035," https://markwideresearch.com/electronic-proof-of-delivery-epod-solution-market/ — commercial market research; $2.1B 2024 estimate. Low confidence (auto-Low per source protocol; no methodology disclosed; consistent directional range with DataIntelo).

(8) Straits Research, "Cargo Inspection Market Size, Share & Growth Graph by 2033," https://straitsresearch.com/report/cargo-inspection-market — commercial market research; $2.94B 2024 cargo inspection market; $5.31B by 2033. Low-Medium confidence (Straits Research is a named commercial source; cross-validated directionally against bottom-up from SGS, Bureau Veritas, Intertek revenue subsets).

(9) Research and Markets, "Marine Survey Services Market — Global Forecast 2025-2032," https://www.researchandmarkets.com/reports/6055294/marine-survey-services-market-global-forecast — commercial market research; $4.49B 2024; 6.19% CAGR; $7.27B by 2032. Low confidence (commercial source; no government or multilateral primary source cross-validated).

(10) TIC Council, "Annual Report 2024," https://www.tic-council.org/application/files/7917/4523/6518/Annual_Report_2024.pdf — industry association primary report; global TIC market ~$200B; SGS, Bureau Veritas, Intertek collectively represent ~$16B (~8%). Medium confidence (TIC Council is the primary industry association for the TIC sector). PDF processed via markitdown.

(11) Grand View Research, "Secure Logistics Market Size & Share | Industry Report, 2030," https://www.grandviewresearch.com/industry-analysis/secure-logistics-market — commercial market research; secure logistics market size including cash-in-transit, armored vehicles, and digital security; $90.6B 2024. Low confidence (auto-Low; scope is far broader than cargo escort/convoy; includes cash management which is the majority of revenue for Brink's and Loomis).

(12) Market Research Future, "Secure Logistics Market Size, Share & Global Forecast 2035," https://www.marketresearchfuture.com/reports/secure-logistics-market-21951 — commercial market research; $100.9B 2024 estimate. Low confidence (scope and methodology same caveats as (11)).

(13) TAPA APAC, "TIS Annual Report 2023: Driving Supply Chain Resilience Against Cargo Crime," https://cdnc.heyzine.com/flip-book/pdf/12e9323b9c5babd6e618af9f88d94ea231f220e0.pdf — TAPA APAC primary intelligence data; 343 APAC verified incidents vs. 156,503 EMEA incidents; $200.6M APAC losses; truck hijacking top modus operandi in APAC; insider involvement and underreporting flagged. PDF processed via markitdown. Medium-High confidence (TAPA APAC is the primary cargo crime intelligence body for Asia Pacific; data sourced from law enforcement and member first-hand reporting; 2023 APAC underreporting explicitly flagged as data limitation).

(14) Track-POD, Pricing Plans, https://www.track-pod.com/ and ITQlick, "Track-POD Pricing Plans & Cost Guide," https://www.itqlick.com/track-pod/pricing — vendor site and third-party pricing review; $29/driver/month basic; $39/driver/month Pro; $0.15/task; L Plan 6,000 tasks/month at $900/month. Medium confidence (pricing confirmed by multiple third-party review sites; vendor marketing site used only to confirm existence; third-party review sites used for pricing).

(15) Onfleet, "Onfleet Raises $23M Series B Funding," BusinessWire, June 7, 2022, https://www.businesswire.com/news/home/20220607005530/en/Onfleet-Raises-$23M-Series-B-Funding-to-Help-Businesses-Optimize-and-Scale-Last-Mile-Delivery-Operations — company press release; $23M Series B; $40M+ total; 900 customers including Kroger, Total Wine & More. Medium confidence. Revenue per Getlatka $35M 2024 (unaudited; Low confidence).

(16) DispatchTrack, "DispatchTrack Takes First Funding from Spectrum Equity," 2020, https://www.dispatchtrack.com/company/news/funding-spectrum-equity and Getlatka https://getlatka.com/companies/dispatchtrack — company press release; $144M Spectrum Equity funding (May 2020); $8.5M ARR 2024 per Getlatka (Low confidence, unaudited). TechCrunch confirmed funding round; Getlatka revenue is directional.

(17) FarEye, "FarEye Delivers 25.9% Revenue Growth and 57% Improvement in EBITDA," FarEye Press Release FY2025, https://fareye.com/news/fareye-delivers-revenue-growth-fy25 — company press release; ₹197.5 crore revenue FY2024-25; 25.9% YoY; 85%+ recurring; SEA customers including Zalora, ACommerce, Sephora. Medium confidence (company-reported; INR-to-USD conversion at ~84 INR/USD: ~$23.5M USD FY2024-25; customers named in press materials confirmed).

(18) Business News Australia, "Former Aussie tech star GetSwift in liquidation," BusinessNewsAustralia.com, 2022, https://www.businessnewsaustralia.com/articles/getswift--the-one-time-aussie-tech-star--placed-into-liquidation.html — GetSwift delisted from ASX; software sold to Stage Equity Partners for $10M. Medium confidence (trade press; confirms GetSwift is not an active market player as of 2025-26).

(19) Descartes Systems Group, "Descartes ePOD Module — Scott Parnell Customer Case Study," https://www.descartes.com/resources/news/scott-parnell-improves-customer-experience-productivity-and-delivery-sustainability and FY2025 Annual Report (audited), https://www.descartes.com — Descartes FY2025 revenue $630M+ (audited; High confidence per Stage 4 source); ePOD module confirmed as routing/mobile product; Scott Parnell (building materials, UK) is named customer. Medium confidence for ePOD-specific claims (vendor case study; used only to confirm product existence and customer type).

(20) SGS SA, "2024 Full Year Results," press release, February 2025, https://www.sgs.com/en/news/2025/02/sgs-2024-full-year-results — audited public company results (SIX:SGSN); CHF 6,794M total revenue 2024; 7.5% organic growth. SGS Malaysia, Indonesia, Thailand, Singapore cargo inspection operations confirmed via regional site. High confidence (audited public company).

(21) Bureau Veritas SA, "Bureau Veritas' LEAP|28 Strategy Delivers Outstanding Results in 2024," press release, GlobeNewswire, February 25, 2025, https://www.globenewswire.com/news-release/2025/02/25/3031665/0/en/BUREAU-VERITAS-2024-annual-results-Bureau-Veritas-LEAP-28-strategy-delivers-outstanding-results-in-2024-confident-2025-outlook.html — audited public company results (Euronext:BVI); EUR 6,240.9M total revenue 2024; 10.2% organic growth; Marine & Offshore up 13.2% organically Q3 2024; Agri-Food & Commodities delivered high-single-digit organic growth. High confidence (audited public company). Bureau Veritas Singapore established 1973 per separate reference.

(22) Intertek Group plc, "2024 Full Year Results Announcement," March 4, 2025, https://www.intertek.com/siteassets/investors/2025/intertek-2024-full-year-results-announcement.pdf — audited public company (LSE:ITRK); £3.4B total revenue 2024; 6.6% constant-currency growth; Caleb Brett petroleum/commodity inspection confirmed; Saybolt Singapore established 1983. High confidence (audited filing). PDF processed via markitdown.

(23) Owler / ZoomInfo, "Cotecna Revenue 2024," https://www.owler.com/company/cotecna — commercial database; Cotecna ~$634M estimated 2024 revenue (private company; unaudited; treat as directional). Cotecna Singapore office confirmed at https://www.cotecna.com/en/locations/singapore. Low-Medium confidence (private company; unaudited revenue from commercial database).

(24) Maritime and Port Authority of Singapore, "Bunker Surveying Company Licence List — May 2024," https://www.mpa.gov.sg/docs/mpalibraries/mpa-documents-files/oms/bunkering/bunkering-services-providers/bunker-surveying-company-licence---1-may-2024.pdf — MPA Singapore government document; Saybolt (Singapore) Pte. Ltd. listed as licensed bunker surveying company with 5 surveyors; 49 companies total; 288 licensed surveyors total. High confidence (Singapore government regulatory document). PDF format; [NEEDS-ATTENDED-FETCH] for full licensed-list extraction from binary-encoded PDF.

(25) G4S, "Transport and Logistics Security" and "G4S Asia Pacific," https://www.g4s.com/what-we-do/transport-and-logistics-security and https://www.g4s.com/who-we-are/where-we-operate/g4s-in-asia-pacific — company website; 164,000+ Asia Pacific employees; secure cargo escort and port security services; cross-border vehicle escorts. Medium confidence (vendor site used only to confirm service existence and regional presence; not cited for capability claims).

(26) Securitas AB, "Full Year Report 2024," PR Newswire, February 2025, https://www.prnewswire.com/news-releases/securitas-ab-full-year-report-2024--januarydecember-302369837.html — audited public company (OMX:SECU-B); SEK 161,921M ($15.3B USD at ~10.65 SEK/USD) 2024 revenue; 44 markets globally; 6.9% operating margin. High confidence (audited public company).

(27) Brink's Company, "Brink's Announces Fourth-Quarter and Full-Year 2024 Results," GlobeNewswire, February 26, 2025, https://www.globenewswire.com/news-release/2025/02/26/3032849/35146/en/Brink-s-Announces-Fourth-Quarter-and-Full-Year-2024-Results.html — audited public company (NYSE:BCO); $5.012B record 2024 revenue; 3% reported growth, 12% organic; cash management primary business. High confidence (audited public company).

(28) GardaWorld, "GardaWorld Announces Financial Guidance for Fiscal Year Ending January 31, 2024," PR Newswire, January 2024, https://www.prnewswire.com/news-releases/gardaworld-announces-financial-guidance-for-fiscal-year-ending-january-31-2024-and-intends-to-amend-the-maturity-date-of-its-term-loan-b-due-2026-to-2029-302040627.html — company guidance; $5,875–$5,925M FY2024 revenue guidance; private company. Medium confidence (company-issued guidance; not audited financial statements).

(29) Project44, "project44 Buys Last-Mile Delivery and Customer Experience Leader, Convey, in $255M Acquisition," BusinessWire, September 21, 2021, https://www.businesswire.com/news/home/20210921005205/en/project44-Buys-Last-Mile-Delivery-and-Customer-Experience-Leader-Convey-in-%24255M-Acquisition — acquisition announcement; $255M all-equity acquisition; Convey = Delivery Experience Management platform; now integrated into project44 Movement. Medium confidence (company press release). Project44 Stage 4 sourcing cross-referenced.

(30) Munich Re Specialty, "Cargo Theft Tactics and Trends Report 2025," PDF, https://www.munichre.com/content/dam/munichre/mram/content-pieces/pdfs/MR_CargoTheftReport_FINAL25.pdf — Munich Re Specialty primary report; 41% in-transit theft globally; hijacking 21%; food & beverage 22% of commodities; Brazil/Mexico/India/US top countries; strategic theft now 18% of US thefts; fictitious pickups noted. PDF processed via markitdown. Medium-High confidence (Munich Re is a primary reinsurer with direct access to cargo claims data; annual primary data collection).

---

### Assumptions to Validate

[ASSUMED-1]: Oracle OTM and SAP TM bundle ePOD functionality as a standard module within their Transportation Management System, priced as part of the broader enterprise license rather than as a separately purchasable ePOD product. Actual ePOD feature completeness (photo capture, GPS anchoring, offline mode, biometric verification) in these enterprise platforms may be significantly lower than in standalone ePOD solutions.
- to validate: Ask an enterprise shipper (e.g., a multinational CPG company running SAP TM in SEA) whether their SAP TM mobile driver app is used for ePOD at B2B delivery points, and whether it captures GPS coordinates, photos, and electronic signatures; ask whether the ePOD data is used to support cargo claims filings.

[ASSUMED-2]: Manhattan Associates Active TM and MercuryGate include ePOD modules, but their SEA enterprise customers (if any) use these modules for last-mile B2B delivery documentation in Indonesia, Malaysia, Thailand, or Singapore.
- to validate: Contact Manhattan Associates' Singapore or Kuala Lumpur APAC office to confirm whether any SEA-based customer is using Manhattan TM's mobile driver app for last-mile B2B ePOD capture; ask for a named reference customer.

[ASSUMED-3]: Lloyd's Register's Singapore office performs cargo condition surveys on high-value industrial shipments arriving at Port of Singapore, in addition to its primary classification and statutory survey business.
- to validate: Contact Lloyd's Register Singapore to confirm whether they offer commercial cargo condition surveys (non-statutory) for bulk or break-bulk cargo at Jurong Port or the main container terminals; ask for a sample inspection report format.

[ASSUMED-4]: Regional SEA private security firms (PT Garda Bhakti Nusantara in Indonesia, Securiforce in Malaysia, Prosegur Singapore) are the primary operational providers of last-leg cargo escort for domestic B2B freight in SEA, with international firms (G4S, Securitas) operating via regional JV or franchise structures rather than directly deploying international resources.
- to validate: Interview a pharmaceutical shipper or electronics distributor operating domestic deliveries in Indonesia or Malaysia to confirm which security firm they use for high-value cargo escort, whether that firm is international or domestic, and what the approximate per-escort cost is in USD.

[ASSUMED-5]: GPS-trackable cage products (Sealock and similar) are not meaningfully deployed in SEA B2B logistics for last-mile cargo security, and the market for this hardware is fragmented among Chinese OEM manufacturers with no dominant brand or ecosystem.
- to validate: Survey SEA 3PLs at the Malaysia Logistics Congress or Indonesia Supply Chain & Logistics Summit on whether any GPS-trackable cage hardware product is currently deployed in their domestic operations; ask about unit economics vs. escort service cost.

[ASSUMED-6]: Paper POD penetration in Indonesia domestic B2B trucking exceeds 80% as of 2026, meaning fewer than 20% of commercial deliveries to industrial or commercial consignees use any form of digital proof of delivery capture. This is the primary barrier to claims-bar evidence quality for Indonesian shippers.
- to validate: Ask three Indonesia-based 3PLs (JNE Logistics, Pos Logistik, ID Logistics) what proportion of their B2B delivery legs currently use any form of digital POD (mobile app, scan, or photo upload) vs. paper delivery notes; also ask Indonesia National Shippers Council (ALFI) whether they track ePOD adoption among member companies.

[ASSUMED-7]: The cargo inspection market for palm oil discharged at Malaysian and Indonesian ports is effectively controlled by the four major TIC firms (SGS, Bureau Veritas, Intertek, Cotecna), with no viable local alternative that holds IFIA/ISO 17020 accreditation and laboratory capability for the full range of quality parameters specified in PORAM (Palm Oil Refiners Association of Malaysia) standard trade contracts.
- to validate: Contact PORAM (Kuala Lumpur) to confirm whether member companies' trade contracts specify which inspection firms are approved; ask whether any local Malaysian or Indonesian inspection firm has achieved IFIA accreditation for palm oil inspection at major discharge ports.
