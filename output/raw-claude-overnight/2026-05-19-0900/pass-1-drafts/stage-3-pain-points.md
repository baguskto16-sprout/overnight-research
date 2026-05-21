## Stage 3: In-Transit Visibility & Telematics

*Value chain: Risk-management solutions for the freight/logistics journey*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*
*Risk angle: Visibility quality gaps, signal loss, data siloing, point-deployed vs journey-deployed IoT*
*Geography: Worldwide + explicit SEA focus*

---

### Pain point 3.1

**Description:** RTTVPs (project44, FourKites, Shippeo, Wakeo, Sixfold/Transporeon) lose reliable tracking data when a shipper or 3PL subcontracts to a small or spot carrier that is not pre-integrated with the visibility platform. At the moment of subcontracting — which often happens under time pressure to secure capacity — the carrier's ELD or telematics device is either absent, incompatible, or not credentialed in the platform, causing a complete blackout for that shipment leg. The shipper's visibility dashboard shows a static "last known position" or ghost entry while goods are physically moving in unknown conditions.

**Who bears it:** Shippers (manufacturers, retailers), 3PLs/freight brokers managing contracted carrier waterfalls, and their customers who depend on ETA accuracy.

**Estimated cost:**
- McKinsey (January 2024) estimates $65B–$95B/year in waste generated at mid- and last-mile blind handoff points in the U.S. economy alone; reducing these wastes by 40% with RTTVP + AI automation represents a $26B–$38B opportunity (1)
- Detention, missed-appointment, and unmanaged-spend consequences of tracking blackouts: quantified by FourKites at 19% reduction in detention charges when tracking is active (2)
- Enterprise RTTVP subscriptions run $75,000–$500,000+/year, yet carriers not pre-onboarded generate zero value from that spend on affected shipments (3)

**Willingness to pay:** [Not sourced — vendor pricing data does not isolate WTP for subcontractor coverage extension specifically. Leave blank.]

**Frequency:**
- 37% of companies still cannot track in-transit cargo according to Tive's 2025 State of Visibility Report (n not disclosed; vendor-commissioned — Low confidence, directionally useful) (4)
- 45% of supply chain experts report visibility into less than half of their total shipments (Tive 2025) (4)
- In North America, 95% of truckload capacity is controlled by carriers with fewer than five trucks — the population least likely to be pre-integrated with enterprise RTTVPs (5)
- Europe has 400+ telematics providers vs. fewer than 100 in the U.S., creating severe carrier-network fragmentation for European RTTVPs including Shippeo and Sixfold (5)
- SEA: fleet management system penetration reached only 15.7% of total fleet vehicles in 2023 (Berg Insight); forecast to reach 25.7% by 2028 — meaning 74% of SEA fleet vehicles have no telematics data feed available to RTTVPs today (6)

**Evidenced or assumed:**
(1) https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste
(2) https://www.fourkites.com/supply-chain-visibility/ (vendor own — Low confidence on specific %; directionally consistent with industry)
(3) https://blogs.tradlinx.com/how-much-does-project44-fourkites-or-vizion-really-cost-what-lsps-need-to-know-before-paying-for-premium-visibility-tools/
(4) https://www.tive.com/press-release/new-research-from-tive-reveals-that-37-of-companies-cant-track-in-transit-cargo (vendor own — Low confidence; directionally consistent)
(5) https://www.shippeo.com/resources/explore/blog-newsletter/tracking-spot-carrier-shipments-the-visibility-gap-that-doesnt-have-to-be
(6) https://www.telematicswire.net/the-installed-base-of-fleet-management-systems-in-southeast-asia-to-reach-5-4-million-units-by-2028/
(7) https://www.project44.com/blog/new-from-project44-carrier-tools/ (project44 launched RCA dashboard and driver-app workarounds specifically to address subcontracted load tracking failure — structural evidence the problem is real)
(8) https://www.shippeo.com/resources/explore/blog-newsletter/the-3-way-win-approach-to-onboarding-carriers-onto-transportation-visibility-platforms
(9) https://intercom.help/sixfold/en/articles/6023050-visibility-control-center-for-carriers (Sixfold's subcontractor consent/onboarding status tracker — structural evidence problem is endemic)
(10) https://research.oz.spotlightar.com/reports/magic-quadrant-real-time-transportation-visibility-platforms-2025/leaders (Gartner MQ 2025 — paywalled; accessible via vendor-distributed copies)
(11) https://www.businesswire.com/news/home/20250820985707/en/Real-Time-Transportation-Visibility-Platforms-Report-2025-Project44-FourKites-and-Shippeo-Lead-the-Charge-in-Visibility-Platforms---ResearchAndMarkets.com

