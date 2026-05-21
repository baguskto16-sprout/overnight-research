# Stage 3: Fleet & Driver Management / Telematics — Value Chain

*Run ID: 2026-05-17-2337 | Generated: 2026-05-18*
*Basis: Prior draft (2026-05-14-0107) updated with audited FY2026 filings for Samsara, Motive S-1, EROAD FY2025 NZX, Karooooo FY2026, Geotab September 2025 milestone, Platform Science / Trimble close, Descartes / Idelic acquisition (April 2026), LocoNav acquisition by Sensorise (October 2025), India AIS-140 regulatory context, Cartrack SEA FY2026 subscriber data.*

---

## Description

Fleet and driver management / telematics is the carrier-side risk layer in the logistics value chain: hardware and software solutions installed in or on commercial vehicles — trucks, vans, trailers — that monitor driver behavior, vehicle health, hours-of-service (HOS) compliance, route execution, fuel consumption, and safety events. These solutions are owned and operated by carriers (or leased through SaaS contracts), generating data that is structurally invisible to shippers and 3PLs unless third-party integrations are built. Regulatory anchors (US FMCSA ELD mandate; India AIS-140 VLTD mandate) drive adoption in developed markets; commercial ROI on fuel, insurance, and nuclear-verdict risk drive adoption elsewhere.

---

## Activities

1. **Electronic logging and regulatory compliance:** Recording driver hours-of-service electronically (US: FMCSA ELD mandate, covers ~3.5M heavy trucks; India: AIS-140 VLTD mandate covers all commercial vehicles; EU: digital tachograph), transmitting records to regulators or roadside inspectors on demand, enforcing duty-status rules to prevent fatigue-related incidents. (1, 2)
2. **Real-time GPS tracking and geofencing:** Transmitting vehicle position at regular intervals (typically 1–60 seconds), alerting fleet managers to route deviations, unauthorized stops, geofence breaches, and delivery-window SLA performance; providing carrier-side evidence for cargo-claims disputes.
3. **AI dashcam event detection and driver coaching:** Inward- and outward-facing video cameras with on-device or cloud AI identifying harsh braking, following distance, distracted driving, fatigue, mobile phone use, and forward-collision risk; generating coaching events sent to drivers in real time or post-trip; Lytx data shows Level 2 collision rate down 59% among coached fleets. (3)
4. **Driver behavior scoring and nuclear-verdict risk management:** Aggregating telematics, video, HOS, and violation data into per-driver risk scores; triggering remediation workflows (coaching, training, suspension) before an at-fault incident generates litigation exposure; Idelic (acquired by Descartes April 2026 for $28M) held 40B+ miles of telemetry and 400k+ accident records as a nuclear-verdict defense dataset. (4)
5. **Fleet maintenance and total cost of ownership (TCO) management:** Tracking vehicle odometer, engine fault codes (J1939 / OBD-II), predictive maintenance alerts, scheduled service reminders, and repair workflow management (Fleetio, Cetaris, Decisiv); reducing unplanned downtime and warranty/repair costs for carriers.

---

## Revenue Model

Per-vehicle per-month SaaS subscription (typically $15–60/vehicle/month depending on module set and geography) bundled with proprietary hardware under 24–36-month contracts; upsell from GPS-only to AI dashcam, spend management, and maintenance modules drives net dollar retention above 110%.

---

## Cost Drivers

Hardware bill of materials (GPS unit: $50–150; AI dashcam: $200–500 per camera), cellular data connectivity, cloud infrastructure for video storage and AI inference, direct sales force (particularly in SEA where Cartrack runs a no-reseller direct model), customer support and installation labor, and R&D for AI model training on proprietary driving datasets.

---

