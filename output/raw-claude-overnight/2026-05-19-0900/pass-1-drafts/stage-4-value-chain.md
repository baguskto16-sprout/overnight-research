## Stage 4: Multi-Leg Handoffs & Chain-of-Custody Solutions

*Value chain: Risk-management solutions for the freight/logistics journey*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*
*Risk angle: Chain-of-custody breakdowns at handoffs between 3PLs and sub-carriers — the structural gap where shippers lose visibility and where cargo fraud, double-brokering, and undocumented transfers compound insurance exposure*

---

### Description

Multi-leg handoff and chain-of-custody solutions are software platforms — spanning control towers, real-time transportation visibility platforms (RTTVPs), blockchain-based document networks, and broker-tier integration tools — that attempt to maintain continuous, tamper-evident custody records as freight moves between multiple carriers, sub-carriers, 3PLs, and modes. They target the moment of physical transfer between parties as the primary data-integrity failure point. McKinsey (January 2024) identifies "blind handoffs" between shippers, dispatchers, 3PLs, and carriers as generating $65–$95 billion annually in waste within the U.S. mid- and last-mile logistics value pool alone, with roughly one in three shipments globally experiencing delays or disruptions from visibility gaps at these points. (1)(2)

---

### Activities

1. **Real-time shipment tracking across carrier tiers:** Ingesting location, ETA, and event data from carriers, sub-carriers, ELDs, telematics providers, and ocean/rail data feeds — often via standardized APIs or EDI — to maintain a continuous tracking thread even when a load is re-tendered to a subcontractor not party to the original TMS record.
2. **Chain-of-custody documentation and event capture:** Recording structured custody events (pickup, transfer, gate-in/gate-out, proof-of-delivery) tied to immutable ledgers or time-stamped audit trails; for ocean, this extends to electronic bills of lading (eBLs) that transfer title digitally with a verifiable custody chain.
3. **Carrier identity and compliance verification at handoff:** Checking carrier authority, insurance certificates, and identity signals at the moment of sub-carrier engagement — the specific control point where double-brokering and identity-fraud attacks exploit gaps between dispatch and physical pickup.
4. **Multi-enterprise network orchestration:** Connecting shippers, 3PLs, carriers, freight forwarders, terminals, and customs authorities on a shared data fabric (not point-to-point integrations), so custody events from any tier are visible to authorized parties without requiring bilateral data-sharing agreements for each new relationship.
5. **Exception management and risk alerting:** Surfacing custody exceptions — missed check-ins, unscheduled stops, carrier substitution events, documentation mismatches — to risk and operations teams in time for intervention, and generating structured event logs that downstream insurance underwriters and claims teams can consume.

---

### Revenue Model

Annual recurring SaaS subscription (per-shipment or seat-based; enterprise ACV typically $200K–$2M+ for control-tower platforms, $50K–$500K for broker-tier visibility tools) plus per-transaction or per-document fees for blockchain-based eBL and document-transfer services; blockchain document networks such as CargoX additionally charge government-mandated document-processing fees under national single-window contracts. (3)(4)(5)(6)

---

### Cost Drivers

Carrier/sub-carrier network onboarding and integration maintenance (connecting to 200K+ global carriers via ELD, API, EDI, mobile app — highest marginal cost item for RTTV platforms); data acquisition and enrichment from telematics and ocean data providers; R&D for AI-based ETA prediction and anomaly detection; cloud infrastructure at transaction scale (E2open processes 18 billion transactions/year; project44 covers 1 billion+ shipments annually); enterprise sales cycles of 9–24 months with high implementation professional-services burden; and ongoing compliance with data-sovereignty regulations (GDPR, China data-transfer restrictions, PDPA in SEA) that require jurisdictionally segregated data pipelines. (3)(4)(7)

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global supply chain control tower software market, 2024 | $7.5B–$9.7B (range across multiple analyst firms; Grand View Research: $9.67B; ABI Research: ~$7.5B as 2022 base growing to $20B by 2030) | Low — significant divergence across secondary research firms; no government statistical agency tracks this segment separately | (8)(9) |
| Supply chain control tower market CAGR, 2025–2030 | 13.2%–23.0% (ABI Research: 13.2% CAGR to $20B by 2030; Grand View Research: 23.0% to $32.1B by 2030) | Low — wide range reflects definitional differences between narrow software and broader platform+services scope | (8)(9) |
| Global real-time transportation visibility platform (RTTV) market, 2024 | $3.2B–$4.2B (DataIntelo: $3.2B; multiple secondary sources: $4.2B) | Low — all estimates from secondary market research firms; no Tier-1 government or multilateral source available | (10) |
| RTTV market CAGR, 2024–2033 | 17.8%–19.2% | Low — single-firm estimates only | (10) |
| Asia-Pacific control tower market share of global revenue, 2022 | ~25% of $7.5B base; projected highest CAGR at 21.7% through 2030; expected to become second-largest region by 2030 | Medium — ABI Research report, single source but specific methodology described | (9) |
| U.S. mid- and last-mile logistics waste from blind handoffs, annual | $65B–$95B (McKinsey, January 2024; $45B–$66B attributable to B2B supply chains specifically) | High — McKinsey authored research, specific U.S. scope, January 2024 publication | (1) |
| Global cargo theft losses, 2024 (reported, U.S. + Canada) | $454.9M reported incidents (CargoNet); broader industry estimates including unreported: up to $35B annually | Medium for reported figure (CargoNet is an insurance-industry tracking service); Low for $35B estimate (no single authoritative source) | (11)(12) |
| Double-brokering fraud losses, annual (U.S.) | $500M–$700M per year | Low — trade-press estimate, no Tier-1 source | (13) |
| Global eBL volume through GSBN, 2023→2024 | 100,000 eBLs in 2023 → 300,000 in 2024; targeting 1M/year as inflection point | Medium — GSBN self-reported in January 2025 industry report | (14) |
| Global eBL adoption rate (% of B/Ls issued electronically), 2024 | ~5% globally; China >21% (GSBN January 2025 report); dual-format users (paper + electronic) rose from 28% to 42% between 2022 and 2024 | Medium — GSBN data, cross-referenced with DCSA 2024 progress report | (14)(15) |
| SEA country-level control tower / RTTV market size | Data gap — no country-level figure available for Indonesia, Thailand, Malaysia, Singapore, Vietnam, or Philippines from any Tier-1 source. APAC CAGR (~21.7%) used as directional proxy. Field validation needed. | N/A | (9) |

