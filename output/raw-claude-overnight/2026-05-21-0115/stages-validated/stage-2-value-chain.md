## Stage 2: Dispatch — Freight Procurement & Tendering

**Research date:** 2026-05-21
**Geography:** Worldwide; SEA (Singapore, Indonesia, Thailand, Malaysia) flagged throughout
**Builds on:** Stage 1 (Pre-dispatch — Vendor Procurement & Onboarding). Stage 1 documented carrier vetting, insurance verification, sanctions screening, and SEA carrier-identity gaps. Stage 2 assumes the carrier is onboarded; focus is on how the load is tendered and what risk surfaces at the moment of procurement/dispatch.

---

### Description

Freight procurement and tendering is the workflow where a shipper or 3PL selects a carrier for a specific load, negotiates or applies a rate (from an existing contract or the spot market), and formally dispatches the load via a tender — an electronic or manual load offer that the carrier can accept, reject, or counter. The actors include enterprise shippers managing contracted carrier networks through TMS platforms, freight brokers executing spot or mini-bid procurement on digital load boards and freight-matching platforms, 3PLs running managed-transportation programs, and carriers deciding whether to accept at the offered rate. When this stage fails, the consequences cascade: a rejected tender from the primary contracted carrier forces a spot-market recovery at higher cost; a fraudulent booking by a fictitious carrier or double-brokered load results in cargo loss without payment; a rate locked against a contract lane while spot surges causes the shipper to overpay or lose the load; and a carrier selected without capacity confirmation results in no-show and service failure. The risk profile at this stage is distinct from Stage 1 (carrier identity) — it concerns the economics and execution of an already-onboarded transaction.

---

### Activities

1. **Rate retrieval and carrier selection.** Pull contracted rates from the TMS carrier tariff file or spot-rate marketplaces (DAT, Truckstop); apply optimization logic to select the lowest-cost carrier that meets service and capacity requirements for the lane and date.

2. **Electronic tendering.** Transmit a formal load tender (EDI 204 or API) to the primary contracted carrier; set acceptance window (typically 15–120 minutes for TL, shorter for managed transportation); route to backup carriers in priority order if primary rejects or times out — this is the "waterfall" tendering model that governs contracted freight in most large enterprise TMS deployments.

3. **Spot-market procurement.** When the carrier network is exhausted or tender rejection rates spike, post the load to spot boards (DAT One, Truckstop), run a mini-bid via procurement platform (Emerge, Sleek Technologies, Transporeon SCS), or access a digital freight-matching platform (Uber Freight Broker Access, J.B. Hunt 360, Convoy Platform via DAT). Negotiate rate-per-mile or flat rate; confirm capacity verbally or via app.

4. **Booking confirmation and fraud screening.** Confirm the responding carrier's identity against the dispatching system's carrier master file; for spot loads, cross-check responding carrier MC/DOT against prior vetting records or run a real-time check (Highway, Descartes MyCarrierPortal). In practice, this step is frequently skipped or compressed under time pressure at the spot-market tier.

5. **Document issuance and load activation.** Generate rate confirmation / broker-carrier agreement; transmit BOL number and pickup instructions to carrier; trigger track-and-trace initialization (if applicable); log the load in TMS for revenue recognition and margin tracking.

---

### Revenue Model

Solution vendors at this stage earn recurring SaaS subscription fees (enterprise TMS: seat-based or transaction-volume tiers; enterprise pricing $50,000–$2M+/year); per-transaction or per-load revenue share for digital freight matching platforms (Uber Freight Broker Access, J.B. Hunt 360 each take a spread or per-load fee); and platform fee plus data subscriptions for freight procurement / RFP tools (Emerge: subscription + percentage-of-freight-savings share; Sleek Technologies, Transporeon: annual SaaS license). Load board operators (DAT, Truckstop) charge subscription fees to brokers and carriers for board access plus add-on fees for compliance tools. 3PL-built platforms (C.H. Robinson Navisphere, Maersk Spot) are internal cost centers funded from brokerage margin.

---

### Cost Drivers

Primary cost drivers for solution vendors: **cloud infrastructure and data pipeline** costs for real-time rate feeds, EDI/API connectivity to 1,000+ carrier TMS and ERP systems, and load-board data ingestion; **carrier network acquisition and verification** costs (customer success teams onboarding carriers, vetting API calls); **sales and implementation** costs for enterprise TMS deployments (6–18 month implementation cycles for Oracle OTM and SAP TM); **R&D** for AI/ML optimization and fraud detection models. For 3PL operators building proprietary dispatch platforms: **engineering headcount**, **data licensing** (FMCSA, market rate data), and the **opportunity cost** of routing freight to the proprietary platform rather than third-party boards.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global TMS market (2024, all segments) | $16.0B | Medium — MarketsandMarkets ($16.0B 2024); consistent order-of-magnitude with Precedence Research ($16.7B); Straits Research ($9.8B); range $9.8B–$16.7B; divergence driven by scope differences (does or does not include fleet management modules) | (1), (2), (3) |
| Global TMS market projected (2029) | $40.3B | Low — MarketsandMarkets single-firm projection; CAGR 20.2% is high by historical standards; treat as directional ceiling | (1) |
| Global digital freight matching market (2024) | $27.7B–$47.2B | Low — wide range across GMI ($47.2B) and Grand View Research (DFB market, overlapping segment); commercial firms only; no government or multilateral source cross-validates; scope includes freight brokerage revenue, not just software | (4), (5) |
| Global freight procurement software market (2024) | $1.2B–$2.0B | Low-Medium — three independent commercial firms converge on $1.2B–$2.0B range; software-only segment excludes brokerage revenue | (6), (7), (8) |
| Bottom-up cross-check — disclosed ARRs of major pure-play TMS vendors | ~$2.5B–$3.0B combined subscription revenue | Medium — derived from audited public company filings: WiseTech/CargoWise FY25 revenue $778.7M (CargoWise organic +17%); e2open FY2024 subscription revenue $536.8M; Manhattan Associates FY2024 cloud + maintenance $475.5M; Descartes FY2025 services revenue $520.9M (multi-segment, not all TMS). These four firms alone account for ~$2.3B in subscription/recurring revenue, implying total market of $10B–$16B is plausible given Oracle, SAP, Blue Yonder, and 100+ smaller vendors are excluded from these figures | (9), (10), (11), (12) |
| North America share of TMS market (2024) | ~33.7% of global (~$5.4B at $16B total) | Medium — MarketsandMarkets regional breakdown; consistent with historical North America leadership in TMS adoption | (1) |
| Asia Pacific TMS CAGR (2024–2029) | Highest among regions (exact % not disclosed publicly) | Low — MarketsandMarkets directional; no APAC government statistics agency publishes TMS software segment data; ASEAN Centre for Energy and BPS Indonesia do not track logistics software markets | (1) |

