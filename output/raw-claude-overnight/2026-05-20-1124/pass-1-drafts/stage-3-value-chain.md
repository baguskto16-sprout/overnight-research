## Stage 3: In-Transit — Visibility & Monitoring

### Description

This is the active freight leg: cargo has left origin and the risk question shifts from counterparty identity (Stage 1) to operational certainty — where is the load, is it on plan, is condition within spec, and is it secure against theft, tampering, and route deviation. The density of named global players is higher here than in any other stage of the value chain. The solutions stack disaggregates into at least seven distinct product categories (RTTVPs, fleet telematics, per-shipment IoT sensors, cold-chain sensors, anti-theft hardware, crime-corridor intelligence, and AI dashcams) — none of which is the same product, though vendors increasingly bundle across categories.

---

### Activities

1. **Real-time location tracking and ETA prediction**: GPS-network pinging of trucks, containers, and shipments via ELD connections, cellular asset trackers, or carrier API integrations; translating raw position data into predicted arrival windows with confidence intervals.
2. **Cargo condition monitoring**: Per-shipment IoT sensors capturing temperature, humidity, shock, light exposure, and door-open events; feeding excursion alerts to shipper, 3PL, and insurer in near-real time.
3. **Anti-theft and tamper detection**: Covert GPS trackers, geofence-breach alerts, dwell-time flagging at high-risk locations (truck stops, fuel stations in theft corridors), ignition-event anomalies, and cargo-seal integrity monitoring.
4. **Driver behavior and HOS compliance monitoring**: In-cab ELD units and AI dashcams capturing hard-braking, speeding, fatigue signals, and FMCSA Hours-of-Service log data; feeding risk scores to safety managers and, increasingly, insurers.
5. **Crime-corridor and route risk scoring**: Applying historical theft-incident data, cartel activity, and law enforcement intelligence to flag high-risk routes and dwell points before or during transit, especially in Mexico, Brazil, South Africa, and LATAM corridors — and emerging SEA maritime piracy corridors.

---

### Revenue Model

SaaS subscription (per-vehicle/per-asset/per-month) for telematics and RTTVP layers; hardware sale plus per-shipment data subscription for IoT sensor layers; enterprise annual contract + professional services for control-tower integrations.

### Cost Drivers

Cellular/satellite data transmission costs (especially for remote or ocean routes), IoT hardware manufacturing and logistics (for sensor vendors), carrier integration and data-normalization engineering labor, and law-enforcement data licensing for crime-corridor intelligence.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global commercial vehicle telematics market (Mordor Intelligence, 2024E) | $23.45B | Medium — single market research firm; wide divergence with MarketsandMarkets ($5.4B) reflects scope differences | (1), (2) |
| Global commercial vehicle telematics market (MarketsandMarkets, 2024) | $5.4B | Medium — narrower definition (software-focused); divergence from Mordor noted | (2) |
| Samsara self-stated TAM (global commercial telematics + commercial surveillance + trailer/cargo tracking) | $54.6B | Medium — company estimate from S-1 filing; directionally useful as floor for combined telematics + visibility TAM | (3) |
| Samsara FY2026 annual revenue (ended Jan 31, 2026; NYSE: IOT 10-K) | $1.62B | High — audited SEC filing | (4) |
| Motive S-1 ARR (2025, filed Dec 2025) | ~$500M ARR | Medium — S-1 disclosure; company-stated | (5) |
| Global supply chain visibility software market (Market Research Future, 2024) | $3.2B | Low — single market research firm; definition excludes hardware; low confidence as RTTVP-specific proxy | (6) |
| Global real-time cold chain monitoring market (Grand View Research, 2024) | $35.0B | Low — includes all cold chain infrastructure; broad definition overstates pure-sensor/visibility sub-segment | (7) |
| SEA fleet management installed base (Berg Insight via ResearchAndMarkets, end-2023) | 2.8M units active | High — Berg Insight cited in multiple trade outlets; CAGR 13.7% forecast to 5.4M units by 2028 | (8), (9) |
| SEA fleet management penetration rate (2024E, Berg Insight) | ~17.5% of commercial fleet vehicles | Medium — Berg Insight estimate; field validation needed against MOTL/LLDT data | (9) |

