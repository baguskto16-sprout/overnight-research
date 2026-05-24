# Stage 3 — In-Transit: Visibility & Monitoring

*Run: 2026-05-23-0152 | Topic: Risk-management solutions across the logistics journey (worldwide scan)*
*Authored by value-chain-mapper agent | Stage 3 of 6*

> **Refinements applied (post-validation):**
> - SEA fleet telematics penetration (15.7% → 25.7%) sourcing: original "ResearchAndMarkets aggregator via GlobeNewswire" reclassified — underlying primary research is Berg Insight 1st Ed (Oct 2024) + 2nd Ed (Feb 2026), specialist Tier 3 telematics analyst (not Tier 6 aggregator). 2nd Ed updates baseline: 17.5% (2024) → 27.1% (2029). Confirmed structural data gap: no SEA government statistical floor (BPS / DOSM / NSO / GSO).
> - McKinsey "$65-95B blind handoff" anchor (downstream in PP3.1): refined to verbatim US-only scope per January 2024 article — B2B $45-66B + B2C dwell-time $18-28B; "blind handoffs" is the article's own term. Score upgraded Low → High.

---

## Stage Description

Stage 3 covers the solutions used to see, track, and intervene on freight while it is in motion — after dispatch (Stage 2) and before delivery or handoff to the next stage. Two distinct sub-categories converge here: (a) **Real-Time Transportation Visibility Platforms (RTTVPs)** — software/data-layer platforms that aggregate carrier telematics, ELD signals, and API events to give shippers and 3PLs a unified transit picture; and (b) **Cargo IoT sensors and telematics hardware** — physical devices that travel with the shipment (GPS trackers, temperature loggers, shock/vibration sensors, door-open sensors) and generate the raw signal that RTTVPs and control towers ingest. A third overlapping layer, **ELD/fleet telematics**, powers both driver compliance (hours-of-service) and the underlying GPS signal most North American RTTVPs rely on.

This is the hottest sub-market in the broader risk-management stack: Gartner has evaluated it in a dedicated Magic Quadrant since 2018, and the RTTVP space has three named Leaders as of its April 2024 edition (project44, FourKites, Shippeo) — the first time three vendors have occupied that quadrant simultaneously.^1 The stage is also where working hypothesis WH2 (visibility breaks at subcontractor handoff) and WH3 (point-deployed IoT, not journey-deployed) are most directly tested.

---

## Activities (sub-steps within this stage)

1. **Carrier and ELD API integration and onboarding** — RTTVPs connect to carrier telematics, ELD devices (Samsara, Motive, Geotab, Omnitracs, etc.) and TMS systems via REST API, EDI, or IoT device feed to ingest raw location and status pings. project44 has 1,400+ telematics integrations; FourKites maintains a network of 4 million+ GPS/ELD devices.^2^,^3 Carriers not already integrated require manual onboarding — a principal friction point for small and subcontracted carriers.

2. **Sensor deployment and real-time data capture** — For IoT-layer solutions (Tive, Roambee, Sensitech, Controlant, Hanhaa), a physical device is attached to or placed inside the shipment at origin. The device captures multi-parameter data (GPS location, temperature, shock, light/door exposure, humidity) and transmits via cellular (2G/4G/5G), Bluetooth, or satellite at configurable intervals. Tive's Solo 5G tracker and Sensitech's TempTale GEO X (launched February 2024) are recent examples of next-generation devices.^4^,^5

3. **Predictive ETA calculation and exception alerting** — RTTVPs apply machine-learning models to raw location pings, traffic, historical lane performance, and port/terminal dwell data to generate predicted ETAs. Alerts fire when shipments deviate from geofences, go silent, or breach temperature/condition thresholds. Portcast processes 5 million data points daily across 370 carriers and 800 ports to forecast ETAs for 90%+ of ships globally.^6

4. **Control tower aggregation and multi-modal dashboard** — Enterprise shippers and 3PLs use a control tower view — either within a RTTVP (project44 Movement, FourKites AI Orchestration Hub) or embedded in their TMS — to monitor all in-transit shipments across road, ocean, air, and rail on a single pane. Exception prioritization (which shipments need action now?) is increasingly AI-driven.

5. **Subcontractor and carrier handoff tracking** — This is the structural gap at Stage 3. When a 3PL re-tenders a load to a sub-carrier not already connected to the RTTVP network, tracking continuity breaks. Manual workarounds (driver phone calls, WhatsApp location pings, paper check-in calls) fill the gap. Some platforms (Descartes MacroPoint, project44) attempt to solve this through direct carrier network expansion and mobile app-based self-reporting for non-integrated carriers.

---

## Revenue Model (for solutions in this stage)

**RTTVPs:** Annual SaaS contract priced primarily per shipper enterprise seat or per-connected-carrier-capacity, with per-shipment consumption components at the margin; project44 published ARR-based growth (>30% YoY in FY2024, total revenue ~$210M on ~1,300 enterprise customers) and Shippeo published $22.3M revenue (50 named enterprise customers) in 2024 — implying average contract values of $160K–$450K for enterprise RTTVPs.^7^,^8 Smaller SaaS RTTVPs (GoComet, Portcast) charge per-shipment or per-container API call at the SME tier (typically $0.05–$2.00/shipment depending on mode).^9