**Root Causes**

- **RC1: No universal telematics standard means each carrier integration is bespoke and owned by the carrier, not the platform** — RTTVPs obtain tracking data through three primary paths: carrier API/EDI integration, direct ELD/telematics feed, or driver mobile app. The first two require the carrier to have been enrolled and credentialed before pickup. Because no interoperability standard exists across the 400+ European and 100 U.S. telematics providers, each integration is individually negotiated and maintained. Small carriers below ~5 trucks lack the IT resources or contractual leverage to maintain multiple platform connections, and are frequently absent from any RTTVP's active carrier network. The result is a structural enrollment gap that grows larger with every subcontracting layer. (5)(7)(8)

- **RC2: Subcontracting decisions are made faster than carrier onboarding can execute** — Load tendering to spot or emergency capacity often closes within hours. Pre-enrolling a new carrier on an RTTVP platform takes days (Shippeo's automated onboarding, marketed as a breakthrough, still requires the carrier to consent and configure a data-share). The decisional cadence for subcontracting is incompatible with the enrollment cadence for visibility compliance. No platform has yet solved this with zero-friction carrier onboarding because consent and data sharing require affirmative carrier action. (7)(8) [ASSUMED-1]: to validate: what is the average time-to-tracking for a newly subcontracted carrier across platforms — is the gap measured in hours or days?

- **RC3: RTTVPs' commercial model aligns with shipper-side buyers, not carrier-side suppliers, leaving carriers with no incentive to pre-enroll** — Shippers pay RTTVP subscriptions. Carriers provide data but derive no direct revenue from doing so. This creates an asymmetric incentive structure: the buyer of visibility has no ability to mandate enrollment, only to request it; the carrier providing data has no commercial reason to prioritize it. Platforms have responded with carrier-side dashboards and recognition programs (Shippeo Visibility Champions; project44 carrier tools), but these are marketing incentives rather than contractual obligations embedded in freight procurement. The misaligned incentive is why 40+ years of EDI adoption still has coverage gaps despite industry efforts. (7)(8)(5)

- **RC4: Subcontracted carrier identity is often unknown to the shipper until after pickup, removing the window for proactive enrollment** — When a primary carrier subcontracts to a secondary carrier, the shipper may not learn the sub's identity until the BOL is filed or even post-delivery. RTTVP platforms receive only the primary carrier's booking; the subcontracted leg is structurally invisible unless the primary carrier actively adds the sub to the platform. project44's RCA dashboard was created specifically because carriers could not previously identify *which* of their subcontracted loads were generating tracking failures — confirming the sub-carrier identity problem is structural and widespread. (7)

- **RC5: SEA-specific structural gap: no regulatory telematics mandate and fragmented informal trucking sectors** — In North America, ELD mandates since 2017 forced GPS/HOS data collection across the professional carrier population, providing a forcing function for RTTVP carrier network expansion. No equivalent mandate exists in any SEA country as of 2025. With only 15.7% telematics penetration across the SEA commercial fleet (Berg Insight 2023), the carrier network available to RTTVPs in the region covers a minority of road freight capacity. This is a structural regulatory gap rather than a technology gap — the technology for affordable telematics exists, but there is no mandate to deploy it. (6)

---

### Pain point 3.2

**Description:** Cargo IoT sensors (Tive, Sensitech, Roambee, Controlant, Hanhaa, ParkourSC) are deployed by whichever party initiates the shipment — typically the shipper or a specific 3PL — generating condition and location data that is accessible only on that party's platform and not shared downstream with the receiving party, other carriers, or insurers. This "point-deployed" model means condition data is created but not actionable by the parties who most need it: the carrier who could reroute to fix a temperature excursion, the consignee who needs to accept/reject on delivery, or the insurer who needs excursion data to validate a claim. The data exists but is siloed by commercial boundary.

**Who bears it:** Shippers and cargo owners who pay for sensor data they cannot act on; consignees who receive damaged goods without documented chain of evidence; insurers who face disputed claims without objective excursion records; pharmaceutical/food-grade supply chain operators subject to regulatory cold-chain requirements.

**Estimated cost:**
- Pharmaceutical industry losses from temperature excursion in transit: ~$35B/year globally (2019 WHO/industry estimate, frequently cited; no updated primary figure available — directional only) (1)
- Up to 20% of temperature-sensitive healthcare products are damaged or degraded during transit due to cold chain failures (2)
- 25% of vaccines arriving at destination have degraded efficacy due to cold chain failure (WHO/UNICEF cited in trade press) (3)
- 60% of businesses only discover shipment damage after delivery or never at all — meaning condition data from sensors, where it exists, is not reaching decision points in time (Tive 2025, vendor-commissioned) (4)
- Individual pharma shipment losses: $500K+ per event for high-value biologics (trade press; not cross-validated with a second primary source — Low confidence) (2)

**Willingness to pay:** [Not sourced — leave blank.]

**Frequency:**
- IoT tracking adoption: 60% of companies now use some form of IoT-powered tracking (up from 55% in 2024), yet 37% still cannot track in-transit cargo at all (Tive 2025) (4)
- Active cargo tracking installed base (refrigerated cargo only): 3.1 million units globally at end-2024, forecast to 4.9 million by 2029 at 9.1% CAGR (Berg Insight/IoT M2M Council) (5)
- Cold chain IoT telematics market: $2.5B by 2032 (ABI Research, cited by Food Logistics) (6)
- SEA archipelagic cold chain: per-unit cold chain costs elevated by up to 40% in island geographies (Indonesia, Philippines) due to modal complexity, compressing the economics available for IoT monitoring investment (7)
- BSI/TT Club 2024 Cargo Theft Report: 41% of cargo theft incidents occurred in transit; food & beverage (22%) and pharmaceuticals (implicitly) are top targeted commodities — highlighting that condition breach and theft both concentrate in the transit leg where siloed sensor data is least actionable (8)

**Evidenced or assumed:**
(1) https://ardem.com/bpo/cost-of-cold-chain-failures/ (secondary citation; original source WHO/IQVIA circa 2019 — treat as directional)
(2) https://cdmoworld.com/how-to-manage-temperature-excursions-in-pharma-cold-chain-logistics/
(3) https://www.eawlogistics.com/managing-temperature-excursions-in-pharmaceutical-cold-chain-logistics-a-comprehensive-guide/
(4) https://www.tive.com/press-release/new-research-from-tive-reveals-that-37-of-companies-cant-track-in-transit-cargo (vendor-commissioned — Low confidence on headline figures; methodology not disclosed)
(5) https://www.iotm2mcouncil.org/iot-library/news/smart-logistics-news/active-cargo-tracking-to-grow-at-24-4-cagr/
(6) https://www.foodlogistics.com/transportation/cold-chain/news/22912217/abi-research-cold-chain-telematics-market-to-grow-25b-by-2032
(7) https://ycp.com/insights/article/cold-chains-rise-in-southeast-asia-last-mile-logistics
(8) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF — processed via markitdown; BSI/TT Club Annual Cargo Theft Report, April 2025, covering 2024 data)
(9) https://www.hapag-lloyd.com/en/online-business/digital-insights-dock/insights/2024/05/smart-shipping--internet-of-things-and-sensor-technology-in-ship.html (Hapag-Lloyd: "Shipping lines typically make a limited set of data available to customers such as mapping, temperatures and alarms" — structural evidence of carrier-controlled data gating)
(10) https://www.pressreleasepoint.com/next-phase-iot-shipping-digitalization-data-interoperability-integration-intelligence
(11) https://www.mordorintelligence.com/industry-reports/asean-cold-chain-logistics-market
(12) https://www.pharmaceuticalcommerce.com/view/why-the-us-pharmaceutical-cold-chain-is-poised-for-innovation