**Data gap — RTTVP-specific market size:** No government statistics agency or multilateral body publishes an RTTVP-specific market size figure. The Gartner Magic Quadrant names vendors but does not publish a market-size figure in its public press releases. The $3.2B supply-chain-visibility figure (Market Research Future) and comparable estimates from other market research firms ($1.4B–$4.2B range) are single-source, methodologically opaque, and should not be treated as TAM without field validation. The best available proxy is vendor ARR disclosure: project44 ($210M+ GAAP revenue in FY2024),(10) Shippeo ($22.3M ARR in 2024),(11) and FourKites (disclosed cash-flow breakeven in 2023, valuation undisclosed post-2021 Series E).(12)

**Data gap — cold chain sensor sub-segment:** The $35B Grand View Research figure conflates refrigerated transport infrastructure with sensor/monitoring software. A credible cold-chain sensor TAM for pharma specifically is not isolable from available public sources; field validation required with Sensitech, Controlant, and ELPRO on their reported contract values.

---

### Current Players by Region

**Global (RTTVP — Real-Time Transportation Visibility Platforms):**

- **project44** (Chicago, NYSE pre-IPO private) — #1 RTTVP by Gartner 2024 Magic Quadrant "Ability to Execute" and "Completeness of Vision" axes for second consecutive year; 240,000+ global carriers in network; 1,300+ enterprise brand customers; $912M total raised (Series G $80M at $2.7B valuation, Nov 2022, CMA CGM + Goldman Sachs + TPG); FY2024 revenue $210M+ at 30%+ YoY growth; sole vendor authorized to transfer logistics data in/out of China with 8M+ vehicles.(10)(13)
- **FourKites** (Chicago) — Gartner 2024 Magic Quadrant Leader (fourth consecutive year); reached cash-flow breakeven 2023; $10M strategic investment from Mitsui for APAC expansion; serves ocean, FTL, LTL, rail, last-mile modes globally.(12)
- **Shippeo** (Paris) — Gartner 2024 Magic Quadrant Leader (first time); $137M total raised (Series D-II $30M, Jan 2025); FY2024 revenue $22.3M; EU-origin with record North America and APAC growth in 2024.(11)(14)
- **Wakeo** (Paris) — multimodal (ocean + overland) visibility; €30M+ total funding (€18M round Dec 2023); acquired LKW Walter's technology (July 2024) for European road visibility; APAC footprint limited.(15)
- **Transporeon Visibility** (Ulm, Germany; now Trimble) — integrated into Trimble after $1.98B acquisition (Dec 2022); includes Sixfold real-time visibility network; dominant European road freight network.(16)
- **Descartes MacroPoint** (Waterloo, Canada; TSX/NASDAQ: DSGX) — carrier-integrated visibility with FraudGuard layer; recognized by G2 as Fall 2024 Leader; deep broker/3PL US penetration; extended to fraud detection (see Stage 1).(17)

**Global (Fleet Telematics — vehicle/driver layer):**

- **Samsara** (San Francisco; NYSE: IOT) — $1.62B FY2026 revenue (ended Jan 31, 2026); 98% subscription revenue; 2,506 customers >$100K ARR; Gartner and Frost & Sullivan recognized; US commercial fleet market dominant, limited SEA presence.(4)
- **Motive** (formerly KeepTruckin; San Francisco; MTVE.PVT, S-1 filed Dec 2025) — ~$500M ARR in 2025; $2.85B valuation (Series F $150M, 2022); ELD + AI dashcam + fleet intelligence stack.(5)(18)
- **Geotab** (Oakville, Canada; private) — world's largest commercial telematics provider by subscription count; 6M+ connected vehicles across 160 countries; largest provider in both Europe and Latin America by active subscriptions; reseller model through 400+ resellers globally.(19)
- **Trimble Transportation** (Westminster, CO) — enterprise TMS + telematics stack (Omnitracs was acquired by Solera 2021; Trimble retains transportation platform); strong US long-haul fleet presence.
- **Webfleet** (Amsterdam; Bridgestone subsidiary) — EU commercial fleet telematics leader; embedded in Bridgestone tire customer relationships; strong in Europe, limited SEA presence.

