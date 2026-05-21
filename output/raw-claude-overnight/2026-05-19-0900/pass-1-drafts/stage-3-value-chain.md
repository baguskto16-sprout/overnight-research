## Stage 3: In-Transit Visibility & Telematics

*Value chain: Risk-management solutions for the freight/logistics journey*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*
*Unit of analysis: Solutions (software/hardware/service), not actor type*
*Risk angle: Visibility coverage quality, signal loss patterns, IoT deployment models, data-siloing across chain*

---

### Description

In-transit visibility and telematics solutions instrument the physical movement of freight — from load departure through final delivery — by converting GPS/ELD/IoT sensor streams into structured shipment events accessible to shippers, 3PLs, carriers, and their insurance or risk counterparts. The category splits into three functionally distinct layers: (1) Real-Time Transportation Visibility Platforms (RTTVPs), which aggregate multi-carrier, multi-modal position and event data into shipper-facing dashboards; (2) cargo IoT sensors, which attach to the shipment itself to track condition (temperature, shock, humidity, light, tamper) and position independent of the carrier's own telemetry; and (3) telematics and fleet management systems, which install on commercial vehicles to capture driver behavior, engine diagnostics, ELD compliance, and location data primarily for fleet operators. These three layers often overlap — RTTVP platforms ingest telematics feeds, and some IoT sensors double as visibility nodes — creating a complex data ecosystem where coverage gaps between layers are the primary risk failure mode. From a logistics risk standpoint, the key structural problem is that none of these layers achieves full chain-of-custody coverage: ocean container interiors and remote-route trucking remain partially dark, carrier adoption of API-level connectivity varies widely, and data is siloed across platforms that do not natively share event streams with downstream insurance or claims systems.

---

### Activities

1. **Real-time position and event aggregation:** RTTVPs ingest GPS pings, ELD position updates, ocean AIS/carrier EDI messages, and parcel scans from thousands of carrier connections via API, EDI, or driver mobile app, normalizing heterogeneous feeds into a unified shipment timeline with predicted ETA.
2. **Condition and security monitoring (cargo IoT):** Sensor devices attached to pallets, containers, or high-value shipments continuously record temperature, humidity, shock/vibration, tilt, light intrusion (tamper), and GPS position, transmitting via cellular/BLE/satellite; data is ingested into vendor cloud platforms for threshold alerting and regulatory compliance documentation (e.g., GDP for pharma cold chain).
3. **Fleet telematics and driver behavior capture:** On-vehicle hardware (OBD-II or hard-wired units) combined with dash cameras records GPS track, speed, harsh braking/acceleration, engine diagnostics, HOS (Hours of Service)/ELD compliance, and driver coaching events; primary users are fleet operators and insurers underwriting commercial auto.
4. **ETA prediction and exception alerting:** ML models trained on historical transit patterns generate probabilistic ETAs; platforms surface exceptions (delays, route deviations, geofence breaches, temperature exceedances) to shipper operations and risk teams via dashboards, email, or webhook to downstream TMS/ERP.
5. **Data network brokering and carrier onboarding:** Visibility platforms maintain proprietary carrier connectivity networks (project44: 1,400+ telematics integrations; Shippeo: 1,000+ TMS/ELD integrations) as the primary competitive moat, since marginal coverage improvement on tail carriers differentiates platforms at enterprise procurement.

---

### Revenue Model

RTTVPs: annual SaaS subscription priced per shipment-volume tier or per carrier-connection seat, typically $75K–$5M+ enterprise ACV (FourKites baseline ~$75K/yr; contracts regularly exceed $5M at decision-support level per Gartner/FreightWaves (1)(6)). Cargo IoT sensors: hardware sale ($15–$100/device) plus recurring cloud/data subscription per active device per month (Tive, Roambee, Controlant); some vendors offer sensor-as-a-service with per-shipment bundled pricing. Telematics/fleet management: per-vehicle-per-month SaaS subscription ($25–$60/vehicle/month at scale for Samsara, Geotab, Motive) with hardware amortized into the contract; ~98% of Samsara FY2025 revenue was subscription-based (2).

---

### Cost Drivers

RTTVPs: carrier connectivity engineering and maintenance (ongoing API/EDI integrations with thousands of carriers), cloud infrastructure (high-volume event ingestion at scale), data science for ETA modeling, enterprise sales and implementation teams. Cargo IoT: hardware COGS (cellular/GPS/sensor module, battery, enclosure), device logistics and recovery (reverse logistics for reusable trackers), cellular/satellite data plan costs per active device, cloud data processing. Telematics: hardware manufacturing and installation (OBD/hardwired units, cameras), cellular data plan per vehicle, customer support for large fleet deployments, R&D for AI-based coaching and driver scoring.

---

