# Stage 3 — In-transit: Visibility & Monitoring
## Pain Points Draft — Run 2026-05-23-0152

**Stage scope:** The in-transit leg — from the moment a loaded vehicle departs origin until it delivers or transfers at a handoff point. Actors bearing these pains: shippers (cargo owners), 3PLs coordinating multi-carrier moves, small-to-mid road carriers, and the insurers underwriting the shipment. Primary geography focus: worldwide with SEA (Indonesia, Vietnam, Thailand, Malaysia) color commentary throughout.

> **Refinements applied (post-validation):**
> - PP3.1 anchor figure ($65-95B blind handoffs): refined to verbatim McKinsey (Jan 2024) — US-only scope added; B2B $45-66B + B2C dwell-time $18-28B; "blind handoffs" verified as article's central organizing term (source 1 retained, scope qualifier added). Score upgraded Low → High.
> - PP3.1, PP3.3, PP3.4 SEA telematics penetration (15.7% → 25.7%): citation upgraded from "ResearchAndMarkets aggregator via GlobeNewswire" to Berg Insight primary research — 1st Ed Oct 2024 (15.7% 2023 → 25.7% 2028) + 2nd Ed Feb 2026 (17.5% 2024 → 27.1% 2029); confirmed Tier 3 specialist analyst, not Tier 6 aggregator.
> - Confirmed structural data gap: no SEA government statistical floor for this metric in BPS Indonesia / DOSM Malaysia / NSO Thailand / GSO Vietnam.

---

## Stage 3: In-transit — Visibility & Monitoring

### Pain point 3.1

**Description:** Shippers and 3PLs lose real-time position data on a material share of shipments the moment a primary carrier subcontracts to a small or informal road hauler that is not integrated into any real-time transportation visibility platform (RTTVP), generating a "dead zone" that persists for hours or days and cannot be resolved by the shipper without manual phone-call intervention.

**Who bears it:** Shippers (cargo owners), 3PLs, and their cargo insurers — particularly those moving goods through emerging-market road networks in SEA, Latin America, and parts of Eastern Europe where informal sub-carrier use is highest.

**Link to working hypothesis:** WH2 — evidenced (see root causes and citations below).

**Severity:** High. Affects the majority of non-enterprise shipments in SEA and a significant minority even in North American lane networks; directly enables cargo theft and delays claims resolution.

**Estimated cost:**
- **McKinsey (Jan 5 2024; primary Tier-1 consultancy; verified via Scribd mirror of paywalled McKinsey.com original)** estimates $65–95 billion in annual waste generated at interaction points between shippers, dispatchers, 3PLs, and carriers in the **US mid- and last-mile logistics sector** — waste that occurs at what the authors term "blind handoffs," where two or more parties exchange custody of goods without real-time visibility. Verbatim: "Within this value pool, between $65 billion and $95 billion of waste is generated at interaction points between shippers, dispatchers, third-party logistics companies (3PLs), and carriers at the time of delivery." Equates to 13–19% of US logistics costs. Breakdown: B2B share $45-66B/yr; B2C dwell-time $18-28B/yr. **US-only scope** (added per post-validation refinement; original claim omitted the US-only qualifier). Score: High. (1)
- Tive's State of Visibility 2024 survey (n=244 global professionals) found 47% of respondents reported monthly cargo losses of $5,000 or more attributable to insufficient real-time visibility; 45% have visibility into fewer than 50% of their total shipments. (2)
- CargoNet (Verisk) reported $454.9 million in estimated US and Canada cargo theft losses in 2024 — a 27% year-on-year increase — with the FBI noting true industry losses could reach $1 billion annually because many thefts go unreported. GPS jammers were increasingly used in these thefts to create deliberate visibility black-outs. (3)
- Strategic cargo theft (which depends on a visibility gap to execute fictitious pickups and double-brokering) rose 1,475% between 2022 and 2024 even as overall theft rose 93%; double-brokering scams alone generate an estimated $500–700 million in freight loss annually. (4)

**Willingness to pay:**

**Frequency:**
- Tive State of Visibility 2024: only 24% of respondents have visibility into 75–100% of their total shipments; 45% have visibility into fewer than 50%. (2)
- NTT DATA 28th Annual 3PL Study (2024): 57% of shippers cited data quality as a top concern, against only 32% of 3PLs — a 25-point gap that reflects the shipper's experience of receiving degraded or absent data once cargo enters a sub-carrier's hands. (5)
- FedEx Future of Logistics Intelligence Report (2024): while 97% of respondents said they track shipments end-to-end, only 18% can always intervene during a disruption; just 22% have access to all the logistics data they need. Two-thirds juggle three or more platforms to manage shipments. (6)
- Gartner 2024 Magic Quadrant for RTTVPs: assessed seven vendors including project44, FourKites, Shippeo, Overhaul, Blume Global, IntelliTrans, and Trucker Tools — "not all RTTVP vendors are able to support complex transportation networks," particularly in multi-geography and multi-subcontractor deployments. (7)
- SEA-specific: fleet telematics penetration in Southeast Asia per **Berg Insight (specialist Tier 3 telematics analyst)**: 1st Edition (Oct 2024) reported 15.7% penetration in 2023 → 25.7% by 2028 (CAGR 13.7%; 2.8M installed base 2023); 2nd Edition (Feb 2026) updates baseline to 17.5% in 2024 → 27.1% by 2029 (CAGR 12.3%; 4.0M installed base 2025). Covers Indonesia, Malaysia, Singapore, Thailand, Philippines, Vietnam. Methodology: industry interviews + proprietary commercial vehicle population data. Frost & Sullivan Thailand-only data (~19% heavy commercial vehicle penetration in 2022) provides directionally consistent independent cross-check. **No SEA government statistical floor exists for this metric** — structural data gap confirmed by absence of indicator in BPS Indonesia / DOSM Malaysia / NSO Thailand / GSO Vietnam statistics. Original "ResearchAndMarkets aggregator via GlobeNewswire" citation **(superseded)** — that was the press-release distribution channel, not the underlying research firm. Owner-operators, who account for over 70% of commercial vehicles in Indonesia and the Philippines, have the lowest adoption rates. (8)(58)(59)
- In Vietnam, 84% of total fleet capacity sits with firms operating fewer than ten trucks — precisely the segment least likely to be integrated with any RTTVP. (9)

