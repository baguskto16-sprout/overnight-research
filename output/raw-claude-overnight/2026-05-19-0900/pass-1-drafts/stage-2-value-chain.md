## Stage 2: Dispatch, Freight Tendering & TMS

*Value chain: Risk-management solutions for the freight/logistics journey*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*
*Risk angle: How TMS/freight procurement platforms expose (or fail to expose) risk signals at load-tender time — vendor vetting, fraud signals, insurance check at award, route-risk flags at booking*

---

### Description

Transportation Management System (TMS) and freight procurement platforms are software solutions used by shippers (manufacturers, retailers), 3PLs, freight brokers, and freight forwarders to plan, execute, and settle freight moves across all modes. At the load-tender moment — when a load is awarded to a specific carrier or service provider — these platforms have a structural opportunity to surface risk signals (carrier authority status, insurance validity, fraud pattern flags) but most enterprise systems were not designed with real-time risk intelligence as a native function, creating the whitespace this research is tracking.

---

### Activities

1. **Freight tendering and carrier selection:** Platforms manage request-for-quotation (RFQ) cycles, routing guides, primary-carrier-first tender waterfalls, and spot auctions to award loads to ranked carriers based on rate and service criteria.
2. **Transport planning and optimization:** Route planning, mode selection (TL/LTL/parcel/intermodal/ocean), consolidation logic, and load building to minimize cost per shipment or per unit of freight spend.
3. **Carrier network management:** Maintaining carrier master data, contracted rates, service-level parameters, and (in modern systems) carrier risk/compliance attributes including DOT authority, insurance certificates, and safety scores.
4. **Shipment execution and visibility:** Dispatching loads, communicating with carriers via EDI or API, tracking shipment status, and providing shipper and consignee updates through in-platform portals or push notifications.
5. **Freight audit, payment, and settlement:** Invoice matching against contracted rates, exception-based dispute resolution, and approved-invoice payment to carriers — a downstream activity where billing fraud can also surface.

---

### Revenue Model

Annual recurring SaaS subscription (seat- or transaction-volume-based, typically $100K–$2M+ enterprise ACV for Tier-1 platforms) plus professional-services revenue for implementation; digital freight broker variants earn a spread between carrier buy-rate and shipper sell-rate on brokered loads (Uber Freight, Loadsmart). (1)(3)(4)

---

### Cost Drivers

R&D headcount for platform development and AI/ML capability builds; cloud infrastructure (compute + data storage at scale, e.g., E2open processes 18 billion transactions/year); carrier network data licensing and integration maintenance (EDI, API connectivity to 450K+ carriers); sales and implementation cycles averaging 6–18 months for enterprise TMS deals; and ongoing customer success / support for complex logistics configurations. (3)(4)

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global TMS market size, 2024 (broad definition including SaaS + perpetual license + services) | $4.8B–$9.8B (range reflects different analyst scope boundaries) | Low — significant divergence between research firms; no single Tier-1 government or multilateral source available | (5)(6)(7) |
| QKS Group TMS market estimate, 2024 → 2030 | $4.1B in 2024, projected $6.3B by 2030 at 6.7% CAGR | Medium — QKS Group is a Forrester/Gartner peer-tier advisory firm; December 2024 press release via GlobeNewswire | (5) |
| TMS market, Europe + North America only, 2028 projection | €5 billion (~$5.4B) by 2028 per ResearchAndMarkets | Low — single firm, paywalled underlying report; headline from BusinessWire press release | (6) |
| Gartner prior forecast (2019–2024) for TMS market | $1.32B → $2.11B (2019–2024 forecast period) — indicates pure-software narrow definition | Low — Gartner does not publish current full estimates without subscription; figure is from secondary citation | (7) |
| Asia-Pacific TMS/freight management market, 2024 → 2032 | $1.87B in 2024, projected $4.14B by 2032 at 10.7% CAGR | Low — Data Bridge Market Research; secondary market research firm only | (8) |
| SEA country-level TMS market size | Data gap — no country-level figure available for Singapore, Indonesia, Thailand, Malaysia, Vietnam, or Philippines from any Tier-1 source. APAC CAGR (~10-11%) used as directional proxy; field validation needed. | N/A | (8) |
| Named enterprise TMS vendors evaluated in 2025 Gartner MQ | 17 vendors evaluated; published March 24, 2025 | High — Gartner publication confirmed via multiple vendor announcements | (9)(10)(11) |

**Market size methodology note:** The wide range ($4.8B–$9.8B) reflects definitional differences: broad definitions include SaaS subscription, perpetual license, and associated professional services; narrow definitions count only software license/subscription revenue. QKS Group's $4.1B (2024) using the narrower software-only scope is the most credible single estimate available from a named advisory firm. The Gartner $2.1B (2024) figure from an older forecast likely excludes services. Both figures are cited; neither is cross-validated by government statistics because no national statistical agency reports TMS software separately.

