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


---

# Stage 2 Pain Points: Dispatch, Freight Tendering & TMS

*Value chain: Risk-management solutions for the freight/logistics journey*
*Unit of analysis: Solutions (TMS software, freight procurement platforms)*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*
*Risk angle: Where TMS / freight-tender platforms fall short of exposing or mitigating risk at the load-tender / award moment*

---

## Stage 2 — Dispatch, Freight Tendering & TMS

### Pain point 2.1

**Description:** Enterprise TMS platforms (Oracle OTM, SAP TM, Blue Yonder, Manhattan Active TM, E2open) have no native mechanism to verify carrier identity, detect fraud patterns, or flag double-brokering risk at the moment a load is tendered. When a broker or shipper awards a load through these platforms, the carrier receiving the award is identified only by a static master-data record (MC/DOT number, company name) that may belong to a hijacked identity, recently-sold authority, or fictitious entity. A fraudulent carrier is indistinguishable from a legitimate one at the point of tender.

**Who bears it:** Freight brokers, 3PLs, and enterprise shippers using TMS platforms. Estimated 17,000+ licensed freight brokers in the US alone; ASEAN cross-border road freight market $43.3B (2025).

**Estimated cost:**
- Industry-wide double-brokering losses: $500M–$700M per year in fraudulent freight payments (1)
- Average per-load loss when fraud occurs: ~$40,760 per compromised load (2)
- Total US cargo theft losses (including fraud-enabled strategic theft): $454.9M in 2024, up 27% YoY from $331.9M in 2023; average per-theft value $202,364 (3)
- Legal and dispute resolution costs: 24% of fraud victims face legal implications per TIA survey; 78% lose significant staff time resolving fraud-related issues (4)
- Freight industry-wide combined fraud and cargo theft: estimated ~$800M annually (5)

**Willingness to pay:** Not sourced from public data. [Interview placeholder: ask large freight brokers — "What do you currently spend annually on carrier vetting tools, and what would you pay for a native TMS risk-check that reduced fraud incidents by 50%?"]

**Frequency:**
- 3,625 cargo theft incidents in the US and Canada in 2024, a 27% increase over 2023 (3)
- TIA Watchdog recorded over 1,600 fraud reports in a 6-month period (Sept 2024 – Feb 2025), a 65% increase from the prior period (2)
- 85% of freight broker and carrier respondents impacted by double-brokering in a survey period (6)
- Double-brokering complaints increased 400% since 2022 per Truckstop data (5)
- 74% of companies experienced at least three different fraud types in 2024 (5)
- Strategic cargo theft (deception, fraud, impersonation) now represents 18% of all US incidents; strategic theft increased >1,400% between 2021 and 2024 (7)(8)
- Truckstop blocked over 8,600 fraudulent carrier onboarding attempts in 2024 (5)

**Evidenced or assumed:**
(1) TriumphPay/FreightWaves: https://www.freightwaves.com/news/tias-stark-message-double-brokering-fraud-out-of-control
(2) TIA State of Fraud in the Industry, April 2025: https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(3) Verisk CargoNet / Risk & Insurance, 2024 annual cargo theft report: https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/
(4) TIA FreightWaves coverage: https://www.freightwaves.com/news/tias-stark-message-double-brokering-fraud-out-of-control
(5) Foreigh.com Freight Fraud Report 2025 (comprehensive aggregation of TIA, CargoNet, Truckstop data): https://foreigh.com/blog/freight-fraud-deep-dive
(6) FreightWaves Q2 double brokering survey: https://www.freightwaves.com/news/widespread-double-brokering-wreaks-havoc-on-brokers-and-carriers-in-q2
(7) BSI Consulting and TT Club 2024 Cargo Theft Report (PDF, processed via markitdown): https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(8) Supply Chain Management Review, 2024: https://www.scmr.com/article/the-freight-markets-new-reality-more-risk-fewer-signals/procurement
(9) Descartes MyCarrierPortal acquisition (Sept 2024) — only Gartner-MQ TMS vendor to add native fraud layer: https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html
(10) Descartes MyCarrierPortal tracking-history fraud feature: https://www.mycarrierportal.com/resources/news/mycarrierportal-adds-tracking-history-for-enhanced-fraud-protection-risk-analysis/
(11) Highway carrier identity platform (TMS integrations: McLeod, Turvo, AscendTMS, Samsara): https://highway.com/
(12) Descartes MyCarrierPortal — 4,468 incident reports in 12 months (Feb 2024–Jan 2025), 3x more than leading competitor: https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting

**Root Causes**