**Market size methodology note:** The control tower market and RTTV market are analytically distinct but commercially overlapping. Control tower estimates ($7.5B–$9.7B) include broader orchestration platforms (E2open, Blue Yonder); RTTV estimates ($3.2B–$4.2B) cover pure-play transportation tracking vendors (project44, FourKites, Shippeo). The $20B by 2030 ABI Research figure is the most cited cross-industry reference but relies on a 2022 base from a single firm.

`Geography mismatch — no SEA country-level market size found for this segment in any source tier; APAC aggregate used as proxy; field validation required.`

---

### Solutions Profiled

#### 1. E2open Control Tower (NASDAQ: ETWO)

| Field | Detail |
|-------|--------|
| Headquarters | Scottsdale, AZ, USA |
| Category | Enterprise multi-enterprise network + control tower |
| Revenue | FY2025 total GAAP: $607.7M (FY2024: $634.6M); subscription 87% of total; declining ~4% YoY (3)(16) |
| Network scale | 480,000+ connected partners; 16–18 billion transactions/year (3)(16) |
| Relevant capability | Multi-enterprise network connecting manufacturing, logistics, and distribution partners on a single platform; "connected supply chain SaaS" enables cross-tier visibility; acquired INTTRA (ocean container network) and BluJay Solutions (freight management); named Leader in 2025 IDC MarketScape for Multi-Enterprise Supply Chain Commerce Networks (17) |
| Chain-of-custody relevance | Network connectivity means visibility persists across carrier tiers if sub-carriers are connected; INTTRA integration gives ocean eBL and booking data; gap: sub-carrier connectivity in SEA road/last-mile is lower than in North America/Europe |
| Geographies | Global; APAC offices; SEA presence via regional customers but no dedicated SEA carrier network buildout disclosed |
| Risk/limitation | Revenue declining organically; heavy debt load from acquisition strategy; enterprise-only; no disclosed SEA road-carrier ELD network |

#### 2. Blue Yonder Luminate Control Tower (Panasonic subsidiary)

| Field | Detail |
|-------|--------|
| Headquarters | Scottsdale, AZ, USA (Panasonic group) |
| Category | Enterprise supply chain planning + control tower |
| Revenue | Blue Yonder revenue >$1B (2020 pre-Panasonic); Panasonic acquired for $7.1B in 2021; current revenue not separately disclosed in Panasonic filings (18) |
| Relevant capability | Luminate platform uses AI/ML for prescriptive disruption resolution; acquired One Network Enterprises for $839M in August 2024 (closed), adding multi-party Real Time Value Network (RTVN) with AI-driven control tower; combined platform covers multi-enterprise collaboration and real-time decision-making across supply chain tiers (19)(20) |
| Chain-of-custody relevance | One Network acquisition adds a dedicated multi-party network enabling real-time inventory, materials movement, and order visibility across all trading partners; addresses handoff gaps at tier-N supplier/carrier level |
| Geographies | Global; strong in North America, Europe; APAC presence via Panasonic's Japan/Asia operations |
| Risk/limitation | Post-acquisition integration complexity; not a pure-play visibility product; Panasonic IPO of Blue Yonder reportedly under consideration (19) |