**Evidenced or assumed:**
(1) https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste
(2) https://www.globenewswire.com/news-release/2024/02/27/2836177/0/en/The-State-of-Visibility-2024-Real-Time-Shipment-Visibility-Emerges-as-a-Key-Component-of-Digital-Transformation-Sustainability.html
(3) https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/
(4) https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(5) https://us.nttdata.com/en/engage/2024-third-party-logistics-study
(6) https://www.fedex.com/en-us/digital/blog/logistics-data-gap-ai.html
(7) https://www.freightwaves.com/news/freighttech-friday-gartner-critiques-real-time-visibility-market-players
(8) https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html — **GlobeNewswire was the press-release distribution channel for Berg Insight 1st Ed; underlying primary research is at (58) below. Retained for index continuity; superseded as primary citation.**
(9) https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market
(10) https://www.trinetix.com/insights/real-time-freight-visibility
(58) **Berg Insight, "Fleet Management in Southeast Asia, 1st Edition" (Oct 2024; Tier 3 specialist analyst, primary research)**: Installed base 2.8M units in 2023; penetration 15.7% (2023) → 25.7% (2028); CAGR 13.7%. Public brochure/executive summary (full report paywalled). https://media.berginsight.com/2024/10/25195648/bi-fmsoutheastasia1-ps.pdf
(59) **Berg Insight, "Fleet Management in Southeast Asia, 2nd Edition" (Feb 25 2026; Tier 3 specialist analyst, primary research)**: Installed base 4.0M units in 2025 (3.6M in 2024); penetration 17.5% (2024) → 27.1% (2029); CAGR 12.3%. Named analyst: William Ankréus, IoT Analyst, Berg Insight. Covers Indonesia, Malaysia, Singapore, Thailand, Philippines + Vietnam (added in 2nd ed). https://media.berginsight.com/2026/02/25150242/bi-fmsoutheastasia2-ps.pdf
(11) https://www.inboundlogistics.com/whitepapers/key-considerations-to-improve-data-quality-in-real-time-transportation-visibility-platforms/
(12) https://www.over-haul.com/gartner-magic-quadrant-2024/

**Root Causes**

- **RC1: RTTVP carrier networks are built around integrated enterprise carriers, not the informal tail.** The commercial incentive for RTTVPs is to sign large carriers that generate recurring platform revenue and cover thousands of shipper shipments per month. Small and micro-carriers (fewer than five trucks) produce low transaction volume per integration cost; the payback period for a formal API or ELD integration is prohibitive for both the RTTVP and the carrier. Project44 lists 1,400+ telematics integrations and connections to 240,000 carriers; FourKites tracks over 500,000 carriers via its mobile app — but the long tail of informal haulers in SEA and other emerging markets remains structurally outside these networks because they lack ELDs, smartphones with reliable data, or any TMS integration point. This is not an oversight; it is a deliberate market boundary imposed by economics. (7, 10)

- **RC2: Subcontracting contracts in road freight do not require visibility data flow as a delivery condition.** When a 3PL subcontracts a load to a small hauler, the contractual obligation is typically delivery within a time window, not continuous position reporting. No standard freight subcontract in SEA or the US mandates that the sub-carrier publish position data to the 3PL's RTTVP or the shipper's control tower. Without a contractual obligation, there is no enforcement lever, and the small carrier has no incentive to absorb the cost of onboarding to a platform. The result is a structural information asymmetry: the 3PL has location data on its own vehicles but not on the sub-carrier, and the shipper has even less. (1, 5)

- **RC3: GPS jammers provide a cheap and easily accessible tool to extend the dead zone for criminal purposes.** GPS jamming devices are widely available in Asia (and online globally), cheap (sub-$50 for rudimentary units), and effective against standard tracker frequencies. TT Club and BSI's 2024 Cargo Theft Report explicitly documents that criminals in South America "employ GPS jammers to block location tracking," and the same tactic appears in US FBI bulletins and in Southeast Asia (200+ jamming incidents near the South China Sea in 2023). When a shipment enters a visibility dead zone due to subcontractor non-integration, it becomes indistinguishable — to the shipper — from a jammed shipment. The inability to distinguish intentional interference from routine data gap is itself a risk amplifier. (12-from-TT-Club report, 3, 4)
  — [ASSUMED-1]: To validate: what share of cargo theft incidents in Indonesia, Vietnam, and Thailand involve GPS jamming versus simple non-integration? Ask Overhaul, BSI, or TT Club's SEA-specific analysts.