- **RC1: TMS platforms were architected for logistics execution, not identity verification, and adding a real-time identity layer requires a separate data infrastructure that TMS vendors have no commercial mandate to build.** Enterprise TMS platforms (Oracle OTM, SAP TM, Blue Yonder, Manhattan Active TM) earn revenue through SaaS subscriptions benchmarked on freight volume optimization and cost reduction — not fraud prevention. Their carrier master data is populated via EDI or self-registration and validated against FMCSA SAFER (for US) or equivalent static registries. Fraud detection requires a fundamentally different capability: real-time cross-referencing of carrier identity against behavioral signals (tracking history, cash-flow patterns, equipment inventory, email domain), which requires data infrastructure that TMS vendors do not own, cannot build at acceptable R&D cost, and have no SLA obligation to maintain. The market has responded with point-solution integrations (Descartes MyCarrierPortal, Highway, Truckstop RMIS, Carrier411) rather than native TMS capabilities, confirming the structural separation. (9)(10)(11)

- **RC2: Carrier onboarding is treated as a one-time compliance event rather than a continuous signal layer, creating an interval between verification and load award during which identity can change.** All major TMS workflows — including those with carrier compliance modules — conduct insurance and authority verification at onboarding, typically on a 90–180 day refresh cycle. MC authority transfers, insurance cancellations, and email domain compromises occur between refresh cycles. Truckstop blocked 8,600 fraudulent onboarding attempts in 2024, confirming that the onboarding checkpoint is the primary defense, not a tender-time check. When a carrier sells its MC number to fraudsters, the onboarded record remains clean until the next refresh. The structural cause is contractual: TMS platforms hold no liability for carrier fraud occurring on loads tendered through their systems, eliminating the incentive to invest in continuous monitoring. (5)(9) [ASSUMED-1]: Validate proportion of TMS enterprise shipper contracts that include any SLA or indemnification related to carrier fraud — to validate: review Oracle OTM, SAP TM, Blue Yonder standard master service agreements.

- **RC3: The FMCSA SAFER database — the primary public carrier compliance source in North America — has a known structural gap: it does not require carriers to file evidence of cargo insurance, making independent real-time verification impossible without a third-party data intermediary.** FMCSA SAFER displays carrier authority status and liability insurance filings, but cargo insurance is not required to be filed with FMCSA, leaving a structural gap that cannot be closed via public data query. Any TMS platform wishing to verify cargo coverage must integrate with a private data intermediary (MyCarrierPortal, Truckstop RMIS, carrier insurance agent APIs). This adds technical and contractual friction, increasing the cost of building a native risk layer. In SEA, this gap is total: no equivalent to FMCSA exists for any of the target countries (Indonesia, Vietnam, Thailand, Malaysia, Philippines), meaning the risk layer cannot be built on public data infrastructure at all. (Implied by FMCSA SAFER documentation; see also ASSUMED-3 from value-chain stage profile.) [ASSUMED-2]: The structural gap in FMCSA cargo insurance data is explicitly documented in trade press. To validate: review FMCSA SAFER API documentation for cargo insurance data fields; interview Truckstop or DAT on what share of insurance verification queries require a third-party source rather than SAFER.

- **RC4: Freight market softness and volume pressure create financial incentives for brokers to skip additional fraud-check steps that add latency to the tender-award cycle.** In a high-volume, low-margin brokerage environment (US broker gross margins averaged ~12–15% per load during the 2023–2024 soft freight market), each additional step in the carrier selection workflow adds cost and risks losing the load to a competitor who skips it. When fraud detection requires a separate tool login or adds 30–60 seconds to the award process, brokers under volume pressure will bypass it. The result is that even where third-party fraud tools exist, adoption is inconsistent. This is a market-structure problem, not a technology problem: the party bearing the compliance cost (broker) is different from the party bearing the fraud risk when hidden carriers default (shipper). (4)(5)

- **RC5: In Southeast Asia, the absence of a government-maintained digital carrier compliance registry means TMS platforms cannot build a fraud-signal layer even if they wanted to — the underlying data infrastructure does not exist.** Western TMS fraud tools (Descartes MyCarrierPortal, Highway, Carrier411) are built on FMCSA SAFER data plus behavioral data from North American load board networks. In SEA, Malaysia's APAD issues freight vehicle licenses via iSPKP but does not expose a public API for real-time carrier authority or insurance lookup. Indonesia's Directorate General of Land Transportation (Ditjen Hubdat) maintains vehicle registration but not a carrier compliance registry accessible to logistics platforms. This means any SEA-specific fraud-check tool would need to build the underlying data infrastructure from scratch — a multi-year, multi-jurisdiction effort that no current TMS vendor has undertaken. Owner-drivers operate over 70% of commercial vehicles in Indonesia and the Philippines, limiting telematics penetration and consistent service records further. [ASSUMED-3]: Validate with APAD (Malaysia), Ditjen Hubdat (Indonesia), and LTFRB (Philippines) — "Do you maintain a real-time API or database query service for freight carrier authority and insurance status accessible to commercial logistics platforms?"

---

### Pain point 2.2

**Description:** TMS platforms price freight based on cost and service optimization but do not incorporate route-risk intelligence (cargo theft hotspots, geopolitical disruption, weather, high-crime corridors) at the moment of route selection or load award. Shippers and brokers optimizing for lowest cost per load systematically select routes and lanes that carry elevated cargo loss probability, with no risk-adjusted pricing signal to reflect the true expected cost of the shipment. Route-risk data exists in separate intelligence systems (BSI, CargoNet, TT Club, project44) but is not wired into TMS routing or award logic.