## Market Size

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global commercial vehicle telematics market size | $24.3B | 2024 | Medium — GMI Insights specialist firm; single source | (5) |
| Global aftermarket telematics hardware units shipped | 51.2M units; €2.4B value | 2024 | Medium — Berg Insight primary telematics research firm | (6) |
| Global OEM embedded telematics subscriptions | 286.6M active | 2024 | Medium — Berg Insight; CAGR 13.0% to 528.1M by 2029 | (6) |
| Fleet management installed base — North America | 17.4M active units (2023); 30.5M projected 2028 | 2023 | High — Berg Insight (primary specialist); independently corroborated by FMCSA ELD mandate data | (7, 1) |
| North America telematics penetration rate in commercial vehicles | ~53.3% of non-private commercial vehicles | 2023 | High — Berg Insight estimate; consistent with FMCSA data showing 3.5M ELD-covered heavy trucks | (7, 1) |
| Fleet management installed base — Latin America | 6.5M active units; 13.0M projected 2028 | 2023 | Medium — Berg Insight | (7) |
| Americas combined installed base | ~24M units (2023); 43M projected 2028 | 2023 | Medium — Berg Insight Americas report | (7) |
| Fleet management installed base — Europe | 27.6M projected 2028 | 2024 | Medium — Berg Insight European FM report | (8) |
| Fleet management installed base — Southeast Asia | 3.6M active units (2024); 6.4M projected 2029 | 2024 | High — Berg Insight SEA report (2nd edition, 2026); corroborated by Cartrack NASDAQ filings | (9, 10) |
| SEA fleet management CAGR | 12.3% | 2024–2029 | Medium — Berg Insight | (9) |
| US ELD-covered heavy commercial trucks | ~3.5M trucks | 2024 | High — FMCSA mandate primary government source | (1) |
| Video telematics global market size | $1.69B | 2024 | Medium — GMI Insights; single source | (11) |
| Video telematics installed base projected | 22M units globally | 2030 | Medium — Berg Insight via Computer Weekly | (12) |
| Samsara FY2026 revenue (audited 10-K, year ended Jan 31 2026) | $1,618.6M (+30% YoY); ARR $1.89B | FY2026 | High — SEC 10-K filing (NYSE: IOT) | (13) |
| Samsara FY2025 revenue (audited 10-K, year ended Feb 1 2025) | $1,249.2M (+33% YoY); ARR $1.46B | FY2025 | High — SEC 10-K filing | (14) |
| Motive FY2024 revenue (S-1 registration statement filed Dec 23 2025) | $370M (+19% YoY); ARR $417M at Dec 31 2024 | FY2024 | High — SEC S-1 registration (pending IPO NYSE: MTVE) | (15) |
| Motive ARR as of Sep 30 2025 | $501M (+28% YoY); trailing-12M revenue $429M | Sep 2025 | High — S-1 registration statement | (15) |
| Karooooo / Cartrack FY2026 group revenue (audited) | ZAR 5.48B (~$302M at 18.1 ZAR/USD); ARR ZAR 5.18B; Asia+ME subscribers 336,000 (+23%) | FY2026 | High — NASDAQ KARO audited 6-K / press release | (10, 16) |
| PowerFleet FY2025 revenue (NASDAQ: AIOT) | $362.5M (+26% YoY); 2.8M subscribers | FY2025 | High — NASDAQ AIOT audited press release | (17) |
| EROAD FY2025 revenue (NZX/ASX: ERD) | NZD 194.4M (~$116M USD); ARR NZD 175.1M | FY2025 | High — NZX audited announcement | (18) |
| Geotab subscriptions milestone | 5M active subscriptions worldwide | Sep 2025 | Medium — Geotab press release; private company, no audited financials | (19) |
| Geotab estimated revenue | ~$970M estimated | 2024 | Low — third-party estimate only; private company, not audited | (20) |

*Data gap: No country-level market size for fleet telematics in any individual SEA country (Indonesia, Thailand, Malaysia, Vietnam, Philippines) found in Tier 1–4 audited sources. Berg Insight's SEA aggregate (3.6M units, 2024) is the best available primary figure. Country-level field validation required.*

---

## Current Players by Region

### North America

- **Samsara (NYSE: IOT)** — Largest publicly-traded pure-play fleet telematics; $1.62B FY2026 revenue; $1.89B ARR; 3,194 customers >$100k ARR; AI dashcam + ELD + asset tracking on unified Connected Operations Platform; 350+ marketplace integrations including Highway (carrier vetting), project44, FourKites; 14 trillion data points processed. SEA: No dedicated office; APAC via resellers only. (13)
- **Motive (pending IPO NYSE: MTVE)** — $501M ARR at Sep 2025; AI-powered ELD + dashcam + spend management (fuel card) vertical stack; ~100k customers; Series F ($150M, $2.85B valuation May 2022) + Series G ($150M, Jul 2025, Kleiner Perkins lead); India R&D; no SEA commercial operations. SEA: None. (15, 21)
- **Geotab (private)** — 5M+ active subscriptions globally (milestone Sep 2025); estimated ~$970M revenue 2024; #1 ABI Research commercial telematics ranking 4 consecutive years; open MyGeotab SDK with 200+ marketplace apps; sold exclusively via 500+ authorized resellers; OEM partnerships. SEA: Singapore direct office (Jan 2021); authorized resellers in Indonesia, Malaysia, Thailand, Philippines. (19, 20, 22)
- **Platform Science (private; Trimble 32.5% stake)** — Acquired Trimble's global transportation telematics units (closed Jan 2025); Trimble trailing-12M revenue at divestiture ~$300M; ARR ~$200M; in-cab Virtual Vehicle platform with OEM partnerships (Daimler/Freightliner, Paccar/Kenworth/Peterbilt); app marketplace enables multi-vendor telematics on one screen; native Trimble TMW TMS integration. SEA: None. (23)
- **Verizon Connect (Verizon NYSE: VZ)** — Enterprise fleet management, GPS, ELD, video; North America focus; divested all APAC/international commercial operations to Geotab (2023–24); ~5.56% market share in Transportation & Fleet Management category per Enlyft; revenue not separately disclosed in Verizon 10-K ($134.8B total VZ revenue in 2024). SEA: None — APAC operations divested. (24, 25)
- **Lytx (private; Permira majority stake since 2020, valuation >$2.5B)** — Video telematics specialist; 5.5M+ drivers protected; 300B+ miles in ML training database; 89 countries via resellers; 2025 Road Safety Report: Level 2 collisions down 59% among coached fleets; data licensing to insurers via SambaSafety integration; full telematics (GPS, ELD) added to compete on full suite. SEA: Reseller network in 90+ countries including SEA; no dedicated SEA office. (3, 26)
- **Idelic (now Descartes Systems Group NASDAQ: DSGX, acquired April 2026 for $28M + $12M earn-out)** — Driver safety and performance intelligence platform; 40B+ miles of telemetry + 400k+ accident records; AI analytics for nuclear-verdict risk prevention; Schneider National (12,000 drivers) reference customer; integrated into Descartes Global Logistics Network post-acquisition. SEA: None. (4)