`Geography mismatch — no SEA country-level TMS market size found in any source tier; APAC regional aggregate used as proxy; field validation needed.`

---

### Solutions Profiled

#### 1. Oracle Transportation Management (OTM) / Oracle Fusion Cloud TM

| Field | Detail |
|-------|--------|
| Country of origin | United States |
| Parent | Oracle Corporation (NYSE: ORCL) |
| What it does | Full-suite multi-modal TMS: transport planning, carrier management, freight tendering (RFQ/contract/spot), execution tracking, freight audit & payment, and global trade compliance embedded in Oracle Fusion Cloud SCM |
| Primary user | Enterprise shippers (large manufacturers, retailers, CPG), 3PLs, and freight forwarders needing multi-modal / cross-border capability |
| Business model | SaaS subscription (Oracle Cloud); legacy perpetual license for on-premise OTM still in support; pricing confidential, enterprise ACV estimated $200K–$2M+ |
| Pricing | Confidential; enterprise-only quoting; implementation cost $500K–$3M+ per Tier-1 deployment (industry estimate) |
| Pros | Highest ability to execute in 2025 Gartner MQ (positioned furthest right and highest); 18th consecutive year as Leader; deep multi-modal, global trade, and freight invoice matching capabilities; strong Oracle ERP/WMS integration |
| Cons | High implementation cost and complexity; historically long go-live timelines; limited native fraud/carrier-risk intelligence at tender time; carrier vetting requires third-party integration |
| SEA presence | Oracle has localized pages and regional go-to-market in sg, id, my, ph, th, vn. Regional sales and support offices in Singapore. Existing OTM deployments with manufacturers and 3PLs in the region — specific customer names not publicly disclosed |
| Funding/scale | Parent Oracle FY2024 total revenue $53B (6% growth); OTM revenue not broken out separately; Oracle SCM Cloud is material business unit |
| Risk-signal capability | Minimal native: no real-time carrier fraud or insurance check at tender time; route-risk flagging absent; relies on static carrier master data and EDI; third-party integration (e.g., Descartes MyCarrierPortal, Highway) needed to add live risk layer |

Sources: (9)(10)(12)

---

#### 2. Blue Yonder Transportation Management

| Field | Detail |
|-------|--------|
| Country of origin | United States (HQ: Scottsdale, AZ) |
| Parent | Panasonic Holdings (acquired 100% for $7.1B in 2021; Blue Yonder also acquired One Network Enterprises for $839M in August 2024) |
| What it does | Cloud-native multi-enterprise TMS with AI/ML-driven cognitive optimization; multi-modal planning, carrier collaboration, and real-time visibility via Luminate platform; in 2025 added a Logistics Ops Agent for real-time insights |
| Primary user | Large shippers, 3PLs, automotive/retail logistics networks needing AI-powered network optimization |
| Business model | SaaS subscription; pricing not published; enterprise ACV estimated $300K–$2M+; professional services add-on |
| Pricing | Confidential enterprise; described by reviewers as expensive |
| Pros | 14th consecutive year as Leader in 2025 Gartner MQ; strong AI/ML optimization; multi-enterprise network approach post-One Network acquisition; real-time visibility via Sixfold/Transporeon partnership |
| Cons | No native carrier fraud/vetting at tender; costly; Panasonic parent creates uncertainty about investment priority vs. industrial IoT; limited presence for SME logistics buyers |
| SEA presence | Blue Yonder has a Transporeon partnership (both now Trimble-adjacent) providing APAC visibility. Blue Yonder has sales presence in Singapore. Specific SEA TMS customer deployments are not publicly documented |
| Funding/scale | Private (Panasonic subsidiary); Blue Yonder revenue not separately reported; acquired One Network for $839M Aug 2024; acquired flexis AG Feb 2024 |
| Risk-signal capability | Minimal native risk signal at tender: relies on static carrier attributes; Transporeon partnership provides real-time tracking compliance data but not fraud/insurance signals; no live carrier insurance check at award |

Sources: (9)(10)(13)(14)

---

#### 3. E2open TMS (Global Transportation Suite, incl. BluJay TMS)