**Cargo IoT sensors:** Two-part model — (a) device rental/subscription (Hanhaa's ParceLive is rented, not sold; Tive offers a subscription-inclusive model with its Solo Lite at reduced entry cost); or (b) hardware sale + monthly platform subscription (Roambee starting at ~$499/month for the platform; Sensitech device price is enterprise-negotiated, not publicly listed). Hardware unit costs range from ~$30–$500 per device depending on sensor type and connectivity standard.^10^,^11

**ELD/fleet telematics:** Hardware-bundled subscription per vehicle/month. Samsara and Motive are the dominant players. Samsara reported $1.25B in total revenue for fiscal year ending January 2025 (33% YoY growth), with ~98% from subscriptions.^12 Motive filed its S-1 in December 2025 with nine-month (Jan–Sept 2025) revenue of $327M (~23% YoY growth); 120,000+ customers.^13 Hardware is typically provided at subsidized cost with multi-year subscription contracts.

---

## Cost Drivers (for solutions in this stage)

**RTTVPs:** Carrier/telematics API licensing and data acquisition costs (the cost of ingesting from 1,400+ integrations is borne by the platform, not the end customer); cloud infrastructure and data storage (billions of shipment events per year); ML/AI model development for ETA prediction; carrier network onboarding and customer success headcount; and data quality/compliance operations (cleansing, deduplication, normalization across heterogeneous carrier data feeds).

**Cargo IoT hardware:** Bill-of-materials for cellular module, GPS chipset, battery, and sensors; device logistics (fulfillment, retrieval, refurbishment for rentable devices); cellular data connectivity cost per device per month; platform cloud infrastructure; and regulatory certification (FCC, CE, aviation safety for air-approved trackers).

---

## Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global RTTVP market size (2024) | $4.2B (one estimate) / $3.2B (alternate); converging evidence suggests low-to-mid $3–4B range | Low — multiple market research firms with no disclosed methodology; estimates span $3.2B–$8B; no Tier-1 or government source validates a specific figure | (14), (15) |
| Global RTTVP market projected CAGR (2024–2033) | 17–19% | Low — same sources; use as directional signal only | (14), (15) |
| Global supply chain visibility market total (2024) | ~$6.3B | Low — aggregator market research; scope broader than RTTVP alone (includes WMS visibility, port systems) | (16) |
| Global cold chain telematics market (2023) | $5.63B; North America $2.36B (2024); Asia Pacific $1.32B (2024) | Medium — Grand View Research (Tier 5 industry research firm); APAC figure cross-referenced via GMInsights | (17), (18) |
| Global cold chain telematics CAGR (2024–2030) | 23.9% | Medium — Grand View Research; consistent with broader cold-chain logistics growth literature | (17) |
| Global ELD/fleet telematics market (2024) | ~$14.4B; projected to $24.5B by 2035 at 4.6% CAGR | Low — Transparency Market Research (Tier 5 research firm); no government or Tier-1 anchor found | (19) |
| Global commercial vehicle telematics market (2024) | $61.52B (Grand View Research) vs. $5.4B (MarketsandMarkets) — significant scope definition divergence | Low — market definition differs materially across firms; do not use as a single figure | (20), (21) |
| Samsara total revenue FY2025 (ended Jan 2025, SEC 10-K) | $1.25B (+33% YoY); FY2026 (ended Jan 2026) $1.62B (+29.6% YoY) | High — SEC-filed 10-K (Tier 5: audited corporate filing NYSE: IOT) | (12) |
| Motive revenue (9 months Jan–Sept 2025, S-1 filing) | $327.3M (+22% YoY vs. prior period); 120,000+ customers | Medium — S-1 registration statement (Tier 5: SEC filing, pre-IPO) | (13) |
| project44 FY2024 total GAAP revenue | $210.1M (+30%+ YoY); 1,300+ enterprise customers | Medium — company press release (Tier 3) cross-referenced with Latka revenue database | (7), (22) |
| Shippeo FY2024 revenue | $22.3M; 50 enterprise customers | Low — Latka revenue database (Tier 9); no audited filing available | (8) |
| FourKites estimated revenue (2024) | ~$114M | Low — Latka/Getlatka revenue estimate (Tier 9; unaudited private company) | (23) |
| SEA cold chain telematics market (country-specific) | No country-specific (Singapore, Indonesia, Thailand, Malaysia) cold chain telematics figure found in any accessible source | Data gap — country-level market size requires Frost & Sullivan or local government trade statistics | — |

**Geography mismatch:** Asia Pacific cold chain telematics ($1.32B in 2024) used as proxy for SEA. No SEA country-specific RTTVP or cargo IoT market size exists in any Tier-1 through Tier-5 source. Field validation needed.

---

## Named Solutions by Region

Solutions span both RTTVPs (sub-category a) and Cargo IoT sensors (sub-category b). Each entry indicates sub-category, primary user, and SEA presence.

---

### North America

**project44 (RTTVP)**
- **What it does:** Enterprise RTTVP providing unified multimodal visibility across road, ocean, air, and rail. Aggregates data from 1,400+ telematics/ELD integrations and 80+ TMS/ERP partners. Named Gartner MQ Leader for fourth consecutive year in April 2024, positioned highest on both axes.^1^,^2 Provides predictive ETAs, exception alerting, and a control tower dashboard (Movement) for shippers and 3PLs.
- **Primary user:** Enterprise shippers (manufacturing, automotive, retail, pharma), 3PLs
- **Business model:** Annual SaaS enterprise contract; ~$6,250/month starting range per trade press; revenue $210M in FY2024.^7^,^22
- **Pros:** Largest carrier network of any pure RTTVP; broadest multimodal coverage; strongest Gartner positioning.
- **Cons:** Premium enterprise pricing excludes SME shippers; carrier API coverage drops sharply for long-tail carriers and sub-contractors in emerging markets.
- **SEA presence: LIMITED** — APAC commercial presence with GM hired for ANZ/SEA; Japan office opened 2022. No Singapore or Indonesia office confirmed; Kawasaki Heavy Industries and Coca-Cola European Partners cited as new FY2024 customers (both multinational, not SEA-domiciled).^7

**FourKites (RTTVP)**
- **What it does:** Enterprise RTTVP with 4M+ GPS/ELD devices in network, tracking 3.2M shipments daily across all modes.^3 Acquired NIC-place (EU, 2022) and Haven (ocean, 2025) to extend reach. April 2024 Gartner MQ: Leader, alongside project44 and Shippeo.^1 Note: The orchestrator brief mentioned "FourKites acquired by Tive 2024" — this is not confirmed in open sources; no acquisition of FourKites found in SEC filings, PitchBook, or CBInsights as of May 2026. FourKites and Tive have a partnership (announced 2021), not an acquisition. [ASSUMED-1 below.]
- **Primary user:** Enterprise shippers, Fortune 500 (Walmart Canada, Dow, Coca-Cola)
- **Business model:** Annual SaaS enterprise contract; revenue ~$114M (2024, unaudited estimate).^23
- **Pros:** Strong ocean + road multimodal; AI Orchestration Hub for exception management; large established carrier network.
- **Cons:** Not independent — the NIC-place acquisition added EU depth but didn't resolve sub-carrier API gaps.
- **SEA presence: LIMITED** — India office in Chennai; Singapore presence reported in search results but no confirmed SEA customer case studies in open sources. Multinational customers likely use it for cross-border trade involving APAC origins/destinations.

**Overhaul (RTTVP + cargo security)**
- **What it does:** In-transit supply chain risk management platform combining RTTVP capabilities with physical cargo security (FraudWatch — from Stage 1 context — plus SensiGuard acquisition making it the largest in-transit cargo security provider). April 2024 Gartner MQ: Challenger.^24 Raised $105M Series C in August 2025 (led by Springcoast, backed by Morgan Stanley Investment Management); safeguards $1.4T in cargo trade for 350+ enterprise customers including Microsoft, Dyson, Bristol Myers Squibb.^25
- **Primary user:** Enterprise shippers of high-value cargo (pharma, tech, food and bev)
- **Business model:** Platform fee + managed-service contract; enterprise only.
- **Pros:** Only Gartner-recognized platform that natively crosses visibility into physical security and incident response; SensiGuard adds command-center monitoring capability.
- **Cons:** Small customer base (350+ vs. 1,300+ for project44); enterprise-only; pricing opaque.
- **SEA presence: UNCLEAR** — Series C use-of-funds described as global expansion; no SEA office or named SEA customer confirmed in open sources.

**Descartes MacroPoint (RTTVP)**
- **What it does:** Long-established freight visibility platform acquired by Descartes Systems Group (NASDAQ: DSGX). Connects directly to carrier ELDs, smartphones, and TMS systems. Recognized top carriers by tracking compliance and volume in 2024.^26 Part of Descartes' broader logistics technology suite (including Stage 1 MyCarrierPortal).
- **Primary user:** Shippers and freight brokers
- **Business model:** SaaS subscription bundled into Descartes platform; pricing not publicly listed; consolidated into Descartes DSGX revenue ($603M total FY2024).
- **Pros:** Integration with Descartes TMS/broker suite gives combined onboarding + visibility workflow.
- **Cons:** Standalone visibility capabilities are less differentiated vs. project44/FourKites; carrier integration coverage for non-US carriers is narrower.
- **SEA presence: LIMITED** — Descartes has global offices including Singapore; MacroPoint product historically US-centric; international expansion ongoing.

**Samsara (ELD + IoT telematics)**
- **What it does:** Connected operations platform for physical industries, providing ELD compliance, real-time vehicle GPS, dashcam-based safety (AI coaching), equipment monitoring, and cargo visibility. $1.25B revenue in FY2025 (ended Jan 2025); $1.62B in FY2026 (ended Jan 2026); NYSE: IOT. 12,000+ Core Customers; 3,194 large customers (>$100K ARR) as of Jan 2026.^12
- **Primary user:** Fleet operators (trucking, construction, energy), 3PLs
- **Business model:** Hardware (subsidized or bundled) + subscription per vehicle per month; ~98% subscription revenue; multi-year contracts standard.
- **Pros:** Largest telematics revenue base of any pure-play fleet IoT company globally; strong AI safety features now in addition to visibility; FMCSA-registered ELD.
- **Cons:** Primarily North American; limited road freight focus limits multimodal applicability; not a shipper-facing visibility product (integrates into RTTVPs as a data source).
- **SEA presence: NO** — US/Canada primary market; limited international disclosure in 10-K; no SEA office found.

**Tive (Cargo IoT + RTTVP hybrid)**
- **What it does:** Cargo IoT sensor company that also operates a cloud visibility platform. Solo 5G tracker captures real-time GPS, temperature, light, shock. Solo Lite (launched June 2024) is a lower-cost entry point.^4 Partnership with FourKites (2021) allows mutual customers to get combined sensor + RTTVP data. Subscription-inclusive model: devices provided as part of SaaS.
- **Primary user:** Shippers of temperature-sensitive, high-value, or time-critical freight
- **Business model:** Subscription-inclusive hardware rental + platform SaaS; price not publicly listed; IoT adoption doubled from 25% to 53% of shippers surveyed 2023–2024.^27
- **Pros:** Device + software in one vendor; no separate IoT integration needed; multimodal (ocean, air, road, rail).
- **Cons:** Higher per-shipment cost than telematics-only carriers; requires device logistics (sending, retrieving, recharging).
- **SEA presence: UNCLEAR** — No confirmed SEA office; devices are mode-agnostic and could be used by any global shipper.

**Motive (formerly KeepTruckin) (ELD + telematics)**
- **What it does:** Fleet management and ELD compliance platform serving 120,000+ customers across trucking, construction, oil and gas. S-1 filed December 2025 (pre-IPO NYSE: MTVE); nine-month FY2025 revenue $327M (+23% YoY).^13 Serves primarily SMB and mid-market fleets (vs. Samsara's enterprise skew).
- **Primary user:** Small-to-mid-size trucking fleets, owner-operators
- **Business model:** Hardware + SaaS subscription per vehicle; large customer ARR >$100K grew 58% YoY.
- **Pros:** Strong SMB penetration (vs. enterprise focus of Samsara); AI dashcam and driver safety products growing; international ambitions evidenced in S-1.
- **Cons:** Primarily North American; ELD compliance is US/Canada-specific regulatory product.
- **SEA presence: NO** — US/Canada focused; S-1 mentions international as growth opportunity but no SEA operations confirmed.

**Trucker Tools (RTTVP, niche)**
- **What it does:** Driver-facing mobile app that provides freight brokerages with load tracking via driver self-reporting on smartphones. April 2024 Gartner MQ: Niche Player.^1 Focus on driver experience and broker-carrier relationships.
- **Primary user:** Freight brokers, small/mid-size carriers in North America
- **Business model:** SaaS subscription per brokerage; driver app is free.
- **Pros:** Strong driver engagement and adoption rates; positive driver experience differentiator.
- **Cons:** North American road freight only; no ocean/air/rail; Gartner noted limited geographic applicability.
- **SEA presence: NO**

---

### Europe

**Shippeo (RTTVP — European market leader)**
- **What it does:** Multimodal transportation visibility platform founded in France, now global. Named Gartner MQ Leader for the first time in the April 2024 report (alongside project44 and FourKites) — the biggest mover in the quadrant.^1 Tracks 90M+ shipments annually across 150 countries; integrated with 1,000+ TMS, telematics, and ELD systems.^28 Raised $30M strategic round in January 2025 led by Woven Capital (Toyota's growth fund) to accelerate US and APAC expansion.^29 Revenue $22.3M in FY2024 from 50 enterprise customers.^8
- **Primary user:** Enterprise shippers (European and global multinationals), 3PLs
- **Business model:** Enterprise SaaS; average contract value ~$446K (implied from $22.3M revenue / 50 customers).
- **Customers:** Amazon, Lassonde Industries, Yamaha Motor North America (NA); Arlanxeo, Evonik, Fujifilm, Philip Morris International (APAC/global).^28
- **Pros:** Strongest European RTTVP brand; APAC-named customers (Fujifilm, Philip Morris); multimodal.
- **Cons:** Small customer base (50); revenue base below US RTTVPs; US expansion just starting.
- **SEA presence: EMERGING** — $30M round explicitly funds US + APAC expansion; Woven Capital/Toyota backing signals intent in Japan and APAC manufacturing supply chains; no SEA office yet.

**Transporeon (now Trimble) (RTTVP + TMS)**
- **What it does:** European freight transport management platform acquired by Trimble for €1.88B in April 2023.^30 Includes Sixfold (visibility layer, acquired by Transporeon in 2020) and provides road, ocean, and air freight visibility. 150,000+ carriers and 1,400 shippers/retailers on the network.^30 Projected ~€190M revenue in 2023.^30
- **Primary user:** Large European shippers, retailers, 3PLs
- **Business model:** TMS subscription + visibility module; bundled post-Trimble integration.
- **Pros:** Largest European carrier network; TMS + visibility bundled (hard to switch); strong in Germany, Benelux, France.
- **Cons:** Post-acquisition integration complexity; Gartner did not include Transporeon in the 2024 MQ evaluation.^1
- **SEA presence: MINIMAL** — European-centric; Trimble has global TMS customers but Transporeon carrier network is predominantly European.

**Wakeo (RTTVP — multimodal, Europe)**
- **What it does:** Paris-founded multimodal visibility platform (road + ocean + air + rail). Raised €18M Series B in December 2023.^31 Manages transport flows in 180+ countries. Customers include Uniqlo, Michelin, Corteva, Hilti, Fujifilm, and Majid Al Futtaim.^31
- **Primary user:** Shippers with international multimodal freight (European-headquartered multinationals)
- **Business model:** SaaS subscription; estimated revenue $100K–$5M range (Owler estimate); lower scale than project44/Shippeo.
- **Pros:** Genuinely multimodal from day one; strong European client roster with APAC routes (Uniqlo, Fujifilm).
- **Cons:** Small revenue base; limited brand recognition outside Europe.
- **SEA presence: UNCLEAR** — Uniqlo and Fujifilm as customers suggests visibility into APAC origin shipments; no SEA office confirmed.

**Hanhaa (Cargo IoT, UK)**
- **What it does:** UK-based cargo IoT company. ParceLive tracker (postcard-sized, IATA-approved for 35+ airlines) is rented, not sold — device logistics fully managed by Hanhaa. SolarLive product for long-endurance container/sea freight tracking (15+ year battery via solar). GDPR-compliant data; European engineering base.^32
- **Primary user:** Shippers of high-value cargo needing multimodal sensor data
- **Business model:** Device rental subscription; no upfront hardware purchase.
- **Pros:** Airline-approved (35+ airlines); solar option for long-haul sea freight; single-vendor device + platform.
- **Cons:** Small company; limited brand penetration vs. Sensitech/Tive; pricing opaque.
- **SEA presence: UNCLEAR** — IATA-approved devices are mode-agnostic; no confirmed SEA office or SEA-specific customers.

---

### India / South Asia

**GoComet (RTTVP + procurement — India/Singapore)**
- **What it does:** AI-powered freight procurement and visibility platform. Founded 2018 by four IIT Delhi graduates; HQ Singapore. GoTrack provides real-time shipment visibility across ocean, air, road, and parcels.^33 Revenue SGD 3.65M (~USD 2.7M) as of March 31, 2024; 150+ customers across 35 countries.^33 Raised $10.3M total over 3 rounds (Series A: $7M, February 2022).^33
- **Primary user:** Enterprise shippers and importers/exporters (pharma, manufacturing)
- **Business model:** SaaS; pricing not public.
- **Pros:** Multimodal coverage; procurement + visibility in one platform; Singapore-registered with SEA market intent.
- **Cons:** Very small revenue ($2.7M USD) — capability depth is limited vs. project44; ocean visibility is primary use case.
- **SEA presence: YES** — Registered in Singapore; serves customers in SEA among 35-country footprint; no SEA-specific office list found.

**FarEye (RTTVP / dispatch visibility — India origin, global)**
- **What it does:** Logistics management SaaS platform with real-time visibility, route optimization, and proof-of-delivery. Founded 2013, Noida, India; offices in US, Singapore, Dubai.^34 Revenue $149M and 150+ customers globally in 2024 (Latka estimate; no audited filing).^34 Customers include DHL, Hilti, UPS, Gordon Foods, Zalora — 30 countries.
- **Primary user:** Shippers, 3PLs, last-mile operators
- **Business model:** SaaS subscription; pricing not disclosed.
- **Pros:** Named SEA customers (Zalora); strong last-mile + mid-mile visibility; DHL and UPS validation.
- **Cons:** Primarily last-mile optimized (not pure freight transit visibility); Latka revenue estimate only (no audited figure).
- **SEA presence: YES** — Singapore office; Zalora (SEA e-commerce player) cited as customer; operates across 30+ countries.

[ASSUMED-2]: FarEye's visibility capabilities for B2B road freight (mid-mile) in SEA are less developed than its last-mile delivery optimization — the majority of the $149M revenue comes from last-mile dispatch rather than the in-transit risk monitoring Stage 3 addresses.
- to validate: Ask FarEye APAC sales team specifically about mid-mile B2B freight visibility use cases and customer count in Indonesia/Thailand/Malaysia.

---

### China

**Full Truck Alliance / YMM (telematics embedded in freight marketplace)**
- **What it does:** China's largest digital freight platform. No standalone RTTVP product — visibility is embedded in the marketplace (shippers can see truck location when matched via the platform). Regulatory constraints on data portability mean truck location data stays inside the FTA ecosystem.^35 NYSE: YMM. GMV was $27.2B in 2020 at IPO; regulatory review by Cyberspace Administration of China created user registration pause in 2021.^35
- **Primary user:** Shippers and truckers in China
- **Business model:** Transaction fee on matched loads; visibility is bundled, not sold standalone.
- **Pros:** Unrivaled scale in China; embedded visibility for matched loads is seamless for on-platform users.
- **Cons:** Data sovereignty constraints limit export of Chinese truck location data; no international applicability; platform-locked visibility.
- **SEA presence: NO** — China domestic only.

[ASSUMED-3]: No standalone, commercially available RTTVP or cargo IoT platform focused on China domestic truck freight (as opposed to cross-border trade) exists outside of the major marketplace platforms (FTA, JD Logistics, SF Express proprietary systems).
- to validate: Engage Roland Berger Shanghai or BCG Beijing logistics team for confirmation; ask specifically about any Chinese startup RTTVP building on carrier telematic APIs analogous to project44.

---

### Southeast Asia (Singapore, Indonesia, Thailand, Malaysia)

**Kargo Technologies (TMS + visibility — Indonesia)**
- **What it does:** Indonesia's largest B2B trucking platform. Kargo Nexus is an AI-enabled TMS with access to 40,000+ trucks nationwide and includes real-time visibility, auto-dispatch, and SLA tracking.^36 Founded 2015, Series B round July 2024.^36 Builds on the largest truck network in Indonesia.
- **Primary user:** Shippers and 3PLs in Indonesia
- **Business model:** TMS SaaS subscription + marketplace commission on freight matched via platform.
- **Pros:** Largest truck network in Indonesia (40,000+ vehicles); native Indonesian regulatory compliance; real-time visibility embedded in dispatch workflow.
- **Cons:** Indonesia-centric; no confirmed presence in other SEA markets; visibility is platform-bound (only for loads dispatched through Kargo).
- **SEA presence: YES (Indonesia only)** — Headquartered Jakarta; 40,000+ trucks nationwide; Series B in 2024 signals continued growth.

**Portcast (RTTVP — ocean freight, Singapore)**
- **What it does:** Singapore-based predictive ETA and ocean freight visibility platform. Processes 5M+ data points daily from 370 carriers and 800 ports.^6 Predicts ETAs for 90%+ of ships globally; forecasts demand on 30,000+ trade routes. Raised USD 6.5M Series A in November 2024 led by Susquehanna Asia VC; total raised ~$9.7M.^6 Integrated with shipper TMS systems via API.
- **Primary user:** Shippers and logistics service providers (ocean freight focus)
- **Business model:** SaaS API subscription.
- **Pros:** Born in Singapore; ocean visibility purpose-built; explicit APAC expansion mission post-Series A; AI-driven (not just event-based).
- **Cons:** Ocean-only (no road or air; not relevant for road freight risk specifically); small company; limited public customer case studies.
- **SEA presence: YES** — Headquartered Singapore; Series A explicitly for APAC expansion; core market is SEA-origin/destination ocean freight.

**Geotab (fleet telematics — global, with SEA presence)**
- **What it does:** Canadian fleet telematics company with 3M+ subscribers and 100,000 global customers.^37 Processes 100 billion data points daily. Provides GPS fleet tracking, ELD compliance, and connected vehicle data. Fleet management solution explicitly marketed for Philippines, Indonesia, Singapore, and Thailand.^37
- **Primary user:** Commercial fleet operators, logistics companies
- **Business model:** Hardware + SaaS subscription per vehicle per month.
- **Pros:** Explicit SEA market presence; strong enterprise client base including US Federal government and Fortune 500; large partner ecosystem.
- **Cons:** General fleet telematics — not purpose-built for cargo condition monitoring or shipper-facing risk management; requires integration with RTTVP layer for shipper use.
- **SEA presence: YES** — Marketed explicitly for Philippines, Indonesia, Singapore, Thailand; APAC presence with reseller network.

**Sensitech (cargo IoT cold chain — Carrier subsidiary, global)**
- **What it does:** Cold chain IoT monitoring leader; wholly owned subsidiary of Carrier Global (NYSE: CARR). TempTale GEO X (launched February 2024) monitors temperature-sensitive pharmaceuticals in global transit.^5 Acquired Berlinger & Co. Monitoring Solutions in August 2024.^5 Launched Lynx FacTOR SaaS platform (March 2025) for pharma cold chain end-to-end release management. Revenue estimated $165M–$750M (not separately disclosed by Carrier; wide range reflects methodology variation).^5
- **Primary user:** Pharma, biotech, food companies with cold chain requirements
- **Business model:** Enterprise device sale + platform subscription; GxP-compliant documentation included.
- **Pros:** Market leader in pharma cold chain; backed by Carrier Global's balance sheet; broadest regulatory compliance portfolio (FDA, GxP, GDP).
- **Cons:** Premium pricing; pharma/biotech focus limits applicability to general freight; device pricing not publicly listed.
- **SEA presence: LIKELY** — Carrier Global has a global presence; Sensitech devices are used by major pharma companies with SEA manufacturing and distribution footprints. No SEA-specific case study confirmed in open sources.

**Roambee (cargo IoT — US origin, APAC team)**
- **What it does:** AI + IoT shipment tracking and monitoring platform. Raised $15.2M total; financing round with RevTek Capital in February 2024.^38 Introduced 5G GPS "peel-and-ship" smart label in May 2024.^38 Technology development and delivery teams in US, Europe, and Asia. Tracks high-value cargo; starting platform price ~$499/month.^10
- **Primary user:** Enterprise shippers of high-value cargo, pharma, automotive
- **Business model:** Platform subscription (starting $499/month) + per-device data fee.
- **Pros:** Smart label form factor removes device logistics friction; APAC team in place.
- **Cons:** Small total funding ($15.2M) limits network scale vs. Sensitech; pricing limits SME adoption.
- **SEA presence: LIKELY LIMITED** — Asia team confirmed but no SEA-specific customer or office named in open sources. [ASSUMED-4 below.]

**Controlant (cold chain IoT — Nordic, pharma focus)**
- **What it does:** Iceland/Nordic-headquartered cold chain monitoring company. Saga Card device (first introduced 2024) enables unit-level tracking.^39 Strategic partnership with SmartCAE in October 2024.^39 Series B of $15M raised in 2020.^39 Focus: pharmaceutical supply chain transformation.
- **Primary user:** Pharma companies, clinical trial logistics operators
- **Business model:** Device + platform subscription; enterprise pharma contracts.
- **Pros:** Cutting-edge cold chain analytics; strong pharma credentials; unit-level (SKU) tracking.
- **Cons:** Small company; very specific pharma focus; limited road freight applicability.
- **SEA presence: UNCLEAR** — No SEA presence confirmed in open sources; pharma supply chains in SEA (Singapore, Malaysia biopharma hubs) are plausible use-case fit.

---

## Manual Workarounds in Active Use

Manual workarounds are the dominant in-transit monitoring system for small carriers, subcontracted truckers, and nearly all SEA operators.

**1. Driver phone calls and WhatsApp location-ping check-ins**
The dominant real-time visibility mechanism for non-integrated carriers globally. Dispatcher calls driver (or vice versa) at regular intervals — on departure, at halfway check-in, and at expected delivery. In SEA, WhatsApp is the standard: drivers are added to shipper/3PL WhatsApp groups and ping their location (using WhatsApp's native location sharing) when asked. Zero infrastructure cost; zero reliability for exceptions detected proactively. If the driver's phone is off, signal is lost.

[ASSUMED-5]: WhatsApp location-ping check-ins are the primary in-transit tracking mechanism for sub-contracted truckers in Indonesia, Thailand, and Malaysia, used by the majority of small and mid-size 3PLs and shippers.
- to validate: Ask 5–10 logistics operations dispatchers in Jakarta, Bangkok, and Kuala Lumpur: "Walk me through how you track a truck once it leaves the warehouse — who calls whom, and at what intervals?"

**2. Truck-stop and toll-plaza phone check-ins**
Carriers (or dispatchers) phone the driver at known checkpoints (toll plazas, rest stops, border crossings). Provides coarse-grained milestones but no continuous tracking. Widely used in India and SEA for long-haul intercity freight. Fails when driver is out of mobile coverage, asleep, or with a different SIM card (common for cross-border routes).

**3. Paper POD (proof of delivery) and paper logbooks**
Paper delivery receipts signed by consignee remain the standard POD mechanism across SEA for non-digitized carriers. No real-time signal; confirmed delivery only at the end of transit. Falsification risk (blank PODs signed in advance by shippers or drivers) is documented anecdotally in industry press.

**4. GPS tracker installed in cab (non-integrated, low-cost)**
Many SEA fleet operators install standalone GPS units (local brands: Teltonika, Concox, or unbranded Chinese units, $30–$80 hardware) that report to a proprietary fleet-owner web portal but are not integrated into any RTTVP or shipper-facing system. The shipper has no access to this data unless the carrier gives them login credentials, which rarely happens. Results in a "dark" subcarrier problem even when telematics hardware is physically present.

[ASSUMED-6]: The majority of sub-carrier truck fleets in Indonesia and Thailand have GPS devices installed (often by the fleet owner for internal purposes), but the signal is siloed inside the fleet owner's portal and never reaches the shipper or 3PL contracting the carrier.
- to validate: Ask 3PLs and shippers in Indonesia/Thailand: "Does your sub-contractor's truck have GPS? Do you have access to that GPS feed? If not, why not?"

---

## Preliminary Pain Points (this stage — WH2 and WH3)

1. **Carrier API completion rates collapse at the sub-carrier tier** — RTTVPs like project44 and FourKites have strong coverage for large, integrated carriers, but coverage falls sharply when a 3PL subcontracts to a small carrier with no telematics API. Industry analysis confirms that "subcontractors frequently disable tracking applications, resulting in critical data blackout zones" and that "drayage and cross-dock moves are often handled by regional carriers or brokers who don't integrate smoothly."^40 This directly evidences WH2. No published completion-rate statistic for sub-carrier API coverage was found in open sources (data gap — specific interview needed).

2. **Visibility breaks at the handoff point are structural, not incidental** — When a 3PL re-tenders a load from its primary carrier to a second-tier sub-contractor, the shipment tracking session in the RTTVP either silently continues (showing stale data from the original carrier) or drops entirely. Most RTTVP platforms do not have a formal "handoff" event concept — transit is modeled as a single carrier journey, which is incorrect for subcontracted road freight.

3. **Cargo IoT sensors are deployed by a single party and data is siloed** — Shippers deploy Tive or Roambee devices; insurers deploy Sensitech; 3PLs deploy their own tracker. Each party sees only its own data; there is no shared view across the chain. A shipment with three carriers could theoretically have three different GPS signals, none shared across parties — consistent with WH3.

4. **Long-tail carriers in SEA have no RTTVP integration, by design** — RTTVPs build carrier integrations for carriers with sufficient volume to justify engineering effort (typically 500+ loads/month per carrier minimum for API investment). SEA's fragmented trucking market — dominated by owner-operators with 1–5 trucks — means the vast majority of carriers will never have a direct RTTVP integration. The only workaround is mobile-app-based driver self-reporting (Trucker Tools model), which requires smartphone adoption and driver willingness.

5. **Temperature and condition excursion detection is reactive, not predictive** — Sensitech, Tive, and Roambee can detect that a temperature threshold has been breached; they cannot prevent it. By the time an alert fires and the shipper dispatches an intervention, the cargo may already be compromised. Predictive cold chain (Portcast's approach for ocean ETAs; Controlant's SmartCAE partnership) is nascent for road freight.^39

6. **ELD mandate gaps limit data availability in emerging markets** — The FMCSA ELD mandate (USA, 2017; Canada phased) created a rich data layer that project44, FourKites, and Descartes MacroPoint rely on. No equivalent ELD mandate exists in any SEA country (Indonesia, Thailand, Malaysia, Philippines). Telematics is voluntary, adoption is low, and data quality varies dramatically by carrier.

7. **Ocean container visibility is better than road freight visibility in SEA** — Portcast (370 carriers, 800 ports, 90%+ ETA accuracy for ocean) illustrates that ocean freight has better standardized data (BL numbers, AIS vessel tracking, port milestones) than road freight in SEA. This creates an asymmetry: multinational shippers can track their SEA ocean shipments more reliably than their inland road legs once cargo clears the port.

8. **IoT device return logistics add cost and operational friction** — Rental-model IoT devices (Tive, Hanhaa ParceLive) require the recipient to return the device after delivery. In high-volume, multi-drop road freight in SEA, device recovery rates are low; lost devices add per-shipment cost and create reporting gaps. Buy-and-discard model (Tive Solo Lite's direction) mitigates this but increases per-shipment hardware cost.

9. **Data normalization across heterogeneous carrier signals is expensive** — When a RTTVP aggregates data from 1,400+ telematics integrations (project44), each integration produces different event taxonomies, update intervals, and reliability characteristics. Data engineers must normalize these feeds; inconsistent data quality leads to unreliable ETAs and missed exceptions, especially for newer or thinner integrations (which are disproportionately the small, sub-contracted carriers).

10. **Driver-app fatigue undermines mobile-based workarounds** — Trucker Tools' competitive advantage (driver experience) illustrates the problem: drivers must actively engage with an app to share location. When multiple shippers or brokers each want their own app installed, driver adoption drops. In SEA, multiple parallel WhatsApp groups fulfill this function but with no data standardization, no audit trail, and no integration into shipper TMS.

11. **Pharma and cold chain shippers face dual compliance burden** — Cold chain visibility (temperature logging, excursion documentation, GxP audit trail) requires FDA/GDP-compliant data retention. Sensitech and Controlant address this for enterprise pharma; no SEA-specific cold chain IoT solution with local regulatory knowledge (e.g., Indonesia BPOM, Thailand FDA equivalent) was found in open sources.

12. **Sub-carrier GPS data is siloed even when hardware is present** — As documented in manual workaround #4 above: many SEA carriers have GPS installed for internal use but do not share the feed with shipper or 3PL. This is not a hardware problem — it is a data-access and trust problem. Platforms that can convince carriers to share data (or ingest it without requiring carrier cooperation, e.g., via driver app) address this; no SEA-native platform yet does so at scale.

---

## Sources for this Stage

(1) Gartner Magic Quadrant for Real-Time Transportation Visibility Platforms (2024 edition, April 2024) — summary via trans.info coverage: https://trans.info/en/real-time-transportation-visibility-platforms-383916 and project44 press release: https://www.prnewswire.com/news-releases/project44-named-a-leader-in-the-2024-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms-for-fourth-consecutive-year-302104631.html (Tier 1 — Gartner MQ; cited via vendor/trade press summaries; full document paywalled at https://www.gartner.com/en/documents/5298863 [NEEDS-ATTENDED-FETCH])

(2) project44 Carrier Network page — https://www.project44.com/network/carrier-network (vendor marketing — used only to confirm 1,400+ integrations figure)

(3) FourKites platform page — https://www.fourkites.com/platform/real-time-visibility/ (vendor marketing — used only to confirm 4M+ GPS/ELD devices and 3.2M shipments/day)

(4) GlobeNewswire (Tive), "Tive Launches Solo Lite: An Affordable, Real-Time Shipment Visibility Solution" (June 5, 2024) — https://www.globenewswire.com/news-release/2024/06/05/2893883/0/en/Tive-Launches-Solo-Lite-An-Affordable-Real-Time-Shipment-Visibility-Solution.html (Tier 3 — company press release via wire service)

(5) Sensitech (Carrier Global), "Sensitech to Strengthen Life Sciences Cold Chain Solutions with Acquisition of Berlinger & Co." (June 2024 announcement; completed August 2024) — https://www.sensitech.com/en/resources/news/news-article/2024-06-17-berlinger-acquisition.html and https://www.prnewswire.com/news-releases/sensitech-to-strengthen-life-sciences-cold-chain-solutions-with-acquisition-of-berlinger--co-monitoring-solutions-302176870.html (Tier 3 — company/wire press release)

(6) Portcast, "Portcast Secures USD 6.5 Million Series A Funding" (November 2024) — https://www.portcast.io/blog/portcast-secures-usd-6-5-million-series-a-funding-led-by-susquehanna-asia-vc-to-automate-actions-through-supply-chain-visibility (Tier 3 — company press release; used for 5M data points/day, 370 carriers, 800 ports, 90% ETA accuracy, Series A details)

(7) project44, "project44 Concludes Strong FY 2024 With Over 30% Year-Over-Year Growth" (May 30, 2024) — https://www.prnewswire.com/news-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue-302158719.html (Tier 3 — company press release via PRNewswire; used for >30% YoY growth, 1,300+ enterprise customers, named new customers Toyota/Kawasaki/Constellation/Coca-Cola EU)

(8) Getlatka.com, "How Shippeo hit $22.3M revenue and 50 customers in 2024" — https://getlatka.com/companies/shippeo (Tier 9 — revenue database; no audited filing available; used with Low confidence for Shippeo revenue and customer count)

(9) GPX.co, "Best Real-Time Transportation Visibility Platforms for 2026" — https://gpx.co/blog/real-time-transportation-visibility-platforms/ (Tier 9 trade press; used only for per-shipment pricing range discussion)

(10) SaaSworthy/SoftwareSuggest, "Roambee Pricing" — https://www.saasworthy.com/product/roambee/pricing (Tier 9; used for $499/month starting platform price)

(11) Hanhaa ParceLive product page — https://hanhaa.com/parcelive/ (vendor marketing — used to confirm rental model, device logistics, IATA approval for 35+ airlines)

(12) Samsara Inc. SEC 10-K filings (NYSE: IOT) — https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html and Samsara Annual Report (June 2, 2025) — https://www.sec.gov/Archives/edgar/data/1642896/000164289625000048/iot2025ars.pdf (Tier 5 — audited SEC 10-K filing; used for FY2025 revenue $1.25B, FY2026 revenue $1.62B, customer counts, 98% subscription revenue mix)

(13) Motive Technologies S-1 filing (December 23, 2025) — https://www.sec.gov/Archives/edgar/data/0001646681/000162828025058773/motive-sx1.htm and CNBC coverage — https://www.cnbc.com/2025/12/23/alphabet-backed-motive-files-for-ipo.html (Tier 5 — S-1 registration statement; used for nine-month FY2025 revenue $327M, 120,000+ customers, 23% YoY growth)

(14) Valuates Reports, "Global Real-Time Transportation Visibility Platform Market" — https://reports.valuates.com/market-reports/QYRE-Auto-34I14270/global-real-time-transportation-visibility-platform (Tier 9 — market research aggregator; used for directional $3.2–4.2B market size range; no methodology disclosed; Low confidence)

(15) Dataintelo, "Real-Time Transportation Visibility Platform Market Research Report 2033" — https://dataintelo.com/report/real-time-transportation-visibility-platform-market (Tier 9 — market research aggregator; Low confidence; likely shares primary source with (14))

(16) Debales.ai, "Fixing Freight Visibility Gaps in Your TMS Workflow" (cites $6.3B supply chain visibility market 2024) — https://debales.ai/blog/freight-visibility-gaps-tms-workflow (Tier 9 trade/vendor press; used only for $6.3B market citation; Low confidence)

(17) Grand View Research, "Cold Chain Telematics Market Size And Share Report, 2030" — https://www.grandviewresearch.com/industry-analysis/cold-chain-telematics-market-report [NEEDS-ATTENDED-FETCH] (Tier 5 — mid-tier research firm; Cloudflare-blocked on automated fetch; used for $5.63B global market 2023 and 23.9% CAGR 2024–2030 from search snippet; Medium confidence pending full document access)

(18) Grand View Research, "Asia Pacific Cold Chain Telematics Market" — https://www.grandviewresearch.com/horizon/outlook/cold-chain-telematics-market/asia-pacific (Tier 5; APAC figure $1.32B in 2024 from search snippet; Medium confidence)

(19) Transparency Market Research (via EINPresswire), "Electronic Logging Device Market Size to Hit USD 24.5 Billion by 2035" — https://www.einpresswire.com/article/895465701/electronic-logging-device-market-size-to-hit-usd-24-5-billion-by-2035-at-4-6-cagr-transparency-market-research (Tier 9 market research; used for $14.4B ELD market 2024 and $24.5B by 2035 projection; Low confidence)

(20) Grand View Research, "Commercial Vehicle Telematics Market Size Report, 2030" — https://www.grandviewresearch.com/industry-analysis/commercial-vehicle-telematics-market-report (Tier 5; $61.52B in 2024 figure from search snippet; Low confidence — definition includes passenger telematics potentially)

(21) MarketsandMarkets, "Future Commercial Vehicle Telematics Market" — https://www.marketsandmarkets.com/PressReleases/future-commercial-vehicle-telematics.asp (Tier 5; $5.4B in 2024 — significantly narrower definition; Low confidence; [NEEDS-ATTENDED-FETCH] for full report)

(22) Getlatka.com, "How project44 hit $210.1M revenue and 550 customers in 2024" — https://getlatka.com/companies/project44 (Tier 9 revenue database; cross-reference for $210M figure against company press release at (7); Medium confidence combined)

(23) Getlatka.com, "How FourKites, Inc. hit $114.3M revenue" — https://getlatka.com/companies/fourkites-inc (Tier 9 revenue database; FourKites is private; Low confidence; unaudited)

(24) Overhaul Gartner MQ Challenger page — https://over-haul.com/gartner-magic-quadrant-2024/ (vendor marketing — used to confirm Challenger positioning in 2024 MQ)

(25) PRNewswire / Stocktitan, "Overhaul Secures $105M in Series C" (August 2025) — https://pulse2.com/overhaul-105-million-series-c-raised-for-in-transit-supply-chain-risk-management-platform/ and https://www.stocktitan.net/news/MS/morgan-stanley-investment-management-s-1gt-invests-in-series-c-rmn6zzxiiul1.html (Tier 3 — press release via PRNewswire; used for $105M Series C, Springcoast lead, Morgan Stanley backing, 350+ customers, $1.4T cargo safeguarded)

(26) Descartes MacroPoint, "Announces Top Carriers Worldwide for First Half of 2024" — https://macropoint.com/news/top-carriers-first-half-2024/ (Tier 3 — company press release; used to confirm carrier performance tracking and 2024 activity)

(27) Tive, "The State of Visibility 2024" — https://www.tive.com/press-release/the-state-of-visibility-2024-real-time-shipment-visibility-emerges-as-a-key-component-of-digital-transformation-sustainability (Tier 3 — company research report; used for IoT adoption doubling from 25% to 53% of shippers 2023–2024)

(28) Shippeo, "Shippeo Raises $30m Strategic Round Led by Woven Capital" (January 13, 2025) — https://www.businesswire.com/news/home/20250113725048/en/Shippeo-Raises-30m-Strategic-Round-Led-by-Woven-Capital-to-Accelerate-US-and-APAC-Expansion and NGP Capital insight — https://www.ngpcap.com/insights/ngp-portfolio-company-shippeo-raises-30m-strategic-round-to-accelerate-us-and-apac-expansion (Tier 3 — company press release via BusinessWire; used for $30M round, 90M shipments/year, 150 countries, 1,000+ TMS/telematics integrations, named customers)

(29) Shippeo $30M round: Woven Capital lead — confirmed at (28).

(30) DC Velocity, "Trimble buys Transporeon freight software platform for $2 billion" — https://www.dcvelocity.com/articles/56187-trimble-buys-transporeon-freight-software-platform-for-2-billion and Trimble press release — https://transportation.trimble.com/resources/press-releases/trimble-completes-transporeon-acquisition (Tier 3 — company press release; used for €1.88B acquisition price, April 2023 close, 150,000 carriers, 1,400 shippers, ~€190M projected 2023 revenue)

(31) Wakeo €18M Series B — https://startup-weekly.com/Paris-based-Wakeo-raises-18m-funding-to-accelerate-supply-chain-visibility-and-sustainability/ (Tier 9 tech press; used for funding round details, investor names, customer names, 180 countries)

(32) Hanhaa — https://hanhaa.com/parcelive/ and https://supplychaindigital.com/logistics/parcelive-iot-and-real-time-parcel-tracking-technology (vendor marketing + trade press Tier 9; used to confirm device rental model, IATA approval, SolarLive solar product)

(33) GoComet press release (Series A, February 2022) — https://www.prnewswire.com/in/news-releases/gocomet-raises-7-million-series-a-funding-872253680.html and Tracxn profile — https://tracxn.com/d/companies/gocomet (Tier 3 + Tier 9; used for $10.3M total funding, 150+ customers, 35 countries, SGD 3.65M FY2024 revenue, Singapore HQ)

(34) FarEye Tracxn/Getlatka — https://tracxn.com/d/companies/fareye and https://getlatka.com/companies/fareye (Tier 9; used for $149M revenue 2024 estimate, 150+ customers, 30 countries, Singapore office, Zalora customer)

(35) South China Morning Post, FTA IPO coverage — https://www.scmp.com/business/banking-finance/article/3137463/full-truck-chinas-uber-trucks-raise-us157-billion-us (Tier 9 trade press; used for FTA scale, $27.2B GMV, regulatory review context)

(36) Kargo Tech — https://www.kargo.tech/en and Crunchbase profile — https://www.crunchbase.com/organization/kargo-technologies (vendor marketing + Tier 9; used for 40,000+ trucks, Indonesia-largest, Series B July 2024)

(37) Geotab APAC page — https://www.geotab.com/apac/ and press release re 3M subscribers — https://www.geotab.com/apac/press-release/geotab-3million-subscribers-worldwide/ (Tier 3 — company press release; used for 3M+ subscribers, 100B data points/day, SEA presence in Philippines/Indonesia/Singapore/Thailand)

(38) PRNewswire (Roambee), "Roambee Raises $15.2M" — https://www.prnewswire.com/news-releases/roambee-raises-15-2m-to-help-shippers-monitor-and-automate-their-supply-chain-300993924.html and RevTek Capital (Roambee, February 2024 financing) — https://revtekcapital.com/roambee-closes-second-financing-round/ (Tier 3 — press release + investor blog; used for $15.2M total funding, 5G GPS smart label launch 2024, APAC team presence)

(39) Controlant SmartCAE partnership and Saga Card 2024 — https://www.controlant.com/ and IoTForAll article — https://www.iotforall.com/cold-chain-pharma-iot (vendor marketing + Tier 9 trade press; used for Saga Card 2024 introduction, SmartCAE partnership October 2024, Series B $15M)

(40) Debales.ai / FreightPulse analysis of carrier API data quality — https://debales.ai/blog/freight-visibility-gaps-tms-workflow and https://freightpulsehq.com/blog/freight-api-comparison-2026 (Tier 9; used for subcontractor tracking blackout zones and drayage/regional carrier integration gap)

(41) IntelliTrans Placed in 2024 Magic Quadrant — https://www.globenewswire.com/news-release/2024/04/01/2855319/0/en/IntelliTrans-Placed-in-2024-Magic-Quadrant-for-Real-Time-Transportation-Visibility-Platforms.html (Tier 3 — GlobeNewswire company release; used to confirm 2024 MQ vendor list: Trucker Tools, IntelliTrans, Blume Global, Overhaul, Shippeo, FourKites, project44)

---

## Assumptions to Validate

[ASSUMED-1]: FourKites has not been acquired by Tive or any other entity as of May 2026. The orchestrator brief stated "FourKites (acquired by Tive 2024)" but no acquisition is confirmed in PitchBook, CBInsights, SEC EDGAR, or open press. The Tive-FourKites relationship is a technology partnership announced in 2021, not an acquisition. This claim should be treated as an error in the orchestrator brief unless new evidence emerges.
- to validate: Check FourKites directly with their communications team; run EDGAR search for any 8-K or Form D disclosures linked to FourKites EIN; check PitchBook for ownership change flags.

[ASSUMED-2]: FarEye's visibility capabilities for B2B road freight (mid-mile) in SEA are less developed than its last-mile delivery optimization — the majority of the ~$149M revenue (Latka estimate) comes from last-mile dispatch rather than the in-transit risk monitoring Stage 3 addresses.
- to validate: Ask FarEye APAC sales team specifically about mid-mile B2B freight visibility use cases and customer count in Indonesia/Thailand/Malaysia.

[ASSUMED-3]: No standalone, commercially available RTTVP or cargo IoT platform with a specific China domestic truck freight focus exists outside of the major marketplace platforms (FTA, JD Logistics proprietary systems).
- to validate: Engage Roland Berger Shanghai or BCG Beijing logistics practice for confirmation; ask specifically about any Chinese startup RTTVP building on carrier telematic APIs analogous to project44.

[ASSUMED-4]: Roambee has limited SEA market penetration despite having an Asia-based team; its customer base in SEA (if any) is confined to multinational enterprise shippers rather than SEA-domiciled companies.
- to validate: Ask Roambee APAC team directly for SEA customer references; ask whether pricing ($499/month platform floor) is accessible to SEA mid-market shippers.

[ASSUMED-5]: WhatsApp location-ping check-ins are the primary in-transit tracking mechanism for sub-contracted truckers in Indonesia, Thailand, and Malaysia, used by the majority of small and mid-size 3PLs and shippers managing non-integrated carrier relationships.
- to validate: Ask 5–10 logistics dispatchers in Jakarta, Bangkok, Kuala Lumpur: "Walk me through how you track a truck once it leaves the warehouse — who calls whom, at what intervals, and what happens when you can't reach the driver?"

[ASSUMED-6]: The majority of sub-carrier truck fleets in Indonesia and Thailand have GPS devices installed (often by the fleet owner for internal fleet management), but the signal is siloed inside the fleet owner's portal and never reaches the shipper or 3PL contracting the carrier — making the IoT hardware physically present but informationally useless to the buyer.
- to validate: Ask 3PLs and shippers in Indonesia/Thailand: "Does your sub-contractor's truck have GPS? Do you have access to that GPS feed? If not, why not, and have you ever asked for it?"

---

## NEEDS-ATTENDED-FETCH Tags

The following URLs returned paywalled, Cloudflare-blocked, or anti-bot responses during this pass and should be re-attempted in Phase 2 Playwright mode:

- [NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/5298863 (Gartner Magic Quadrant for Real-Time Transportation Visibility Platforms, 2024 — full report; paywalled)
- [NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/5305863 (Gartner Critical Capabilities for Real-Time Transportation Visibility Platforms — paywalled)
- [NEEDS-ATTENDED-FETCH]: https://www.grandviewresearch.com/industry-analysis/cold-chain-telematics-market-report (Grand View Research cold chain telematics — Cloudflare challenge blocked)
- [NEEDS-ATTENDED-FETCH]: https://www.marketsandmarkets.com/Market-Reports/real-time-transportation-visibility-market-235067714.html (MarketsandMarkets RTTVP market — returned empty JS-only page)
- [NEEDS-ATTENDED-FETCH]: https://www.marketsandmarkets.com/PressReleases/future-commercial-vehicle-telematics.asp (MarketsandMarkets commercial vehicle telematics press release — needs verification of $21.95B by 2032 figure)
- [NEEDS-ATTENDED-FETCH]: https://www.sec.gov/Archives/edgar/data/1642896/000164289625000048/iot2025ars.pdf (Samsara FY2025 Annual Report PDF — for precise revenue/customer breakdowns)
- [NEEDS-ATTENDED-FETCH]: https://www.sec.gov/Archives/edgar/data/0001646681/000162828025058773/motive-sx1.htm (Motive S-1 full filing — for full revenue breakdown by product line and customer geography)

