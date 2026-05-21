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