| Field | Detail |
|-------|--------|
| Country of origin | United States (HQ: Austin, TX) |
| Parent | E2open Parent Holdings (NYSE: ETWO) — acquired BluJay Solutions in 2021 |
| What it does | Multi-enterprise supply chain SaaS platform with embedded TMS (planning, tendering, execution, visibility, trade compliance); 500,000 connected enterprises on network; 18B transactions/year |
| Primary user | Global shippers, 3PLs, freight forwarders — especially those needing multi-modal, cross-border, and global trade compliance in a single platform |
| Business model | Pure SaaS subscription (per-module, volume-based pricing); FY2025 total revenue $607.7M (down 4.2% YoY); subscription revenue $528.0M (91% of total) |
| Pricing | Confidential enterprise; estimated $150K–$1M+ ACV for TMS module |
| Pros | Third consecutive year as Leader in 2025 Gartner MQ; largest multi-enterprise network by transaction count; strong global trade compliance embedded; BluJay heritage brings parcel and freight broker TMS depth |
| Cons | Revenue declining (FY25 -4.2%); net loss $725.8M in FY25; investor pressure; platform complexity from multiple M&A integrations; weak risk-signal capability at tender time |
| SEA presence | E2open has Asia-Pacific operations; Singapore listed as a key office. BluJay pre-merger had APAC freight forwarder customers. Specific SEA TMS deployments not publicly documented; strategic focus appears weighted toward North America and Europe |
| Funding/scale | Public (NYSE: ETWO); market cap ~$1.1B (May 2026 estimate); FY2025 revenue $607.7M; FY2026 guidance $600M–$618M |
| Risk-signal capability | Minimal: no native carrier fraud, insurance, or route-risk scoring at tender; platform includes carrier compliance tracking (CSA scores, authority) via integration but not real-time fraud pattern detection |

Sources: (3)(9)(10)

---

#### 4. SAP Transportation Management (SAP TM / S/4HANA embedded)

| Field | Detail |
|-------|--------|
| Country of origin | Germany (HQ: Walldorf, Germany) |
| Parent | SAP SE (NYSE: SAP; Frankfurt: SAP) |
| What it does | Transportation management module embedded within SAP S/4HANA and available as cloud extension; covers freight order management, carrier selection, freight tendering, subcontracting, settlement, and intermodal planning |
| Primary user | SAP ERP-centric enterprises (large manufacturers, CPG, automotive, chemicals) seeking TMS tightly integrated with procurement, finance, and inventory |
| Business model | License/SaaS subscription bundled with SAP S/4HANA; pricing embedded within broader SAP enterprise agreements; not sold as standalone TMS to non-SAP shops |
| Pricing | Confidential; deeply bundled into SAP RISE subscriptions or module add-ons; enterprise-only |
| Pros | 10th consecutive year as Leader in 2024 Gartner MQ; deep integration with SAP ERP, procurement, and trade compliance; strong in regulated industries; Asia-Pacific investing in Indonesia, Vietnam, Bangladesh |
| Cons | Complex to implement; primarily useful only for existing SAP shops; limited if used outside SAP ecosystem; no native fraud/carrier-risk layer at tender; SEA deployments primarily large multinationals, not local logistics players |
| SEA presence | SAP has offices and partner network across Singapore, Indonesia, Thailand, Malaysia, Vietnam, Philippines. SAP TM deployments confirmed at large manufacturers and multinationals in SEA; SAP specifically named Indonesia, Vietnam, Sri Lanka, and Bangladesh as investment markets. SEA page at sap.com/sea confirms regional product availability |
| Funding/scale | Public (SAP SE); FY2024 total revenue ~€33B; TM module revenue not separately reported |
| Risk-signal capability | Absent: SAP TM has no native carrier fraud or live insurance verification at tender; carrier master is static; requires third-party data feeds or custom integration for any risk-signal layer |

Sources: (9)(10)(15)(16)

---

#### 5. Manhattan Active Transportation Management (Manhattan Active TM)

| Field | Detail |
|-------|--------|
| Country of origin | United States (HQ: Atlanta, GA) |
| Parent | Manhattan Associates, Inc. (Nasdaq: MANH) |
| What it does | Cloud-native, continuously updated ("evergreen") TMS focused on shipper-side transport planning, carrier management, parcel and LTL optimization, and connected supply chain execution; tight integration with Manhattan WMS and OMS |
| Primary user | Omnichannel retailers, e-commerce shippers, and large CPG companies needing unified execution across warehouse, transport, and order fulfillment |
| Business model | SaaS subscription (cloud-native); FY2024 total revenue $1,042.4M (+12% YoY); cloud subscription revenue $337.2M (+32% YoY) |
| Pricing | Confidential enterprise; Manhattan identified TMS as one of two key growth markets in 2025; pricing not published |
| Pros | 7th consecutive year as Leader in 2025 Gartner MQ; fastest-growing cloud subscription among major TMS vendors (+32% in FY24); evergreen cloud model eliminates costly upgrades; strong WMS-TMS integration |
| Cons | North-America-heavy customer base; TMS is newer growth vector (WMS is core); limited SEA footprint; no native carrier fraud/insurance check at tender |
| SEA presence | Manhattan has APAC offices (Singapore confirmed); primarily WMS customer base in SEA; TMS traction in SEA is limited — primarily global shippers with Manhattan WMS expanding into TMS |
| Funding/scale | Public (Nasdaq: MANH); market cap ~$20B; FY2024 revenue $1,042.4M |
| Risk-signal capability | Absent: no native carrier fraud detection, insurance verification, or route-risk scoring at tender time |

Sources: (2)(9)(10)

---

#### 6. Transporeon (Trimble Transportation & Logistics Segment)