### Europe

- **Webfleet (Bridgestone subsidiary)** — ~783,000 European subscriptions; purpose-built EU tachograph and driver-hours compliance; tire-wear data overlay from Bridgestone parent; Frost & Sullivan best practice leader European commercial telematics 2025; 60,000+ organizations globally. SEA: Select APAC markets via resellers; no dedicated SEA office. (27)
- **PowerFleet (NASDAQ: AIOT; merger of Powerfleet + MiX Telematics + Fleet Complete, closed Apr 2024)** — $362.5M FY2025 revenue; 2.8M subscribers; ABI Research #1 innovation ranking 2025; strong South Africa + EU + Middle East footprint; MiX legacy APAC presence primarily in Australia. SEA: Limited — Australasia-focused; no dedicated SEA office. (17)
- **Geotab** — Also a European market leader; EU ELD and tachograph support; strong government/municipal fleet penetration. (see North America entry above)
- **EROAD (NZX/ASX: ERD)** — NZD 194.4M (~$116M USD) FY2025 revenue; operations in New Zealand (NZD 103.9M), North America (NZD 81.2M), and Australia (NZD 13.7M); HOS compliance + GPS + driver scoring; first to achieve positive free cashflow (NZD 16M) in FY2025; no SEA presence. SEA: None — NZ/AU/NA markets only. (18)

### India

- **Sensorise Digital Services (Eagle.ai; acquired LocoNav India operations Oct 2025)** — Sensorise acquired LocoNav's India fleet management business (14 Oct 2025), gaining 10,000+ customers and 150,000 active device subscriptions (including Hero, Mahindra, Kinetic Green, Dalmia Cement, RevFin); simultaneously launched Eagle.ai, an AI-powered mobility intelligence platform for fleet safety, compliance, and operations; LocoNav's international operations (not part of acquisition) remain with LocoNav for global expansion. AIS-140 VLTD compliant. SEA: None confirmed. (28, 29)
- **Tata Motors Fleet Edge** — Factory-native telematics for Tata Motors commercial vehicles; 500,000+ connected Tata trucks as of Jan 2024; AIS-140 / 4G SIM embedded in all M&HCV; real-time vehicle health, driver behavior, fuel management; Standard and Advance subscription tiers. India's largest OEM-native connected truck program. SEA: None (India OEM-native only). (30)
- **Ashok Leyland i-Alert** — OEM-native telematics for Ashok Leyland commercial vehicles; in-house developed and operated; AIS-140 iGCU compliant; VHMD + track-and-trace + geofencing + driver monitoring + fuel management; available on Android and iOS; launched 2017, latest version 4.0.44 (May 2025). SEA: None (India OEM-native only). (31)
- **BharatBenz Truckonnect (Daimler Truck subsidiary)** — OEM-native telematics for BharatBenz commercial vehicles; standard on all 16-tonne+ models; fleet analysis, trip analysis, driving analysis; Truckonnect platform; AIS-140 compliant; cold-chain IoT integration for temperature-controlled freight. SEA: None (India OEM-native only). (32)
- **Cartrack India (Karooooo subsidiary)** — Direct-sales telematics; part of Asia+ME region contributing 336,000 combined subscribers at FY2026; GPS, driver behavior, stolen vehicle recovery; operates alongside Cartrack SEA. (10)

*Note: India's AIS-140 VLTD mandate (full enforcement by 2023 for N2/N3 vehicles and hazardous goods transport) creates a regulatory floor for GPS telematics adoption across all commercial vehicles — a structural difference from SEA where no equivalent mandate exists. This drives a large domestic market for AIS-140-compliant device vendors (Trimble, MapMyIndia, Tata Motors, Ashok Leyland, and dozens of ARAI-certified hardware providers). (2)*

### China

- **NavInfo (SHE: 002405)** — Shenzhen-listed digital map, telematics, and dynamic traffic information provider; H1 2024 revenue RMB 1.667B (~$230M USD); net loss RMB 356M; primary in-vehicle map supplier for Chinese OEMs; telematics data services for connected vehicles; not a fleet management SaaS vendor in the traditional sense. SEA: No direct presence. (33)
- **Full Truck Alliance (NYSE: YMM) telematics layer** — YMM operates China's largest digital freight platform (FY2024 total revenue RMB 11.24B / ~$1.54B USD, +33% YoY); provides value-added services to truckers including financial institution access, highway authority services, and gas station partnerships, but does not operate as a standalone telematics vendor; GPS tracking of trucks on platform occurs as a platform feature, not as a carrier-sold product. SEA: None. (34)
- **Jimi IoT (China-headquartered; private)** — Leading white-label telematics hardware manufacturer; 200,000+ fleet management units deployed in SEA via local resellers (Berg Insight SEA 2024); B2B2C model enabling local SEA providers to brand their own fleet product; broad hardware portfolio (OBD, hardwired GPS, solar-powered asset trackers). SEA: Strong device presence via resellers in Indonesia, Thailand, Philippines, Vietnam; no direct branded fleet management operations. (9, 35)
- **Sinotruk / FAW connected truck** — OEM-native telematics embedded in Sinotruk and FAW heavy trucks sold in China and export markets; primarily for vehicle health monitoring and fleet management by Chinese fleet operators; no dedicated SEA fleet management product confirmed.