**Data gap:** No government statistics agency (BPS Indonesia, MIDA Malaysia, Department of Statistics Malaysia, NSO Thailand, SingStat, BLS, Census Bureau) publishes a discrete market-size figure for TMS or freight procurement software. The wide range ($9.8B–$47.2B depending on scope) reflects definitional differences (software-only vs. including brokerage revenue). For investor-grade sizing, the audited-ARR bottom-up ($2.5B–$3.0B from four named vendors) is more defensible than any top-down commercial estimate.

---

### Solution Archetypes

#### Archetype A — Enterprise TMS (large shipper / large 3PL)

**What it does:** End-to-end transportation lifecycle management: carrier rate management, multi-stop optimization, EDI tendering waterfall, visibility, invoicing, and settlement. Supports multi-modal (TL, LTL, ocean, air, rail) and global trade compliance. Risk features include tender rejection monitoring, spot-market fallback workflows, lane-benchmark analytics, and (in premium modules) carrier fraud alerting.

**Primary user:** Enterprise shippers ($500M+ annual freight spend), Fortune 500 manufacturers and retailers, large 3PLs managing shipper freight programs (managed transportation / outsourced TMS).

**Business model:** Annual SaaS subscription; Oracle OTM and SAP TM are typically licensed as part of broader ERP contracts (pricing not publicly disclosed; industry estimates $200K–$2M+/year for enterprise deployments plus implementation). Blue Yonder, Manhattan Active TM, e2open (now WiseTech/CargoWise post-acquisition): cloud subscription, implementation services. Descartes (post-3GTMS acquisition March 2025): cloud SaaS, $115M acquisition price signals mid-market positioning.

**Pricing:** Not publicly disclosed for Oracle, SAP, Blue Yonder, Manhattan, e2open. Descartes 3GTMS: mid-market, pricing not public. Implementation costs add 100–300% of license to total cost of ownership.

**SEA presence:**
- Oracle OTM: Yes — Oracle has regional offices in Singapore, Malaysia, Indonesia, Thailand; OTM is implemented by regional SIs (Infosys, Wipro, TCS); deployed at major ASEAN manufacturers and shippers including Unilever Southeast Asia, Toyota, Shell.
- SAP TM: Yes — SAP has strong SEA presence (offices Singapore, Malaysia, Indonesia, Thailand); SAP TM sold bundled with SAP S/4HANA ERP; major SEA customers include CP Group (Thailand), Sime Darby (Malaysia).
- Blue Yonder TMS: Limited — Blue Yonder has APAC operations but limited disclosed SEA TMS customers; parent Panasonic has SEA manufacturing presence. [ASSUMED-1]
- Manhattan Active TM: Limited — Manhattan Associates has APAC office in Melbourne; limited disclosed SEA TMS customers; platform is primarily used by North American retail and 3PL customers.
- e2open (now WiseTech post-acquisition): WiseTech has strong APAC/SEA presence via CargoWise (33 of top 50 global 3PLs). E2open's TM module coverage in SEA is less clearly documented. [ASSUMED-2]

---

#### Archetype B — Mid-Market / Cloud-Native TMS

**What it does:** Lighter-weight, faster-to-implement TMS for shippers with $20M–$500M freight spend, freight brokers, and 3PLs. Focuses on rating, tendering, carrier management, and basic optimization without the full ERP integration of enterprise platforms. Cloud-native architecture enables faster deployment (weeks vs. months).

**Primary user:** Mid-market shippers, freight brokers ($5M–$200M revenue), regional 3PLs.

**Business model:** Monthly or annual SaaS subscription; typically $1,000–$30,000/month depending on volume. Implementation self-serve or light-touch.

**Notable platforms:**
- **Descartes 3GTMS** (acquired March 2025, $115M): Domestic TL/LTL/parcel TMS for shippers, 3PLs, brokers. Columbus, OH. No disclosed SEA presence.
- **Loadsmart ShipperGuide TMS** (Chicago; $200M Series D at $1.3B valuation, 2022): Cloud TMS with embedded spot-rate intelligence (SONAR integration) and carrier network; targets mid-market shippers. No disclosed SEA presence; US-centric carrier network.
- **CargoWise (WiseTech Global)** (Sydney, ASX: WTC; FY25 revenue $778.7M): Dominant TMS/logistics software for freight forwarders globally; 7,000+ customers in 130 countries; 24 of 25 largest global freight forwarders use it. Strong SEA presence: offices and certified partners in Singapore, Malaysia, Indonesia, Thailand, Vietnam. CargoWise covers customs, forwarding, and transport execution; includes transport order management and carrier booking. Primary mode is air/ocean forwarding, with road transport integration.
- **Shipsy** (India; Indonesia regional HQ for SEA; $32.9M total funding; $27.1M revenue 2024): Cloud TMS covering order management, dispatch automation, and carrier network for mid-market shippers and 3PLs. Strong SEA and Middle East presence; claims 15,000 customers. Explicitly supports Indonesian, Thai, and Malaysian markets with local-language and local-carrier integrations.
- **GoComet** (Singapore HQ since redomicile; $10.3M total funding, Series A $7M 2022): AI-powered freight rate procurement, container tracking, and invoice reconciliation for ocean and air freight; 150+ customers in 35 countries including SEA, Middle East, Europe. SEA presence: headquartered in Singapore; customers across India, SEA, UAE.
- **MercuryGate TMS** (acquired by Körber Supply Chain Software / KKR, August 2024; price undisclosed): Multi-modal TMS for brokers, 3PLs, and shippers; strong in complex carrier management and intermodal. No disclosed SEA presence.