### Market Size

| Metric | Value | Year | Confidence | Sources |
|--------|-------|------|------------|---------|
| Global RTTVP market size (all modes) | ~$1.0–1.9B | 2024 | Medium | (1)(3)(4) |
| Global commercial vehicle telematics market (hardware + software) | $24.3B | 2024 | Medium | (5) |
| Global fleet telematics subscriptions (all vehicle types) | ~90M+ active subscriptions | 2024 | Medium | (7) |
| SEA fleet management installed base | ~3.6M active units | 2024 | Medium | (8) |
| SEA fleet management installed base (projected) | 6.4M units by 2029 (CAGR 12.3%) | 2029 | Medium | (8) |
| Global cold chain monitoring market (IoT segment proxy) | $8.31B (2025); $15.04B by 2030 (CAGR 12.6%) | 2025 | Medium | (9) |
| Global ABI commercial trucking telematics (2027 projection) | $12.9B (trucking) + $27.4B (non-trucking fleets) | 2027 | Medium | (10) |
| Active cargo tracking installed base (global) | 29M units by 2025 (Berg Insight) | 2025 | Low–Medium | (11) |

**Notes:**
- RTTVP market estimates vary significantly by scope definition. Research firm figures cluster around $1.5–1.9B for 2024. The Gartner/FreightWaves reference of "$1 billion by 2024" (1)(6) is consistent with the lower range; it likely reflects pure software subscription revenue without adjacent services. Medium confidence given multiple non-tier-1 research firms contributing the upper range.
- Commercial vehicle telematics figures from GM Insights ($24.3B, 2024) include hardware and services for all commercial vehicle categories (trucks, buses, construction); substantially broader than pure fleet SaaS.
- SEA fleet management data (Berg Insight via ResearchAndMarkets, 2024) is the most reliable regional figure; covers Indonesia, Malaysia, Singapore, Thailand, Philippines. Geography match: High.
- Cold chain monitoring market from MarketsandMarkets ($8.31B in 2025) uses narrow definition (monitoring hardware + software); exclude broader cold chain logistics market ($260B+).

---

### Solutions Profiled

#### 1. project44 (RTTVP — Global Leader)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Chicago, IL, USA / Private (Thoma Bravo, TPG, Goldman Sachs investors) |
| What it does | Multi-modal RTTVP connecting shippers to 1,400+ carrier telematics integrations, 190+ TMS integrations; provides ETAs across TL, LTL, ocean, air, parcel |
| Primary user | Enterprise shippers, 3PLs, freight forwarders |
| Business model | Annual SaaS subscription, volume-tier pricing per shipment; implementation fees |
| Pricing | Custom enterprise; contracts commonly $1M–$5M+ at full decision-support tier (6) |
| Revenue / Scale | ~$210M revenue (2024); ~$2.7B valuation; $912M total funding raised (12)(13) |
| Gartner MQ position | Leader for 5 consecutive years (2021–2025); highest in every use case in 2025 Critical Capabilities report (14) |
| Key differentiator | Deepest carrier connectivity network; strongest API/ELD direct integrations; highest data quality per Gartner (6) |
| Cons / Risk gaps | Premium pricing limits SME/mid-market penetration; APAC carrier network shallower than North America/Europe |
| SEA presence | VP/GM for Australia, New Zealand & SEA appointed; Melbourne office; limited SEA carrier-level integrations vs. North America [ASSUMED-1] |
| Sources | (12)(13)(14)(6) |

#### 2. FourKites (RTTVP — Leader, SAP acquisition offer pending)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Chicago, IL, USA / Private ($1B valuation, 2022) |
| What it does | Multi-modal RTTVP; tracks 1M+ shipments daily across 6.4M connected facilities; AI agent layer launched Jan 2025 |
| Primary user | Enterprise shippers (CPG-heavy: 9 of top-10 CPG companies), 3PLs |
| Business model | Annual SaaS subscription; $75K+ enterprise baseline per Sacra/public disclosures (15) |
| Revenue / Scale | ~$114M revenue; $292M total funding; SAP offered ~$600M acquisition in early 2026 (not completed as of May 2026) (16)(17) |
| Gartner MQ position | Leader (2024 MQ; 2025 status not confirmed in available sources) |
| Key differentiator | Strong CPG/food & beverage customer base; upstream supply chain linkage; multi-tenant scalability |
| Cons / Risk gaps | Revenue growth slower than project44 (~$114M vs. $210M); narrower telematics integration depth; APAC footprint light |
| SEA presence | No named SEA office or case studies found in available sources [ASSUMED-2] |
| Sources | (15)(16)(17)(6) |