*Data gap: No audited revenue data for Chinese fleet telematics vendors operating in SEA found in any primary source. The Chinese fleet telematics market operates through OEM-embedded platforms and white-label hardware exporters; a Western-style SaaS telematics ecosystem does not exist at equivalent scale. Field validation with a major Chinese logistics operator or CRRC/Sinotruk investor relations required.*

### Southeast Asia

- **Cartrack (Karooooo NASDAQ: KARO)** — Only NASDAQ-listed pure-play telematics with direct SEA offices (Singapore, Malaysia, Thailand, Indonesia, Philippines); 336,000 Asia+ME subscribers at FY2026 (+23% YoY); subscription revenue 17% growth (20% constant currency) in Asia; management calls SEA "the most compelling medium-to-long-term growth opportunity"; GPS tracking, driver behavior scoring, stolen vehicle recovery; dashcam/video product in early rollout ("vast under-penetrated market for sophisticated fleet management and video-based solutions"); Cartrack tag expansion planned for FY2027. (10, 16)
- **TransTRACK (Indonesia; private)** — Berg Insight top-3 SEA fleet management provider; $12M Series A (Eurazeo, Cocoon Capital); 100,000+ fleet management units in SEA; Indonesia-HQ with expansion to Singapore, Malaysia, Middle East; supply chain API integrations for Indonesian FMCG and logistics. SEA: Primary market Indonesia + expansion. (9, 36)
- **Jimi IoT** — 200,000+ SEA devices via resellers; white-label hardware enabling local fleet products. (see China entry)
- **KATSANA (Malaysia; KATSANA Holdings Sdn Bhd)** — Malaysia-HQ fleet management and usage-based insurance telematics; 1,600+ enterprise customers across SEA; $3.2M revenue (Oct 2024, GetLatka); $900k total funding + MYR 6.5M equity + MYR 3M grants; specializes in telematics-for-insurance (UBI) for Malaysian motor insurers; driver behavior + GPS + connected car data. SEA: Direct in Malaysia; limited across broader SEA. (37)
- **DTC (previously identified as top-5 SEA by Berg Insight 2024)** — Berg Insight named DTC among top 5 SEA fleet management providers alongside Jimi IoT, Cartrack, TransTRACK, and Onelink; no independent financial data found. [NEEDS-ATTENDED-FETCH]: https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html (38)

---

## Preliminary Pain Points (this stage)

1. **ELD data is structurally owned by the carrier — shippers and 3PLs have no native pipeline to it without third-party integration.** Telematics systems generate continuous driver-behavior and location data, but this data flows to the carrier's platform (Samsara, Motive, Geotab), not directly to the shipper. Shipper visibility layers (project44, FourKites) require separate API integration agreements with each telematics vendor; Samsara offers 350+ pre-built integrations, but the majority of smaller carriers use platforms with no pre-built shipper-side API, creating a cargo-risk blind spot. (13, Stage 2 context)

2. **AI dashcam safety outcomes are not normalized into shipment-level risk scores for insurers.** Lytx's 2025 Road Safety Report shows Level 2 collisions down 59% among coached fleets, but this safety data remains inside the fleet's telematics dashboard; it is not transmitted in real time to the cargo insurer or 3PL risk system. The FNOL API developed by Samsara is designed for US P&C insurers and has no equivalent in SEA commercial cargo insurance. (3, 13)

3. **AI dashcam event detection models are trained predominantly on North American and European road conditions; accuracy on SEA road environments is lower and unvalidated by any independent study.** Motorcycles represent the majority of mixed-traffic encounters in Thailand, Vietnam, Indonesia, and the Philippines; detection accuracy for two-wheelers is acknowledged as a known limitation by video telematics vendors. No third-party SEA road-condition validation of Lytx, Netradyne, or Samsara AI dashcam accuracy found. [ASSUMED-1]: Dashcam AI models trained on US/EU road data have materially lower detection accuracy for motorcycle-dense SEA traffic. To validate: request Netradyne and Cartrack incident-per-million-mile data for SEA vs. NA fleets; compare false-positive and missed-event rates.

4. **No SEA country has implemented a mandatory ELD or HOS regulation, removing the primary adoption trigger that drove >78% penetration in North American heavy trucks.** In contrast, India's AIS-140 VLTD mandate (enforced by Jan 2023 for N2/N3 vehicles; Maharashtra RTO checks from Nov 2024) creates a regulatory floor that generates demand for compliant GPS devices across all commercial vehicles. Without a similar SEA mandate, adoption remains voluntary and commercial-ROI dependent, systematically excluding small/informal carriers. (1, 2) [ASSUMED-2]: No SEA Ministry of Transport has enacted or is actively planning an ELD-equivalent mandate for trucks above a GVW threshold. To validate: check with Indonesian Kementerian Perhubungan, Thailand DLT, Malaysian JPJ, Singapore LTA for any mandate pipeline.

5. **SEA's owner-operator fleet structure makes telematics aggregation structurally difficult.** Cartrack has 336,000 SEA+ME subscribers as of FY2026 — but the addressable commercial vehicle fleet in Indonesia alone exceeds 6M registered trucks (BPS 2023), indicating maximum ~6% penetration in Indonesia even if Cartrack's entire Asia base were in-country. The majority of SEA freight moves on trucks operated by owner-operators (1–5 vehicles) who cannot absorb $15–60/vehicle/month SaaS subscription. (10, BPS)

