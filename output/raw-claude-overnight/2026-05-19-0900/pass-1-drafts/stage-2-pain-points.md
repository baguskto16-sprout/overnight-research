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