- **RC4: Fragmented platform architecture means a shipment can traverse three or four visibility "silos" in a single journey.** In a typical SEA cross-border move, the origin 3PL uses one TMS/RTTVP, the border agent uses paper or a customs platform, the domestic destination carrier uses a local telematics system or nothing, and the receiver uses a WMS. None of these exchange position data in real time. McKinsey (2024) documents that two-thirds of organizations use three or more platforms to manage shipments; Gartner confirms that data standardization across these platforms remains an unsolved problem in the RTTVP market. The architectural fragmentation is sustained because each platform vendor has a commercial incentive to retain data within its own ecosystem. (6, 7, 11)

- **RC5: Regulatory mandates for ELD/fleet tracking in SEA are nascent and unevenly enforced.** The US Federal Motor Carrier Safety Administration mandated ELDs for most commercial carriers by December 2019, providing a baseline data point even for small US carriers. No equivalent mandate has been implemented at scale in Indonesia, Vietnam, or Thailand as of 2024; Indonesian government updates in 2023 require telematics adoption "progressively" but enforcement remains limited and focused on large operators. Without a regulatory floor, market pressure from large 3PLs is the only mechanism for driving telematics adoption down to owner-operator level — and that pressure attenuates at every subcontracting tier. (8, 9)
  — [ASSUMED-2]: To validate: exact current status of Indonesia's 2023 fleet telematics regulation — which vehicle classes, timelines, and enforcement agency? Interview Kemenhub (Ministry of Transportation) contacts or local fleet management vendors (TransTRACK, Jimi IoT).

---

### Pain point 3.2

**Description:** When a cargo IoT sensor (GPS tracker, temperature logger, shock sensor) is deployed on a shipment, it is almost always owned and operated by a single party — the shipper, the 3PL, or the insurer — and its data stream is visible only inside that party's platform, so the other parties in the same shipment cannot access the signal, cannot trigger automated alerts, and cannot use it for claims or insurance pricing without manual data extraction.

**Who bears it:** Shippers who paid for sensor deployment, cargo insurers who underwrite the risk without access to the sensor feed, 3PLs that need multi-party condition data to defend against claims, and downstream consignees in temperature-sensitive supply chains.

**Link to working hypothesis:** WH3 — evidenced (see root causes and citations below).

**Severity:** High for temperature-sensitive cargo (pharma, food, chemicals); medium for ambient cargo.