**Root Causes**

- **RC1: Sensor data is collected under a single-party commercial relationship; no neutral shared data layer exists** — An IoT sensor deployed by a shipper on a shipment generates data owned by the shipper in the sensor vendor's platform (Tive, Sensitech, Controlant). The carrier who physically handles the shipment for the next 48 hours has no contractual right or technical access to that data. The consignee similarly receives no live feed. There is no neutral cross-party data substrate — no equivalent of a flight data recorder whose data belongs to all parties. The sensor vendor has no commercial incentive to build one because it would commoditize their platform. Hapag-Lloyd's documented practice of "making a limited set of data available to customers" exemplifies the carrier-gating norm. (9)(10)

- **RC2: Cold chain compliance data is defined per-party for regulatory purposes, not per-journey for operational purposes** — WHO GDP (Good Distribution Practice), EU 2013/C 343/01, and FDA 21 CFR Part 211 each define temperature monitoring requirements for the party currently in custody of the goods. A handoff from shipper to carrier resets the compliance clock without requiring data continuity. This regulatory structure actively incentivizes point-deployment: each party monitors its own custody window and documents compliance for its own audit trail, rather than creating a continuous chain-of-custody record. The regulation that was supposed to ensure product integrity has inadvertently codified the data silo. (3)(2) [ASSUMED-2]: to validate: do GDP-compliant cold chain operators actually share inter-party temperature data in practice, or does each custody transfer start a new monitoring record?