**Global (IoT Per-Shipment Sensors):**

- **Tive** (Boston) — 2M trackers sold as of Dec 2024; 850+ global shipper/LSP/retail customers; 60% YoY revenue growth H1 2024; $100M booked ARR (May 2026); per-shipment model (disposable Solo Lite and reusable tracker options); temperature, humidity, shock, light, location multi-sensor.(20)(21)
- **Roambee** (Santa Clara; India + SEA ops) — hardware + SaaS supply chain visibility; received strategic investment from Indonesia's MDI Ventures for SEA expansion; ABI Research spotlighted for multi-connectivity asset tracking; covers pharma, chemicals, consumer electronics.(22)
- **Sensitech** (Beverly, MA; Carrier Global subsidiary) — largest cold-chain sensor market share; pharma and food focus; TempTale GEO X launched Feb 2024 for life sciences; acquired Berlinger & Co. (Aug 2024) for pharma cold-chain expansion; Lynx FacTOR SaaS for pharmaceutical release evaluations (Mar 2025).(23)
- **Controlant** (Reykjavik + Boston) — reusable IoT data loggers for pharma cold chain; Pfizer COVID-19 vaccine cold chain partnership: achieved <0.1% product loss rate (vs. 25–50% pre-digital baseline); Pfizer deployed across 5B+ doses; end-to-end time/temperature/light monitoring with cloud analytics.(24)

**Global (Integrated Risk + Visibility — control tower + anti-theft):**

- **Overhaul** (Austin, TX) — in-transit supply chain risk management platform combining real-time monitoring, predictive risk intelligence, cargo theft recovery, and insurance; safeguards $1.4T in cargo trade; $105M Series C (Aug 2025, Springcoast Partners + Edison Partners); customers include Microsoft, Bristol Myers Squibb, CEVA Logistics, Arvato; Gartner 2024 Magic Quadrant Challenger.(25)(26)
- **PowerFleet** (Woodcliff Lake, NJ; NYSE: AIOT) — IoT fleet + cargo tracking, covert anti-theft hardware, industrial truck monitoring; FY2025 revenue $362.5M (+26% YoY), 75% SaaS; FY2026 guidance $440–$445M.(27)

**SEA (Regional Fleet Telematics):**

- **Cartrack / Karooooo** (Johannesburg; NASDAQ: KARO) — largest installed base in SEA among named providers; SEA subscription revenue +30% Q1 2026; SEA is second-largest contributor to group revenue and fastest-growing region; SGD 334.6M group revenue FY2024.(28)(29)
- **TransTRACK** (Jakarta, Indonesia) — Indonesia-dominant fleet telematics; 10,000+ units; 500+ clients; Series A $12M (Eurazeo + Cocoon Capital); launched at GIICOMVEC 2024 and Transport & Logistic Indonesia 2024; HOS/driver behavior + temperature + E-seal monitoring.(30)
- **Jimi IoT** (Shenzhen; SEA-active) — Berg Insight top-3 SEA provider by installed base (>100K units); hardware-first GPS tracker manufacturer with fleet SaaS overlay; primarily serves budget-tier fleet operators.(9)
- **DTC** (Bangkok, Thailand) — top-5 SEA fleet management provider (Berg Insight); Thailand-domestic dominant; product covers fleet tracking, fuel monitoring, driver behavior.(9)
- **Onelink** (Bangkok, Thailand) — top-5 SEA fleet management provider (Berg Insight); Thailand-based; fleet GPS + telematics.(9)

---

### Preliminary Pain Points (this stage)