6. **AI dashcam hardware costs remain prohibitive for small SEA carriers without insurer subsidy.** AI dashcams cost $200–500 per unit; for an Indonesian owner-operator earning $1,000–2,000/month net, this represents 10–50% of monthly income as a one-time capital cost. No systematic insurer-subsidy or fleet-aggregator financing program for dashcam installation was found in any SEA market. [ASSUMED-3]: No SEA commercial insurer (including Tokio Marine Indonesia, Sompo Indonesia, or AXA Mandiri) currently offers premium discounts or device-subsidy programs in exchange for telematics data from small commercial vehicle operators. To validate: interview underwriting teams at Tokio Marine Indonesia and Sompo Indonesia on whether telematics data is used in commercial auto pricing.

7. **GPS jamming and device tampering compromise telematics data integrity on high-theft SEA freight corridors.** GPS signal jammers are widely available and used on cargo theft routes; Cartrack offers stolen vehicle recovery as a differentiator but signal-jamming detection is not standard across lower-cost telematics hardware. Data gaps created by jamming are indistinguishable from cellular dead zones at the platform level, creating false-confidence in tracking coverage. [ASSUMED-4]: GPS jamming is a materially frequent cause of tracking blackouts (not just cellular dead zones) on high-theft routes in North Sumatra, Java, and Sulawesi. To validate: request incident-level signal-loss data from TransTRACK and Cartrack Indonesia operations teams.

8. **Telematics data and cargo IoT data streams are siloed with no real-time fusion for risk managers.** Telematics platforms track the truck; cargo IoT sensors (Tive, Sensitech, Roambee — Stage 4) track the shipment. These two streams are processed in separate platforms with no production-grade real-time fusion API. An insurer seeking to price the combined vehicle-and-cargo risk in real time would need to build custom integration, which no SEA market participant has productized as of May 2026. (Stage 4 boundary)

9. **Driver coaching interventions require consent and data access that is structurally contested in some SEA jurisdictions.** Inward-facing cameras recording driver behavior may conflict with Indonesia's Personal Data Protection Law (UU PDP No. 27, 2022) and Thailand's PDPA (2022); no published legal framework specifically permits or prohibits in-cab employee recording in these jurisdictions. Fleet operators operating multi-country SEA networks face inconsistent legal exposure with no vendor-provided compliance guidance. [ASSUMED-5]: In-cab driver-facing camera deployment in Indonesia, Malaysia, and Thailand requires informed employee consent under existing privacy laws but no fleet operator has yet faced regulatory enforcement. To validate: review UU PDP No. 27/2022 consent provisions with Indonesian employment lawyer; check whether any fleet operator has received a PDPA challenge in Thailand.

10. **HOS/ELD data formats are nationally incompatible, preventing cross-border visibility through the telematics layer.** US FMCSA ELD records are in a format specific to 49 CFR Part 395; EU digital tachograph data uses DTCO standards; India AIS-140 generates VLTD records; SEA has no equivalent standard. Cross-border freight (Malaysia–Thailand–Vietnam corridor; Indonesia–Singapore sea-bridge connections) cannot be continuously tracked through a single telematics compliance record. Carriers must maintain separate systems per country, multiplying per-vehicle compliance cost.

11. **Nuclear-verdict litigation risk is a North American concern not yet a structural risk factor in SEA, but its precursors exist.** The US trucking industry faced $4.1B in mega-verdicts in one recent period; Idelic was acquired explicitly to address this risk. SEA tort systems and jury-verdict dynamics differ from the US, but road fatality rates in Indonesia, Thailand, and Vietnam are materially higher per vehicle-km than in the US, and as regional insurance markets mature, litigation exposure from fleet incidents will grow. The risk-management data infrastructure (driver risk profiles, incident video evidence, coaching audit trails) does not yet exist at SEA carrier level. (4)

---

## Sources for this stage

(1) FMCSA ELD mandate general information and 3.5M trucks figure. https://www.fmcsa.dot.gov/hours-service/elds/general-information-about-eld-rule

(2) India AIS-140 / VLTD mandatory GPS telematics for commercial vehicles — Ministry of Road Transport & Highways. https://morth.nic.in/sites/default/files/Finalized_Draft_AIS_140_regarding_Intelligent_Transportation_Systems_.pdf | Maharashtra RTO enforcement Nov 2024: https://tracko.co.in/blog/about_tracko/vahan-shakti-ais-140-gps-tracker-the-mandatory-solution-for-vehicle-compliance-in-maharashtra | AIS-140 general: https://www.hashstudioz.com/blog/understanding-ais-140-why-is-it-mandatory-in-india/

(3) Lytx 2025 Road Safety Report — collision reduction data. https://www.lytx.com/blog/statistics-for-fleet-managers-from-2025-road-safety-report | Lytx 2024 State of the Data press release: https://www.lytx.com/news-events/press-release/2024/state-of-the-data-2024

(4) Descartes acquires Idelic for $28M + $12M earn-out, April 2026. Descartes press release: https://www.descartes.com/resources/news/descartes-acquires-idelic | FreightWaves: https://www.freightwaves.com/news/descartes-acquires-fleet-safety-platform-idelic-for-28m | Idelic nuclear-verdict content: https://idelic.com/blog/preventing-nuclear-verdicts-in-court-and-the-back-office/

