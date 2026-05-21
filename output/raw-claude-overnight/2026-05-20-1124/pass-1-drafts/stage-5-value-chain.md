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