| Field | Detail |
|-------|--------|
| Country of origin | Germany (HQ: Ulm, Germany; now within Trimble, Sunnyvale CA) |
| Parent | Trimble Inc. (Nasdaq: TRMB) — acquired for €1.88B in April 2023 |
| What it does | Freight procurement and execution platform: spot tendering, contract tendering (RFQ/RFP), time-slot management, real-time visibility (Sixfold), and carrier network management across road freight in Europe and APAC; connects 145,000 carriers, 1,400 shippers |
| Primary user | European shippers and large logistics service providers seeking digital freight procurement and operational visibility; APAC presence via Singapore office |
| Business model | SaaS subscription (per-shipper seat + transaction-volume tiers); ~€190M (~$200M) projected revenue in 2023 (pre-acquisition full-year); Trimble discloses ARR $2.19B for full T&L segment (Q3 2024) but Transporeon not separately broken out |
| Pricing | Confidential; enterprise shipper-side subscription plus carrier network access fees |
| Pros | Gartner MQ Challenger (2025); deep European road-freight carrier network (145K carriers, 25M+ transports/year); Sixfold real-time visibility; strong freight procurement/tendering workflow; Singapore office (TRANSPOREON GROUP ASIA PACIFIC PTE. LTD.) |
| Cons | Europe-centric; SEA carrier network underdeveloped vs. European depth; fraud/insurance-check capability absent; Trimble integration creates product roadmap uncertainty |
| SEA presence | Registered Singapore entity: TRANSPOREON GROUP ASIA PACIFIC PTE. LTD. (UEN 201223934H), 60 Paya Lebar Road, #10-18, Singapore 409051. LinkedIn presence in Philippines. Carrier network depth in SEA is thin vs. European operations |
| Funding/scale | Part of Trimble Inc.; Trimble T&L segment ARR $2.19B (Q3 2024 organic +13% YoY); Transporeon contributed ~€190M full-year revenue (2023) |
| Risk-signal capability | Partial: real-time tracking compliance data via Sixfold can signal carrier execution risk post-tender; no native carrier fraud or insurance check at award; procurement-side risk limited to carrier performance history |

Sources: (14)(17)(18)

---

#### 7. Alpega TMS

| Field | Detail |
|-------|--------|
| Country of origin | Belgium (HQ: Brussels) |
| Parent | Alpega Group (private; backed by Francisco Partners, PE) |
| What it does | Cloud SaaS TMS and freight tendering platform combining inet, Transwide, and TenderEasy brands; covers full logistics lifecycle from freight sourcing/tendering through execution, visibility, and settlement; strong in European road freight and shipper-carrier collaboration |
| Primary user | European mid-to-large shippers seeking a dedicated tendering and TMS platform outside of SAP/Oracle ecosystem; some global deployments |
| Business model | SaaS subscription; pricing not published; implementation fees on top; Gartner Challenger (2025) |
| Pricing | Confidential |
| Pros | Gartner Challenger 2025 (first appearance after consistently evaluated); strong freight tendering and spot-auction capabilities; open carrier network model |
| Cons | Europe-centric; limited SEA presence or carrier network in SEA; no native fraud/insurance-check at tender; smaller R&D budget vs. Oracle/SAP/Blue Yonder |
| SEA presence | No confirmed SEA office or regional reseller identified in public sources. Primarily European deployments |
| Funding/scale | Private; Francisco Partners investment; revenue not disclosed |
| Risk-signal capability | Absent: no native carrier fraud detection or insurance check; tender-time risk signals rely entirely on manual processes or third-party integrations |

Sources: (9)(10)(19)

---

#### 8. Descartes Aljex TMS + MacroPoint (Freight Broker Focus)

| Field | Detail |
|-------|--------|
| Country of origin | Canada (HQ: Waterloo, Ontario) |
| Parent | Descartes Systems Group (Nasdaq: DSGX; TSX: DSG) |
| What it does | Aljex: purpose-built TMS for US freight brokers — load management, carrier tendering, settlement, and agent-network management. MacroPoint: real-time load tracking with GPS/mobile-based carrier position data fed into Aljex. MyCarrierPortal (acquired Sept 2024 from CarrierSource): carrier onboarding, compliance vetting, insurance monitoring, and fraud detection integrated into Aljex workflow |
| Primary user | US and North American freight brokers (asset-light, agent-based models); mid-market brokers |
| Business model | SaaS subscription per-seat; Descartes FY2025 (ended Jan 31, 2025) total revenue $651.0M (+14% YoY); services revenue $590.2M (91% of total) |
| Pricing | Aljex: per-seat monthly subscription; estimated $100–$300/seat/month for broker TMS; MacroPoint: per-load or subscription pricing |
| Pros | Only Gartner-evaluated TMS vendor with native carrier fraud/vetting capability via MyCarrierPortal acquisition (Sept 2024); tracking-history risk scoring for carrier fraud detection; integrated insurance monitoring; strong freight broker workflow depth |
| Cons | Primarily North America freight broker market; limited enterprise shipper TMS capability; SEA presence minimal; carrier network and compliance data built on FMCSA/North America sources — not replicable in SEA without local data infrastructure |
| SEA presence | Descartes has global logistics network and customs/trade compliance products used in SEA (Singapore, Malaysia, Indonesia); Aljex and MacroPoint are primarily North America products; no confirmed SEA TMS customer deployments for Aljex |
| Funding/scale | Public (DSGX/DSG); FY2025 revenue $651.0M; market cap ~$7B (2025) |
| Risk-signal capability | **Strongest in class for fraud/risk integration:** MyCarrierPortal (acquired Sept 2024) adds real-time carrier identity verification, insurance certificate monitoring, fraud pattern flags, and tracking-history compliance scoring directly into the Aljex tender workflow. This is the most complete native risk-at-tender integration among evaluated platforms |