(5) GMI Insights — global commercial vehicle telematics market $24.3B (2024). https://www.gminsights.com/industry-analysis/commercial-vehicle-telematics-market

(6) Berg Insight — Global Aftermarket Vehicle Telematics Hardware Market; OEM telematics subscriptions data 2024. Press summary: https://insurance-canada.ca/2025/02/03/berg-insight-global-vehicle-telematics-hardware/ | OEM telematics: https://insurance-canada.ca/2025/07/23/berg-insight-global-oem-telematics-market/

(7) Berg Insight — Fleet Management in the Americas (14th edition, 2024). IoT Business News release: https://iotbusinessnews.com/2024/12/04/05033-the-installed-base-of-fleet-management-systems-in-the-americas-to-reach-43-million-units-by-2028/ | PDF product sheet: https://media.berginsight.com/2024/12/03204201/bi-fmam14-ps.pdf (PDF, processed via markitdown not required — product sheet only, full report paywalled [NEEDS-ATTENDED-FETCH]: https://www.berginsight.com/fleet-management-in-the-americas/)

(8) Berg Insight — European Fleet Management Systems. TheFastMode summary: https://www.thefastmode.com/technology-and-solution-trends/38435-berg-insight-european-fleet-management-systems-to-reach-27-6-million-units-by-2028

(9) Berg Insight — Fleet Management in Southeast Asia (2nd Edition, 2026). IoT Business News release: https://iotbusinessnews.com/2026/02/26/the-installed-base-of-fleet-management-systems-in-southeast-asia-to-reach-6-4-million-units-by-2029/ | GlobeNewswire (top-5 providers): https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html | Berg Insight SEA product page: https://www.berginsight.com/fleet-management-in-southeast-asia/

(10) Karooooo FY2026 Q4 earnings transcript and press release. Motley Fool transcript: https://www.fool.com/earnings/call-transcripts/2026/05/14/karooooo-karo-q4-2026-earnings-transcript/ | StockTitan: https://www.stocktitan.net/news/KARO/karooooo-reports-record-q4-and-fy2025-results-fuelled-by-xvv1wen59p0v.html | Billionaires Africa FY2026 summary: https://www.billionaires.africa/2026/05/14/billionaire-zak-calistos-karooooo-delivers-record-earnings-in-fy2026-and-raises-dividend-20-as-cartrack-accelerates-across-africa/

(11) GMI Insights — video telematics market $1.69B (2024). https://www.gminsights.com/industry-analysis/video-telematics-market

(12) Berg Insight — video telematics 22M units by 2030. Computer Weekly: https://www.computerweekly.com/news/366641036/North-America-drives-video-telematics-market-to-22-million-units-by-2030

(13) Samsara FY2026 10-K (year ended Jan 31 2026). BusinessWire press release: https://www.businesswire.com/news/home/20260305580818/en/Samsara-Reports-Fourth-Quarter-and-Full-Fiscal-Year-2026-Financial-Results | SEC filing index: https://investors.samsara.com/financials/sec-filings/default.aspx | StockTitan summary: https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html

(14) Samsara FY2025 10-K (year ended Feb 1 2025). SEC annual report PDF: https://www.sec.gov/Archives/edgar/data/1642896/000164289625000048/iot2025ars.pdf

(15) Motive S-1 registration statement filed Dec 23 2025. SEC filing: https://www.sec.gov/Archives/edgar/data/1646681/000162828025058773/motive-sx1.htm | Analysis: https://tomtunguz.com/motive-s-1/ | FreightWaves: https://www.freightwaves.com/news/motive-files-for-ipo-signaling-next-phase-of-fleet-tech-arms-race

(16) Karooooo FY2025 annual results and Q1 FY2026 report. BusinessWire FY2025: https://www.businesswire.com/news/home/20250514850216/en/Karooooo-Reports-Record-Q4-and-FY2025-Results-Fuelled-by-Accelerating-Cartrack-Subscriber-Revenue-Growth-and-Robust-Profitability | Q1 FY2026 StockTitan: https://www.stocktitan.net/news/KARO/karooooo-reports-strong-q1-2026-results-highlighted-by-accelerating-it3smerokqr5.html | Q3 FY2026 SEC 6-K: https://karooooo.com/wp-content/uploads/2026/01/KARO_6-K-Q3-FY2026_20260120.pdf

(17) PowerFleet FY2025 annual results (NASDAQ: AIOT). Press release: https://ir.powerfleet.com/press-releases/detail/484/powerfleet-reports-annual-fy2025-results-a-breakout-year | PRNewswire: https://www.prnewswire.com/news-releases/powerfleet-reports-annual-fy2025-results-a-breakout-year-of-strategic-transformation-and-scaled-growth-302481935.html

(18) EROAD FY2025 results (NZX/ASX: ERD). NZX announcement: https://www.nzx.com/announcements/452220 | Annual report PDF: https://eroadglobal.com/wp-content/uploads/2025/05/EROAD-FY25-Annual-Report.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | NZ Herald: https://www.nzherald.co.nz/technology/eroad-squeaks-back-into-the-black-co-ceos-address-tariffs-3g-shutdown/GCB3CIDBFVCABCFYX43WP4HNY4/