- **RC3: Physical sensor recovery economics favor single-use disposable units, which structurally limits data continuity** — Reusable IoT trackers (Tive Solo, Roambee Bee, Controlant C-logger) cost $100–$500/unit and require return logistics from consignee to shipper. For cross-border or ocean shipments this return logistics can cost more than the device itself, especially in multi-modal SEA supply chains where a tracker ends up in a rural Indonesia distribution center. The market has responded with disposable devices ($5–$30/unit for the Tive Tag tier). But a disposable sensor deployed at origin and discarded at destination produces a data record that ends at delivery — it cannot be the substrate for a continuous multi-party condition ledger because the device is destroyed. The cost structure of cargo IoT thus creates a gravitational pull toward single-use deployments that are architecturally incompatible with data continuity across custody handoffs. (4)(1)(5)

- **RC4: Cargo IoT platforms compete on data exclusivity, not data portability** — Sensitech (Carrier), Controlant, Roambee, and Tive each operate proprietary cloud platforms. Their competitive differentiation includes proprietary analytics, AI alerting, and customer stickiness from data lock-in. Building open APIs or adopting cross-platform data standards would benefit their customers but directly reduce switching costs — the opposite of what a SaaS business optimizes for. The industry body (COA workgroup including ORBCOMM) is developing an application-layer interoperability standard for refrigerated container IoT, but as of 2025 this is still in development and covers only reefer containers, not the broader cargo IoT market. (10)(5) [ASSUMED-3]: to validate: which of the major IoT vendors (Tive, Sensitech, Roambee, Controlant) publish documented open APIs, and do any of those APIs allow another party's platform to ingest their sensor data in real time?

- **RC5: Insurers and cargo underwriters do not yet require or integrate sensor data into claims processing, removing a demand-side forcing function for data sharing** — If insurers mandated real-time sensor data feeds as a condition of coverage (or offered meaningful premium discounts for continuous condition data), shippers would have a direct commercial incentive to deploy sensors that share data with underwriters and potentially with all parties in the chain. Overhaul's model (86% cargo theft reduction, 50%+ insurance premium discount) demonstrates the linkage is technically and commercially viable. But this model applies to security monitoring, not temperature/condition monitoring. No major cargo insurer has yet embedded structured condition IoT data requirements into pharma/food cold chain policy terms. [ASSUMED-4]: to validate: do cargo insurers currently offer premium discounts for continuous temperature data availability, and if so, what threshold of coverage/discount?