**Estimated cost:**
- The pharmaceutical industry loses approximately $35 billion annually due to temperature-controlled logistics failures (IQVIA Institute for Human Data Science, cited in multiple industry sources including Veratrak). A significant portion of this loss is attributable to excursions that occurred in custody transitions where the receiving party had no live visibility into the sensor data held by the prior custodian. (13)
- Temperature excursions have caused a 17% increase in food cargo insurance premiums (WTW, 2024). (14)
- In the ASEAN region, the absence of continuous cross-custodian temperature monitoring is structurally embedded: Indonesia has only 30 pallets of cold storage per 10,000 people (vs. China's 913), and DHL's January 2024 launch of AI-powered cold chain monitoring across ASEAN explicitly targets the monitoring gap in multi-handoff chains. (15)
- The DCSA (Digital Container Shipping Association) has published an IoT standard for container shipping, acknowledging that the absence of a shared data standard is the primary barrier to cross-party sensor access — but adoption remains voluntary and limited to container shipping, not road freight. (16)
- Tive's State of Visibility 2024 survey: IoT device adoption for tracking more than doubled (25% to 53%) — but the data is held inside the adopting party's system; there is no standardized cross-party share protocol for cargo sensor streams in road freight. (2)

**Willingness to pay:**

**Frequency:**
- 80% of respondents in Tive's State of Visibility 2024 survey cited loss prevention and cross-border shipping challenges as the main driver for real-time visibility need — implying that sensor data locked in a single party's silo directly blocks the loss-prevention use case. (2)
- A typical air pharma shipment passes through five or more custody transitions (shipper warehouse → origin ground handler → airline → destination ground handler → receiver), each of which transfers temperature control responsibility without transferring the sensor data stream. (17)
- In ASEAN cold chain: cold storage density disparities (30 vs 913 pallets/10,000 people for Indonesia vs China) compound with temperature monitoring gaps; archipelagic Indonesia sees per-unit cold chain costs elevated up to 40% from infrastructure constraints, which discourages deployment of additional sensors beyond the minimum single-party deployment. (15)

**Evidenced or assumed:**
(2) https://www.globenewswire.com/news-release/2024/02/27/2836177/0/en/The-State-of-Visibility-2024-Real-Time-Shipment-Visibility-Emerges-as-a-Key-Component-of-Digital-Transformation-Sustainability.html
(13) https://veratrak.com/resources/pharma-cold-chain-disruption-challenge
(14) https://www.wtwco.com/en-hk/insights/2024/11/how-to-reduce-transit-risks-in-food-beverage-and-agriculture
(15) https://blog.cfglobal.co/cold-chain-logistics-growth-in-emerging-economies-what-to-watch/
(16) https://dcsa.org/standards/internet-of-things
(17) https://eupry.com/temperature-monitoring/air-cargo-monitoring/
(18) https://www.iata.org/contentassets/4766cd298753402eabefb8d58f65ec18/sop_iot_data_sharing.pdf
(19) https://www.duke-nus.edu.sg/sdghi/learn-with-us/cold-chain-facilities-in-southeast-asia-challenges-and-opportunities
(20) https://www.mordorintelligence.com/industry-reports/indonesia-cold-chain-logistics-market
(21) https://www.mokosmart.com/iot-in-cold-chain-management-why-do-you-need-it/
(22) https://www.tive.com/blog/the-key-highlights-of-gartners-market-guide-for-real-time-transportation-visibility-platforms

**Root Causes**

- **RC1: No contractual or technical standard governs cross-party cargo sensor data sharing in road freight.** The IATA has published standard operating procedures for IoT device handling and data sharing for air cargo; the DCSA has published a container IoT standard. Neither covers road freight. In the absence of a standard, each sensor vendor (Tive, Sensitech, Roambee, Controlant) holds the data in its own cloud, accessible only to the purchasing party. When shipper and insurer use different sensor vendors, neither can access the other's stream. The result is that custody-level accountability for temperature excursions cannot be automatically determined; it defaults to manual dispute resolution — which is slower, costlier, and more adversarial. The missing standard is not a technical limitation; it is a market coordination failure that no single party has the leverage to unilaterally resolve. (16, 18)

- **RC2: Sensor deployment economics incentivize single-party deployment rather than multi-party shared infrastructure.** A shipper that deploys Tive sensors on its shipments absorbs the full hardware and connectivity cost; if the 3PL or insurer receives the data, the shipper captures no additional revenue from that share. Similarly, an insurer that mandates sensor use as a policy condition must absorb the cost of the mandate if it wants adoption. Without a business model that compensates the deploying party for the value its sensor data provides to other supply chain actors, multi-party deployment remains economically irrational for the first mover. This is a classic public-goods problem: the data has high social value within the supply chain but the commercial incentive to produce it is limited to the party that directly benefits. (2, 22)
  — [ASSUMED-3]: To validate: do any cargo insurance programs in SEA explicitly rebate premiums to shippers that share sensor telemetry with the insurer? Ask Parsyl, Loadsure, or TT Club's underwriting teams.

- **RC3: Data ownership ambiguity in multi-party IoT creates legal risk that discourages voluntary sharing.** In most freight contracts, "the fleet owner owns the data derived from their telematics system." When a shipper's sensor travels through a carrier's truck, it is unclear whether the carrier has any rights to the sensor data (e.g., evidence of rough driving that could be used in a claim against the carrier). This ambiguity creates a rational incentive for each party to withhold data from others — not to conceal wrongdoing, but to avoid inadvertently producing evidence against itself. Without a neutral escrow or regulatory framework that clarifies ownership and limits liability for data disclosure, voluntary sharing is structurally constrained. (18, note from network-world IoT ownership article)

- **RC4: Cold chain infrastructure deficits in SEA structurally limit the continuity of temperature monitoring between custody transfers.** Even where a sensor is deployed by the shipper, the receiving cold-store in Indonesia or Vietnam may lack the cloud connectivity, power stability, or trained personnel to maintain sensor handoff protocols. Indonesia's cold storage density (30 pallets per 10,000 people) reflects acute infrastructure underinvestment; grid unreliability adds 15–20% diesel generator costs for operators. When the receiving facility loses power or connectivity, the sensor data stream breaks regardless of the shipper's investment in the device itself. The monitoring gap is thus partially a sensor-deployment problem and partially an infrastructure-floor problem that no single actor can solve. (15, 19, 20)

---

### Pain point 3.3

**Description:** In-transit cargo monitoring in Southeast Asia is structurally limited by the low telematics penetration among owner-operators and micro-fleets that carry the majority of road freight, meaning that even shippers who pay for RTTVP subscriptions cannot get position or condition data for the majority of loads they move through domestic SEA trucking networks.

**Who bears it:** Shippers and 3PLs routing domestic and cross-border freight within ASEAN using local road carriers; cargo insurers in SEA markets who lack actuarially grounded loss data.

**Link to working hypothesis:** WH2 and WH3 — evidenced for SEA market specifically.

**Geography:** SEA-primary (Indonesia, Vietnam, Thailand, Philippines).

**Severity:** High for SEA-focused ventures; medium globally (the problem is more severe in SEA than in North America or EU where ELD mandates apply).

**Estimated cost:**
- Of 5.3 million trucks operating on Indonesia's roads, a large majority remain without any telematics; fleet management penetration across all of SEA was 15.7% in 2023 per **Berg Insight 1st Ed (Oct 2024; Tier 3 specialist analyst)**, updated to 17.5% in 2024 per **Berg Insight 2nd Ed (Feb 2026)**. Original ResearchAndMarkets citation was a GlobeNewswire press-release re-distribution of Berg Insight's own report **(superseded)**. (8)(58)(59)
- Owner-operators, who account for over 70% of commercial vehicles in Indonesia and the Philippines, are disproportionately outside any tracking system. (9)
- TAPA reported 160,000 cargo-related crimes across 129 countries between 2022 and 2024, with India, Indonesia, China, Bangladesh, and Vietnam among the most affected. Half of all APAC incidents occurred at warehouses and production sites — i.e., during custody transitions where tracking is weakest. (23)
- BSI/TT Club 2024 Cargo Theft Report: trucks account for approximately 70% of cargo thefts worldwide; in South America (a proxy for emerging-market patterns seen in SEA), criminals employ GPS jammers to block location tracking, and only 14% of Brazil's 2.3 million cargo trucks carry on-board anti-robbery technology. While Brazil is not ASEAN, the structural analogy — informal fleets, low telematics density, GPS jamming — is directly applicable to Indonesia and Vietnam. (24)
- World Bank LPI 2023: Indonesia ranked 61st overall (down from 46th in 2018), with tracking and tracing capabilities substantially below regional leaders Singapore (1st, 4.3 overall) and Thailand (34th, 3.5 overall). (25)

**Willingness to pay:**

**Frequency:**
- SEA fleet management penetration per **Berg Insight (Tier 3 specialist analyst)**: 1st Ed (Oct 2024) — 15.7% in 2023 → 25.7% by 2028 at 13.7% CAGR; 2nd Ed (Feb 2026) — 17.5% in 2024 → 27.1% by 2029 at 12.3% CAGR. Even under optimistic projections, nearly three-quarters of the regional fleet will remain without formal fleet management coverage by 2028-2029. No SEA government statistical floor exists for this metric (structural data gap confirmed). (8)(58)(59)
- Vietnam: 84% of fleet capacity with sub-10-truck operators — the segment least likely to onboard any RTTVP. (9)
- GPS jamming: 200+ incidents reported near the South China Sea in 2023; Vietnam and Malaysia cited as specifically affected. (26)
- DHL launched AI-powered cold chain monitoring across ASEAN in January 2024 precisely because the existing monitoring gap in the region was acute enough to justify enterprise investment; K+N expanded cold storage in Indonesia and Vietnam in March 2024 for the same reason. (15)

**Evidenced or assumed:**
(8) https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html
(9) https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market
(23) https://trans.info/en/latest-tapa-figures-show-road-freight-theft-is-growing-at-an-alarming-rate-386324
(24) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via fetch-with-cache.sh)
(25) https://lpi.worldbank.org/sites/default/files/2023-04/LPI_2023_report_with_layout.pdf (PDF)
(26) https://www.gnssjamming.com/post/gps-jamming-report-june-2024
(27) https://www.cargonet.com/cargo-theft-data/
(28) https://medium.com/@nicolaushansell/why-indonesian-logistics-companies-are-scrambling-to-install-gps-tracking-systems-right-now-de70e9c0eeb3
(29) https://jakartaglobe.id/business/indonesia-falls-behind-other-asean-countries-in-logistics
(30) https://www.bps.go.id/en/publication/2024/11/25/cdcf9b5e74dd2e9bb3458ee4/land-transportation-statistics-2023.html