- **RTTVPs lose signal below the integration threshold.** project44 and FourKites achieve high tracking compliance for large carriers connected via ELD API or EDI, but when a 3PL subcontracts to a small owner-operator not integrated with any network platform, visibility reverts to manual check-in or nothing. In the US, 91.5% of carriers operate 10 trucks or fewer — exactly the tier below the ELD-API integration threshold. [ASSUMED-1]: Fewer than 20% of shipments tendered by mid-market 3PLs to small carriers achieve automated location pings at intervals tighter than 2 hours — to validate: ask operations managers at mid-market 3PLs to pull tracking-compliance reports for their bottom-quartile carrier tier.

- **IoT sensor data is siloed to whoever buys the sensor — not shared across the chain.** A shipper who deploys Tive or Roambee sensors owns that data; their 3PL and insurer do not have API access unless a bilateral data-sharing agreement exists. Cold-chain excursion alerts from Sensitech TempTale are typically reported to the shipper's QA team but are not automatically pushed to the cargo insurer for mid-transit premium adjustment or early intervention — even when the excursion would trigger a claim. [ASSUMED-2]: Fewer than 10% of cargo insurance policies include a contractual right to receive in-transit sensor feeds from the insured's IoT devices — to validate: ask cargo underwriters at Lloyd's and AIG whether they specify IoT data-access rights in policy wording for temperature-sensitive cargo.

- **Cold-chain sensor data is increasingly insurance-relevant but the insurer-sensor integration does not exist at scale.** Controlant demonstrated <0.1% product loss for Pfizer vaccine logistics; the actuarial signal is clear. Yet cargo insurers pricing pharmaceutical policies still rely on shipper-declared temperature logs rather than continuous IoT telemetry. The gap creates a moral hazard: shippers have every incentive to deploy sensors but no structural pressure to share excursion data until claim time.(24)

- **SEA telematics is fragmented with no ELD mandate and sub-20% fleet penetration as of 2024.** Berg Insight estimates 17.5% penetration of commercial fleet vehicles in SEA (2024), with no equivalent to the US FMCSA ELD mandate that forced US fleets above 10 trucks to install compliant devices. Indonesia has pilot ELD programs in Jakarta and West Java but no national mandate. This means the driver behavior and route-deviation signals available to a US shipper via Samsara or Motive dashcam feeds are structurally unavailable for most SEA freight movements.(9)(30)

- **Crime-corridor intelligence for LATAM, MENA, and SEA is thin, fragmented, and not integrated into visibility platforms.** Overhaul provides crime-corridor risk scoring for US, Mexico, and Brazil corridors; BSI/TT Club and CargoNet publish annual theft maps; but no visibility platform integrates real-time crime-corridor signals into route-deviation alerts as a standard feature. The Strait of Malacca saw a 281% YoY surge in sea piracy in the first half of 2025, yet no commercial RTTVP product offers automated piracy-corridor risk scoring for SEA maritime legs as a shipping-visibility feature.(31)

- **Driver-safety AI dashcam data is fleet-owned, not risk-pool-shared.** Lytx and Samsara dashcam platforms generate rich driver-behavior signals (harsh braking, speeding, fatigue indicators) that reduce accident rates; Lytx reports 56% reduction in risky driving behaviors. However, this data is held by the fleet operator and is not shared with cargo insurers or shippers in real time. Small carriers below 10 trucks — the majority of the US carrier population — do not operate dashcam systems at all.(32)

- **Visibility platforms produce ETA signals but not cargo-condition signals for dry freight.** RTTVPs excel at location and ETA; they carry no cargo-condition layer for non-temperature-sensitive dry freight (electronics, automotive parts, consumer goods). Yet these are the highest-theft commodity categories per BSI/TT Club 2024. The monitoring gap at the cargo-condition layer for dry freight is structural: no ambient sensor is deployed, so shock events, tampering, and door-open alerts are absent.(31)

---

### Sources for this stage

(1) Mordor Intelligence — "Global Commercial Vehicle Telematics Market Size." https://www.mordorintelligence.com/industry-reports/commercial-vehicle-telematics-market