#### 3. Shippeo (RTTVP — European Leader)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Paris, France / Private; investors: Toyota/Woven Capital, Battery Ventures, Partech, NGP Capital |
| What it does | Multi-modal RTTVP with European road network strength; 1,000+ carrier integrations; 90M+ shipments tracked annually across 150+ countries |
| Primary user | European enterprise shippers; expanding North America |
| Business model | Annual SaaS subscription |
| Pricing | Custom enterprise; not publicly disclosed |
| Revenue / Scale | $22.3M revenue (2024); $134.9M total funding; Series D-II ($30M) closed Jan 2025 (18) |
| Gartner MQ position | Leader (2024 and 2025 MQ) (14)(18) |
| Key differentiator | Strongest European road carrier connectivity; Yamaha Motor Ventures and Woven Capital investment signals Japan/APAC expansion intent |
| Cons / Risk gaps | Revenue significantly smaller than project44 ($22M vs. $210M); primary strength still Europe; profitability timeline unclear |
| SEA presence | Limited; 150-country claim is primarily carrier network reach, not local offices; Japan strategic investor may accelerate APAC push [ASSUMED-3] |
| Sources | (18)(14) |

#### 4. Transporeon Visibility (incl. Sixfold) — Trimble subsidiary

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Ulm, Germany / Trimble Inc. (NASDAQ: TRMB); acquired for €1.88B (April 2023) |
| What it does | European freight procurement + execution platform with embedded visibility (Sixfold); 158,000 carriers, 1,400 shippers, ~$59B freight processed annually; Trimble Visibility rebranded to Transporeon Visibility 2024 |
| Primary user | European shippers, carriers, 3PLs |
| Business model | Platform subscription + transaction-based fees; Trimble T&L segment revenue (2024): $720M (includes all T&L, not visibility-only); telematics division ($300M TTM revenue) divested to Platform Science (Feb 2025) |
| Key differentiator | Deepest European TMS+visibility integration; Sixfold provides real-time visibility natively embedded in procurement workflow |
| Cons / Risk gaps | Limited North America footprint; Trimble telematics divestiture (Platform Science acquisition, Feb 2025) may create integration friction |
| SEA presence | No evidence of SEA operations; European platform (19)(20) |
| Sources | (19)(20)(21) |

#### 5. Wakeo (RTTVP — Multimodal, Intercontinental focus)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Paris, France / Private; Statkraft Ventures, Promus Ventures, 360 Capital |
| What it does | Intercontinental multimodal visibility SaaS covering ocean, air, and road modes; algorithmic ETA model; 180+ countries; customers include Uniqlo, Michelin, CEVA Logistics |
| Primary user | Shippers with complex international/multimodal flows |
| Business model | Annual SaaS subscription |
| Revenue / Scale | €18M Series B closed Dec 2023; total funding >€30M (22) |
| Key differentiator | Multimodal ocean+air+road ETA accuracy; sustainability reporting module; Uniqlo's active use demonstrates APAC-relevant shipper client base |
| Cons / Risk gaps | Small company (~€30M total raised); narrower carrier network than project44; limited public revenue data |
| SEA presence | Uniqlo is a named customer (Japan/global retailer with heavy SEA sourcing); no named SEA office |
| Sources | (22) |

#### 6. Samsara (Fleet Telematics — Global Scale, North America dominant)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | San Francisco, CA, USA / Public (NYSE: IOT) |
| What it does | Connected Operations Platform: vehicle telematics, video-based safety (dash cams), ELD compliance, equipment monitoring, workforce apps; processed 25T+ data points in FY2026 |
| Primary user | Fleet operators (trucking, construction, utilities, food/bev, retail); primarily North America (80%+ revenue) |
| Business model | ~98% subscription revenue; per-vehicle/per-month SaaS with hardware included; ~$25–$60/vehicle/month implied by customer economics |
| Revenue / Scale | $1.249B revenue (FY2025, ended Jan 31, 2025); $1.46B ARR; 20,000+ core customers, 2,506 customers >$100K ARR; NYSE: IOT (2)(23) |
| Key differentiator | Largest pure-play fleet telematics company by revenue; AI coaching and predictive maintenance integrated; Frost & Sullivan Company of the Year 2024 |
| Cons / Risk gaps | 80%+ revenue is North America; APAC/SEA expansion nascent; primarily trucking/heavy fleet — limited intermodal visibility capability |
| SEA presence | Not a named SEA market; expansion documented in Europe and Mexico; no SEA office confirmed [ASSUMED-4] |
| Sources | (2)(23) |