---

### Pain point 3.3

**Description:** Fleet telematics platforms (Samsara, Motive, Geotab, Verizon Connect, Trimble) each collect rich vehicle and driver data — GPS position, engine telemetry, hours of service, video safety events — but this data sits inside the telematics vendor's platform and is not natively shared with RTTVPs, cargo IoT layers, TMS, insurance underwriters, or risk-management platforms. A shipper using project44 as RTTVP and Samsara as fleet telematics has two separate data pools; reconciling them requires custom integration. For a 3PL managing a carrier network spanning multiple telematics vendors (Samsara on some trucks, Geotab on others, Motive on others), the data fragmentation scales with fleet heterogeneity. The result is that the richest risk-relevant data in the chain — second-by-second vehicle dynamics, harsh events, fatigue risk, route deviation — never reaches the risk management layer.

**Who bears it:** Fleet operators (carriers), 3PLs managing multi-carrier networks, shippers seeking integrated risk analytics, insurers seeking telematics-based rating data.

**Estimated cost:**
- Telematics data fragmentation costs: estimated $360–$640 per vehicle per year in hidden operational costs for a mixed-fleet operator (trade press estimate; single-source, Low confidence) (1)
- For a 50-vehicle mixed-telematics fleet: $18,000–$32,000/year in fragmentation-driven inefficiency (1)
- Fleet operators checking multiple telematics dashboards spend 45–60 minutes/day on status reviews alone, before any action is taken (1)
- Samsara FY2026 revenue: $1.62B (+29.5% YoY) with 98% subscription revenue — evidence of the market scale for fleet telematics as a category, even as data fragmentation remains unresolved (2)

**Willingness to pay:** [Not sourced — leave blank.]

**Frequency:**
- Over 70% of commercial fleets in North America operate fragmented telematics systems (multiple vendors, incompatible dashboards) (1)
- Samsara's installed base grew 37% YoY to FY2026, with 12,000+ Core Customers — yet a large portion of the addressable market remains on legacy or competing systems, sustaining fragmentation (2)
- SEA: 15.7% telematics penetration (2023), forecast 25.7% (2028) — the majority of SEA fleet vehicles generate no structured data feed, meaning fragmentation is subordinate to absence (3)

**Evidenced or assumed:**
(1) https://fleetrabbit.com/blogs/post/multi-telematics-samsara-geotab-uanified-platform (trade press; single-source — Low confidence on cost figures, directionally plausible)
(2) https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html (Samsara 10-K FY2026, via SEC filing coverage)
(3) https://www.telematicswire.net/the-installed-base-of-fleet-management-systems-in-southeast-asia-to-reach-5-4-million-units-by-2028/
(4) https://tivitri.com/connecting-samsara-and-geotab-devices-custom-fleet-integrations-for-better-visibility/
(5) https://www.withterminal.com/ (Terminal: universal API for telematics normalization — structural evidence integration gap exists, as commercial middleware required)
(6) https://www.axleapi.com/ (Axle: single integration for 50+ telematics devices — structural evidence of fragmentation at scale)
(7) https://nmfta-repo.github.io/nmfta-opentelematics-api/otapi.html (NMFTA OpenTelematics API — industry standardization effort, evidence problem is recognized but not solved)
(8) https://www.sec.gov/Archives/edgar/data/1642896/000164289625000048/iot2025ars.pdf (Samsara 2025 Annual Report to Shareholders, via SEC)
(9) https://inversmobility.medium.com/vehicle-telematics-api-integration-and-maintenance-hidden-costs-and-difficulties-cc35b7331a1f
(10) https://www.verizonconnect.com/resources/article/key-telematics-api-integrations/