**Who bears it:** Enterprise shippers, freight brokers, and 3PLs using TMS platforms for route optimization; downstream cargo insurers bearing the claims.

**Estimated cost:**
- US cargo theft total losses: $454.9M in 2024 across 3,625 incidents; top-3 states (CA, TX, IL) account for 46% of all incidents (3)
- Dallas County, TX: 78% spike; Los Angeles County: 50% increase; San Bernardino County: 47% rise (3)
- Strategic theft (planned, deception-based) representing 18% of US incidents — these are the incidents most preventable via route-risk intelligence (7)
- Global cargo theft: estimated $30–50B annually per BSI/TT Club; $80B cited by some industry sources (7)
- Average cargo theft loss per incident: $202,364 in 2024 (3)
- Rail cargo theft: >$100M in losses in 2024 per Class I railroad filings (separate from trucking) (8)

**Willingness to pay:** Not sourced. [Interview placeholder: ask risk managers at large CPG shippers — "Do you use any route-risk intelligence tools separately from your TMS? What do you pay? Would you pay for this natively in TMS?"]

**Frequency:**
- Q1 2024 saw a 46% YoY increase in cargo theft incidents; each quarter of 2024 surpassed prior-year records (3)
- 41% of thefts occurred during transit (in-motion on road); 21% at warehouses (7)
- Food and beverage accounted for 22% of all incidents in 2024; electronics 9%; agricultural goods 10% (7)
- Strategic theft (fraud, impersonation, document forgery): grew >1,400% between 2021 and 2024 (8)

**Evidenced or assumed:**
(1) Verisk CargoNet 2024 Annual Report via Risk & Insurance: https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/
(2) BSI Consulting and TT Club 2024 Cargo Theft Report (PDF, markitdown): https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(3) Supply Chain Digest / CargoNet 2024 annual data: https://www.scdigest.com/ontarget/25-01-29_cago_thefts_2024_soar.php?cid=21726
(4) FreightWaves cargo theft record levels: https://www.freightwaves.com/news/strategic-cargo-theft-costing-carriers-brokers-millions-in-freight-in-q1
(5) SCMR freight markets new reality: https://www.scmr.com/article/the-freight-markets-new-reality-more-risk-fewer-signals/procurement
(6) Carrier Management — 2025 cargo theft surged 60%, $725M losses: https://www.carriermanagement.com/news/2026/01/22/283728.htm
(7) BSI TT Club report content (PDF): https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(8) Railroads cargo theft $100M 2024: https://www.freightwaves.com/news/railroads-say-freight-theft-cost-more-than-100-million-in-2024
(9) Oracle TMS product page (no native route-risk feature): https://www.oracle.com/asean/scm/logistics/transportation-management/what-is-transportation-management-system/
(10) Inbound Logistics transport risk management overview: https://www.inboundlogistics.com/articles/transportation-risk-management-what-it-is-types-and-how-to-choose/
(11) project44 TMS platform page (visibility as separate product from risk scoring): https://www.project44.com/platform/tms/

**Root Causes**

- **RC1: TMS route optimization is a cost-minimization function whose objective function was never designed to incorporate probabilistic loss rates by lane, leaving no architectural slot for risk-adjusted routing.** TMS route optimization algorithms minimize total freight cost (linehaul, accessorial, transit time penalty) subject to service constraints. This objective function is structurally incompatible with a risk-adjusted expected cost calculation without a significant architectural change: the optimizer needs to receive lane-level loss probability distributions and expected cargo value at risk as additional inputs, and the cost function needs to be redefined as "expected total cost including expected loss." No major TMS vendor has published a roadmap for this capability; it is not mentioned as a Gartner 2025 TMS critical capability. The structural cause is that TMS vendors serve logistics operations buyers, not risk management buyers — these are different budget holders with different KPIs. [ASSUMED-4]: Validate with Oracle TMS, SAP TM, and Blue Yonder product teams — "Is route-risk scoring (cargo theft probability by lane) on your product roadmap, and if not, why not?"

- **RC2: Cargo theft intelligence data is collected and distributed by specialist firms (BSI, CargoNet/Verisk, TT Club) whose business models depend on selling access to this data independently, creating a structural disincentive to bundle it into TMS platforms at no marginal cost.** CargoNet, BSI, and TT Club charge access fees for their incident databases. Their commercial interest is to maintain independent data products with direct customer relationships. TMS vendors would need to license this data and build integration — adding cost without clear pricing power uplift in a TMS market where carrier fraud prevention is not a buyer selection criterion in Gartner MQ evaluations. No public disclosure of any major TMS vendor licensing CargoNet or BSI data for native route-risk scoring has been found. (3)(7)