#### 7. Motive (Fleet Telematics — North America, IPO filing 2025)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | San Francisco, CA, USA / Private filing IPO (NYSE: MTVE planned); Alphabet (Google) investor |
| What it does | Fleet operations platform: ELD compliance, GPS tracking, dash cams, driver coaching, equipment tracking; serving trucking, construction, oil & gas, agriculture |
| Primary user | North American fleet operators (100,000 customers as of Sep 2025); ~30% trucking/logistics by ARR |
| Business model | SaaS subscription per vehicle; hardware included in plan |
| Revenue / Scale | $370M revenue (FY2024); $417M ARR (Dec 2024); $501M ARR (Sep 2025); S-1 filed Dec 2025 (24) |
| Key differentiator | Strong ELD compliance heritage (formerly KeepTruckin); Google backing; expanding beyond trucking into construction/field service |
| Cons / Risk gaps | Heavy North America concentration; narrower IoT beyond vehicles; no confirmed SEA operations |
| SEA presence | No evidence; North America-first company [ASSUMED-5] |
| Sources | (24) |

#### 8. Geotab (Fleet Telematics — Global, largest by subscriptions)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Oakville, Ontario, Canada / Private (employee-owned, unicorn) |
| What it does | Open-platform fleet telematics (MyGeotab); 5M+ active subscriptions; open SDK ecosystem with 300+ third-party integrations; data analytics and compliance |
| Primary user | Fleet operators across enterprise and SME; largest in Europe and Latin America by subscriptions |
| Business model | Per-vehicle subscription sold through 3,000+ authorized resellers; open hardware ecosystem |
| Revenue / Scale | ~$681M+ revenue (2024, est.); 5M+ subscriptions; 100,000 global customers (25) |
| Key differentiator | Largest global fleet telematics installed base; open API platform enables rich third-party ecosystem; ABI Research ranked Overall Leader (commercial telematics) |
| Cons / Risk gaps | Primarily commercial fleet — no native multimodal cargo visibility; open ecosystem means variable data quality from reseller channel |
| SEA presence | Listed as top-15 vendor in SEA fleet management market with 40,000+ units; present in APAC via reseller network (8)(25) |
| Sources | (8)(25) |

#### 9. Tive (Cargo IoT — Shipment-level sensor, global)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Boston, MA, USA / Private; AXA Venture Partners, Sorenson Capital, Qualcomm Ventures investors |
| What it does | Reusable multi-sensor trackers (Solo series) for in-transit shipment monitoring: GPS, temperature, humidity, light, shock; all-mode tracking (ocean, air, road, rail); SaaS cloud platform |
| Primary user | Shippers of high-value, sensitive, or pharmaceutical/food cargo |
| Business model | Hardware + per-device SaaS subscription (device-as-a-service or hardware sale); per-shipment pricing available |
| Revenue / Scale | 2M trackers sold lifetime (hit Dec 2024); 900+ enterprise customers; $54M raised (2022) + $40M (Feb 2025) (26)(27) |
| Key differentiator | FAA/airline-approved trackers; multi-modal single device; strong pharma/food cold chain presence |
| Cons / Risk gaps | Device recovery logistics add cost and complexity in markets with weak reverse logistics infrastructure; satellite connectivity adds cost on longer-range routes |
| SEA presence | No named SEA office or case studies found; global shipper clients may use in SEA lanes [ASSUMED-6] |
| Sources | (26)(27) |

#### 10. Overhaul (Cargo Risk + Visibility — Insurance-linked)

| Attribute | Detail |
|-----------|--------|
| HQ / Parent | Austin, TX, USA / Private; Springcoast Partners (led Series C); $105M Series C (Aug 2025) |
| What it does | Device-agnostic supply chain visibility and risk monitoring platform integrating multiple IoT data streams; real-time risk alerting, cargo theft response, cold chain quality management; claims-relevant data for insurers |
| Primary user | High-value cargo shippers (pharma, electronics, food), cargo insurers seeking loss-prevention integration |
| Business model | SaaS subscription + insurance-linked risk services; up to 60–65% reduction in in-transit cargo insurance costs cited as customer ROI |
| Revenue / Scale | Safeguards >$1.4T in cargo trade; 96% cargo recovery rate cited; $73M growth financing (2023) + $105M Series C (Aug 2025) (28)(29) |
| Key differentiator | Device-agnostic (ingests any IoT feed); explicit insurance cost reduction linkage; 99.9% shipment protection rate; appears in Gartner 2024 MQ for RTTVP as evaluated player |
| Cons / Risk gaps | Private company — revenue not disclosed; primarily North America and EMEA deployments; limited SEA presence confirmed |
| SEA presence | No named SEA deployment; global platform architecture could support SEA but no evidence of active local operations [ASSUMED-7] |
| Sources | (28)(29)(6) |

---

### Revenue Model (Summary)

Three distinct models: (a) RTTVP annual SaaS subscription priced per shipment volume, $75K–$5M+ enterprise ACV; (b) cargo IoT device sale ($15–$100/unit) plus per-device monthly subscription, or device-as-a-service per shipment; (c) fleet telematics per-vehicle-per-month subscription ($25–$60/vehicle) with hardware amortized, sold direct or via reseller.