**Root Causes**

- **RC1: Telematics vendors compete on platform stickiness, and open APIs reduce switching costs** — Samsara, Geotab, Motive, and Verizon Connect each offer proprietary data models, dashboards, and analytics. Their competitive moat includes the insight layer built on top of raw telemetry. Publishing full, machine-readable APIs to export all telemetry in a standard format would allow customers to commoditize the data layer and reduce switching costs — the opposite of what a subscription SaaS business optimizes for. While all vendors offer *some* API access, the scope, rate limits, and data granularity made available are controlled to protect platform differentiation. This is rational vendor behavior that structurally perpetuates fragmentation. (5)(6)(9)

- **RC2: No telematics data standard has achieved mandatory compliance across modes or geographies** — The NMFTA OpenTelematics API is an industry initiative, not a mandate; the FMCSA ELD specification covers HOS compliance but not broader vehicle telemetry; there is no international equivalent covering SEA or EU cross-border fleets. In Europe, 400+ telematics providers each implement data differently. Data fragmentation is thus not a technology failure (APIs exist) but a governance failure: no standards body has the mandate or market power to enforce a common data schema across the telematics ecosystem. (7)(3)

- **RC3: Risk-management buyers (insurers, RTTVPs, risk platforms) are not currently large enough customers of telematics data to compel openness** — Telematics vendors' primary buyers are fleet operators paying for compliance, safety, and dispatch optimization. Insurers wanting vehicle data for UBI (usage-based insurance) pricing and RTTVPs wanting carrier location data are secondary buyers with smaller revenue weight. Telematics vendors consequently have no commercial pressure to restructure their data access policies for risk-management use cases. The commercial dynamics would shift only if insurance premium savings from telematics data access were large enough that fleet operators demanded portability — a condition not yet met at scale. [ASSUMED-5]: to validate: do any major cargo insurers currently build telematics data feeds into underwriting models for fleet risk scoring, and at what discount magnitude?

- **RC4: Integration middleware (Terminal, Axle) solves normalization but does not solve consent, liability, or real-time data enrichment** — The emergence of API aggregators (Terminal: 50+ telematics feeds; Axle: 80% market coverage) confirms the fragmentation problem is real and commercially addressable. However, middleware solves only the technical normalization layer. It does not resolve which party consents to share which data with which third party (cargo shipper, insurer, broker); it does not determine liability if stale or inaccurate telematics data triggers an incorrect risk alert; and it operates at data-in-transit rather than data-at-source. The structural consent and liability questions remain unsettled because no cargo industry consortium has negotiated a multi-party data-sharing framework analogous to what IATA maintains for air cargo. (5)(6)(7)

---

### New pain points not in original hypothesis

#### Pain point 3.4 (surfaced in research, not in working hypotheses)

**Description:** Cargo IoT sensors and RTTVPs fail to deliver actionable pre-loss intervention because the data they generate reaches risk-management or insurance buyers too late — either delayed by connectivity gaps (dead zones, port congestion, cellular signal loss in rural SEA) or in a format that requires manual interpretation before any intervention is possible. The industry has framed this as an "ETA accuracy" problem and invested in AI prediction, but the structural gap is different: condition breach and cargo theft are discrete events, not continuous processes, and the value of monitoring depends entirely on the alert-to-intervention window. If that window is consistently shorter than the logistics time required to dispatch a response, the monitoring investment produces forensic value only, not preventive value.

**Who bears it:** Cargo owners with time-sensitive or high-value freight; cargo insurers who pay claims on events that were "detected" but not prevented; pharma/food-grade operators who face regulatory consequences from temperature excursions that were logged but not halted.

**Estimated cost:**
- 41% of cargo theft incidents in 2024 occurred in transit (BSI/TT Club 2024 Report); average theft value $202,364 (CargoNet 2024); 3,625 incidents recorded in US/Canada alone, implying ~$300M in recorded in-transit theft losses with known tracking technology deployed (1)(8)
- Pharmaceutical cold chain temperature excursion cost: directionally $35B/year globally (see Pain point 3.2, footnote 1)
- Cargo theft up 27% in 2024 despite rising RTTVP and IoT adoption — structural evidence that detection tools are not translating into prevention at scale (8)