Sources: (4)(10)(20)(21)

---

#### Supplementary — Uber Freight TMS / Digital Broker Hybrid

| Field | Detail |
|-------|--------|
| Country of origin | United States |
| Parent | Uber Technologies (NYSE: UBER) |
| What it does | Digital freight broker with embedded proprietary TMS; manages spot and contract truckload; launched Broker Access in 2024 (allowing third-party brokers onto its carrier network); AI TMS powered by LLM trained on $20B in freight data |
| Primary user | US shippers needing truckload spot and contract capacity; also targeting third-party freight brokers via Broker Access |
| Business model | Transaction-based brokerage spread (buy/sell rate margin); FY2024 freight revenue $1.3B (down 17% YoY due to soft freight market) |
| Pricing | Spot load commission / margin; TMS platform access bundled |
| Pros | Massive carrier network in North America; AI-powered pricing using $20B freight data set; real-time tracking via Uber's network; moving toward platform-as-a-service model for brokers |
| Cons | Revenue declined 17% in 2024; US-only freight market; no SEA presence; no native carrier fraud/insurance signal at tender — Uber validates carriers into its own network but does not expose this as a risk API to third parties |
| SEA presence | None |
| Funding/scale | Uber Technologies parent; freight segment $1.3B revenue (2024) |
| Risk-signal capability | Carrier pre-vetting on Uber's own network (not exposed as API); no fraud signal or insurance check surfaced to shipper/broker at tender time |

Sources: (22)(23)

---

### Current Players by Region

**North America (United States / Canada):**
- Oracle OTM — dominant enterprise TMS for large shippers; 18th Gartner MQ Leader; highest Ability to Execute (2025)
- Manhattan Associates Active TM — fastest-growing cloud TMS subscription (+32% FY24); 7th consecutive Gartner Leader
- E2open (BluJay) — largest transaction network (500K enterprises, 18B txn/year); revenue under pressure but platform scale unmatched
- Descartes Aljex + MacroPoint — leading freight broker TMS with strongest native fraud/risk layer post-MyCarrierPortal acquisition
- C.H. Robinson Navisphere — proprietary TMS embedded in 3PL operations; 83K shippers and 450K carriers on network; also licensed to third-party shippers

**Europe:**
- SAP TM — dominant for SAP-ERP-centric manufacturers and CPG; 10th Gartner MQ Leader
- Transporeon (Trimble) — leading freight procurement network; 145K carriers, 1,400 shippers; Gartner Challenger 2025
- Alpega TMS — Gartner Challenger 2025; strong in European road freight tendering and spot auctions
- Blue Yonder — Gartner Leader 2025; significant European presence (flexis AG acquisition Feb 2024 adds manufacturing planning depth)
- Infios (formerly MercuryGate / Korber Supply Chain) — Gartner Challenger 2025; 5,000+ customers in 70 countries

**Southeast Asia — Named Presence:**
- Oracle OTM — regional office Singapore; localized product pages for sg/id/my/ph/th/vn; multinational enterprise deployments confirmed but not named publicly
- SAP TM — offices and partner network across all 6 SEA target countries; specific investment in Indonesia, Vietnam, Bangladesh per SAP SEA news
- Transporeon — registered Singapore entity (UEN 201223934H) at 60 Paya Lebar Road; APAC go-to-market, but carrier network depth thin vs. Europe
- Pando — Chennai-founded TMS startup with explicit SEA expansion mandate; $30M Series B (Iron Pillar/Uncorrelated Ventures, May 2023); recognized in 2025 Gartner MQ for TMS; counts Fortune 500 manufacturers (P&G, J&J, Cummins, Siemens) as customers; SEA deployment confirmed as strategic priority
- Descartes — Singapore, Malaysia, Indonesia logistics network / customs compliance products; Aljex is NA-only but Descartes' broader TMS suite has APAC deployments

**Note on SEA whitespace:** No Gartner-MQ-recognized TMS platform has native carrier fraud detection, real-time insurance check, or route-risk scoring with local SEA regulatory data (Indonesian KPPU, Thai DOT, Malaysian APAD, etc.) embedded at the load-tender moment. This is a confirmed gap. [ASSUMED-3]