- **RC3: Shipper procurement metrics (cost per load, carrier compliance rate, on-time delivery) do not include cargo loss rate by lane, so procurement teams lack the organizational incentive to request route-risk features from TMS vendors.** TMS buyer requirements documents and RFPs focus on cost reduction, carrier rate management, multimodal planning, and visibility API connectivity. Cargo theft risk by lane is typically managed by loss-prevention teams or risk management departments that sit outside the TMS procurement decision. Without a cross-functional champion who bridges logistics operations and risk management, the demand for route-risk intelligence in TMS is not being expressed during vendor selection cycles. (5) [ASSUMED-5]: Validate with large CPG or electronics shipper risk manager — "Does your TMS RFP include any requirement for cargo theft risk scoring by lane? If not, how is route theft risk currently managed?"

- **RC4: In Southeast Asia, the absence of consolidated, machine-readable cargo theft incident data makes building an SEA-specific route-risk layer structurally impossible with available public data.** TAPA maintains a Cargo Crime Monitor database for EMEA; CargoNet covers North America. There is no equivalent SEA-regional cargo theft database with the incident density, geolocation granularity, and commodity-level categorization needed for lane-level risk scoring. BSI/TT Club 2024 identifies only Brazil, Mexico, India, United States, Germany, Chile, and South Africa as geographic hotspots in their global report — SEA countries do not appear as named hotspot markets, which may reflect reporting gaps rather than absence of incidents. The ReCAAP ISC tracks maritime piracy in SEA but not overland cargo theft. Building a usable SEA route-risk database would require incident reporting partnerships with local law enforcement, logistics associations, and major 3PLs — a multi-year data-collection investment. [ASSUMED-6]: Validate with DHL, DB Schenker, Kerry Logistics SEA operations teams — "Do you track cargo theft incidents by lane/corridor in SEA? Is this data shared with any external platform? What are the highest-risk corridors in Indonesia, Vietnam, and Thailand?"

---

### Pain point 2.3

**Description:** Insurance pricing for freight is decoupled from the TMS booking workflow. When a shipper or broker finalizes a load tender in a TMS platform, no insurance premium calculation is triggered, no coverage is offered or checked, and no risk-adjusted signal adjusts the carrier selection decision. Insurance is purchased separately — via annual open cargo policies, manual certificates, or separate insurtech portals — creating an operational gap where loads move without adequate or appropriately priced coverage. This is the WH5 hypothesis at the TMS tier: parametric insurance pricing is not wired into the booking moment.

**Who bears it:** Freight brokers, 3PLs, shippers, and cargo insurers. SME logistics operators disproportionately affected due to reliance on inadequate carrier liability policies.