**SEA presence:** CargoWise and Shipsy are the two mid-market/cloud TMS platforms with documented SEA customer presence and local support. GoComet has SEA headquarters. All others are North America-primary.

---

#### Archetype C — Freight Procurement / RFP Platforms

**What it does:** Dedicated platforms for strategic freight sourcing: running carrier RFPs / reverse auctions, benchmarking contracted rates against market, managing carrier bids, awarding lanes, and tracking contract compliance. Distinct from TMS execution — these tools manage the procurement event before a load is tendered. Risk features: rate benchmarking vs. market to quantify spot/contract gap; optimization to avoid over-awarding capacity to carriers who may reject at surge; carrier performance tracking for future bid weighting.

**Primary user:** Enterprise shippers, supply chain procurement teams, managed-transportation 3PLs running annual bid cycles on behalf of shippers.

**Business model:** Annual SaaS license; pricing not publicly disclosed. Transporeon: bundled with its carrier network subscription (~€190M revenue 2023 for full platform). Emerge, Sleek Technologies: subscription; Emerge raised $130M Series B (2021) at undisclosed valuation. JAGGAER: enterprise procurement suite license ($50,000–$500,000+/year estimated; not publicly disclosed).

**Notable platforms:**
- **Emerge** (Scottsdale, AZ; $130M Series B, 2021; investors: 9Yards Capital, Tiger Global, Spruce House): Digital freight marketplace focused on RFP, dynamic bidding, spot and contract procurement. Claims 2%–10% freight-cost reduction via optimized procurement. No disclosed SEA presence.
- **Sleek Technologies** (US): AI-powered freight procurement, market intelligence, and tendering; targets enterprise shippers. No disclosed SEA presence.
- **Transporeon SCS / Trimble Transportation** (Ulm, Germany; acquired by Trimble for €1.88B / ~$2.0B, April 2023): European-dominant carrier procurement network; 145,000 carriers and 1,400 shippers; manages ~€48B in freight spend and 25M+ transports/year; €190M revenue 2023. Strong Europe presence; limited documented SEA presence. JAGGAER SEA: offices in APAC region, but freight-specific module is North America/Europe focused.
- **JAGGAER** (Durham, NC; private; $2.9T annual spend under management): Enterprise source-to-pay including transportation procurement; 1,300+ enterprise customers; customers include Schneider Logistics, Kenco, DHL. APAC offices; limited disclosed SEA freight-specific deployments.
- **Coupa Transportation** (Thoma Bravo portfolio; >$1B annual billings): Spend management platform with freight-sourcing module covering FTL bidding and ocean freight; 5,300+ customers; $5T+ spend under management. APAC offices; SEA freight-specific deployment evidence limited. [ASSUMED-3]
- **Alpega TenderEasy** (Stockholm / Belgium; Castik Capital): European freight procurement and TMS; 350,000+ daily freight offers on Alpega network; 50,000+ carriers. 2024 Gartner Challenger for TMS. No documented SEA presence.
- **GoComet** (Singapore): Includes freight procurement and rate benchmarking as core feature; SEA presence confirmed.

---

#### Archetype D — Digital Freight Matching (DFM) / Load Boards

**What it does:** Spot-market capacity sourcing: shippers and brokers post loads, carriers or their agents search and book. Load boards display real-time rate data; DFM platforms add matching algorithms, automated booking, and in some cases carrier fraud screening. Risk features vary widely: DAT introduced Carrier Management Suite (October 2025) with vetting integrated into DAT One; Uber Freight Broker Access includes "fully vetted carrier" network claim; Convoy Platform (now being acquired by DAT from Flexport, announced July 2025) uses ML to verify carriers and block malicious actors.

**Primary user:** Freight brokers (all sizes) and asset-light shippers sourcing spot capacity; carriers seeking available loads.

**Business model:** Monthly subscription for load board access (DAT One: $50–$500+/month; Truckstop: $50–$300+/month); per-load fee for digital booking platforms; Uber Freight: takes a margin on freight transactions ($5.1B gross revenue FY2024 represents total freight value, not platform fee); J.B. Hunt 360: per-load fee within $1B+ annual run-rate marketplace.

**Notable platforms:**
- **DAT Freight & Analytics** (Portland, OR; owned by Roper Technologies, NASDAQ: ROP): Largest North American load board by transaction volume; >$1T freight transactions analyzed in 2024; 700,000 loads posted daily via DAT One; acquired Trucker Tools (visibility), acquired Convoy Platform from Flexport (announced July 2025). US-primary, no SEA load board presence.
- **Truckstop.com** (Pocatello, ID; ICONIQ Capital, ~$1B valuation 2019): Second-largest North American load board; 80M+ annual loads; 250,000+ active users; includes RMIS insurance verification. US-primary, no SEA load board presence.
- **J.B. Hunt 360** (Lowell, AR; NASDAQ: JBHT; FY2024 gross revenue $8B): Proprietary multimodal marketplace with 1M+ onboarded carriers; Integrated Capacity Solutions (ICS) marketplace $1B+ annual run rate. US-primary; J.B. Hunt operates in limited APAC capacity but 360 platform is North America-focused.
- **Uber Freight** (San Francisco; Uber Technologies, NASDAQ: UBER; Freight segment FY2024 revenue ~$5.1B gross): Launched Broker Access (November 2024) giving brokers access to vetted carrier network. Primarily US/EU market; no documented SEA carrier network.
- **Convoy Platform** (originally Seattle; technology acquired by Flexport from Convoy in 2023; Flexport relaunched for brokers April 2024; DAT announced acquisition from Flexport July 2025): AI/ML-powered automated freight matching; ML models verify carriers and block malicious actors. Will integrate into DAT One post-acquisition. US-primary.
- **Flexport** (San Francisco; private, ~$8B valuation per last funding round): Retained freight-forwarding and ocean/air brokerage post-Convoy-platform sale; platform covers ocean and air bookings globally. SEA presence: offices in Singapore, Shanghai; SEA air/ocean freight forwarding but no domestic trucking matching in SEA markets.