Sources: (2)(3)(4)(9)(10)(14)(15)(17)(24)(25)

---

### Preliminary Pain Points (this stage)

1. **Enterprise TMS platforms have no native fraud signal at tender time:** Oracle OTM, SAP TM, Blue Yonder, and Manhattan Active TM all rely on static carrier master data; none surfaces a live "fraud risk" flag when a load is tendered to a specific carrier. A fraudulent MC/DOT number or cloned carrier identity is indistinguishable from a legitimate one at the moment of award. (10)(20)

2. **Carrier insurance verification is manual or absent at load award:** In most TMS workflows, insurance compliance is checked at carrier onboarding (infrequent, quarterly or annual cycle) not at tender time. A carrier can lose or reduce coverage between onboarding and the moment a $200K+ load is awarded with no automated check firing. (20)(21)

3. **Route-risk information (theft hotspots, geopolitical disruption, weather) is not natively integrated at booking time:** TMS routing is cost/service optimized; external threat intelligence (cargo theft corridors, port congestion, customs delay risk by lane) is not embedded in the carrier selection or routing decision. Shippers must manually consult separate risk-intelligence tools. (Evidence suggests — trade press reporting on fraud surge 2024–2025)

4. **Double-brokering and identity fraud are not detectable by TMS platforms during tender:** A carrier that accepts a tender and then illegally re-tenders the load to another carrier creates liability exposure and cargo theft risk; mainstream TMS platforms have no detection layer for this pattern. Only specialized tools (Highway, Descartes MyCarrierPortal, Truckstop RMIS) can flag it, and these require separate integration. (20)(21)

5. **Pricing transparency for risk-adjusted tendering is absent:** TMS rate optimization focuses on cost minimization; it does not price in carrier risk premium (probability of claim, cargo theft risk by lane, carrier financial stability). A low-cost carrier that is also a high-fraud-risk carrier wins the tender on price. (Evidence suggests — industry commentary on fraud surge)

6. **SEA TMS platforms have no carrier compliance data infrastructure analogous to US FMCSA:** The risk tools that do exist in North America (FMCSA lookups, SAFER database, CSA scores) have no equivalent in SEA government data systems. This means even if a Western TMS platform were deployed in SEA, its risk layer would have no local carrier authority or safety data to query. [ASSUMED-1]

7. **Fragmented carrier onboarding processes in SEA create data gaps:** SEA logistics markets feature thousands of small owner-operators and informal truckers (Indonesia: an estimated 3M+ registered commercial vehicles) who are not connected to any digital compliance registry, making automated carrier risk scoring structurally impossible with current data infrastructure. [ASSUMED-2]

8. **TMS implementation cost and complexity is prohibitive for SEA SME logistics players:** Enterprise TMS from Oracle, SAP, or Blue Yonder requires $500K–$3M+ implementation and 12–18 months deployment — inaccessible to the SME freight brokers, 3PLs, and regional carriers that dominate SEA logistics. Local solutions are underdeveloped. (Evidence suggests — pricing range from industry sources; IMDA Singapore IDP identifies TMS as Stage 2–3 digital readiness step for logistics SMEs)

9. **E2open's revenue decline (-4.2% FY25) signals consolidation pressure in the TMS market:** The largest multi-enterprise network platform is losing revenue, suggesting shippers are not simply replacing one TMS with another but rethinking whether monolithic platforms deliver value — creating potential for modular, risk-focused add-ons. (3)

10. **Freight broker TMS tools (Aljex, MercuryGate/Infios) are North-America-architected and cannot serve SEA broker workflows:** Local compliance requirements (e.g., Indonesian SIUP freight licenses, Thai Customs Form C, Malaysian Customs K1/K2) are not supported, so SEA freight brokers who attempt to use these tools face immediate regulatory compliance gaps.  [ASSUMED-2]

11. **Visibility and tracking integration with risk signals is disconnected:** Transporeon's Sixfold provides real-time carrier GPS tracking, and this data contains implicit risk signals (carrier deviating from route, unexplained stops in high-theft zones); but this tracking data is not fed back into a risk-scoring layer that could trigger insurance alerts or flag suspicious carrier behavior. (14)(18)

12. **Carrier network coverage in SEA is a structural gap for all Western TMS platforms:** Transporeon's 145,000-carrier network is primarily European; Oracle's carrier connectivity in SEA relies on EDI/API self-registration by carriers; in practice the SEA trucking market's fragmentation means carrier data coverage in TMS platforms is thin, making automated risk scoring even harder. (17)(18)

---

### Sources for this stage

(1) QKS Group / GlobeNewswire — "Transportation Management System (TMS) Market Size Expected to Reach $6.3 billion by 2030 at a CAGR of 6.7%" (December 4, 2024): https://www.globenewswire.com/news-release/2024/12/04/2991716/0/en/Transportation-Management-System-TMS-Market-Size-Expected-to-Reach-6-3-billion-by-2030-At-a-CAGR-of-6-7-as-per-the-Exclusive-Report-from-QKS-Group.html