---

### Cost Drivers (Summary)

RTTVPs: carrier connectivity engineering (ongoing API/EDI maintenance for 1,000+ carrier integrations), cloud data ingestion infrastructure, ML modeling teams, enterprise sales and professional services. Cargo IoT: hardware COGS (cellular/GPS module + battery), reverse logistics for device recovery, cellular/satellite data costs per active device. Fleet telematics: hardware manufacturing, cellular data, customer success for large fleet accounts, R&D (AI coaching, predictive maintenance), compliance engineering (ELD regulatory updates).

---

### Preliminary Pain Points (this stage)

1. **Carrier network coverage asymmetry:** Top RTTVP platforms cover 90%+ of large carrier volume but visibility drops sharply on tail carriers (small trucking companies, regional carriers in APAC/SEA), creating systematic blind spots on last-mile or multi-stop routes in Indonesia, Vietnam, and the Philippines where small operators predominate. (6)(8)

2. **Ocean container interior darkness:** AIS tracks vessel position but provides no visibility of container interior condition (temperature, humidity, tamper); only shipper-deployed IoT sensors or ocean-carrier-specific IoT programs (e.g., Maersk Remote Container Management) bridge this gap, and deployment rates remain low outside pharma and high-value electronics. [ASSUMED-8: to validate — what % of SEA-originated ocean shipments carry IoT condition sensors? Ask freight forwarders operating Singapore/Indonesia export lanes]

3. **Data silo between visibility layer and insurance/claims systems:** RTTVP and IoT platforms generate rich in-transit event data but rarely have native API connections to cargo insurers or claims management systems; shippers must manually extract incident data to support claims, increasing settlement time and creating evidentiary disputes. (28)

4. **Strategic cargo theft outpacing visibility response:** Strategic theft grew ~1,500% from 2022 to 2024 in North America; thieves now exploit identity fraud and fictitious pickup to divert loads before visibility platforms register deviation, meaning RTTVP data shows normal transit until pickup never completes. Cargo theft losses hit $455M in 2024 in the US/Canada alone (30).

5. **ELD mandate gap in SEA:** North American RTTVPs derive high coverage from mandatory ELD/GPS regulations (US FMCSA mandate). No equivalent mandate exists in SEA; voluntary GPS adoption in Indonesia and Vietnam is estimated at ~15–25% fleet penetration vs. 95%+ in the US, creating a structurally weaker data layer for any visibility platform operating in the region. [ASSUMED-9: to validate — what is actual GPS-equipped fleet penetration rate in Indonesia by fleet size tier? Ask Organda or Indonesian Ministry of Transportation data]

6. **Multi-modal handoff signal loss:** Cargo loses position signal at port dwell (container in stacked storage), during air freight (devices must be powered off in aircraft holds), and during rail transit in low-coverage corridors, creating "dark windows" that range from hours to multiple days. (IoT trackers with satellite fallback partially address this but add unit cost.)

7. **IoT device economics barrier in price-sensitive SEA markets:** Cargo IoT devices priced for global pharma/electronics customers ($30–$100/device + subscription) are economically unattractive for high-volume, low-margin commodity flows (garments, commodities) that constitute a large share of SEA freight volume. No viable sub-$5 disposable IoT tracker has achieved market penetration at scale. [ASSUMED-10: to validate — at what shipment value threshold do SEA shippers find IoT sensor cost-justified? Ask 3PLs in Indonesia/Thailand]

8. **Carrier API resistance in APAC:** Carriers — particularly regional truckers and smaller LCL consolidators in SEA — resist API integrations with shipper-nominated visibility platforms, viewing real-time position data as commercially sensitive or contractually risky; many default to driver mobile app tracking (lower data quality, higher dropout rate) or EDI milestone-only updates. (6)(8)

9. **Data quality degradation from driver app dependency:** Where carrier API integration is absent, RTTVP platforms fall back to driver-operated mobile apps for position pings; dropout rates on driver apps are reported at 20–40% for long-haul Southeast Asian routes, generating invisible shipments during exactly the highest-risk segments of the journey. [ASSUMED-11: to validate — what is actual driver app location ping dropout rate on Indonesia TL routes? Ask regional 3PLs]

10. **Temperature exceedance detection latency:** For cold chain shipments, IoT sensors alert on threshold breach but response time (pre-cooling, diversion, pharmacist QA sign-off) often exceeds the logistically viable intervention window, especially in SEA port dwell situations; data arrives after damage is irreversible. (9)(27)