**SEA note:** No purpose-built load board or DFM platform for domestic truck freight in Indonesia, Thailand, or Malaysia has scaled to DAT/Truckstop equivalence. The closest regional analogues are SEA-specific platforms documented under Archetype E.

---

#### Archetype E — SEA-Specific Freight Platforms

**What it does:** Digital freight matching and dispatch platforms built for the fragmented, informal SEA trucking market. Combines carrier network aggregation, digital load matching (replacing WhatsApp and phone), order management, and basic document handling. Some platforms add driver-level tracking. Risk features are nascent compared to North American equivalents: carrier verification is typically based on national vehicle registration databases (e.g., SAMSAT in Indonesia, JPJ in Malaysia) rather than a safety-scoring infrastructure equivalent to FMCSA.

**Primary user:** SME shippers, FMCG companies, e-commerce platforms in Indonesia, Thailand, Philippines; 3PLs sourcing domestic truck capacity.

**Business model:** Per-trip commission or subscription fee from shippers; some platforms charge carriers for premium placement. Deliveree: mix of spot booking fees and enterprise subscription. Waresix: freight forwarding margin plus warehousing rental.

**Notable platforms:**
- **Deliveree** (Bangkok, Thailand / Jakarta, Indonesia; $109M total funding; $30M equity round March 2024): On-demand and enterprise trucking platform with ~100,000 active vehicles across Indonesia, Philippines, Thailand; 25,000+ business customers. Covers FTL/LTL intra-city and long-haul. SEA presence: Yes — core markets are Indonesia, Thailand, Philippines. Risk features: driver and vehicle registration verification; real-time tracking. No equivalent to FMCSA-based carrier safety scoring.
- **Waresix** (Jakarta, Indonesia; $179M total funding, 16 investors): Indonesia-focused integrated logistics platform combining freight brokerage, warehousing, and freight forwarding; revenue tripled 2022, +28% 2023. Previously merged with/absorbed Trukita (acquired 2020). SEA presence: Indonesia-primary; some cross-border to Singapore and Malaysia.
- **Shipsy** (India; Indonesia regional HQ for SEA; $32.9M total funding; $27.1M revenue 2024): SaaS logistics management platform with strong SEA and Middle East footprint; 15,000 customers; covers order dispatch, carrier selection, tracking, and proof of delivery. SEA presence: Yes — Indonesia regional HQ; documented customers in Malaysia, Thailand, and Singapore.
- **Quincus** (Singapore; $15.75M+ Series B; 70M+ shipments/month claimed): AI-powered supply chain and transportation orchestration platform; customers in Singapore, Thailand, Malaysia, Indonesia, China, UAE. Seed funding from Navigate Ventures (April 2024). SEA presence: Yes — headquartered in Singapore; regional APAC focus. Risk features: route optimization and real-time tracking; no documented carrier fraud screening equivalent to US-market tools.
- **GoComet** (Singapore HQ; $10.3M total funding): Freight rate procurement, tracking, and invoice reconciliation; primarily ocean/air freight; 150+ customers across 35 countries including SEA. SEA presence: Yes — Singapore HQ; regional customers in India, Middle East, SEA.

**Active SEA platforms — correction applied:**
- **Kargo Technologies** (Indonesia; **active**): Closed Series B in **July 2024** led by AC Ventures (DealStreetAsia, Crunchbase); simultaneously acquired Malaysia's **TheLorry** in an all-stock deal — one of the largest SEA logistics platform M&A events of 2024. Self-describes as Indonesia's largest B2B trucking marketplace. **[Correction 2026-05-21: earlier draft erroneously labeled Kargo bankrupt 2023; Stage 2 validator confirmed the company is operational; the ~$48M Series A and "bankrupt 2023" claims were both unverified trade-press conflations.]**

**Defunct/distressed platforms (noted for completeness):**
- **Logivan** (Vietnam; shut down 2022): Vietnam digital trucking platform; capacity and funding limitations cited.

---

### Named Players by Region

**North America (US-primary):**