(19) Geotab 5M subscription milestone, Sep 2025. Geotab press release: https://www.geotab.com/press-release/geotab-5-million-subscriptions-milestone/ | GlobeNewswire: https://www.globenewswire.com/news-release/2025/09/04/3144864/0/en/Geotab-surpasses-5-million-global-connected-vehicle-subscriptions.html

(20) Geotab estimated revenue ~$970M (2024). GrowJo third-party estimate: https://growjo.com/company/GEOTAB — [ASSUMED-6]: This revenue estimate is not audited; Geotab is private with no public financial disclosure. To validate: request Geotab's audited financial statements from a formal partner or via Geotab Canada government filing.

(21) Motive Series F and Series G funding. Series F (May 2022, $150M, $2.85B valuation): https://www.freightwaves.com/news/motive-raises-valuation-to-2-85b-after-closing-150m-funding-round | Series G (Jul 2025, $150M, Kleiner Perkins): https://gomotive.com/ai-leader-motive-raises-150-million-to-invest-in-product-go-to-market-expansion/

(22) Geotab SEA Singapore office and reseller network. Geotab APAC: https://www.geotab.com/apac/ | SEA expansion press release: https://www.geotab.com/apac/press-release/southeast-asia-expansion/

(23) Platform Science acquisition of Trimble telematics (closed Jan 2025). Trimble investor release: https://investor.trimble.com/news/news-details/2024/Platform-Science-to-Acquire-Trimbles-Global-Transportation-Telematics-Business-Units-to-Drive-the-Future-of-Transportation-In-Cab-Technology/default.aspx | Platform Science close announcement: https://www.prnewswire.com/news-releases/platform-science-completes-acquisition-of-trimbles-global-transportation-telematics-business-units-302371696.html

(24) Verizon Connect — APAC divestiture to Geotab. Geotab press release: https://www.geotab.com/press-release/verizon-connect/ | Enlyft market share: https://enlyft.com/tech/products/verizon-connect

(25) Verizon 2024 10-K — Business segment revenue $29.5B. Verizon annual report: https://www.verizon.com/about/sites/default/files/2024-Annual-Report-on-Form-10k.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | Q4 2024 earnings: https://www.verizon.com/about/sites/default/files/4Q24-Earnings-Press-Release.pdf

(26) Lytx — Permira investment, 300B+ miles database, 2025 Road Safety Report. Permira announcement: https://www.lytx.com/news-events/press-release/2020/lytx-announces-majority-investment-from-the-permira-funds | Road Safety Report: https://www.lytx.com/blog/statistics-for-fleet-managers-from-2025-road-safety-report

(27) Webfleet European subscribers and Frost & Sullivan recognition. Frost & Sullivan write-up: https://www.frost.com/wp-content/uploads/2025/02/Webfleet-Solutions-Final-Award-Write-up.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | Webfleet company: https://www.webfleet.com/en_us/webfleet/company/

(28) Sensorise acquires LocoNav India fleet business (Oct 14, 2025). Autocar Professional: https://www.autocarpro.in/news/sensorise-acquires-loconavs-india-operations-unveils-eagleai-fleet-management-platform-129228 | APN News: https://www.apnnews.com/sensorise-acquires-loconavs-india-fleet-management-business-launches-eagle-ai-to-power-smarter-safer-fleets/

(29) LocoNav pre-acquisition profile: $48.7M ARR; $47M total funding including Peak XV, RIT Capital. GetLatka: https://getlatka.com/companies/loconav | LocoNav Series B announcement: https://loconav.com/blog/loconav-raises-37-million-dollar-series-b-funding/

(30) Tata Motors Fleet Edge — 500,000+ connected vehicles Jan 2024. Tata Motors press release: https://www.tatamotors.com/press-releases/tata-motors-fleet-edge-digitally-connects-5-lakh-commercial-vehicles/ | Telematics Wire: https://telematicswire.net/tata-motors-connects-500k-vehicles-to-fleet-edge-platform/

(31) Ashok Leyland i-Alert — AIS-140, features, version history. Trucks CardDekho: https://trucks.cardekho.com/en/news/detail/explore-advanced-features-of-ashok-leylands-i-alert-fleet-telematics-to-make-commercial-vehicles-smarter-2884.html | i-Alert product page: https://ialert2.ashokleyland.com/

(32) BharatBenz Truckonnect — connected truck telematics. BharatBenz product page: https://www.bharatbenz.com/truckonnect/ | Daimler Truck Asia release: https://asia.daimlertruck.com/en/press-releases/japan/truckonnect-now-available-bharatbenz-trucks/

(33) NavInfo (SHE: 002405) H1 2024 revenue RMB 1.667B. Futunn earnings report index: https://www.futunn.com/en/stock/002405-SZ/news/announcement/earning-report | MarketScreener profile: https://www.marketscreener.com/quote/stock/NAVINFO-CO-LTD-11367139/company/

(34) Full Truck Alliance FY2024 20-F. PRNewswire results: https://www.prnewswire.com/news-releases/full-truck-alliance-co-ltd-announces-fourth-quarter-and-fiscal-year-2024-unaudited-financial-results-302392757.html | 20-F filing last10k: https://last10k.com/sec-filings/ymm/0001193125-25-079553.htm

(35) Jimi IoT SEA installed base. Berg Insight BusinessWire release: https://www.businesswire.com/news/home/20241105818026/en/Southeast-Asia-Fleet-Management-Market-Report-2024---Fleet-Management-Solutions-in-Southeast-Asia-Expected-to-Double-by-2028-Reaching-5.4-Million-Units---ResearchAndMarkets.com