(2) Manhattan Associates 10-K FY2024 (SEC filing via EDGAR, filed 2025): https://www.sec.gov/Archives/edgar/data/0001056696/000095017025016295/manh-20241231.htm — "Record 2024 Fourth Quarter and Full Year Results: total revenue $1,042.4M; cloud subscription $337.2M (+32% YoY)"

(3) E2open Parent Holdings 10-K FY2025 (SEC filing via EDGAR): https://www.sec.gov/Archives/edgar/data/0001800347/000095017025060216/etwo-20250228.htm — "FY2025 total GAAP revenue $607.7M (-4.2%); subscription revenue $528.0M; 500,000 connected enterprises; 18B transactions/year"

(4) Descartes Systems Group 40-F FY2025 (SEC filing, filed March 2025): https://www.sec.gov/Archives/edgar/data/0001050140/000092963825001603/exhibit99-1.htm — "FY2025 revenues $651.0M (+14%); services revenue $590.2M (91%)"

(5) QKS Group via GlobeNewswire December 2024: https://www.globenewswire.com/news-release/2024/12/04/2991716/0/en/Transportation-Management-System-TMS-Market-Size-Expected-to-Reach-6-3-billion-by-2030-At-a-CAGR-of-6-7-as-per-the-Exclusive-Report-from-QKS-Group.html

(6) ResearchAndMarkets / BusinessWire — "Transport Management Systems Market Report 2024: TMS Market Value in Europe and North America Set to Reach €5 billion by 2028" (July 22, 2024): https://www.businesswire.com/news/home/20240722642127/en/Transport-Management-Systems-Market-Report-2024---TMS-Market-Value-in-Europe-and-North-America-Set-to-Reach-%E2%82%AC-5-billion-by-2028---ResearchAndMarkets.com [NEEDS-ATTENDED-FETCH — Akamai block on direct access]

(7) Gartner Magic Quadrant for Transportation Management Systems 2025 (published March 24, 2025) — available via vendor landing pages: https://www.gartner.com/en/documents/6290615 [NEEDS-ATTENDED-FETCH — Gartner paywall]

(8) Data Bridge Market Research — "Asia-Pacific Freight Transportation Management Market" — APAC TMS $1.87B (2024) → $4.14B (2032) at 10.7% CAGR: https://www.databridgemarketresearch.com/reports/asia-pacific-freight-transportation-management-market [secondary market research firm — Low confidence]

(9) Oracle press release — "Oracle Named a Leader in Gartner Magic Quadrant for Transportation Management Systems for 18th Time" (April 10, 2025): https://www.oracle.com/news/announcement/oracle-named-a-leader-in-2025-gartner-magic-quadrant-for-transportation-management-systems-2025-04-10/

(10) Manhattan Associates press release — "Manhattan Named a 7X Leader in 2025 Gartner Magic Quadrant for TMS": https://www.manh.com/about-us/newsroom/press-releases/manhattan-named-7x-leader-gartner-mq-tms

(11) Blue Yonder blog — "Blue Yonder named a Leader in the 2025 Gartner Magic Quadrant for Transportation Management Systems": https://blueyonder.com/blog/2025/blue-yonder-named-a-leader-in-the-2025-gartner-magic-quadrant-for-transportation-management-systems

(12) Oracle TMS product page ASEAN: https://www.oracle.com/asean/scm/logistics/transportation-management/what-is-transportation-management-system/

(13) Panasonic/Blue Yonder acquisition: https://holdings.panasonic/global/corporate/investors/pdf/en210423-1.pdf — "$7.1B acquisition; combines Luminate platform with Panasonic IoT capabilities"

(14) Transporeon + Blue Yonder partnership press release: https://www.transporeon.com/en_ASIA/company/press/partnership-with-blue-yonder

(15) SAP named Leader in 2024 Gartner MQ for TMS (10th consecutive year): https://news.sap.com/2024/04/sap-named-a-leader-2024-gartner-magic-quadrant-transportation-management-systems/

(16) SAP SEA product page: https://www.sap.com/sea/products/scm/transportation-logistics.html

(17) Trimble press release — "Trimble to Acquire Transporeon to Strengthen and Accelerate Connect & Scale Strategy" (Dec 2022; closed April 2023): https://investor.trimble.com/news-releases/news-release-details/trimble-acquire-transporeon-strengthen-and-accelerate-connect

(18) Trimble press release — "Trimble Unveils Transporeon Visibility with Seamless TMS Integration" (September 2024): https://www.prnewswire.com/news-releases/trimble-unveils-transporeon-visibility-with-seamless-tms-integration-302249200.html

(19) Alpega Group — 2025 Gartner MQ Challenger: https://www.alpegagroup.com/en-en/community/library/2025-gartner-magic-quadrant-for-transportation-management-systems-tms/