**Willingness to pay:** [Not sourced — leave blank.]

**Frequency:**
- Overhaul's visibility+response model reduced cargo theft by 86% across its client base (vendor own — High plausibility given integrated dispatch capability, Low confidence on exact figure without audit) (9)
- BSI/TT Club 2024: 18% of U.S. incidents are "strategic thefts" involving impersonation, document forgery, AI-assisted fraud — these are not detectable by GPS ping alone and require behavioral pattern analysis (1)
- Cold chain: IoT monitoring market growing at 22.5% CAGR (monitoring components segment) driven by compliance demands, yet 60% of damage is only discovered post-delivery (3)(4)

**Evidenced or assumed:**
(1) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF — BSI/TT Club 2024 Cargo Theft Report, April 2025)
(2) https://www.carriermanagement.com/news/2025/06/25/276715.htm (NICB: cargo theft up 27% in 2024)
(3) https://www.pharmaceuticalcommerce.com/view/why-the-us-pharmaceutical-cold-chain-is-poised-for-innovation
(4) https://www.tive.com/blog/tives-2025-state-of-visibility-report-key-insights-for-supply-chain-professionals
(5) https://www.prnewswire.com/news-releases/cargo-theft-soars-49-in-first-half-of-2024-amid-rising-criminal-sophistication-reveals-overhaul-report-302228584.html (Overhaul: cargo theft +49% H1 2024)
(6) https://www.wtwco.com/en-us/insights/2024/12/high-value-shipments-at-risk-the-growing-threat-of-strategic-cargo-theft (WTW: strategic theft sophistication)
(7) https://www.cargonet.com/cargo-theft-data/ (CargoNet data)
(8) https://getsafeandsound.com/blog/cargo-theft-statistics/ (aggregated statistics)
(9) https://www.prnewswire.com/news-releases/overhaul-combines-its-cargo-theft-prevention-and-recovery-services-with-an-exclusive-cargo-insurance-program-302220417.html (Overhaul insurance program announcement)
(10) https://www.over-haul.com/ (Overhaul platform overview)

**Root Causes**

- **RC1: Detection without dispatch capability produces forensic data, not prevention** — An RTTVP or cargo IoT sensor that detects a geofence violation or temperature excursion can only generate an alert. Preventing the loss requires a human or automated responder to act within a window that is often measured in minutes. Most RTTVP buyers are logistics planners, not security dispatch operations. The alert goes to a TMS exception queue; the queue is reviewed in the next operational cycle; the window has closed. Overhaul's model — combining visibility with a 24/7 physical response network and insurance — is the only documented structure that closes this gap, but it requires a fundamentally different operating model than a pure SaaS RTTVP. (9)(10)

- **RC2: Cellular dead zones in port areas, tunnels, and rural SEA routes create systematic alert latency** — Cargo IoT devices rely on cellular or satellite connectivity for real-time alerting. Cellular IoT devices have data-logging capabilities to store readings when connectivity fails, but the stored data is transmitted in a batch upon reconnection — not in real time. For a pharmaceutical shipment in a cellular dead zone inside a port, the temperature excursion alert may arrive hours after the event, after the batch has already moved. SEA's archipelagic geography and rural infrastructure further concentrate these dead zones. Satellite-based alternatives (Iridium, Globalstar) exist but add $5–$15/day in connectivity cost per device, which few shippers accept for routine shipments. [ASSUMED-6]: to validate: what is the average alert latency gap between excursion event and received alert in cellular-dependent IoT monitoring across SEA corridors?