(36) TransTRACK Series A and Berg Insight recognition. TransTRACK press release: https://blog.transtrack.co/en/press-release/transtrack-technology-summit-2024-fleet-innovation-and-expansion-strategy-with-series-a-funding-of-idr185-billion/ | Berg Insight recognition: https://blog.transtrack.co/en/press-release/transtrack-recognized-again-as-one-of-the-largest-fleet-management-providers-in-southeast-asia-by-berg-insight/

(37) KATSANA Malaysia — revenue, customers, funding. GetLatka $3.2M revenue: https://getlatka.com/companies/katsana-holdings-sdn-bhd | Crunchbase funding: https://www.crunchbase.com/organization/pixelated | KATSANA UBI/insurance article: https://www.katsana.com/telematics-insurance-malaysia-katsana/

(38) Berg Insight SEA top-5 providers (Jimi IoT, Cartrack, TransTRACK, DTC, Onelink). GlobeNewswire: https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html [NEEDS-ATTENDED-FETCH for full Berg Insight report]

(39) Netradyne Driveri accident reduction data — case studies and GreenZone Score methodology. Netradyne ROI guide: https://www.netradyne.com/guides/roi-guide | D.M. Bowman case study: https://www.netradyne.com/case-study/dm-bowman-cuts-preventable-dot-crash-costs-by-98-with-netradyne | NOVA Engineering case study: https://www.netradyne.com/case-study/nova-engineering-environmental-achieves-63-accident-reduction-with-netradyne

(40) Werner Enterprises Samsara dashcam deployment — 22% accident reduction, 19-year DOT low. Samsara customer story: https://www.samsara.com/customers/werner-enterprises | Work Truck Online: https://www.worktruckonline.com/10188918/werner-chooses-samsara-for-safety

(41) ABI Research commercial telematics competitive ranking 2025 — Geotab #1 overall, PowerFleet #1 innovation, Verizon Connect Top Implementer. PRNewswire: https://www.prnewswire.com/news-releases/geotab-samsara-and-powerfleet-take-the-top-spots-in-abi-researchs-commercial-telematics-competitive-ranking-302380732.html

(42) BPS Indonesia — registered motor vehicles by type, 2023. https://www.bps.go.id/id/statistics-table/2/NTcjMg==/perkembangan-jumlah-kendaraan-bermotor-menurut-jenis.html (6,091,822 registered trucks; 157M total vehicles)

---

## Assumptions to Validate

[ASSUMED-1]: AI dashcam event detection models trained on US/EU road data have materially lower accuracy for motorcycle-dense Southeast Asian traffic conditions.
- To validate: Request Netradyne, Cartrack, and Lytx false-positive and missed-event rates for SEA deployments vs. North American fleets; specifically ask whether models have been retrained on SEA road footage and whether a motorcycle detection module exists.

[ASSUMED-2]: No SEA government has enacted or is actively planning an ELD-equivalent mandatory GPS tracking regulation for commercial trucks as of mid-2026.
- To validate: Check with Indonesian Kementerian Perhubungan (Ministry of Transportation), Thailand Department of Land Transport (DLT), Malaysian JPJ (Road Transport Department), and Singapore Land Transport Authority for any mandate pipeline; request regulatory affairs team at Cartrack SEA for status.

[ASSUMED-3]: No SEA commercial insurer (including Tokio Marine Indonesia, Sompo Indonesia, AXA Mandiri) currently offers premium discounts or device-subsidy programs in exchange for telematics data from small commercial vehicle operators.
- To validate: Interview underwriting product managers at Tokio Marine Indonesia, Sompo Indonesia, and Allianz Indonesia on whether any UBI or fleet telematics discount structure exists in their commercial auto or cargo product lines.

[ASSUMED-4]: GPS jamming is a materially frequent cause of tracking blackouts (distinct from cellular dead zones) on high-cargo-theft routes in North Sumatra, Java, and Sulawesi.
- To validate: Request incident-level signal-loss logs from TransTRACK and Cartrack Indonesia operations teams; ask whether any law enforcement report distinguishes between jamming and natural dead zones on the North Sumatra–Jakarta route.

[ASSUMED-5]: In-cab driver-facing camera deployment in Indonesia, Malaysia, and Thailand requires informed employee consent under existing personal data protection laws, and no fleet operator has yet faced regulatory enforcement.
- To validate: Review Indonesia UU PDP No. 27/2022, Thailand PDPA 2022, and Malaysia PDPA 2010 for provisions on workplace monitoring and employee recording; consult local employment counsel on whether any enforcement action or complaint has been filed.

[ASSUMED-6]: Geotab's estimated revenue of ~$970M (2024) is a third-party estimate with no audited financial verification; Geotab is a private company with no public filing obligation.
- To validate: Request Geotab's audited financial statements via a formal business partner relationship or through Canadian corporate registry filings if available.

[ASSUMED-7]: Full Truck Alliance (NYSE: YMM) does not operate a standalone carrier-facing fleet telematics product; its GPS tracking of trucks occurs as a platform feature embedded in freight matching, not as a separately sold telematics SaaS.
- To validate: Review YMM FY2024 20-F technology services section; request YMM investor relations for clarification on whether fleet telematics is offered as a standalone product to truckers outside the freight matching platform.