(2) MarketsandMarkets — "Future Commercial Vehicle Telematics Market." https://www.marketsandmarkets.com/Market-Reports/future-commercial-vehicle-telematics-market-227143770.html

(3) Samsara S-1 Registration Statement, FY2021, SEC filing. https://www.sec.gov/Archives/edgar/data/0001642896/000119312521334578/d261594ds1.htm [TAM: $54.6B composed of $32.9B global commercial telematics + $19.9B commercial surveillance + $1.8B trailer/cargo tracking]

(4) Samsara Form 10-K (FY2026, ended Jan 31, 2026), $1.62B revenue. https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html

(5) Motive S-1 analysis (filed Dec 2025), ~$500M ARR. https://www.saastr.com/5-interesting-learnings-from-motive-at-500000000-arr-and-the-match-up-with-samsara/ ; Motive $150M Series F announcement. https://gomotive.com/blog/motive-150m-raise-for-ai-global-expansion/

(6) Market Research Future — "Supply Chain Visibility Software Market, 2024." https://www.marketresearchfuture.com/reports/supply-chain-visibility-software-market-41303 [Note: single source; range across firms $1.4B–$4.2B; confidence Low as RTTVP-specific proxy]

(7) Grand View Research — "Cold Chain Monitoring Market, 2024." https://www.grandviewresearch.com/industry-analysis/cold-chain-monitoring-market [Note: $35B figure includes refrigerated infrastructure; pure sensor/SaaS sub-segment not isolable; confidence Low for narrow cold-chain sensor TAM]

(8) ResearchAndMarkets / Berg Insight — "Southeast Asia Fleet Management Market Report 2024." BusinessWire announcement. https://www.businesswire.com/news/home/20241105818026/en/Southeast-Asia-Fleet-Management-Market-Report-2024---Fleet-Management-Solutions-in-Southeast-Asia-Expected-to-Double-by-2028-Reaching-5.4-Million-Units---ResearchAndMarkets.com

(9) Berg Insight (via GlobeNewswire) — SEA top players, installed base, penetration data. https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html

(10) project44 FY2024 results press release. https://www.project44.com/press-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue/

(11) Shippeo — Gartner 2024 Magic Quadrant Leader press release; $22.3M ARR per Latka. https://www.shippeo.com/press-releases/shippeo-named-a-leader-in-the-2024-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms ; https://getlatka.com/companies/shippeo [Note: Latka self-reported; confidence Medium]

(12) FourKites — 2024 Gartner Magic Quadrant Leader press release; cash-flow breakeven disclosure. https://www.fourkites.com/press/fourkites-named-a-leader-in-the-2024-gartner-magic-quadrant-for-fourth-consecutive-year/

(13) project44 Series G press release — $80M at $2.7B valuation, Nov 2022; Goldman Sachs, CMA CGM, TPG participation. https://www.project44.com/press-releases/project44-raises-80-million-valuing-company-at-2-7-billion-up-12-from-january-despite-widespread-downturn-in-b2b-saas-valuations/ ; Series F ($420M, Thoma Bravo + TPG + Goldman, Jan 2022). https://www.project44.com/press-releases/project44-receives-420-million-investment/

(14) Shippeo Series D-II ($30M, Jan 2025); total $137M raised. https://www.freightwaves.com/news/shippeo-raises-40m-to-further-supply-chain-visibility-platform-expansion

(15) Wakeo €18M funding round (Dec 2023); LKW Walter tech acquisition (July 2024). https://tech.eu/2023/12/04/wakeo-raises-18m-for-supply-chain-visibility-and-sustainability/

(16) Trimble acquisition of Transporeon ($1.98B, Dec 2022); Sixfold integration. https://investinestonia.com/transporeon-sixfold-makes-a-2b-exit-and-becomes-a-unicorn/

(17) Descartes MacroPoint FraudGuard launch (April 2024). https://www.descartes.com/resources/news/new-descartes-macropoint-capabilities-help-combat-fraud-transportation-and-logistics ; G2 Fall 2024 Leader. https://macropoint.com/news/fall-2024-g2-grid-report/