#### 3. project44 Movement

| Field | Detail |
|-------|--------|
| Headquarters | Chicago, IL, USA |
| Category | Real-time transportation visibility platform (RTTV), pure-play |
| Revenue | FY2024: >$210M total GAAP revenue, >30% YoY growth; $637.5M total funding; $2.6B valuation (21)(22) |
| Network scale | 220,000+ carriers with data-sharing agreements; 1 billion+ shipments tracked annually; 1,300+ enterprise customers; operates in 170+ countries (21)(22) |
| Relevant capability | "Extended Visibility" capability — AI-powered merging of carrier and freight-forwarder data to eliminate blind spots at interchanges; multi-modal (ocean, TL, LTL, rail, last-mile, air); only vendor with authorization to transfer logistics data in/out of China (21); named Leader in 2025 Gartner MQ for RTTV Platforms for fifth consecutive year (23) |
| Chain-of-custody relevance | Directly addresses the carrier-to-subcarrier handoff gap via intermodal leg stitching; "door-to-door" visibility product targets the exact interchange blind spot; 220K+ carrier network is the primary moat |
| Geographies | Global; 19 offices; APAC presence including China road visibility; SEA coverage exists but limited dedicated carrier network relative to North America/Europe (Gartner noted limited coverage outside NA/EU for some modes) |
| Risk/limitation | Private company; SEA road-carrier network depth unconfirmed; Gartner noted APAC carrier coverage gap in prior quadrant |

#### 4. FourKites Intelligent Control Tower

| Field | Detail |
|-------|--------|
| Headquarters | Chicago, IL, USA |
| Category | Real-time transportation visibility platform + intelligent control tower |
| Revenue | ~$114.3M revenue (Latka estimate, 2024); $243M raised; $1B valuation (unicorn, June 2022) (24)(25) |
| Network scale | 1,600+ enterprise brands; 3.2M+ shipments tracked daily; 200+ countries and territories; Dynamic Yard product extends visibility into dock/yard layer (26)(27) |
| Relevant capability | Intelligent Control Tower combines real-time supply chain data, continuously updated digital twin (shipment, order, inventory, supplier, yard), and AI-powered digital workers; multimodal purchase order tracking across all freight legs; named Leader in 2024 Gartner MQ for RTTV Platforms for fourth consecutive year (25)(27) |
| Chain-of-custody relevance | Digital twin architecture maintains custody state across all legs including yard; Dynamic Yard bridges the facility-to-carrier handoff that is often the last undocumented custody transfer in a multi-leg chain |
| Geographies | Global; predominantly North America and Europe; APAC slower to expand (Gartner noted lower coverage outside NA/EU) |
| Risk/limitation | Revenue significantly smaller than project44; Gartner noted APAC expansion slower than some vendors; no disclosed SEA-specific carrier integrations |

#### 5. Descartes MacroPoint (Descartes Systems Group, NASDAQ: DSGX)

| Field | Detail |
|-------|--------|
| Headquarters | Waterloo, ON, Canada (Descartes HQ); MacroPoint unit in Westlake, OH |
| Category | Broker-tier and 3PL freight visibility platform |
| Revenue | Descartes FY2024 (fiscal year ending Jan 2024): $572.9M total; MacroPoint segment not separately disclosed; 9 acquisitions completed since beginning of FY2024 through Q2 FY2026 (28)(29) |
| Relevant capability | Multimodal freight visibility for brokers and 3PLs; largest ELD/GPS network in industry (~95% of U.S. marketplace carriers covered); 15-minute GPS ping intervals; April 2024: launched FraudGuard to detect/prevent freight fraud including identity theft and double-brokering at broker handoff points; G2 Spring 2024: #1 Overall Leader in Supply Chain Visibility Software (28)(30) |
| Chain-of-custody relevance | Most directly addresses the broker-to-subcarrier gap: when a broker assigns a load to a sub-carrier, MacroPoint's ELD/GPS network maintains tracking continuity regardless of carrier substitution; FraudGuard adds identity verification at the handoff moment |
| Geographies | North America primary; global multimodal coverage; no disclosed SEA carrier ELD integration |
| Risk/limitation | Part of larger Descartes platform; revenue attribution not disclosed; SEA market ELD adoption very low (no mandated ELD equivalent); relies on carrier cooperation for data |

#### 6. Shippeo