**Root Causes**

- **RC1: No ELD or fleet-telematics regulatory mandate exists in SEA's primary road freight markets.** The US Federal ELD mandate (Dec 2019) created a baseline tracking data point for all US carriers, enabling RTTVPs to extract location data without requiring carrier cooperation. Indonesia's 2023 regulatory update encourages telematics adoption but does not mandate it with enforcement timelines for small operators. Vietnam and Thailand have not enacted equivalent mandates as of 2024. Without a regulatory floor, RTTVP coverage is limited to carriers that voluntarily adopt telematics — disproportionately the large, urban-based operators. The informal tail — which carries the majority of loads — remains outside the regulatory reach of any existing mandate. (8, 28, 29)

- **RC2: Mobile data connectivity gaps in Indonesia's outer islands and rural Vietnam structurally break tracking even where devices are deployed.** Even where an owner-operator has a basic GPS tracker or uses an RTTVP's mobile app, connectivity in remote or inter-island routes (Sumatra–Kalimantan, Mekong Delta, Northern Vietnam highlands) is intermittent. Indonesia's 5.3 million trucks operate across 17,000 islands; data connectivity in outer regions cannot support reliable real-time streaming. This is not a device problem — it is a network infrastructure problem that constrains the entire tracking architecture. (8)
  — [ASSUMED-4]: To validate: what is the specific coverage gap for 4G/LTE data connectivity on primary freight corridors in Indonesia outside Java? Geotab's APAC team or Jimi IoT's Indonesia data may be able to provide coverage maps.

- **RC3: The dominant fleet model in SEA (owner-operator contracting informally to brokers) has no TMS integration point that an RTTVP can tap.** RTTVPs primarily collect data through three channels: ELD integration, TMS API integration, and carrier mobile app. Owner-operators in Indonesia and Vietnam typically have no TMS, use WhatsApp and phone for load coordination, and resist formal app adoption because it creates a taxable digital trail. The structural informality of the market — which serves a useful economic function (flexibility, lower overhead) — is also the structural barrier to any visibility system that requires formal digital enrollment. This is a market-structure constraint, not a technology gap. (9, 10)

- **RC4: The cost-benefit calculus for an individual owner-operator to install and maintain tracking hardware is negative in the absence of premium differentiation.** A basic GPS tracker costs $50–200 upfront plus $10–30/month in connectivity. For an owner-operator earning $1,500–3,000/month in net revenue on informal routes in Indonesia or Vietnam, this represents a meaningful expense with no guaranteed return: shippers rarely pay a premium for traceable loads at the informal tier, and there is no insurance discount structure that rewards tracking adoption. Without a financial incentive — either regulatory mandate or market premium — rational individual actors will not bear the cost. (8, 9)
  — [ASSUMED-5]: To validate: do any SEA cargo insurers offer measurable premium discounts to insured shippers whose carrier networks maintain GPS tracking above a defined coverage threshold? Ask Tokio Marine, AXA, or local MGA partners in Indonesia and Vietnam.

---

### Pain point 3.4

**Description:** Even where RTTVPs provide positional tracking on a shipment, the "what" of cargo condition (temperature, shock, humidity, light exposure) is invisible to all parties unless a dedicated cargo IoT sensor was separately deployed — a step that is taken on fewer than 30% of non-pharma shipments globally, leaving the majority of in-transit damage events undetectable until delivery inspection.

**Who bears it:** Shippers of sensitive goods (food, chemicals, electronics, auto parts), their cargo insurers, and 3PLs that absorb damage claims they cannot document or rebut.