(18) Motive $2.85B valuation (Series F). https://www.freightwaves.com/news/motive-raises-valuation-to-2-85b-after-closing-150m-funding-round

(19) Geotab — Wikipedia + corporate site: 6M+ connected vehicles, 160 countries, 50,000+ fleet customers. https://en.wikipedia.org/wiki/Geotab

(20) Tive — 2M trackers sold (Dec 2024). https://www.globenewswire.com/news-release/2024/12/03/2990695/0/en/Tive-Hits-Two-Million-Real-Time-Shipment-Visibility-Trackers-Sold.html

(21) Tive — 60% YoY revenue growth H1 2024; 130+ new customers. https://www.globenewswire.com/en/news-release/2024/07/30/2920922/0/en/Tive-Celebrates-60-Year-over-Year-Revenue-Growth.html ; $54M funding announced (FreightWaves). https://www.freightwaves.com/news/tive-raises-54m-to-expand-shipment-tracker-sales-globally

(22) Roambee + MDI Ventures (Indonesia) strategic investment. https://www.prweb.com/releases/roambee_secures_strategic_investment_from_indonesia_s_mdi_ventures_and_enters_rapidly_growing_240b_southeast_asia_iot_market/prweb15939627.htm

(23) Sensitech / Carrier — TempTale GEO X launch (Feb 2024); Berlinger acquisition (Aug 2024); Lynx FacTOR (Mar 2025). https://www.carrier.com/carrier/en/worldwide/news/news-article/sensitech-launches-next-generation-iot-supply-chain--monitoring-devices.html

(24) Controlant — Pfizer COVID-19 vaccine cold chain case study; <0.1% product loss; 5B+ doses deployed. https://www.controlant.com/insights/the-supply-chain-innovations-behind-the-worlds-largest-vaccine-programme ; Supply Chain Brain coverage. https://www.supplychainbrain.com/articles/34070-ensuring-the-quality-and-safety-of-the-pfizer-vaccine-in-the-pandemic

(25) Overhaul — $105M Series C (Aug 2025); $1.4T cargo safeguarded; customers Microsoft, BMS, CEVA, Arvato. https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(26) Overhaul — Gartner 2024 Magic Quadrant Challenger positioning. https://over-haul.com/gartner-magic-quadrant-2024/

(27) PowerFleet FY2025 annual results — $362.5M revenue, 75% SaaS, 26% YoY growth. https://ir.powerfleet.com/press-releases/detail/484/powerfleet-reports-annual-fy2025-results-a-breakout-year

(28) Karooooo / Cartrack SEC filing — SEA performance, Q1 2026 +30% subscription growth. https://www.sec.gov/Archives/edgar/data/1828102/000121390024087420/ea021753501ex99-1_karooooo.htm

(29) Karooooo SGD 334.6M group revenue FY2024; SEA second-largest regional contributor. https://iol.co.za/business-report/companies/2026-01-21-karooooo-accelerates-growth-with-20-increase-in-subscription-revenue/

(30) TransTRACK Series A $12M (Eurazeo + Cocoon Capital); 10,000+ units, 500+ clients; GIICOMVEC 2024. https://blog.transtrack.co/en/press-release/transtrack-technology-summit-2024-fleet-innovation-and-expansion-strategy-with-series-a-funding-of-idr185-billion/

(31) BSI Consulting and TT Club 2024 Cargo Theft Report (April 2025 edition) — SEA piracy +281% YoY in Strait of Malacca; top theft countries Brazil, Mexico, India, US, Indonesia, Chile, China, Germany, South Africa. https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/ ; PDF. https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown)

(32) Lytx — 2024 Fleet Safety Report covering 4,500+ customers, 200,000+ vehicles; 56% reduction in risky driving behaviors. https://www.lytx.com/news-events

---

### Geography & SEA Presence Matrix