11. **Platform consolidation risk for shippers:** The RTTVP market is consolidating (Transporeon-Sixfold under Trimble; Trimble telematics divested to Platform Science; SAP acquisition offer for FourKites); shippers who standardized on a platform acquired by a freight/logistics competitor face data-sharing conflict of interest concerns. (20)(21)(17)

12. **SEA fleet management market immaturity:** With only 15.7% fleet penetration in SEA in 2023 (estimated 25.7% by 2028 per Berg Insight), the underlying telematics data layer that RTTVPs depend on is structurally thin compared to North America or Europe; this means even well-funded global RTTVP vendors deploying in SEA face a carrier connectivity bootstrapping problem. (8)

13. **Insurance premium signal not integrated:** Visibility data that could directly inform underwriting (route risk profiles, historical dwell times, driver behavior scores, temperature compliance rates) rarely flows to cargo or commercial auto insurers in real time; the data exists but lacks standardized formatting and consent frameworks for insurer ingestion. [ASSUMED-12: to validate — do any SEA cargo insurers currently receive RTTVP or telematics data feeds for pricing? Ask Tokio Marine or local marine underwriters in Singapore]

---

### Sources for this stage

(1) FreightWaves — "What Gartner's new Magic Quadrant tells us about the real-time visibility market": https://www.freightwaves.com/news/what-gartners-new-magic-quadrant-tells-us-about-the-real-time-visibility-market

(2) Samsara 10-K FY2025 (SEC EDGAR, filed ~March 2025): https://www.sec.gov/Archives/edgar/data/0001642896/000164289625000022/iot-20250201.htm

(3) DataIntelo — Real-Time Freight Visibility Platform Market 2024: https://dataintelo.com/report/real-time-freight-visibility-platform-market (secondary market research firm; use as directional only, not authoritative)

(4) BusinessWire/ResearchAndMarkets — "Real-Time Transportation Visibility Platforms Report 2025": https://www.businesswire.com/news/home/20250820985707/en/Real-Time-Transportation-Visibility-Platforms-Report-2025-Project44-FourKites-and-Shippeo-Lead-the-Charge-in-Visibility-Platforms---ResearchAndMarkets.com

(5) GM Insights — "Commercial Vehicle Telematics Market Size, 2025–2034": https://www.gminsights.com/industry-analysis/commercial-vehicle-telematics-market

(6) Gartner Magic Quadrant for Real-Time Transportation Visibility Platforms 2025: https://www.gartner.com/en/documents/6275683 [NEEDS-ATTENDED-FETCH: Gartner requires registration/login]

(7) Berg Insight — "Aftermarket car telematics subscribers exceeded 90 million in 2024": https://www.berginsight.com/aftermarket-telematics-subscribers-exceeded-90-million-in-2024-/

(8) GlobeNewswire/ResearchAndMarkets — "Southeast Asia Fleet Management Market Report 2024": https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html

(9) MarketsandMarkets — "Cold Chain Monitoring Market Size 2025–2030" ($8.31B–$15.04B): https://www.marketsandmarkets.com/PressReleases/cold-chain-monitoring.asp

(10) ABI Research — "Commercial Vehicle Telematics Market Update" (2022–2027 projections): https://www.abiresearch.com/blog/commercial-vehicle-telematics-market-update

(11) IoT Business News — "Active cargo tracking units to reach 29 million by 2025" (Berg Insight data): https://iotbusinessnews.com/2021/10/25/13560-the-installed-base-of-active-cargo-tracking-units-to-reach-29-million-by-2025/

(12) project44 — "$80M raise at $2.7B valuation" press release: https://www.prnewswire.com/news-releases/project44-raises-80-million-valuing-company-at-2-7-billion-up-12-from-january-despite-widespread-downturn-in-b2b-saas-valuations-301667043.html

(13) Getlatka — "How project44 hit $210.1M revenue in 2024": https://getlatka.com/companies/project44 (secondary aggregator; use as directional only)

(14) Shippeo — "2025 Gartner Magic Quadrant for Real-Time Transportation Visibility Platforms" (vendor-hosted copy): https://www.shippeo.com/ebooks/2025-gartner-r-magic-quadrant-for-real-time-transportation-visibility-platforms

(15) Sacra — FourKites company profile: https://sacra.com/c/fourkites/

(16) Getlatka — "How FourKites hit $114.3M revenue": https://getlatka.com/companies/fourkites-inc (secondary aggregator)

(17) Axios Pro — "SAP offered $600M for FourKites": https://www.axios.com/pro/supply-chain-deals/2026/02/23/sap-fourkites-offer

(18) Supply Chain Digital / Shippeo press — "$30M Series D-II" (Jan 2025): https://supplychaindigital.com/technology/shippeo-30m-funding-round

(19) Transporeon — "Transporeon Visibility Hub to succeed Trimble Visibility": https://www.transporeon.com/discover-transporeon-visibility-hub