(20) Descartes acquires MyCarrierPortal (September 2024): https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html — "adds carrier onboarding, compliance vetting, insurance monitoring, and fraud detection to Aljex TMS workflow"

(21) Descartes MyCarrierPortal tracking history for fraud protection: https://www.mycarrierportal.com/resources/news/mycarrierportal-adds-tracking-history-for-enhanced-fraud-protection-risk-analysis/

(22) Uber Freight — FY2024 revenue $1.3B (-17% YoY) per Uber Technologies Form 8-K FY2024: https://www.sec.gov/Archives/edgar/data/0001543151/000154315124000033/uberq324earningspressrelea.htm

(23) Uber Freight AI TMS and Broker Access launch: https://www.uberfreight.com/en-US/blog/uber-freights-tms-ushers-in-a-new-era-of-logistics-with-adaptability-and-control

(24) Transporeon Group Asia Pacific PTE. LTD. Singapore registration (UEN 201223934H): https://www.sgpbusiness.com/company/Transporeon-Group-Asia-Pacific-Pte-Ltd

(25) Pando Series B $30M (May 2023, TechCrunch): https://techcrunch.com/2023/05/03/ai-powered-supply-chain-startup-pando-lands-30m-investment/ — "customers include P&G, J&J, Cummins, Siemens, Danaher; revenue 8x since Series A; SEA expansion strategy confirmed"

(26) IMDA Singapore Logistics Industry Digital Plan — identifies Transport Management (TMS) as a Stage 2 digital solution for logistics SMEs: https://www.imda.gov.sg/-/media/imda/files/programme/smes-go-digital/industry-digital-plans/logistics-idp/logistics-idp.pdf (PDF, processed via markitdown — cached)

(27) Nucleus Research 2024 TMS Technology Value Matrix — Leaders: Blue Yonder, e2open, Kinaxis, One Network Enterprises, Oracle, Manhattan Associates, SAP: https://www.businesswire.com/news/home/20240604846771/en/Nucleus-Research-Releases-2024-Transportation-Management-Technology-Value-Matrix

(28) Infios (MercuryGate / Korber) — "Körber Supply Chain Software Completes Acquisition of MercuryGate" (2024), resulting entity is Infios with 5,000+ customers in 70 countries; recognized as Challenger in 2025 Gartner MQ: https://www.infios.com/en/knowledge-center/news/koerber-supply-chain-software-completes-acquisition-of-mercurygate

---

### Assumptions to validate

[ASSUMED-1]: No SEA government maintains a public carrier compliance database (authority, insurance, safety record) analogous to FMCSA in the US — meaning risk-at-tender tools built on Western data infrastructure would need to build a parallel data stack for SEA from scratch.
- To validate: Ask Ministry of Transport officials or logistics association leaders in Indonesia (ALFI/GAFEKSI), Thailand (TLA), Malaysia (FCAM), Vietnam (VLA), and Philippines (PHILCONSA) — "Does your ministry maintain a publicly queryable digital registry of licensed freight carriers including insurance status and safety records? If not, what are the plans and timeline?"

[ASSUMED-2]: SEA freight market fragmentation (owner-operators, informal truckers) makes automated carrier risk scoring structurally harder than in regulated North American or European markets, even if a compliant data registry existed.
- To validate: Ask a large 3PL operating in SEA (DHL, DB Schenker, Kerry Logistics, J&T Cargo, Lalamove) — "What percentage of your carrier network in Indonesia/Vietnam/Philippines is digitally onboarded vs. managed via phone/WhatsApp? What is the realistic penetration of formal compliance documentation among your sub-carriers?"

[ASSUMED-3]: No Gartner MQ TMS vendor has adapted its risk layer for SEA-specific regulatory data (local carrier authority, KPPU compliance in Indonesia, Malaysian APAD licensing, Thai Department of Land Transport records).
- To validate: Evaluate product documentation or conduct sales calls with Oracle ASEAN, SAP SEA, and Pando teams — "Does your TMS connect to [specific SEA country transport regulator] data for carrier authority or safety scoring at the point of tender?"

[ASSUMED-4]: Pando is the only Gartner-MQ-recognized TMS startup with a declared SEA expansion strategy and existing multinational manufacturer customer base that could serve as an entry point for a risk-management layer in the region.
- To validate: Interview Pando's APAC sales lead — "How many current deployments do you have in SEA (Singapore, Indonesia, Thailand, Malaysia, Vietnam, Philippines)? Which are live vs. pilot? How is carrier compliance/fraud risk handled in these deployments?"

[ASSUMED-5]: The Descartes MyCarrierPortal acquisition (Sept 2024) makes Descartes the only platform with near-native carrier fraud and insurance-check capability at tender time, but this capability is North-America-only in its current data infrastructure.
- To validate: Contact Descartes product team — "Is MyCarrierPortal carrier vetting functionality available for non-FMCSA carriers (e.g., carriers registered with land transport authorities in SEA)? What is the roadmap for international carrier compliance data?"