| Solution Category | US | EU | LATAM | SEA Presence |
|---|---|---|---|---|
| RTTVP (project44, FourKites, Shippeo, Wakeo, MacroPoint) | Strong | Strong (Shippeo, Wakeo, Transporeon) | Partial | Partial — project44 APAC office; FourKites APAC office; carrier data density low |
| Fleet telematics — enterprise (Samsara, Motive, Geotab, Webfleet) | Strong | Strong (Geotab, Webfleet) | Geotab dominant | Minimal — Geotab resellers; Samsara/Motive not established in SEA |
| Fleet telematics — SEA-native (Cartrack, TransTRACK, Jimi IoT, DTC, Onelink) | None | None | None | Yes — Berg Insight top-5 SEA providers |
| IoT per-shipment sensors (Tive, Roambee, Sensitech) | Strong | Partial | Partial | Roambee has SEA ops (MDI Ventures); Tive limited; Sensitech pharma-specific |
| Cold-chain specialist (Controlant, ELPRO, Berlinger/Sensitech) | Strong | Strong | Minimal | Pharma corridors only; no SEA-native player identified |
| Anti-theft / covert tracking (PowerFleet, Overhaul, CalAmp) | Strong | Partial | Overhaul LATAM active | No confirmed SEA presence |
| Crime-corridor intelligence (Overhaul, BSI, CargoNet) | Strong | Partial | Overhaul Mexico/Brazil | No SEA-native crime-corridor intelligence product identified |
| AI dashcam / driver safety (Lytx, Samsara, Motive, Netradyne) | Strong | Partial | Minimal | No confirmed SEA market presence |

**SEA data gap:** No SEA-native RTTVP, cold-chain sensor, anti-theft hardware, or crime-corridor intelligence product was identified in research. The SEA fleet monitoring market is dominated by basic GPS fleet tracking (Cartrack, TransTRACK, Jimi IoT) — a product category two generations behind the Samsara/FourKites/Overhaul stack on risk-management capabilities.

---

### Assumptions to Validate

[ASSUMED-1]: Fewer than 20% of shipments tendered by mid-market 3PLs to small carriers achieve automated location pings at intervals tighter than 2 hours.
- to validate: Ask operations managers at 5–10 mid-market 3PLs ($100M–$1B annual revenue) to pull a tracking-compliance report for their bottom-quartile carrier tier (by trailer count); define "tracking compliance" as automated pings with <2-hour gaps from origin to delivery; compare against top-quartile carriers.

[ASSUMED-2]: Fewer than 10% of cargo insurance policies include a contractual right to receive in-transit sensor feeds from the insured's IoT devices.
- to validate: Review 20 cargo policy wordings from Lloyd's syndicates and US surplus lines carriers covering pharmaceutical and electronics shipments; confirm whether any policy contains a clause specifying sensor-data access rights or excursion notification requirements as a condition of coverage.

[ASSUMED-3]: SEA freight visibility above basic GPS tracking (i.e., condition monitoring, anti-theft scoring, ETA prediction with confidence intervals) is exclusive to multinational shippers operating their own vendor-managed logistics programs.
- to validate: Interview 10 mid-market SEA shippers (Indonesia, Thailand, Malaysia) on whether their 3PL or carrier provides temperature monitoring, shock alerts, or ETA-prediction data for any shipment — and whether they pay extra for that capability.

[ASSUMED-4]: FourKites and project44 APAC offices serve primarily ocean-container-visibility use cases (ocean tracking via AIS + port events) rather than SEA overland truck tracking.
- to validate: Request product demonstrations from both vendors specifically for SEA overland FTL truck tracking; confirm carrier API/ELD integration count for Indonesian, Thai, and Malaysian truck fleets.

[ASSUMED-5]: The ZIM / FourKites relationship cited in briefing materials is a strategic investment or partnership (not acquisition); research found no acquisition announcement and ZIM is being acquired by Hapag-Lloyd.
- to validate: Pull ZIM's most recent 20-F or 6-K filings for any FourKites equity stake or partnership disclosure; check FourKites press page for ZIM joint announcement. [NEEDS-ATTENDED-FETCH if Hapag-Lloyd acquisition closes and ZIM SEC filings become unavailable]