- **RC3: AI/ML ETA prediction tools are trained on network-level historical data, not shipment-level real-time condition data** — The industry's response to data latency has been to invest in AI prediction: if you cannot have real-time data, predict the outcome. project44, FourKites, and Shippeo all market AI-driven ETA models. However, these models predict transit timing, not condition integrity. They cannot predict that this specific reefer unit's compressor will fail in 4 hours based on IoT sensor trend data, because they do not ingest shipment-level sensor feeds in a structured way. The "prediction" layer and the "condition monitoring" layer are separate products with separate data architectures, sold to different buyers, leaving the predictive analytics layer blind to the most operationally relevant risk signals. [ASSUMED-7]: to validate: do any leading RTTVPs (project44, FourKites) ingest real-time IoT condition data from cargo sensors at scale, or is condition monitoring purely a cargo-IoT-platform function?

---

### Working hypotheses assessment

**WH2 — "In-transit visibility breaks at the handoff; RTTVPs lose signal once a 3PL subcontracts to a small carrier; data quality collapses across subcontracting layer"**

Status: EVIDENCED (structure confirmed; quantification partially evidenced). The subcontracted carrier coverage gap is validated by: (a) project44's explicit product launch addressing it (carrier tools / RCA dashboard / DriveView for spot loads); (b) Shippeo's published article on spot carrier visibility gaps; (c) Sixfold's carrier consent/onboarding status tracker confirming the problem is pervasive enough to warrant a workflow. The mechanism is confirmed — data quality does collapse when the carrier is not pre-enrolled. Quantification of the % of shipments affected is not directly sourced from a neutral audit; vendor-commissioned Tive figures (37% no tracking; 45% <50% visibility) are directional only.

**WH3 — "Cargo IoT is point-deployed, not journey-deployed; sensors deployed by single party, data siloed"**

Status: EVIDENCED (structure confirmed; commercial mechanism confirmed; regulatory driver confirmed). The point-deployment / siloed data structure is confirmed via: (a) Hapag-Lloyd's documented practice of gating sensor data access; (b) the COA/ORBCOMM interoperability initiative (evidence that cross-platform data sharing is absent, requiring a new standard); (c) regulatory structure of GDP/FDA compliance that incentivizes per-party monitoring rather than journey-level data continuity. One hypothesis component is partially rejected: the problem is not purely a technology gap. Cross-party data sharing is technically feasible (APIs exist); the barrier is commercial (platform lock-in) and regulatory (per-custody compliance structure).

---

### Assumptions tagged in this stage

[ASSUMED-1]: "Carrier onboarding for subcontracted loads takes days not hours" — to validate: what is the average time-to-tracking for a newly subcontracted carrier across project44, Shippeo, FourKites? Is the gap days or hours in practice?

[ASSUMED-2]: "GDP-compliant operators run separate per-custody monitoring records rather than continuous chain-of-custody data" — to validate: do GDP-compliant cold chain operators share inter-party temperature sensor data in practice, or does each custody transfer start a new monitoring record?

[ASSUMED-3]: "Major cargo IoT vendors do not publish open APIs enabling cross-platform real-time data ingestion" — to validate: which of Tive, Sensitech, Roambee, Controlant publish open APIs, and do any allow a third party's platform to ingest sensor data in real time?

[ASSUMED-4]: "Cargo insurers do not currently offer meaningful premium discounts for continuous temperature condition data" — to validate: do cargo insurers offer premium discounts for continuous temperature IoT data availability, and what is the discount magnitude?

[ASSUMED-5]: "Major cargo insurers do not currently build telematics data feeds into fleet underwriting models" — to validate: do any major cargo insurers build telematics data feeds into underwriting models for fleet risk scoring, and at what discount magnitude?

[ASSUMED-6]: "Alert latency in cellular-dependent IoT monitoring across SEA is material (hours not minutes)" — to validate: what is the average gap between excursion event and received alert in cellular-dependent IoT monitoring across SEA corridors?

[ASSUMED-7]: "Leading RTTVPs do not ingest real-time condition data from cargo IoT sensors at scale" — to validate: do project44, FourKites, or Shippeo ingest real-time cargo IoT sensor condition data, or is condition monitoring handled exclusively by cargo-IoT-layer platforms?