(20) Trimble investor news — "Trimble Unveils Transporeon Visibility with Seamless TMS Integration" (Sep 2024): https://investor.trimble.com/news/news-details/2024/Trimble-Unveils-Transporeon-Visibility-with-Seamless-TMS-Integration/default.aspx

(21) PRNewswire — "Platform Science Completes Acquisition of Trimble's Global Transportation Telematics Business Units" (Feb 2025): https://www.prnewswire.com/news-releases/platform-science-completes-acquisition-of-trimbles-global-transportation-telematics-business-units-302371696.html

(22) Tech.eu — "Wakeo raises €18M for supply chain visibility and sustainability" (Dec 2023): https://tech.eu/2023/12/04/wakeo-raises-18m-for-supply-chain-visibility-and-sustainability/

(23) Samsara Q4 FY2025 earnings press release: https://s29.q4cdn.com/853855404/files/doc_financials/2025/q4/Q4-2025-Earnings-Press-Release-Draft-FINAL.pdf

(24) Motive S-1 (SEC EDGAR, filed Dec 2025): https://www.sec.gov/Archives/edgar/data/1646681/000162828025058773/motive-sx1.htm

(25) Geotab — "Geotab Surpasses 5 Million Subscriptions" press release: https://www.geotab.com/press-release/geotab-5-million-subscriptions-milestone/

(26) GlobeNewswire — "Tive Hits Two Million Real-Time Shipment Visibility Trackers Sold" (Dec 2024): https://www.globenewswire.com/news-release/2024/12/03/2990695/0/en/Tive-Hits-Two-Million-Real-Time-Shipment-Visibility-Trackers-Sold.html

(27) FreightWaves — "Tive raises $54M to expand shipment tracker sales globally" (Apr 2022): https://www.freightwaves.com/news/tive-raises-54m-to-expand-shipment-tracker-sales-globally

(28) PRNewswire — "Overhaul Secures $105 Million Series C" (Aug 2025): https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(29) PRNewswire — "Overhaul Secures $73M in Growth Financing": https://www.prnewswire.com/news-releases/overhaul-secures-73m-in-growth-financing-expands-its-foothold-in-global-supply-chain-visibility-risk-and-compliance-market-301763864.htm

(30) Risk & Insurance — "Cargo Theft Losses Hit Record $455M in 2024": https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/

---

### Current Players by Region

**Global / North America (primary market for most platforms):**
- project44 — Market leader by ARR (~$210M revenue, 2024); strongest telematics network; North America + Europe
- Samsara (NYSE: IOT) — Largest fleet telematics pure-play ($1.25B revenue FY2025); 80%+ North America
- Motive (formerly KeepTruckin) — #2 fleet telematics ($370M revenue FY2024); IPO filed Dec 2025; North America
- FourKites — RTTVP leader for CPG/food & bev ($114M revenue); Chicago-based; SAP acquisition offer (not completed)
- Overhaul — Risk-focused visibility with cargo theft/insurance linkage; Austin, TX; $73M + $105M raised
- Geotab — Largest global fleet telematics by subscriptions (5M); privately held; Canadian; reseller-distributed

**Europe:**
- Shippeo — European RTTVP leader ($22M revenue, 2024); Paris; Gartner MQ Leader
- Transporeon/Sixfold (Trimble) — European TMS+visibility incumbent; 158,000 carriers; Ulm, Germany
- Wakeo — Intercontinental multimodal (€30M+ total funding); Paris; Uniqlo, Michelin as customers
- Webfleet (Bridgestone subsidiary) — European fleet telematics incumbent (formerly TomTom Telematics)
- Lytx — Video telematics / dash cam leader; San Diego but EMEA presence; 2.1M drivers in 85+ countries

**Southeast Asia (fleet telematics — cargo IoT/RTTVP SEA coverage is nascent):**
- Cartrack (Karooooo) — JSE/NASDAQ listed; largest SEA presence among named players; 200,000+ units in Indonesia, Malaysia, Philippines, Thailand, Hong Kong
- TransTRACK — Indonesia-based fleet management; top-3 SEA by installed base; local regulatory compliance focus
- Jimi IoT — China-headquartered; top-1 SEA by installed base (200,000+ units); hardware-led, reseller distributed
- Geotab — Top-15 SEA vendor (40,000+ units); present via reseller; Canadian; open-platform differentiator
- Katsana — Malaysia-based fleet management; present in Malaysian market; local player with regulatory integration
- EasyGo / McEasy — Indonesia-based; growing SME fleet market; local regulatory and ELD-equivalent features

*Note: Global RTTVP leaders (project44, FourKites, Shippeo) have minimal confirmed SEA operational presence. Cargo IoT leaders (Tive, Roambee, Overhaul) have limited or no named SEA deployments in available sources.*