| Field | Detail |
|-------|--------|
| Headquarters | Paris, France |
| Category | Real-time transportation visibility platform, Europe-headquartered |
| Revenue | Not publicly disclosed; total funding >$140M including January 2025 $30M round led by Woven Capital (Toyota's growth fund) to fund US and APAC expansion (31)(32) |
| Network scale | 90M+ shipments tracked annually; 150+ countries; 1,000+ TMS/telematics/ELD integrations; APAC growth: shipments tracked +64% YoY, customer base +53% YoY (31) |
| Relevant capability | Named Leader in 2024 Gartner MQ for RTTV Platforms; multimodal; explicitly expanding into APAC/SEA with Toyota/Woven Capital backing suggesting Japan-to-SEA corridor focus; European compliance and GDPR-native architecture (31)(33) |
| Chain-of-custody relevance | Multi-carrier leg connectivity with strong European road-carrier network; APAC expansion explicitly funded; Gartner noted Shippeo "failed to take advantage of the Asian market" in prior assessments — actively addressing with 2025 funding (33) |
| Geographies | Europe (strong), North America (growing), APAC (early-stage but funded); SEA not yet a named market but APAC trajectory targets it |
| Risk/limitation | Smaller revenue base than project44/FourKites; APAC build-out is 2025–2026 investment, not operational at scale; Gartner prior criticism of Asian market execution |

#### 7. GSBN (Global Shipping Business Network)

| Field | Detail |
|-------|--------|
| Headquarters | Hong Kong (not-for-profit consortium) |
| Category | Blockchain-based chain-of-custody / eBL network for ocean shipping |
| Revenue | Not-for-profit entity; revenue model: document processing fees to carriers and shippers for eBL issuance and cargo release transactions |
| Members | COSCO, OOCL, Hapag-Lloyd, Ocean Network Express (ONE), plus port operators Westports Malaysia, ICTSI, Portbase; represents majority of GSBN's founding carrier base (14)(15)(35) |
| Relevant capability | eBL issuance and transfer on permissioned blockchain (Hyperledger); cargo release (10,000+ customers across terminals in SEA, China, Europe, Latin America); eBL volume: 100K in 2023 → 300K in 2024; January 2025: first cross-platform eBL interoperability transaction using DCSA standards; GSBN and banks launched eBL tokenization pilot in Hong Kong (14)(15)(35) |
| Chain-of-custody relevance | Directly addresses ocean-leg chain-of-custody by making the B/L tamper-evident, non-duplicable, and transferable without paper; Westports Malaysia membership gives SEA terminal coverage; multimodal freight transport (MFT) use case explores extending eBL custody chain to road legs (14) |
| Geographies | Global ocean shipping; SEA coverage via Westports Malaysia and ICTSI; strongest in China, expanding to SEA, Europe, and Latin America |
| Risk/limitation | Ocean-only solution; road/last-mile handoffs not covered; global eBL adoption still only 5%; consortium governance can slow product iteration; TradeLens failure precedent creates market skepticism |

#### 8. CargoX

| Field | Detail |
|-------|--------|
| Headquarters | Ljubljana, Slovenia |
| Category | Blockchain document transfer / eBL platform |
| Revenue | Not publicly disclosed; revenue from subscription + per-transaction document fees; Egyptian government ACI contract: 5-year extension after $165 compliance cost (vs. prior $600+) and 29→6 day cargo release time; 1M+ documents processed; 160,000+ companies as users (36)(37) |
| Relevant capability | Ethereum public blockchain for eBL and trade document custody transfer; 65+ document types; primary differentiation: government-mandate integration — authorized as Egypt's official blockchain document transfer gateway for NAFEZA single-window customs platform (mandatory since October 2021); CargoX announced intent to serve former TradeLens users post-shutdown (38) |
| Chain-of-custody relevance | Provides end-to-end immutable audit trail for trade document custody; government-mandated usage creates real adoption without voluntary network-effect problem that killed TradeLens; Egypt case study demonstrates government-as-anchor-customer model applicable to SEA customs modernization |
| Geographies | Global (technical platform); commercial traction: Egypt (dominant), Europe; SEA not yet a named deployment market |
| Risk/limitation | Private company; SEA government contract not yet secured; public blockchain (Ethereum) vs. permissioned blockchains in GSBN creates interoperability complexity; scale remains limited outside Egypt anchor |

---

### TradeLens Post-Mortem (Defunct, shutdown Q1 2023)

| Field | Detail |
|-------|--------|
| Founded | 2018 (IBM + Maersk joint venture) |
| Shutdown | Announced November 29, 2022; offline by end of Q1 2023 |
| Why it failed | (a) Failed to achieve global industry collaboration — competitor carriers refused to share data on a Maersk-controlled platform; (b) Asian/Chinese carriers did not join; (c) Failed to convert shippers and freight forwarders to paying customers — shippers did not see sufficient ROI to justify extra cost; (d) Regulatory and data-sovereignty barriers limited cross-border data sharing; (e) "Born out of blockchain hype" — technology selected before commercial model validated (39)(40) |
| Chain-of-custody lesson | The technical chain-of-custody product worked; the commercial model failed. Competitor-controlled consortium governance is the primary kill switch for multi-stakeholder logistics data networks. GSBN and CargoX's neutral/not-for-profit structures directly respond to this failure mode. |

---

### Current Players by Region

**Global (Tier-1 platforms):**
- project44 (Chicago) — highest-placed in 2025 Gartner MQ RTTV; 220K+ carrier network; only vendor authorized for China data transfer; APAC expansion active but SEA road depth unconfirmed
- FourKites (Chicago) — Gartner MQ Leader; 1,600+ enterprise brands; intelligent control tower with digital twin; APAC expansion slower than NA/EU per Gartner
- E2open (Scottsdale) — largest multi-enterprise network by transaction volume (480K+ partners, 18B transactions/yr); revenue declining organically; enterprise-only; IDC Leader 2025
- Blue Yonder (Scottsdale, Panasonic subsidiary) — $839M One Network acquisition closed August 2024 adds multi-party RTVN capability to Luminate platform

**Europe (originating or strongest in EU):**
- Shippeo (Paris) — Gartner MQ Leader 2024; $30M raised January 2025 for APAC expansion; GDPR-native; APAC shipments +64% YoY
- Transporeon (Ulm, Germany; acquired by Trimble €1.88B, 2023) — 145,000 carriers, 1,400 shippers on platform; predominantly Europe + developed market Americas/Asia

**Broker/3PL tier (North America primary):**
- Descartes MacroPoint (Waterloo, Canada) — broker-tier freight visibility; largest ELD/GPS network; FraudGuard (April 2024) adds identity verification at handoff; Descartes Systems Group FY2024 revenue $572.9M
- Uber Freight Broker Access (San Francisco) — November 2024 launch; opens Uber Freight carrier network (tens of thousands of tech-enabled carriers) to external brokers via self-serve portal or API/EDI/TMS integration; maintains broker identity on load

**Ocean chain-of-custody:**
- GSBN (Hong Kong, not-for-profit) — Hyperledger blockchain; COSCO, OOCL, Hapag-Lloyd, ONE; Westports Malaysia member; 300K eBLs in 2024
- CargoX (Ljubljana) — Ethereum blockchain; Egypt NAFEZA mandatory platform; 160K+ users; post-TradeLens refugee platform

**Southeast Asia (regional/local):**
- Yojee (Singapore) — multi-leg freight visibility for freight forwarders and regional 3PLs; ePOD, partner visibility; 1,000+ trucking companies across APAC; best-fit for SEA multi-leg road/last-mile (41)
- Locus (Bangalore/Singapore) — decision-intelligent TMS with real-time tracking; serves Unilever SEA and other CPG brands across SEA multi-tier distributor networks (42)
- Ninja Van (Singapore) — last-mile carrier/technology platform; participates in LogiSYM APAC 2024 on supply chain digitization; primarily a carrier/3PL, not a pure-play visibility solution

`Data gap — no dedicated multi-leg chain-of-custody platform with material SEA carrier network coverage identified from Tier-1 sources. Global platforms (project44, FourKites) have APAC offices but SEA road-carrier ELD/telematics integration depth unconfirmed. This is the whitespace the Tokio Marine + ID&E venture appears to be targeting.`

---

### Preliminary Pain Points (this stage)

1. **Sub-carrier visibility blackout:** When a 3PL re-tenders a load to a sub-carrier — standard practice in 60–80% of brokered freight in fragmented markets — the original shipper's visibility platform loses the tracking thread because the sub-carrier is not a connected network participant, creating a custody gap lasting hours to days. (1)(13)

2. **Double-brokering and identity fraud at handoff:** Cargo theft and fraud incidents surged 27% in 2024 (CargoNet), with strategic theft (identity theft, double-brokering, FMCSA account hijacking) growing 1,475% since 2022; these attacks specifically exploit the moment between load tender and physical pickup — the handoff — when carrier identity is unverified. (11)(12)

3. **No tamper-evident custody record for road freight:** Unlike ocean shipments where eBLs are emerging, road freight in SEA has no equivalent digital custody document; proof-of-delivery (ePOD) is often a photo or signature on a mobile app with no blockchain or cryptographic integrity — unverifiable and easily forged in insurance claims. [ASSUMED-1]

4. **TMS data does not follow sub-carrier substitutions:** Enterprise TMS platforms (SAP TM, Oracle OTM, JDA/Blue Yonder) record planned carrier assignments; when a 3PL re-routes through a sub-carrier at the last minute, the TMS record is not updated, creating a permanent discrepancy between the paper trail and physical reality — exploitable in cargo claims. [ASSUMED-2]

5. **ELD mandates absent in SEA:** In the U.S., ELDs enable automatic GPS-based carrier tracking (MacroPoint's primary data source); no equivalent ELD mandate exists in Indonesia, Thailand, Malaysia, Vietnam, or Philippines, meaning broker-tier visibility tools that depend on ELD connectivity cannot replicate their NA coverage model in SEA without alternative data-capture methods. [ASSUMED-3]

6. **Blockchain consortium governance problem:** TradeLens (shuttered Q1 2023) proved that competitor carriers will not share custody data on a platform controlled by a rival; GSBN's neutral not-for-profit structure partially addresses this, but ocean-to-road custody handoffs remain outside any blockchain network's scope, leaving the multi-modal last-mile chain of custody undigitized. (39)(40)

7. **eBL adoption is still only 5% globally:** Despite DCSA standards and GSBN's 300K eBL milestone in 2024, 95% of bills of lading are still paper — meaning document-level chain of custody for ocean freight relies on courier, scan, and manual verification, creating forgery exposure, delays (average 5–10 days for paper B/L transfer vs. minutes for eBL), and cargo release bottlenecks. (14)(15)

8. **Insurance claims require custody proof that doesn't exist:** When cargo is lost or damaged in a multi-leg move, claims adjusters need a complete custody timeline to determine which carrier bore liability at the time of loss; in most SEA multi-leg shipments this record does not exist, forcing settlement negotiation rather than evidence-based adjudication — inflating claims costs and settlement time for insurers like Tokio Marine. [ASSUMED-4]

9. **Platform proliferation creates re-integration problem:** Shippers using project44 or FourKites for international visibility then lose tracking on domestic SEA legs managed by regional 3PLs using Yojee or no system; no platform bridges these handoffs, meaning the global-to-local custody transfer is systematically undocumented. [ASSUMED-5]

10. **API standardization is incomplete:** DCSA has published standards for eBL, tracking events, and port call; project44 and FourKites have proprietary carrier-connectivity APIs; MacroPoint has ELD-native protocols; but no single data standard governs custody event reporting at the 3PL-to-sub-carrier handoff in road freight, meaning each bilateral integration is custom and fragile. (15)

11. **Carrier verification latency:** Even when a broker checks DOT authority and insurance certificates at load award, those credentials may have lapsed by the time of pickup; real-time insurance validation at the moment of physical handoff is not a standard feature of any platform reviewed. (13)(30)

12. **Cost of visibility proportional to shipment value:** Per-shipment SaaS costs ($2–$10/shipment for RTTV platforms) are economically rational for high-value or time-sensitive loads but uneconomical for bulk commodity or low-margin freight in SEA — leaving the majority of SEA freight volume untracked, which is precisely the segment most exposed to cargo theft and custody gaps. [ASSUMED-6]

13. **Finality of custody transfer not legally enforceable:** eBLs under UNCITRAL MLETR are legally valid in limited jurisdictions; most SEA countries have not yet enacted MLETR-compatible legislation, meaning blockchain custody records may not be admissible as primary evidence in local courts for cargo loss disputes. [ASSUMED-7]

---

### Sources for this stage

(1) McKinsey & Company, "Digitizing mid- and last-mile logistics handovers to reduce waste," January 2024 — https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste

(2) McKinsey Global Supply Chain Leader Survey 2024 — https://www.mckinsey.com/capabilities/operations/our-insights/supply-chain-risk-survey-2024

(3) E2open Q3 FY2025 earnings release (quarter ended November 30, 2024); FY2025 full-year results (ended February 28, 2025) — https://investors.e2open.com/news/news-details/2025/E2open-Announces-Fiscal-2025-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx

(4) project44 FY2024 press release (>30% YoY growth, >$210M revenue) — https://www.prnewswire.com/news-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue-302158719.html

(5) CargoX platform overview and Egypt government ACI contract details — https://cargox.io/governments

(6) GSBN eBL platform and member structure — https://gsbn.trade/

(7) E2open FY2024 fourth-quarter and full-year financial results press release — https://investors.e2open.com/news/news-details/2024/E2open-Announces-Fiscal-2024-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx

(8) Grand View Research, Global Control Tower Market, 2024 — press release cites $9,671.2M in 2024 growing to $32,138.4M by 2030 at 23.0% CAGR — https://www.grandviewresearch.com/press-release/global-control-towers-market [NEEDS-ATTENDED-FETCH: full report is paywalled]

(9) ABI Research, "How Technology Suppliers Can Seize the US$20 Billion Market Opportunity for Supply Chain Control Towers" — $7.5B in 2022, $20B by 2030, 13.2% CAGR; APAC highest growth at 21.7% CAGR — https://www.abiresearch.com/research-highlight/how-technology-suppliers-can-seize-the-us20-billion-market-opportunity-for-supply-chain-control-towers

(10) Market sizing range for RTTV platforms — multiple secondary sources (DataIntelo: $3.2B 2024; marketintelo.com: $4.2B 2024) — https://dataintelo.com/report/real-time-transportation-visibility-platform-market

(11) CargoNet 2024 cargo theft data — $454.9M reported losses in 2024 (up 27% from $331.9M in 2023); 65,000 estimated thefts — https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/

(12) CCJ Digital / FreightWaves — strategic theft growth 1,475% since 2022; identity theft and double-brokering dominant attack vectors in 2024 — https://www.ccjdigital.com/technology/cybersecurity/article/15745983/fraudulent-freight-activity-increased-by-27-in-2024

(13) TIA (Transportation Intermediaries Association) / trade press — double-brokering $500M–$700M annual estimate — https://news.tianet.org/carrier-vetting-part-2/

(14) GSBN Insights January 2025, "How eBL Adoption is Transforming Global Trade" — eBL volumes 100K (2023) → 300K (2024); China adoption >21% vs. 5% global average (PDF, processed via markitdown) — https://gsbn.trade/wp-content/uploads/GSBN-Insights_Jan-2025_How-eBL-apotion-is-transforming-Global-Trade.pdf

(15) DCSA highlights of 2024 — dual-format eBL users 28%→42% (2022–2024); overall adoption 33%→49%; interoperability milestone May 2025 — https://dcsa.org/newsroom/dcsas-highlights-of-2024

(16) E2open FY2025 full-year results — $607.7M total GAAP revenue, -4.2% YoY — https://investors.e2open.com/news/news-details/2025/E2open-Announces-Fiscal-2025-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx

(17) E2open named Leader in IDC MarketScape: Worldwide Multi-Enterprise Supply Chain Commerce Networks 2025 — https://markets.financialcontent.com/wral/article/bizwire-2025-12-17-e2open-named-a-leader-in-idc-marketscape-for-multi-enterprise-supply-chain-commerce-networks-2025

(18) Panasonic acquires Blue Yonder for $7.1B — https://www.supplychaindive.com/news/panasonic-blue-yonder-71b-supply-chain-planning-software/598938/

(19) Blue Yonder announces acquisition of One Network Enterprises for $839M — https://www.onenetwork.com/2024/08/blue-yonder-acquires-one-network-enterprises/

(20) Panasonic newsroom — Blue Yonder closes One Network acquisition August 2024 — https://news.panasonic.com/global/press/en240802-3

(21) project44 FY2024 press release — https://www.project44.com/press-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue/

(22) project44 funding — $80M at $2.7B valuation — https://www.prnewswire.com/news-releases/project44-raises-80-million-valuing-company-at-2-7-billion-up-12-from-january-despite-widespread-downturn-in-b2b-saas-valuations-301667043.html

(23) project44 named Leader in 2025 Gartner MQ for RTTV Platforms — https://www.prnewswire.com/news-releases/project44-named-a-leader-in-the-2025-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms-for-fifth-consecutive-year-302387679.html

(24) FourKites revenue estimate — Latka: $114.3M (2024) — https://getlatka.com/companies/fourkites-inc

(25) FourKites raises $100M — https://www.fourkites.com/press/fourkites-raises-100m-for-supply-chain-visibility/

(26) FourKites platform overview — https://www.fourkites.com/about/

(27) FourKites named Leader in 2024 Gartner MQ for RTTV Platforms — https://www.fourkites.com/press/fourkites-named-a-leader-in-the-2024-gartner-magic-quadrant-for-fourth-consecutive-year/

(28) Descartes FY2024 annual results — $572.9M revenue — https://www.descartes.com/resources/news/descartes-announces-fiscal-2024-fourth-quarter-and-year-end-financial-results

(29) Descartes MacroPoint platform — https://macropoint.com/

(30) Descartes MacroPoint FraudGuard launch April 2024 — https://www.globenewswire.com/news-release/2024/04/10/2861167/9197/en/New-Descartes-MacroPoint-Capabilities-Help-Combat-Fraud-in-Transportation-and-Logistics.html

(31) Shippeo raises $30M led by Woven Capital, January 2025 — https://www.businesswire.com/news/home/20250113725048/en/Shippeo-Raises-$30m-Strategic-Round-Led-by-Woven-Capital-to-Accelerate-US-and-APAC-Expansion

(32) Shippeo prior funding $40M — https://www.freightwaves.com/news/shippeo-raises-40m-to-further-supply-chain-visibility-platform-expansion

(33) Shippeo named Leader in 2024 Gartner MQ for RTTV Platforms; Gartner APAC caveat — https://www.shippeo.com/en/resources/gartner-magic-quadrant-2024

(34) Trimble acquires Transporeon for €1.88B — https://www.transporeon.com/en/company/press/trimble-acquires-transporeon

(35) GSBN adds Westports Malaysia, ICTSI, Portbase — https://www.ledgerinsights.com/shipping-blockchain-network-gsbn-portbase-ictsi-westport/

(36) CargoX Egypt NAFEZA deployment — https://cargox.io/content-hub/blockchain-blockbuster-egyptian-government-cargox

(37) CargoX authorized as Egypt blockchain gateway — https://www.tradefinanceglobal.com/posts/cargox-authorized-by-the-egyptian-government-as-blockchain-provider-for-aci-declaration/

(38) CargoX to serve former TradeLens users — https://www.freightwaves.com/news/cargox-to-provide-blockchain-freighttech-to-former-tradelens-users

(39) Maersk + IBM TradeLens shutdown announcement — https://www.maersk.com/news/articles/2022/11/29/maersk-and-ibm-to-discontinue-tradelens

(40) Supply Chain Dive — TradeLens shutdown analysis — https://www.supplychaindive.com/news/Maersk-IBM-shut-down-TradeLens/637580/

(41) Yojee Singapore multi-leg freight visibility — https://www.yojee.com/

(42) Locus TMS for SEA CPG logistics — https://locus.sh/blogs/cpg-distributor-logistics-southeast-asia/

(43) Uber Freight Broker Access launch, November 2024 — https://www.globenewswire.com/news-release/2024/11/14/2981011/0/en/Uber-Freight-Launches-Broker-Access-to-Extend-Marketplace-Value-to-the-Broader-Freight-Ecosystem.html

(44) Ocean Network Express adopts DCSA eBL via GSBN — https://smartmaritimenetwork.com/2025/02/25/ocean-network-express-adopts-dcsa-ebl-standards-using-gsbn-blockchain/

(45) GSBN Thailand/China eBL interoperability pilot (cross-platform trade finance) — https://gsbn.trade/banks-embrace-ebl-interoperability-with-live-cross-platform-trade-finance-transaction-in-thailand-and-china

---

### Assumptions to validate

[ASSUMED-1]: Road freight in SEA has no digital custody document with cryptographic integrity equivalent to eBL — ePOD solutions in use are photo/signature with no tamper-evident record.
- to validate: Ask a regional 3PL operations director in Indonesia or Thailand: "What is your current proof-of-custody at each transfer point? Is it digitally signed, photo-only, or paper? Have you ever had a cargo claim where you could not prove where the goods were when the damage occurred?"

[ASSUMED-2]: Enterprise TMS records are not updated when a 3PL re-routes through a sub-carrier at the last minute, creating a permanent discrepancy between planned and actual carrier.
- to validate: Ask a shipper's logistics technology lead: "When your 3PL assigns a load to a sub-carrier you did not contract with, does that appear in your TMS? How often does this happen and does it affect your insurance coverage for that leg?"

[ASSUMED-3]: ELD mandates do not exist in SEA countries, making broker-tier ELD-based tracking tools (MacroPoint model) structurally inapplicable without alternative data-capture investment.
- to validate: Confirm with LTFRB (Philippines), DLLAJ (Indonesia), DLT (Thailand) whether any commercial vehicle telematics mandate is in force or planned; ask a regional fleet operator what percentage of their trucks have GPS trackers today.

[ASSUMED-4]: Insurance claims adjusters for cargo loss in multi-leg SEA moves cannot access a complete chain-of-custody timeline because it does not exist, forcing settlement rather than evidence-based adjudication.
- to validate: Ask a Tokio Marine or Sompo cargo claims adjuster: "In a typical multi-leg SEA cargo theft claim, what custody documentation do you receive? How often do you have to settle without knowing which carrier had the goods at the time of loss?"

[ASSUMED-5]: No platform today bridges global RTTV visibility (project44/FourKites) to domestic SEA last-mile legs managed by local 3PLs (Yojee/Locus), creating a systematic undocumented custody gap at the global-to-local handoff point.
- to validate: Ask a multinational shipper with SEA operations: "When your ocean shipment clears customs in Jakarta and is handed to a local trucking company, does your project44 or FourKites tracking continue? Or do you lose visibility at that point?"

[ASSUMED-6]: Per-shipment SaaS pricing for RTTV platforms ($2–$10/shipment) is economically unviable for low-margin bulk and commodity freight in SEA, leaving the majority of SEA freight volume untracked.
- to validate: Ask a freight broker in Thailand or Indonesia: "What is your typical per-shipment margin on domestic trucking? Would you pay $2–$5 per shipment for real-time tracking on every load?"

[ASSUMED-7]: Blockchain-based chain-of-custody records are not yet legally admissible as primary evidence in cargo loss disputes in most SEA jurisdictions (Indonesia, Thailand, Vietnam, Philippines) due to absence of MLETR-compatible electronic trade document legislation.
- to validate: Confirm with local trade counsel in each target SEA jurisdiction whether the Electronic Trade Documents Act (UK 2023), MLETR, or equivalent has been enacted; ask an insurance litigator whether electronic custody records have been accepted as primary evidence in a recent cargo claim.