**Link to working hypothesis:** WH3 — partially evidenced; the global IoT sensor adoption rate (53% in Tive's 2024 survey across surveyed professionals who are already self-selected toward technology use) almost certainly overstates actual market-wide penetration. Quantification of non-pharma condition monitoring is assumed.

**Severity:** High for temperature-sensitive cargo categories; medium for general cargo where shock and tampering are the primary risks.

**Estimated cost:**
- Pharmaceutical industry: $35 billion annually in temperature excursion losses (IQVIA, as cited by Veratrak and Sensos). (13)
- Food cold chain: insurance premiums rose 17% due to spoilage and temperature excursion risk (WTW, 2024); storage-stage losses for vegetables are 15–20%, fruits 10–15% — with a material fraction attributable to transit rather than storage. (14)
- WTW (Willis Towers Watson, 2024) recommends IoT sensors as a primary risk mitigation for food, beverage, and agriculture transit risk, explicitly citing the monitoring gap as the reason losses are not preventable under current practice. (14)
- Globally: only 22% of logistics decision-makers have access to all the data types they need (FedEx 2024 report); condition monitoring is almost certainly among the most commonly missing data types for general cargo. (6)
- [ASSUMED-6]: The cost of a single temperature excursion event on a pharma shipment in SEA is estimated at $50,000–$500,000 depending on product value; in food cold chain, $5,000–50,000 per trailer load. — to validate: request from Tokio Marine SEA claims data or Parsyl/Loadsure loss run reports.

**Willingness to pay:**

**Frequency:**
- Tive State of Visibility 2024: IoT device adoption for cargo tracking more than doubled from 25% to 53% among survey respondents — but this sample is self-selected toward technology-aware professionals; actual market-wide penetration is lower. (2)
- IQVIA reported a 12% product recall rate in pharma cold chain attributable to temperature excursions. (13)
- ASEAN specifically: Indonesia cold storage density of 30 pallets/10,000 people vs Thailand's 204 and Japan's 1,592 — reflecting the infrastructure gap that makes in-transit condition monitoring more critical (not less) while simultaneously limiting its deployment. (15)
- DHL launched AI cold chain monitoring across ASEAN in January 2024 precisely because multi-handoff condition monitoring was absent before that point. (15)

**Evidenced or assumed:**
(2) https://www.globenewswire.com/news-release/2024/02/27/2836177/0/en/The-State-of-Visibility-2024-Real-Time-Shipment-Visibility-Emerges-as-a-Key-Component-of-Digital-Transformation-Sustainability.html
(6) https://www.fedex.com/en-us/digital/blog/logistics-data-gap-ai.html
(13) https://veratrak.com/resources/pharma-cold-chain-disruption-challenge
(14) https://www.wtwco.com/en-hk/insights/2024/11/how-to-reduce-transit-risks-in-food-beverage-and-agriculture
(15) https://blog.cfglobal.co/cold-chain-logistics-growth-in-emerging-economies-what-to-watch/
(31) https://sensos.io/resources/cold-chain-pharma/the-hidden-crisis-temperature%E2%80%91related-pharma-losses/
(32) https://www.sensitech.com/ [NEEDS-ATTENDED-FETCH]: Sensitech published a 2023 Global Cold Chain Benchmark Report; requires Playwright to access gated PDF
(33) https://www.mordorintelligence.com/industry-reports/asean-cold-chain-logistics-market
(34) https://www.foodlogistics.com/transportation/3pl-4pl/article/22876903/whats-next-a-3pl-trends-outlook-for-2024
(35) https://www.maersk.com/news/articles/2024/08/02/asia-fruit-logistica-2024
(36) https://pmc.ncbi.nlm.nih.gov/articles/PMC10417803/

**Root Causes**

- **RC1: The total-cost-of-ownership for condition sensors is borne by the deploying party while the value accrues to others.** A shipper that deploys a Tive or Sensitech temperature logger pays the hardware cost ($30–80 per disposable device) plus the subscription. If a temperature excursion occurs, the insurer benefits from clear liability data, the 3PL benefits from cleared responsibility, and the consignee benefits from earlier intervention — but none of these parties compensate the shipper for the sensor. The shipper only benefits if the excursion data allows it to file a claim more quickly — but that claim is already a loss event. Absent a mechanism (e.g., insurance premium rebate, 3PL SLA bonus) to share the sensor's value with the deploying party, sub-optimal deployment persists. (2, 22, 14)

- **RC2: "Track-and-trace" RTTVPs and "condition monitoring" IoT devices are sold by different vendors with no data integration requirement.** Project44, FourKites, and Shippeo sell positional visibility. Tive, Sensitech, Roambee, and Controlant sell condition monitoring. These two data streams are almost never unified in a single platform for the majority of shipments; they require separate integrations, separate contracts, and separate data subscriptions. The market segmentation means that a shipper that buys an RTTVP subscription receives no condition data by default, and must layer a second vendor to get it — a friction that the majority do not complete, particularly for lower-value cargo. Tive's 2021 partnership with FourKites to combine both streams was a pioneering step, but it required a separate commercial agreement and was not the default state of either platform. (2, 22)

- **RC3: For general cargo (non-pharma, non-food), there is no regulatory or compliance requirement to monitor temperature or shock in transit.** Pharmaceutical GDP guidelines mandate cold chain monitoring and documentation. No equivalent regulation covers electronics, chemicals, auto parts, or other damage-sensitive cargo in transit. Without compliance pressure, shippers calculate that the sensor cost exceeds the marginal reduction in claim probability for general cargo — particularly when the majority of claims are resolved on the basis of delivery inspection photos rather than in-transit sensor data. The regulatory gap is structural and not addressable without either new mandates (unlikely in SEA in the near term) or insurance pricing incentives that make sensor adoption financially rational. (14, 36)

- **RC4: Cold-chain monitoring in SEA is additionally constrained by infrastructure unreliability that disconnects sensors mid-journey.** Even where sensors are deployed, intermittent power (Indonesia's grid unreliability) and mobile connectivity gaps in outer islands and rural areas cause sensor data to drop out during the most logistically complex segments of the journey. Indonesia operators install diesel gensets adding 15–20% to operating expenses; this adds to the total cost of cold-chain delivery, further compressing the margin available for sensor investment. The physical infrastructure constraint means that sensor ROI in SEA is structurally lower than in markets with stable grids and 4G coverage on all freight routes. (15, 19, 20)

---

### Pain point 3.5 — New pain point (not in original working hypothesis)

**Description:** RTTVPs and cargo insurers in SEA are unable to establish reliable risk-adjusted pricing for individual in-transit shipments because the historical loss data available to them is structurally incomplete — reported losses are a small fraction of actual losses (only 14.7% of TAPA-recorded cargo crimes disclose loss value), and the formal RTTVP datasets exclude the majority of SEA shipments that move through untracked informal carriers.

**Who bears it:** Cargo insurers, parametric insurance providers, freight risk analytics vendors, and shippers who overpay for flat-rate cargo insurance because per-shipment risk cannot be accurately priced.

**Link to working hypothesis:** New — not in WH1–WH5 as formulated. Adjacent to WH5 (risk pricing disconnected from real data) but distinct in mechanism: WH5 focuses on the failure to integrate telematics into insurance pricing; this pain point focuses on the structural data sparsity that would make accurate pricing impossible even if the data were integrated.

**Severity:** Medium as a standalone pain; High when combined with WH5, because it explains why parametric insurance adoption remains thin — the data foundation for per-shipment risk models is absent for the majority of ASEAN road freight lanes.

**Estimated cost:**
- Flat-rate cargo insurance premiums in SEA are estimated 20–40% higher than risk-adjusted per-shipment prices would be for well-monitored, low-risk lanes, and correspondingly lower for genuinely high-risk lanes — meaning high-risk shippers cross-subsidize low-risk shippers and the market price fails to allocate risk efficiently. [ASSUMED-7]: to validate: request loss run data stratified by tracking adoption from TT Club APAC, Tokio Marine, or any MGA operating in Indonesia/Vietnam cargo lines.
- TAPA intelligence: of 39,422 freight theft incidents recorded across EMEA in the last two years, only 14.7% disclosed loss value — implying that over 85% of cargo crime data is size-unknown, preventing reliable actuarial modeling. (23)
- BSI/TT Club 2024 report: US cargo theft losses reached $454.9 million, but the FBI estimates true losses could approach $1 billion annually — a 2x+ undercount. The same data quality deficit applies in emerging markets where formal reporting is even less common. (3)
- McKinsey 2024 Supply Chain Risk Survey: more than 40% of organizations have limited or no visibility into Tier 1 supplier performance; the data quality problem extends upstream and makes supply-chain-wide risk modeling structurally unreliable. (37)

**Willingness to pay:**

**Frequency:**
- TAPA loss-value reporting gap: only 14.7% of incidents disclose value — endemic across 50+ countries over two years. (23)
- CargoNet (US and Canada, a higher-reporting market): actual losses estimated at 2x the reported $455 million figure. (3)
- SEA World Bank LPI 2023: Indonesia scored 61st globally; the LPI's "tracking and tracing" sub-dimension captures the structural data gap — lower-ranked countries not only have less tracking, but contribute less data to global freight loss databases. (25)

**Evidenced or assumed:**
(3) https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/
(23) https://trans.info/en/latest-tapa-figures-show-road-freight-theft-is-growing-at-an-alarming-rate-386324
(25) https://lpi.worldbank.org/sites/default/files/2023-04/LPI_2023_report_with_layout.pdf (PDF)
(37) https://www.mckinsey.com/capabilities/operations/our-insights/supply-chain-risk-survey-2024
(38) https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(39) https://www.cargonet.com/cargo-theft-data/
(40) https://www.supplychainbrain.com/articles/38958-key-transportation-trends-in-2024-visibility-innovation-and-risk-mitigation
(41) https://www.insurancebusinessmag.com/uk/news/auto-motor/tt-club-warns-of-soaring-cargo-theft-losses-548216.aspx
(42) https://tapaemea.org/insights/

**Root Causes**

- **RC1: Cargo crime is systematically under-reported in emerging markets, depriving actuaries of the data needed to model frequency and severity by lane, cargo type, and carrier tier.** TAPA's own intelligence system shows that 85%+ of cargo theft incidents do not disclose monetary loss value. In Indonesia, Vietnam, and Thailand, formal police reporting of cargo theft is even rarer than in EMEA — because reporting requires time, invites scrutiny of informal business practices, and rarely results in recovery. The under-reporting is rational from the individual company's perspective (avoiding audit risk, competitive sensitivity) but produces a collectively degraded data pool that prevents systematic risk pricing. No regulatory mechanism currently compels loss disclosure in SEA freight markets. (23, 38)

- **RC2: The RTTVP and insurance ecosystems maintain separate data architectures with no standard data-sharing mechanism for claims-loss correlation.** RTTVPs hold positional and condition data; insurers hold claims data; neither has a contractual obligation or a standard interface to share data with the other. A claims event that begins with a cargo theft or temperature excursion tracked by an RTTVP is documented in the claims system without the corresponding RTTVP telemetry attached. This structural separation means that historical loss databases cannot be segmented by tracking behavior, route risk score, or sub-carrier tier — all of the variables needed for per-shipment risk pricing. (6, 11, 22)
  — [ASSUMED-8]: To validate: do any cargo insurance platforms (Parsyl, Loadsure, TT Club) currently ingest RTTVP telemetry at the time of claim? Is there any data standard being developed for this integration? Ask DCSA, Parsyl CTO, and project44's insurance-partner team.

- **RC3: Informal carriers — who bear the highest per-shipment risk in SEA — are also least likely to generate any trackable data record.** The absence of telematics among owner-operators and micro-fleets means that the highest-risk segment of the SEA carrier population produces no digital loss data beyond police reports (rarely filed) and insurer claims (often unclaimed for below-deductible events). The actuarial models that do exist are therefore calibrated on data from large, formal carriers that have systematically lower loss rates — and then applied across the market including the untracked informal segment, mispricing risk in both directions. (8, 9)

- **RC4: No publicly available freight lane risk database covers ASEAN domestic road freight at the granularity needed for per-shipment underwriting.** The World Bank LPI, TAPA intelligence, and BSI/TT Club reports provide country-level and mode-level theft statistics. None of these provides lane-level, commodity-level, or carrier-tier-level loss frequency data for domestic Indonesia, Vietnam, or Thailand road freight. Insurance actuaries working SEA markets are operating on global proxies and anecdotal loss experience, which produces wide credibility-weighted rate intervals — effectively forcing flat-rate pricing because the data is too thin to support narrower risk bands. (25, 37, 38)

---

## Cross-stage references

- PP 3.1 and PP 3.3 relate directly to Stage 4 (multi-leg handoffs): the sub-carrier data gap is the mechanism through which visibility breaks at handoffs, which is analyzed from the control-tower and 3PL architecture perspective in Stage 4.
- PP 3.2 (IoT data silo) and PP 3.5 (actuarial data sparsity) feed into Stage 6 (post-incident claims and insurance): the absence of cross-party sensor data and the under-reported loss database are the same structural conditions that prevent parametric insurance from scaling (WH5).

---

## Assumptions tagged in this stage

[ASSUMED-1] What share of cargo theft incidents in Indonesia, Vietnam, and Thailand involve GPS jamming versus simple non-integration of sub-carriers? — to validate by interview with Overhaul SEA team, BSI APAC, or TT Club underwriters.

[ASSUMED-2] Exact current enforcement status of Indonesia's 2023 telematics mandate: which vehicle classes, timelines, and enforcement agency? — to validate via Kemenhub contacts or TransTRACK/Jimi IoT Indonesia operations.

[ASSUMED-3] Do any cargo insurance programs in SEA explicitly rebate premiums to shippers that share sensor telemetry with the insurer? — to validate with Parsyl, Loadsure, TT Club APAC.

[ASSUMED-4] What is the specific 4G/LTE data connectivity coverage gap on primary freight corridors in Indonesia outside Java? — to validate with Geotab APAC or Jimi IoT Indonesia.

[ASSUMED-5] Do any SEA cargo insurers offer measurable premium discounts to shippers whose carriers maintain GPS tracking above a defined coverage threshold? — to validate with Tokio Marine SEA, AXA Indonesia, or local MGA partners.

[ASSUMED-6] Per-event cost of temperature excursion in SEA pharma and food cold chain — estimated at $50,000–$500,000 (pharma) and $5,000–$50,000 (food per trailer). — to validate via Tokio Marine SEA claims team or Parsyl/Loadsure loss run reports.

[ASSUMED-7] Flat-rate cargo insurance premiums in SEA are 20–40% above risk-adjusted per-shipment prices for well-monitored lanes. — to validate via actuarial interview at TT Club APAC, Tokio Marine, or Willis Towers Watson SEA.

[ASSUMED-8] Do cargo insurance platforms currently ingest RTTVP telemetry at the time of claim? Is there a data standard being developed? — to validate with Parsyl CTO, project44's insurance-partner team, or DCSA.

---

## Hypothesis disposition

| Hypothesis | Status | Summary |
|---|---|---|
| WH2 — Visibility breaks at sub-carrier handoff | **Evidenced** | Multiple independent sources confirm the structural gap: RTTVP carrier network economics, SEA fleet penetration data (Berg Insight 1st/2nd Ed: 15.7% 2023 / 17.5% 2024), Vietnam's 84% sub-10-truck market structure, McKinsey $65–95B US-only blind-handoff waste estimate (verbatim, Jan 2024), NTT DATA 3PL study data quality gap. |
| WH3 — IoT is point-deployed, not journey-deployed | **Evidenced (structurally)** | Tive State of Visibility 2024 documents the single-party deployment norm (53% adoption among surveyed professionals, data held inside deploying party's platform); DCSA/IATA standards gap confirms no road freight cross-party data standard exists; $35B pharma cold chain loss and WTW 17% premium increase confirm the consequence. Quantification of non-pharma condition monitoring gap is partially assumed. |
| New PP 3.5 — Actuarial data sparsity preventing per-shipment pricing | **Partially evidenced** | TAPA's 85% loss-value non-disclosure rate, CargoNet's 2x undercount estimate, and World Bank LPI score trajectory for Indonesia confirm structural data sparsity. The insurance pricing consequence (20–40% rate mispricing) is assumed and tagged [ASSUMED-7]. |