**Estimated cost:**
- 60% of global freight moves uninsured or underinsured per industry estimates (1)(2)
- Standard carrier liability under Carmack Amendment limited to actual loss or damage, subject to carrier-declared value; under COGSA limited to $500 per package or CFU — leaving high-value loads with <10% of cargo value recoverable under standard carrier terms (3)
- Annual open cargo policy typically priced at 0.1%–0.5% of cargo value; per-load equivalent for a $200K load: $200–$1,000 — but this coverage is not obtained on the majority of loads moving through SME broker TMS workflows due to friction (4)
- Reliance Partners (Loadsure's largest broker partner) grew from $95M to ~$500M in premiums (2018–2024), suggesting rapid uptake where embedded insurance is offered — implying large underinsured market prior to embedding (5)
- Global embedded freight insurance market: $7.2B–$8.9B (2024), growing at 13.8% CAGR to $29.2B by 2033; Asia-Pacific represents ~34% (~$3B) of 2024 total (6)

**Willingness to pay:** Not sourced from primary data. Loadsure, Redkik, LogistIQ, and Roanoke Group offer per-load API-priced insurance at 0.1%–0.5% of cargo value, suggesting market WTP in that range. [Interview placeholder: ask freight brokers using McLeod TMS + Loadsure integration — "What is your attach rate for per-load insurance post-integration vs. prior?"]

**Frequency:**
- Majority of loads in US freight market move without per-load supplemental insurance coverage (evidenced by Loadsure, FreightWaves articles calling out "underinsurance crisis") (1)(2)
- Q1 2024: 925 cargo theft incidents, 46% above Q1 2023 — uninsured or underinsured loads represent total losses (7)
- McLeod TMS (major US freight broker TMS) added Loadsure per-load insurance integration only in 2024 — previously no embedded insurance available for McLeod's broker base (5)
- Embedded insurance for freight is described as "still in its early days" (2024) and "adoption is nascent" across trade press (2)(8)

**Evidenced or assumed:**
(1) Loadsure — "Embedded Cargo Insurance in TMS: A Practical Path Out of Freight Underinsurance": https://www.loadsure.net/latest/article/embedded-cargo-insurance-in-tms-a-practical-path-out-of-freight-underinsurance/
(2) FreightWaves — "Solving the freight industry's underinsurance crisis": https://www.freightwaves.com/news/solving-the-freight-industrys-underinsurance-crisis
(3) ATS Inc — cargo insurance claim payout limitations under COGSA and Carmack: https://www.atsinc.com/blog/protect-freight-cargo-insurance
(4) Ecabrella freight insurance cost: https://www.ecabrella.com/blog-posts/freight-insurance-cost
(5) FreightWaves — Per-load shipper's interest insurance now available in McLeod TMS: https://www.freightwaves.com/news/per-load-shippers-interest-insurance-now-available-in-mcleod-tms
(6) GrowthMarket Reports / DataIntelo — Embedded Insurance for Freight Shipments Market 2033: https://growthmarketreports.com/report/embedded-insurance-for-freight-shipments-market
(7) Verisk CargoNet Q1 2024 stats: https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/
(8) Insurance Thought Leadership — Embedded Insurance for Freight: https://www.insurancethoughtleadership.com/ecosystems/embedded-insurance-freight
(9) Redkik TMS integration: https://redkik.com/work-with-us/transport-management-systems/
(10) Loadsure how it works (AI dynamic rating per load): https://www.loadsure.net/how-it-works/
(11) WebCargo / Freightos — insurance integration in forwarding: https://www.webcargo.co/blog/how-insurance-integration-fits-within-the-broader-trend-of-digitalization-in-forwarding/
(12) Otonomi Series A $5M (parametric cargo delay insurance, API-first): https://programbusiness.com/news/otonomi-secures-5-million-series-a-to-advance-insurtech-innovation-in-cargo-insurance/
(13) Marsh parametric cargo delay coverage (Otonomi partnership): https://www.marsh.com/en/industries/cargo/expertise/parametric-coverage-for-cargo-delay.html
(14) LogistIQ TMS-integrated cargo insurance: https://logistiq.com/tms-integrated-cargo-insurance/

**Root Causes**

- **RC1: Cargo insurance has historically been sold as an annual open-policy product by specialty marine underwriters through insurance brokers, creating a distribution channel that structurally bypasses TMS workflows.** Marine cargo insurance is a Lloyd's/specialty insurer product distributed through insurance brokers (Marsh, AON, Willis Towers Watson and regional equivalents), not through logistics software platforms. The annual open-policy model — where a shipper pays one premium to cover all shipments in a year — eliminates the need for per-load engagement with insurance. This channel architecture was built for large shippers with predictable annual volumes. SME brokers and shippers with irregular volumes are poorly served, but the insurance distribution channel has not evolved to reach them through their operational tools. The result is that insurance and TMS exist as separate systems with no API connection between them — not because it is technically difficult, but because the commercial relationships and distribution economics have not historically required it. (2)(8)

- **RC2: Dynamic per-load insurance pricing requires real-time access to the same shipment parameters that TMS holds — cargo type, origin, destination, carrier, transit route — but TMS platforms have not historically shared this data with insurers, and insurers have not built the API infrastructure to consume it.** Traditional annual cargo policy underwriting relies on declared annual volume, commodity type, and geographic scope at policy inception — not load-level data. For a TMS to trigger a real-time insurance quote at booking, it must expose load-level data (cargo value, commodity, O/D pair, carrier identity, transit date) to an insurer API, which must return a price in <1 second for the workflow to be usable. This requires: (a) TMS API documentation and willingness to share data; (b) insurer underwriting models parameterized at load level; (c) commercial agreements between TMS vendors and insurance providers. None of these existed at scale before 2023. Loadsure, Redkik, and Roanoke's API models demonstrate feasibility, but adoption is concentrated in US freight broker TMS (McLeod, AscendTMS) and has not reached enterprise tier-1 TMS (Oracle, SAP, Blue Yonder). (5)(9)(10)

- **RC3: TMS vendor incentives do not include insurance attachment revenue, so embedding insurance creates no revenue for the TMS vendor unless a revenue-share model is negotiated, which requires a commercial arrangement that most TMS vendors have not prioritized.** TMS platforms earn recurring SaaS revenue from shippers and brokers. Adding embedded insurance requires: negotiating revenue-share with an insurer or MGA; building API integration; taking on potential regulatory complexity if deemed insurance distribution. The revenue opportunity is real (0.1%–0.5% of cargo value per load), but the commercial complexity, liability questions, and integration cost have prevented most enterprise TMS vendors from pursuing it. Smaller and mid-market TMS vendors (McLeod, AscendTMS, LoadStop) have moved faster precisely because their smaller customer base allows more flexible commercial arrangements. Descartes, the only Gartner-MQ TMS vendor with demonstrated willingness to add risk-layer capabilities (MyCarrierPortal acquisition), has not yet announced an insurance integration. (5)(8)(9)

- **RC4: Insurance premium pricing for freight requires actuarial models trained on loss history that insurers hold but do not share with TMS vendors, and TMS vendors hold operational data (lane, commodity, carrier) that insurers need but do not access — an information asymmetry that reinforces the structural separation.** Accurate per-load pricing requires an actuarial model combining lane-level loss history (which insurers hold from claims data), commodity-level theft rates (BSI, CargoNet — specialist datasets), and carrier-specific loss experience (which neither insurers nor TMS vendors have systematically aggregated). No neutral platform has aggregated all three data types. This information fragmentation means per-load pricing models built today rely on proxies rather than true actuarial data, creating basis risk that insurers manage by pricing conservatively or limiting product availability — reinforcing the annual-policy model as the lower-risk commercial approach. (13)(14) [ASSUMED-7]: Validate with Loadsure or Redkik actuarial team — "What data sources feed your per-load pricing model? What is the largest source of pricing uncertainty? How does loss history data from your insurers compare to what you'd ideally have?"

---

### Pain point 2.4

**Description:** The risk-signal gap at the TMS tier is structurally more severe in Southeast Asia than in North America or Europe because no equivalent to FMCSA, DOT authority lookup, or Lloyd's carrier vetting infrastructure exists in the region. Western TMS platforms deployed in SEA carry their risk architecture assumptions (public carrier registry, third-party compliance data networks, insurance certificate APIs) from markets where this infrastructure exists, and those assumptions fail entirely in SEA. Local SEA logistics operators using TMS platforms — or operating without any TMS — have no viable carrier compliance verification path at tender time.

**Who bears it:** Regional SEA freight brokers, 3PLs, and cross-border logistics operators. Also: foreign shippers (Japanese, Korean, European, US) using multinational TMS to tender to local SEA carriers.

**Estimated cost:**
- ASEAN cross-border road freight market: $43.3B (2025), growing to $60.9B by 2030 at 7.07% CAGR; carrier fraud and non-compliance losses as a share of this figure are not separately tracked (1)
- Owner-drivers operate >70% of commercial vehicles in Indonesia and Philippines — this population has no formal digital compliance record (2)
- TMS implementation cost for SEA SME logistics operators: $500K–$3M+ for enterprise TMS (Oracle, SAP, Blue Yonder), creating an adoption gap that leaves the majority of SEA freight volume managed without any TMS-based compliance layer (3)
- Cost of uninsured carrier non-compliance in SEA: not quantified in any public source — significant data gap

**Willingness to pay:** Not sourced. [Interview placeholder: ask Singapore-based freight forwarders (SG Freight, Kerry Logistics, Panalpina) — "How do you currently vet sub-carriers in Indonesia and Vietnam? What would you pay for an API-based compliance check for SEA carriers?"]

**Frequency:**
- No public SEA-specific carrier fraud incident statistics found; this is itself a data gap that confirms the structural problem (reporting infrastructure absent) [ASSUMED-8]
- ReCAAP ISC 2024 annual report: maritime incidents in Southeast Asia increased in Indonesia and South China Sea in 2024 (4)
- Domestic-flag mandates in Indonesia and Philippines force transloading, increasing handoff points and fraud surface area (2)
- Varied trucking permits force freight to shift tractors at land borders — adding unvetted carrier touchpoints (2)

**Evidenced or assumed:**
(1) Mordor Intelligence ASEAN cross-border road freight market: https://www.mordorintelligence.com/industry-reports/asean-cross-border-road-freight-transport-market
(2) DHL Discover Indonesia — 5 Logistics Trends Reshaping Asia 2026 (owner-driver statistics, telematics gap): https://www.dhl.com/discover/en-id/logistics-advice/logistics-insights/5-logistics-trends-reshaping-asia-in-2026
(3) Enterprise TMS pricing: Oracle OTM product page: https://www.oracle.com/asean/scm/logistics/transportation-management/what-is-transportation-management-system/; Manhattan Associates 10-K FY2024: https://www.sec.gov/Archives/edgar/data/0001056696/000095017025016295/manh-20241231.htm
(4) ReCAAP ISC Annual Report 2024: https://www.recaap.org/resources/ck/files/reports/annual/ReCAAP%20ISC%20Annual%20Report%202024%20-%20Final.pdf
(5) Malaysia APAD freight vehicle licensing (iSPKP digital system — no carrier insurance API confirmed): https://www.apad.gov.my/en/services/freight
(6) IMDA Singapore Logistics IDP (TMS as Stage 2–3 digital maturity step): https://www.imda.gov.sg/-/media/imda/files/programme/smes-go-digital/industry-digital-plans/logistics-idp/logistics-idp.pdf
(7) Pando Series B $30M — only Gartner-MQ TMS startup with SEA mandate, no carrier fraud layer: https://techcrunch.com/2023/05/03/ai-powered-supply-chain-startup-pando-lands-30m-investment/
(8) Transporeon Group Asia Pacific registration (Singapore): https://www.sgpbusiness.com/company/Transporeon-Group-Asia-Pacific-Pte-Ltd
(9) ASEAN freight forwarding market overview: https://www.mordorintelligence.com/industry-reports/asean-freight-forwarding-market
(10) GBG APAC fraud trends Southeast Asia 2025 (digital fraud broadly): https://www.gbg.com/apac/blog/emerging-fraud-trends-in-southeast-asia-for-2025/

**Root Causes**

- **RC1: No SEA government maintains a publicly queryable digital registry of licensed freight carriers that includes insurance status and safety records, meaning the data infrastructure for a risk-at-tender tool does not exist and must be built from scratch.** In North America, FMCSA SAFER provides carrier authority status, liability insurance filings, safety ratings, and inspection history via a public API. In Europe, ERRU (European Register of Road Transport Undertakings) provides cross-border carrier compliance data. In SEA, Malaysia APAD operates iSPKP for vehicle licensing and PMHS for performance monitoring, but does not expose a public API for real-time carrier compliance queries. Indonesia's Ditjen Hubdat manages vehicle registration separately from carrier authority. No ASEAN-level interoperability standard for carrier compliance data exists. This is not a political will problem but a governance architecture problem: SEA transport ministries designed their registries for internal compliance management, not for commercial platform integration. [ASSUMED-3 from value chain stage profile]

- **RC2: Market structure (70%+ owner-driver penetration, informal carrier networks, WhatsApp-based dispatching) means that even if a digital carrier registry existed, a large majority of SEA carriers would not be enrolled in it.** The carrier population addressable by a digital compliance system in North America or Europe consists primarily of incorporated motor carriers with FMCSA authority (730,000+ in the US). The carrier population in Indonesia, Vietnam, and the Philippines consists largely of individual owner-drivers who operate under freight broker umbrella licenses, have no individual carrier authority, and are dispatched via phone or WhatsApp without formal load documentation. A compliance system built for North American-style carrier entities would cover only the formal tier of the SEA market, potentially as little as 10–20% of actual freight capacity. This makes the build-out cost of a carrier compliance platform much higher relative to the addressable carrier base than in established markets. [ASSUMED-9]: Validate with a major SEA 3PL (J&T Cargo, DHL Indonesia, Kerry Logistics Vietnam) — "What percentage of your carrier/trucker base is formally incorporated vs. individual owner-driver? What percentage have formal freight operating licenses?"

- **RC3: Enterprise TMS platforms with existing risk-layer architectures (Descartes Aljex + MyCarrierPortal) are North-America-only in their carrier data coverage, and have no SEA deployment of the risk layer even where SEA logistics operations exist.** Descartes Aljex is purpose-built for US freight brokers; MyCarrierPortal's carrier identity database is built on FMCSA + North American load board behavioral data. Descartes has global logistics network products used in SEA (Singapore, Malaysia, Indonesia customs/trade compliance), but the Aljex TMS + MyCarrierPortal risk layer has no confirmed SEA deployment. This creates a structural gap: the only TMS vendor with a working native fraud layer cannot serve SEA customers with that capability, and no other TMS vendor has built it. [ASSUMED-5 from value chain stage profile]

---

### New pain points surfaced beyond working hypotheses

#### Pain point 2.5 (new — not in working hypotheses)

**Description:** TMS consolidation and M&A activity (WiseTech acquiring E2open, Descartes acquiring 3GTMS, Blue Yonder acquiring One Network) is creating integration risk for shippers whose risk-layer integrations (third-party fraud tools, insurance API connectors) were built for the pre-acquisition platform. When TMS platforms merge roadmaps or change APIs, point-solution integrations break, creating periods during which risk detection is unintentionally disabled.

**Who bears it:** Enterprise shippers and freight brokers whose TMS-adjacent fraud and risk tools depend on stable TMS APIs.

**Estimated cost:** Integration rebuild costs: typically $50K–$500K per integration (enterprise systems integrators); downtime during broken integration = period of undetected fraud risk (potential $40K–$200K per undetected fraud incident during the gap) [ASSUMED-10]

**Willingness to pay:** Not sourced.

**Frequency:**
- WiseTech completed $2.1B acquisition of E2open (announced 2025); Descartes acquired 3GTMS ($115M); Blue Yonder acquired One Network ($839M, Aug 2024) — three major TMS platform M&A events in 12 months (1)(2)
- API stability after M&A consolidation typically takes 12–24 months to stabilize per standard software integration practice [ASSUMED-10]

**Evidenced or assumed:**
(1) Transport Management Organization 2026 Gartner MQ analysis (WiseTech E2open acquisition): https://www.transportmanagement.org/the-2026-gartner-magic-quadrant-tms-shakeup-how-european-shippers-can-navigate-vendor-consolidation-and-regulatory-pressure-to-secure-acquisition-powered-platforms-before-market-power-shifts-permanently/
(2) E2open 10-K FY2025: https://www.sec.gov/Archives/edgar/data/0001800347/000095017025060216/etwo-20250228.htm
(3) Descartes acquisition of 3GTMS reference from Gartner context; Blue Yonder One Network: https://blueyonder.com/blog/2025/blue-yonder-named-a-leader-in-the-2025-gartner-magic-quadrant-for-transportation-management-systems

**Root Causes**

- **RC1: Risk-layer integrations are point-to-point API connections built on specific TMS data schemas that are not governed by interoperability standards, making them fragile to any platform change.** There is no TMS interoperability standard that governs how carrier risk attributes (insurance status, fraud flags, tracking history) are represented, versioned, and maintained across platform updates. Third-party fraud tools (Highway, MyCarrierPortal) build bespoke integrations with each TMS they support. When the TMS changes its carrier master data schema or API endpoints post-acquisition, the fraud tool integration breaks silently or requires renegotiation. [ASSUMED-10]: Validate with Highway integration team — "How many of your TMS integrations have required rebuild after a TMS vendor acquisition or major platform update in the last 24 months?"

- **RC2: Acquiring TMS vendors have no financial incentive to maintain compatibility with risk-layer point solutions that compete with or reduce differentiation potential for their own planned native capabilities.** When a TMS vendor acquires another platform and plans to rationalize the combined product, maintaining third-party integrations that expose risk data they could monetize natively is a commercial decision, not a technical one. If the acquirer plans to build its own fraud detection or insurance integration, it will deprioritize maintaining the API that enables a competitor to provide that function. This creates a structural conflict between risk-tool ecosystem vendors and consolidating TMS platforms. [ASSUMED-10]

---

### Hypothesis adjudication

**WH1 (vendor-procurement blind spots extending to TMS not surfacing risk at tender):** CONFIRMED and strengthened. All Gartner-MQ-evaluated enterprise TMS platforms (Oracle OTM, SAP TM, Blue Yonder, Manhattan Active TM, E2open) have confirmed absence of native carrier fraud detection, insurance check, or route-risk scoring at the tender moment. Descartes is the sole exception, and its capability is North-America-only. This is documented in product documentation, vendor announcements, and industry press.

**WH5 (risk and insurance pricing disconnected from real journey data):** CONFIRMED at TMS tier with nuance. The disconnect is structural (channel architecture, data ownership, commercial incentive misalignment) rather than purely technical. Parametric/per-load insurance APIs (Loadsure, Redkik, Otonomi, Roanoke) exist and are technically capable of integrating with TMS at booking — but adoption is concentrated in mid-market US freight broker TMS (McLeod, AscendTMS) and has not reached enterprise-tier TMS (Oracle, SAP, Blue Yonder) as of 2025. In SEA, no embedded freight insurance at booking is available through any regional TMS deployment. The gap is larger in SEA than in North America.

**Hypothesis rejected (partially):** The preliminary pain point that E2open's revenue decline signals market openness to modular risk add-ons was not confirmed as a distinct pain point. Revenue decline reflects macro freight market softness and platform integration complexity, not specifically buyer rejection of monolithic TMS in favor of risk modules. Dropped from final pain point list.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Enterprise TMS vendor standard contracts contain no SLA or indemnification related to carrier fraud on loads tendered through the platform — confirm by reviewing Oracle OTM, SAP TM, Blue Yonder MSAs.

[ASSUMED-2]: FMCSA SAFER structural gap on cargo insurance data is documented but not explicitly cited in primary FMCSA source — to validate: review FMCSA SAFER API documentation for cargo insurance data fields and confirm gap.

[ASSUMED-3]: No SEA government (Indonesia, Thailand, Malaysia, Vietnam, Philippines) maintains a publicly queryable digital freight carrier compliance database analogous to FMCSA — to validate: interview Ministry of Transport or logistics association officials in each country.

[ASSUMED-4]: Route-risk scoring by lane is not on any Gartner-MQ TMS vendor's public product roadmap as of May 2026 — to validate: review roadmap disclosures and analyst notes from Oracle, SAP, Blue Yonder, Manhattan product teams.

[ASSUMED-5]: Shipper TMS RFPs do not include cargo theft risk scoring as an evaluation criterion — to validate: review publicly available TMS RFP templates and interview procurement teams at large CPG/electronics shippers.

[ASSUMED-6]: No consolidated, machine-readable SEA overland cargo theft incident database exists with the granularity needed for lane-level risk scoring — to validate: query TAPA APAC, local logistics associations (ALFI Indonesia, Thai Logistics Association, FCAM Malaysia), and regional law enforcement contacts.

[ASSUMED-7]: Per-load insurance pricing models at Loadsure/Redkik face actuarial uncertainty due to incomplete loss history data — to validate: interview Loadsure or Redkik actuarial/underwriting team.

[ASSUMED-8]: Absence of SEA-specific carrier fraud statistics in public sources reflects a reporting and data collection gap, not absence of fraud incidents — to validate: ask major SEA 3PLs and freight brokers about internal fraud incident rates.

[ASSUMED-9]: 70%+ owner-driver penetration in Indonesia and Philippines means a large majority of SEA carrier capacity is not formally incorporated and has no individual carrier authority record — to validate: interview J&T Cargo, DHL Indonesia, Kerry Logistics Vietnam operations teams.

[ASSUMED-10]: TMS M&A integration risk breaks risk-layer point solutions due to API schema changes with no interoperability standard as backstop — to validate: interview Highway integration team and surveying TMS consolidation impact on third-party integrations.