---

### Assumptions to Validate

[ASSUMED-1]: project44 has a VP/GM for ANZ & SEA but its carrier integration network in SEA (local truckers, regional 3PLs in Indonesia/Vietnam/Thailand) is substantially shallower than its North America or Europe network.
- to validate: Ask project44's ANZ/SEA sales team what % of Indonesian, Malaysian, and Vietnamese trucking carriers are connected via API vs. mobile app vs. EDI-only. Ask 3PLs operating these corridors whether project44 provides usable tracking on domestic last-mile legs.

[ASSUMED-2]: FourKites has no meaningful SEA operational presence — no office, no named local customers, no SEA-specific carrier integrations.
- to validate: Ask FourKites APAC team if they have active SEA customers. Ask regional shippers/3PLs whether FourKites was evaluated for APAC lanes.

[ASSUMED-3]: Shippeo's Yamaha Motor Ventures and Woven Capital (Toyota) strategic investment signals APAC expansion intent, but no concrete SEA deployments have been announced as of May 2026.
- to validate: Ask Shippeo whether the Toyota/Woven investment has translated into Japan or SEA customer deployments. Ask Yamaha or Toyota logistics teams in Southeast Asia whether Shippeo visibility is in use.

[ASSUMED-4]: Samsara's commercial fleet telematics business is concentrated in North America with nascent Europe expansion; no SEA deployments or reseller partners have been publicly announced.
- to validate: Ask Samsara whether they have reseller or direct customer relationships in Indonesia, Malaysia, or Thailand. Check whether Samsara hardware is certified for use on local vehicle types in SEA.

[ASSUMED-5]: Motive (formerly KeepTruckin) has no SEA operations and is unlikely to prioritize SEA in the near term given its North American regulatory (ELD mandate) heritage and pending IPO focus.
- to validate: Confirm with Motive whether APAC is on the 2026-2027 roadmap.

[ASSUMED-6]: Tive's cargo trackers are used by global shippers on SEA-origin lanes (e.g., electronics from Malaysia, pharma from Singapore) but Tive does not have a local SEA office, making device support, battery logistics, and recovery chains dependent on shipper self-management.
- to validate: Ask Tive whether they have active customers in Indonesia, Malaysia, or Singapore. Ask whether device recovery programs are operationalized in SEA.

[ASSUMED-7]: Overhaul's platform could serve SEA-based shippers or insurers but has no confirmed local deployments. The risk-intelligence + IoT combination would be relevant to the Tokio Marine/Wright Partners venture thesis if it can be deployed in the Indonesia market.
- to validate: Ask Overhaul whether they have any APAC partnerships, particularly with marine/cargo insurers operating in Singapore or Jakarta.

[ASSUMED-8]: The proportion of SEA-originated ocean shipments (non-pharma, non-high-value electronics) carrying IoT condition sensors is below 5%.
- to validate: Ask freight forwarders (Kuehne+Nagel, Expeditors, DHL Global Forwarding) operating Singapore-to-Europe/US lanes what % of shipper customers request IoT sensors on standard ocean shipments.

[ASSUMED-9]: GPS-equipped fleet penetration in Indonesian commercial vehicles (trucking, logistics) is approximately 15–25%, based on SEA fleet management market penetration data (Berg Insight, 15.7% overall SEA in 2023).
- to validate: Contact Indonesian Ministry of Transportation or Organda (Indonesian trucking association) for official vehicle registration data cross-referenced with GPS device import statistics.

[ASSUMED-10]: The break-even shipment value at which SEA shippers find IoT sensor cost ($30–$100/device) justifiable is approximately $5,000–$10,000 per shipment, excluding the pharmaceutical and electronics segments where regulatory compliance drives adoption regardless of value.
- to validate: Ask Indonesian or Thai 3PLs at what cargo value threshold their customers request active IoT monitoring. Ask cargo insurers whether sensor deployment affects premium calculation.

[ASSUMED-11]: Driver app location ping dropout rates on Indonesian TL routes exceed 25%, primarily due to cellular coverage gaps in rural Sumatra, Kalimantan, and Sulawesi corridors.
- to validate: Ask regional 3PLs (J&T Cargo, SiCepat, Lion Parcel, or TIKI in Indonesia) for their internal location update completion rates on inter-island routes.

[ASSUMED-12]: No SEA cargo insurer currently receives real-time RTTVP or telematics data feeds as a formal input into underwriting pricing for cargo or commercial auto policies.
- to validate: Ask Tokio Marine underwriters in Singapore/Jakarta whether any visibility or telematics data is currently used in cargo premium calculation. Ask project44 or Overhaul whether they have insurer data-sharing agreements in APAC.