- **Oracle OTM** (Austin, TX; NYSE: ORCL; FY2024 cloud application revenue $5.4B for all cloud apps, not TMS-specific) — Enterprise TMS Leader; Gartner MQ Leader 17 consecutive years (17th recognition April 2024); global customer base; SEA presence via regional SI partners.
- **SAP TM** (Walldorf, Germany; NYSE: SAP; FY2024 cloud revenue €15B+ for all SAP cloud) — Enterprise TMS Leader; Gartner MQ Leader 10th consecutive year (2024); strong SAP S/4HANA bundle in SEA enterprise accounts; SAP SEA offices in Singapore, Malaysia, Indonesia, Thailand.
- **Blue Yonder TMS** (Scottsdale, AZ; wholly owned by Panasonic; ~$1.3B revenue) — Enterprise TMS; Gartner MQ Leader; 45M monthly shipments processed in 2024; acquired One Network (2024) to expand carrier connectivity. APAC offices; limited disclosed SEA TMS customers.
- **Manhattan Associates Active Transportation Management** (Atlanta, GA; NASDAQ: MANH; FY2024 total revenue $1.04B, cloud subscriptions $337.2M) — Enterprise TMS Leader; Gartner MQ Leader; strong in retail/CPG North America; APAC office in Melbourne; limited SEA TMS presence.
- **e2open TMS / WiseTech Global** (Austin, TX; e2open acquired by WiseTech Global, deal closed H2 2025 at $2.1B enterprise value) — e2open FY2024 subscription revenue $536.8M; post-acquisition, combined entity with CargoWise ($778.7M FY25 revenue, CargoWise +17% organic) will be largest supply chain software company globally by revenue covering TMS, freight forwarding, customs. Gartner MQ Leader (e2open 2nd consecutive year 2024). SEA presence: WiseTech/CargoWise strong in Singapore, Malaysia, Indonesia, Thailand via partner network; e2open TM module SEA penetration less documented.
- **Descartes Systems Group** (Waterloo, ON; NASDAQ: DSGX; FY2025 services revenue $520.9M) — Cloud TMS leader (ARC Advisory Group #1 cloud-based TMS 2024); acquired 3GTMS ($115M, March 2025) adding domestic TL/LTL for brokers/3PLs; acquired MyCarrierPortal ($24M, September 2024) for carrier vetting integration. Limited SEA-specific TMS deployment documented.
- **MercuryGate / Körber Supply Chain Software** (acquired by Körber + KKR, August 2024; price undisclosed): Mid-enterprise TMS; multimodal, strong for brokers. No disclosed SEA presence.
- **C.H. Robinson / Navisphere** (Eden Prairie, MN; NASDAQ: CHRW; FY2024 gross revenue ~$24.9B): Proprietary TMS + managed transportation; Navisphere processed $28B transactions for 130,000 customers with 160,000+ carrier network. SEA presence: C.H. Robinson operates freight forwarding in Singapore; Navisphere truck-broker module is North America-specific.
- **Loadsmart ShipperGuide TMS** (Chicago; $200M Series D, 2022 at $1.3B valuation; investors: SoftBank Latin America, BlackRock, CSX): Cloud TMS + freight brokerage; SONAR market-data integration for real-time rate benchmarking. US-primary. No disclosed SEA presence.
- **Emerge** (Scottsdale, AZ; $130M Series B, 2021): Freight procurement / dynamic RFP platform; contract and spot management; machine-learning benchmarking. US-primary. No disclosed SEA presence.
- **DAT Freight & Analytics** (Portland, OR; Roper Technologies, NASDAQ: ROP): Dominant North American load board (700,000 daily loads, >$1T freight analyzed in 2024); Carrier Management Suite launched October 2025; acquiring Convoy Platform from Flexport (July 2025). US-primary load board. No SEA presence.
- **Truckstop.com** (Pocatello, ID; ICONIQ Capital, ~$1B valuation 2019): North American load board; 80M+ annual loads; 250,000+ users; includes RMIS insurance monitoring. US-primary. No SEA presence.
- **J.B. Hunt 360** (Lowell, AR; NASDAQ: JBHT; FY2024 gross revenue $8B; 360 marketplace $1B+ annual run rate): Proprietary multimodal marketplace; 1M+ onboarded carriers. US-primary. No SEA trucking-specific presence.
- **Uber Freight** (San Francisco; Uber Technologies, NASDAQ: UBER; FY2024 Freight gross revenue ~$5.1B): Freight brokerage + Broker Access capacity-as-a-service launched November 2024. US-primary carrier network. No documented SEA road-freight presence.
- **JAGGAER** (Durham, NC; private): Enterprise spend management including transportation sourcing; 1,300+ customers; $2.9T spend managed; customers include Schneider, Kenco, DHL. APAC offices. Limited documented SEA freight-specific deployments.
- **Coupa** (San Mateo, CA; Thoma Bravo portfolio; $1B+ annual billings FY2024): Spend management with freight-sourcing module; $5T+ spend under management. APAC offices. Limited documented SEA freight sourcing deployments.

**Europe:**

- **Transporeon / Trimble Transportation** (Ulm, Germany; acquired by Trimble for ~$2.0B, April 2023; €190M revenue 2023): European carrier procurement network; 145,000 carriers; 1,400 shippers; €48B freight spend managed; 25M+ transports/year; integrates with 3,000+ ERP/WMS/TMS systems. Gartner MQ positioned. Limited documented SEA presence; Americas and Asia limited.
- **Alpega Group / TenderEasy** (Belgium / Stockholm; Castik Capital): European freight procurement and TMS (acquired TenderEasy 2017); 50,000+ carriers; 350,000 daily freight offers on exchange; 2024 Gartner Challenger. No documented SEA presence.

**SEA-Specific:**

- **Deliveree** (Thailand/Indonesia; $109M total funding, $30M March 2024): ~100,000 active vehicles; 25,000+ enterprise customers; Indonesia, Thailand, Philippines. SEA: Yes (core).
- **Waresix** (Indonesia; $179M total funding): Integrated freight + warehousing; Indonesia-primary. SEA: Yes (Indonesia).
- **Shipsy** (India / Indonesia regional HQ; $32.9M total funding; $27.1M revenue 2024): SaaS dispatch and TMS; 15,000 customers; SEA, Middle East. SEA: Yes.
- **Quincus** (Singapore; $15.75M+ Series B; >$100M valuation): AI logistics orchestration; 70M+ shipments/month claimed; Singapore, Thailand, Malaysia, Indonesia, China, UAE. SEA: Yes (Singapore HQ).
- **GoComet** (Singapore HQ; $10.3M total funding): Ocean/air freight procurement and tracking; 150+ customers in 35 countries. SEA: Yes (Singapore HQ).
- **CargoWise / WiseTech Global** (Sydney, ASX: WTC; FY25 revenue $778.7M): Dominant freight forwarder TMS globally; 33 of top 50 global 3PLs; 24 of 25 largest global forwarders; strong SEA via partner network (SCF Global Pte Ltd Singapore/Malaysia/Indonesia). SEA: Yes (strong forwarder coverage; road transport module coverage less documented).

**3PL-Built Platforms:**

- **Maersk Spot / myDHLi / DSV Connect**: Carrier-direct digital booking platforms for ocean and air freight; Maersk Spot offers fixed-price guaranteed loading, real-time quotes, online booking; myDHLi covers air, ocean, road, rail booking and tracking; both are available in SEA markets. Risk features: price transparency, booking confirmation. Carrier identity fraud at container-booking level is less acute than road freight (shipping line identity is unambiguous); risk at this layer is more about rate volatility and space availability.

---

### Preliminary Pain Points (this stage)

- **Contracted carrier rejection cascades drive unplanned spot-market costs.** When the SONAR Outbound Tender Rejection Index spikes above 7–8%, shippers exhaust their contracted carrier waterfall and must recover on the spot market, where rates can be 15–30% higher than contracted rates. In Q4 2025, tender rejection rates exceeded 13%, the highest since 2022; in early 2026 they hit 14%. A TMS with a contracted carrier network of 3–5 tiers cannot prevent this when capacity exits the market; shippers with automated spot-recovery integrations (SONAR-integrated TMS, DAT One API) can minimize time-to-recovery, but recovery cost is structurally unavoidable. (Source: FreightWaves SONAR Tender Rejection Index data, 2025–2026.)

- **Spot-market procurement is the primary fraud exposure point at the dispatch stage.** When a broker posts a load on a spot board and a carrier they have not previously vetted responds, the carrier identity check is compressed or skipped under time pressure. Highway's Q1 2025 data documented 352,000+ fraudulent inbound emails to brokers, 30,900 spoofed calls, and 400,000 total fraud attempts in a single quarter; the Convoy Platform (now being acquired by DAT) uses ML models specifically designed to block malicious actors from the matching layer. But on open load boards (DAT One, Truckstop), a fraudulent carrier can respond to a load posting with stolen credentials faster than a human dispatcher can verify. The risk is specifically concentrated at the spot-procurement step, not the contracted-carrier waterfall.

- **Contract-to-spot rate gap creates a price-volatility risk that mid-market shippers cannot hedge systematically.** The gap between contracted TL rates and spot rates narrowed to ~$0.11/mile by March 2026 (from $0.39/mile a year prior), creating margin fragility for brokers: a single spot recovery on a rejected lane can eliminate the contribution margin on an entire day's contracted volume. Enterprise shippers with SONAR integration can benchmark in real time; mid-market shippers on basic TMS (or no TMS) have no systematic signal about when their contracted carrier network is at risk of mass rejection. Solution tools (Loadsmart ShipperGuide + SONAR, project44 Freight Procurement Analytics + SONAR) address this but are concentrated at the enterprise tier.

- **SEA freight procurement has no rate benchmarking infrastructure.** Shippers in Indonesia, Thailand, and Malaysia negotiating rates with trucking companies have no equivalent to DAT's $1T+ freight transaction database, SONAR's tender rejection indices, or Transporeon's €48B network for benchmarking contracted rates against the market. Rate negotiation is bilateral, informal, and based on relationship history rather than market data. A shipper over-paying 20–30% for a lane has no external reference to detect it. [ASSUMED-4]

- **Digital freight platforms in SEA operate without a carrier safety-score infrastructure, creating counterparty risk at every dispatch.** Deliveree, Waresix, Quincus, and Shipsy perform carrier registration checks against national vehicle databases (SAMSAT Indonesia, JPJ Malaysia, DLT Thailand) but none have access to a multi-source safety score equivalent to FMCSA SMS BASIC percentile scores. A carrier with a history of accidents, cargo theft, or insurance lapses is effectively invisible to a platform performing only registration-database checks. This is the same SEA structural gap documented in Stage 1, manifesting specifically at the dispatch/tendering moment. [ASSUMED-5]

---

### Sources for This Stage

(1) MarketsandMarkets, "Transportation Management System Market worth $40.3 billion by 2029," press release July 2024, https://www.prnewswire.com/news-releases/transportation-management-system-market-worth-40-3-billion-by-2029---exclusive-report-by-marketsandmarkets-302180048.html — commercial market research firm; medium confidence for $16.0B 2024 figure (consistent with bottom-up check); lower confidence for $40.3B 2029 projection.

(2) Precedence Research, "Transportation Management Systems Market Size to Hit USD 47.97 Bn by 2035," https://www.precedenceresearch.com/transportation-management-systems-market — commercial market research firm; $16.69B 2024 cited for cross-reference. Low confidence as sole source.

(3) Straits Research, "Transportation Management Systems Market," https://straitsresearch.com/report/transportation-management-systems-market — commercial market research firm; $9.77B 2024 cited as lower-end cross-reference. Low confidence as sole source. Range $9.8B–$16.7B used as confidence band.

(4) Grand View Research, "Digital Freight Matching Market," https://www.grandviewresearch.com/industry-analysis/digital-freight-matching-market-report — commercial market research; $27.7B+ 2023 DFM estimate. Low confidence; scope definition includes brokerage revenue.

(5) Global Market Insights, "Digital Freight Matching Market," https://www.gminsights.com/industry-analysis/digital-freight-matching-market — commercial market research; $47.2B 2024 estimate. Low confidence; wide divergence from (4) reflects scope inconsistency.

(6) Dataintelo, "Freight Procurement Software Market Research Report 2033," https://dataintelo.com/report/freight-procurement-software-market — commercial market research; $1.2B 2024 estimate. Low confidence; no disclosed methodology.

(7) Growth Market Reports, "Freight Procurement Software Market Research Report 2033," https://growthmarketreports.com/report/freight-procurement-software-market — commercial market research; $1.72B 2024 estimate. Low confidence; consistent with (6) order of magnitude.

(8) Marketintelo, "Freight Procurement Software Market Research Report 2033," https://marketintelo.com/report/freight-procurement-software-market — commercial; $1.97B 2024 estimate. Low confidence. Three commercial sources converge on $1.2B–$2.0B range for software-only segment.

(9) WiseTech Global, FY2025 ASX Results Release, https://www.wisetechglobal.com/media/2t1eeuxx/wtc-fy25-appendix-4e-and-financial-report.pdf — audited ASX filing; FY25 revenue $778.7M, CargoWise organic +17%. High confidence.

(10) E2open, "Fiscal 2024 Fourth Quarter and Full Year Financial Results," https://investors.e2open.com/news/news-details/2024/E2open-Announces-Fiscal-2024-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx — audited public company IR; FY2024 subscription revenue $536.8M, total $634.6M. High confidence.

(11) Manhattan Associates, FY2024 Annual Report / Form 10-K (referenced via SEC filing and LogisticsIT report), https://www.logisticsit.com/articles/2024/10/31/manhattan-associates-reports-record-revenue-and-earnings — audited; FY2024 total revenue $1,042.4M; cloud subscriptions $337.2M; maintenance $138.3M. High confidence.

(12) Descartes Systems Group, FY2025 Q4 Financial Results, https://www.descartes.com/resources/news/descartes-announces-fiscal-2024-fourth-quarter-and-year-end-financial-results — audited public company IR; FY2025 services revenue $520.9M (multi-segment). High confidence.

(13) Oracle, "Oracle Named a Leader in 2024 Gartner Magic Quadrant for Transportation Management Systems for 17th Time," https://www.oracle.com/news/announcement/oracle-named-a-leader-in-gartner-mq-transportation-management-systems-2024-04-10/ — vendor press release; Gartner MQ position cited. Medium confidence (vendor self-reported recognition; Gartner MQ methodology is independent).

(14) SAP, "SAP Named a Leader in the 2024 Gartner Magic Quadrant for Transportation Management Systems," https://news.sap.com/2024/04/sap-named-a-leader-2024-gartner-magic-quadrant-transportation-management-systems/ — vendor press release; Gartner MQ Leader 10th consecutive year. Medium confidence.

(15) Trimble / Transporeon, "Trimble Completes Transporeon Acquisition," https://www.transporeon.com/en/company/press/trimble-completes-transporeon-acquisition — company press release; €1.88B acquisition price, 145,000 carriers, 1,400 shippers, €190M 2023 revenue, 25M+ transports/year. Medium confidence (company-reported metrics; acquisition price confirmed by FreightWaves at https://www.freightwaves.com/news/trimble-finalizes-transporeon-acquisition).

(16) Emerge, "Emerge Raises $130M Series B," GlobeNewswire, September 2021, https://www.globenewswire.com/news-release/2021/09/23/2302164/0/en/Emerge-Raises-130-Million-from-9Yards-Capital-Tiger-Global-Management-and-The-Spruce-House-Partnership-to-Transform-Digital-Freight-Procurement.html — company press release; $130M Series B, investors named, total funding >$150M cited. Medium confidence.

(17) Descartes, "Descartes Acquires 3GTMS," GlobeNewswire, March 2025, https://www.globenewswire.com/news-release/2025/03/25/3048585/0/en/Descartes-Acquires-3GTMS.html — company press release; $115M acquisition price, platform description. Medium confidence (company-reported; acquisition price confirmed by FreightWaves).

(18) Körber / KKR, "Körber and KKR announce the strategic acquisition of MercuryGate," press release August 2024, https://www.koerber.com/en/press/koerber-and-kkr-announce-the-strategic-acquisition-of-mercurygate-to-strengthen-its-supply-chain-software-business — company press release; acquisition strategic rationale, ~25% revenue addition to Körber SC Software. Medium confidence.

(19) WiseTech Global, "WiseTech Global announces strategic acquisition of e2open," https://www.wisetechglobal.com/news/wisetech-global-announces-strategic-acquisition-of-e2open/ — company press release; $2.1B enterprise value, $3.30/share, May 2025 announcement. High confidence (audited public company, confirmed via SEC 8-K and multiple sources).

(20) Loadsmart, "Loadsmart lands $200 million backing for freight technology platform," DC Velocity, 2022, https://www.dcvelocity.com/articles/53727-loadsmart-lands-200-million-backing-for-freight-technology-platform — trade press; $200M Series D at $1.3B valuation, SoftBank LA Fund, BlackRock, CSX. Medium confidence.

(21) Deliveree, "$30M equity round March 2024," https://www.deliveree.com/id/en/press-release/deliveree-series-c-logistics-technology-investment-sea/ — company press release; $109M total funding, ~100,000 vehicles, 25,000+ business customers. Medium confidence (company-reported metrics).

(22) Shipsy, "Shipsy Raises USD 25 Million in Series B," PR Newswire, 2022, https://www.prnewswire.com/in/news-releases/shipsy-raises-usd-25-million-in-series-b-to-accelerate-global-expansion-and-product-innovation-807802002.html — company press release; $32.9M total funding. Revenue ($27.1M 2024) cited from Getlatka.com (https://getlatka.com/companies/shipsy#funding) — Low confidence for revenue figure; treat as directional. SEA presence (Indonesia regional HQ) confirmed via company press release. Medium confidence overall.

(23) Quincus, Series B and Navigate Ventures funding, via AsiatechDaily, https://asiatechdaily.com/quincus-bags-funding-from-aei-horizonx/ — trade press; $15.75M+ Series B, >$100M valuation, 70M+ shipments/month claimed. Low-Medium confidence (company-claimed metrics).

(24) GoComet, "GoComet raises $7 Million Series A funding," PR Newswire India, 2022, https://www.prnewswire.com/in/news-releases/gocomet-raises-7-million-series-a-funding-872253680.html; Singapore redomicile confirmed via TechNode Global https://technode.global/2022/02/10/singaporean-logistics-firm-gocomet-raises-7m-series-a-funding-led-by-rider-global-and-atlas-ventures/ — company press release. Medium confidence on funding; 150+ customers in 35 countries is company-reported. Medium confidence overall.

(25) Waresix funding and revenue, DealStreetAsia, https://www.dealstreetasia.com/stories/waresix-earnings-2022-392140 — trade press; $179M total funding; revenue tripled 2022, +28% 2023. Medium confidence.

(26) Uber Technologies, FY2024 Full Year Earnings, https://investor.uber.com/news-events/news/press-release-details/2025/Uber-Announces-Results-for-Fourth-Quarter-and-Full-Year-2024/default.aspx — audited public company earnings release; Freight segment FY2024 revenue $5.1B (gross freight value, not platform fee net revenue). High confidence. Broker Access program description cited from same release.

(27) DAT Freight & Analytics, "DAT to acquire the Convoy Platform from Flexport," Business Wire, July 2025, https://www.businesswire.com/news/home/20250728801115/en/DAT-to-Acquire-the-Convoy-Platform-from-Flexport — company press release; 700,000 daily loads on DAT One; Convoy ML fraud-screening described. Medium confidence (company-reported).

(28) J.B. Hunt Transport Services, Q4 2024 Investor Release / 10-K (referenced via LogisticsNavigators.com and JBHunt.com), https://investor.jbhunt.com/~/media/Files/J/jb-hunt-ir/financial-reports/financial-statement/2024/Q4.pdf — audited public company filing; FY2024 gross revenue $8B; 360 marketplace $1B+ annual run rate; 1M+ carriers onboarded. High confidence.

(29) C.H. Robinson 2024 Annual Report, https://s21.q4cdn.com/950981335/files/doc_financials/2024/ar/CHRW-2024-Annual-Report-10-K.pdf — audited 10-K; FY2024 gross revenue $24.9B; Navisphere $28B transactions, 130,000 customers, 160,000+ carriers. High confidence.

(30) FreightWaves SONAR, Outbound Tender Rejection Index data (2025–2026), cited via GoSonar.com https://gosonar.com/features/outbound-tender-rejection-index and FreightWaves articles including https://www.freightwaves.com/news/how-tender-rejections-predict-your-next-rate — industry data; tender rejection 13%+ Q4 2025, 14% early 2026. Medium-High confidence (SONAR is a primary data product, not a survey estimate).

(31) ARK TMS / Freight Market Outlook 2026, "Spot Rates Catching Up to Contract Rates," https://arktms.com/blog/spot-rates-catching-up-contract-rates-freight-brokers-2026 — industry blog citing DAT and US Bank rate data; $0.11/mile contract-to-spot gap March 2026. Medium confidence (secondary source citing DAT primary data).

(32) FreightWaves, "Highway blocks 352,000 fraudulent emails in Q1 2025," cited via HugoHunter fraud report compilation https://hugohunter.com/blog/overcome-the-rising-freight-fraud-in-2025/ and Highway Q2 2025 Freight Fraud Index https://highway.com/press-releases/highway-releases-q2-2025-freight-fraud-index-identity-based-fraud-attempts-escalate-with-495k-blocked-emails-and-42k-fraudulent-calls — vendor-generated data; Low-Medium confidence for the specific numbers; directional validity is corroborated by FMCSA enforcement data.

(33) Coupa, "Coupa Delivers over $1 Billion in Billings," PR Newswire, February 2024, https://www.prnewswire.com/news-releases/coupa-delivers-over-1-billion-in-billings-unlocks-175-billion-in-bottom-line-impact-for-global-customers-302063501.html — company press release; $1B+ billings FY2024, $5T+ spend managed. Medium confidence.

(34) JAGGAER, "JAGGAER Powers Schneider Logistics' Bidding Efficiency," https://www.jaggaer.com/press-release/schneider-logistics-transportation-bidding-model — vendor case study; 30% savings cited; customer reference documented. Low-Medium confidence (vendor-produced case study).

(35) Alpega, 2024 Gartner Magic Quadrant Challenger recognition, referenced via Alpega group website https://www.alpegagroup.com/en-en/transport-solutions/categories/freight-procurement/ — vendor press release citing Gartner. Medium confidence.

(36) WiseTech Global FY25 results, "FY25 revenue $778.7M, EBITDA $409.5M," stattimes.com and WiseTech ASX announcement, https://www.stattimes.com/air-cargo/wisetech-fy2024-revenue-up-28-on-cargowise-growth-1353000 — trade press citing ASX announcement; consistent with audited filing in (9). High confidence.

---

### Assumptions to Validate

[ASSUMED-1]: Blue Yonder TMS has limited documented Southeast Asian shippers/3PLs as direct TMS customers (as opposed to Panasonic manufacturing entity internal use). — to validate: Ask a logistics technology analyst covering APAC (e.g., Gartner APAC team, IDC APAC) whether Blue Yonder TMS has disclosed any customer wins in Indonesia, Thailand, or Malaysia in the 2023–2025 period.

[ASSUMED-2]: WiseTech's acquisition of e2open integrates the e2open TM module meaningfully into CargoWise's SEA freight-forwarder customer base, rather than operating them as separate platforms with separate customer sets. — to validate: Ask a CargoWise implementation partner in Singapore or Malaysia whether e2open's TM module is being offered as part of CargoWise engagements post-acquisition.

[ASSUMED-3]: Coupa's freight-sourcing module (FTL bidding, ocean freight) is deployed in fewer than 10 SEA enterprise accounts, with the bulk of Coupa's SEA revenue coming from indirect spend management rather than freight transportation sourcing. — to validate: Ask a Coupa regional account executive or a logistics consultant who works with Coupa deployments in the region whether any ASEAN shipper uses Coupa for freight-lane procurement.

[ASSUMED-4]: Shippers in Indonesia, Thailand, and Malaysia conducting annual freight rate negotiations with domestic trucking companies have no access to a market-rate benchmark equivalent to DAT's or SONAR's rate data, and therefore negotiate blind relative to market price. — to validate: Interview five supply chain managers at FMCG or manufacturing companies in Indonesia/Thailand about what data sources they use when negotiating annual contract rates with road freight carriers, and whether any digital benchmark exists.

[ASSUMED-5]: Deliveree, Waresix, Quincus, and Shipsy perform carrier verification using national vehicle registration databases (SAMSAT, JPJ, DLT) but do not have access to multi-source safety scoring data or insurance verification equivalent to FMCSA SMS BASIC scores. — to validate: Ask Deliveree and Waresix operations leads what carrier verification data points they collect at onboarding and whether their carrier safety score includes anything beyond registration status and trip history on their own platform.

[ASSUMED-6]: The total addressable market for TMS software (software-only, not brokerage revenue) worldwide is $10B–$16B in 2024, with audited-ARR bottom-up from four named vendors ($2.3B+) implying a plausible total of $10B–$16B when Oracle, SAP, Blue Yonder, and 100+ smaller vendors are added. The commercial market research range ($9.8B–$16.7B) is directionally consistent with this figure. — to validate: Obtain ARC Advisory Group's TMS global market report (2024–2029) to confirm independent third-party segmentation consistent with bottom-up ARR triangulation.

