# Stage 5 Pain Points — Delivery: POD, Last-Leg Verification & Security

**Research date:** 2026-05-21
**Geography:** Worldwide; SEA (Singapore, Indonesia, Thailand, Malaysia) flagged throughout
**Builds on:** Stage 5 value-chain profile (stage-5-value-chain.md). Do not re-document in-transit IoT sensors (Stage 3) or multi-party control towers (Stage 4).

---

## Stage 5: Delivery — POD, Last-Leg Verification & Security

### Pain point 5.1

**Description:** Large shippers and 3PLs operating B2B freight — particularly in SEA domestic trucking — face a chronic evidence-quality gap at the point of delivery because paper POD remains the dominant document in Indonesia, Malaysia, and Thailand domestic trucking, with digital delivery confirmation absent or used only at inconsistent depth (signature capture only, no GPS anchor, no timestamped photo). When a cargo claim is filed for short delivery, damage, or non-delivery, the paper POD provides no geolocation, no photographic condition record, and no protection against alteration — leaving the shipper's claims team with a document that cargo insurers and courts treat as insufficient evidentiary basis. The BSI/TT Club 2024 Cargo Theft Report explicitly documents that "manipulation of paperwork can facilitate unfettered access to cargo and allow criminals to access large volumes over time." Incomplete documentation causes an estimated 40% of delays in cargo insurance claim processing, and claims lacking required delivery receipt or inspection report documentation may be denied outright.

**Who bears it:** Shippers (CPG, pharma, industrial) who bear the economic loss when claims fail; 3PLs whose carrier liability exposure cannot be established without adequate POD; cargo insurers who must absorb loss that a properly evidenced claim would attribute to a carrier.

**Estimated cost:**
- McKinsey (January 2024) estimates $45B–$66B per year in B2B last-mile handoff waste globally, with the broader handoff-waste total (including mid-mile) at $65B–$95B; documentation failures at delivery are a primary driver. (1)
- Cargo insurance claims take 30–120 days to process; documentation deficiencies cause an estimated 40% of processing delays, extending settlement cycles and creating working capital gaps for claimant shippers. (2)
- ePOD standalone SaaS costs $29–$150/driver/month for the solution to fix this; at a 500-driver fleet, this is $174,000–$900,000 per year — a quantifiable ceiling on willingness to pay for digitization. (3)
- Average cargo theft incident loss (US 2024): $202,364 per incident; 3,625 US incidents in 2024, implying $732M+ in documented US losses; a material fraction of these incidents are enabled or concealed by inadequate delivery documentation. (4)

**Willingness to pay:** Not sourced — see open questions.

**Frequency:**
- Paper POD penetration in Indonesia domestic B2B trucking exceeds 80% (see [ASSUMED-1]); digital adoption is confirmed to be lowest in Southeast Asia relative to North America (which has ~38% of global ePOD telematics market share) and Europe. (5)
- 85% of insurance providers now require delivery photos from couriers as a compliance requirement, creating a growing compliance gap for carriers still using paper. (6)
- TT Club identifies documentation quality as the single largest determinant of claims success rate in its annual claims guidance. (7)
- Incomplete documentation causes 40% of cargo insurance claim delays; claims submitted without required paperwork may be rejected at the investigative stage. (2)

**Evidenced or assumed:**
(1) https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste
(2) https://www.gofclogistics.com/a-complete-guide-to-freight-claims/ and https://www.freightamigo.com/en/blog/transport-insurance/how-long-does-a-cargo-insurance-claim-take-to-process/
(3) https://www.track-pod.com/ and https://www.itqlick.com/track-pod/pricing and https://www.businesswire.com/news/home/20220607005530/en/Onfleet-Raises-$23M-Series-B-Funding-to-Help-Businesses-Optimize-and-Scale-Last-Mile-Delivery-Operations
(4) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/ and https://www.denim.com/blog/how-to-spot-pod-fraud-in-freight-red-flags-every-broker-should-know
(5) https://marketintelo.com/report/epod-telematics-integration-market — Low confidence (commercial market research; directional only)
(6) https://www.transvirtual.com/us/blog/what-is-electronic-proof-of-delivery-epod/ — Medium confidence (vendor-cited stat; original survey not independently confirmed — [ASSUMED-2]: validate this 85% figure against primary survey data)
(7) https://www.ttclub.com/products-and-services/claims-management/ and https://www.ttclub.com/news-and-resources/news/article/cargo-theft-report-reveals-rapidly-shifting-criminal-tactics-and-emerging-targets/
(8) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf — PDF; markitdown-processed. BSI/TT Club 2024 Cargo Theft Report (covering 2024 data, published April 2025): hijacking 21%, trucks 76% of thefts, food & beverage 22% of commodities, paperwork manipulation documented fraud vector.
(9) https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(10) https://www.cargosnap.com/resources/blog/why-cargo-damage-claims-get-denied — documentation failures structural cause of claim denial
(11) https://www.insurancebusinessmag.com/us/news/breaking-news/global-cargo-theft-hits-new-highs-as-criminal-networks-evolve--tt-club-572468.aspx
(12) https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/ — IUMI 2024: global cargo insurance premiums $22.64B; loss ratios improving for sixth consecutive year

**Root Causes**

- **RC1: Paper POD creates no immutable audit trail linking delivery event to location, time, and cargo condition** — A paper signature is geographically unanchored (it can be signed anywhere), undated unless the driver manually writes a time, and provides no photographic record of cargo condition at the moment of transfer. Because the document is physical, it is alterable before filing; TT Club's 2024 report documents that paperwork manipulation "allows criminals to access large volumes over time" — a structural exploitation of the paper POD's non-immutability. The root condition is that paper POD was designed for commercial receipt confirmation, not risk management or claims evidence, and no regulatory standard in Indonesia, Malaysia, or Thailand has mandated a minimum evidentiary standard for delivery documentation in B2B freight. (8, 9)

- **RC2: Carrier economics do not reward investment in ePOD evidence depth** — Carriers and 3PLs bear the cost of ePOD deployment ($29–$150/driver/month plus driver training, app management, connectivity costs) while the claims-evidence benefit flows primarily to the shipper. Under standard freight contracts (CMR in Europe, Carmack Amendment in the US, or analogous domestic carrier terms in SEA), carriers limit liability per kilogram or per package — meaning a high-quality ePOD record may expose the carrier to a larger successful claim than a paper POD would permit. This creates a structural disincentive: carriers who invest in ePOD evidence quality are more likely to pay claims, not less. This incentive misalignment is compounded in SEA where many domestic carriers operate on thin margins and absorb ePOD cost without shipper cost-sharing arrangements. [ASSUMED-3]: to validate — ask Indonesia-based 3PLs (JNE Logistics, Pos Logistik) whether their shipper contracts include ePOD requirements and whether carriers are reimbursed for the cost.

- **RC3: ePOD software market is fragmented with no SEA-dominant platform and weak offline capability in rural corridors** — Track-POD and Onfleet are primarily NA/EU market solutions with no confirmed SEA office; FarEye is the only standalone platform with documented SEA enterprise customers (Zalora, ACommerce, Sephora). Indonesia's archipelago geography and Malaysia's East Malaysia corridors have persistent 3G/4G coverage gaps where offline-mode ePOD sync is essential. No platform has achieved sufficient SEA carrier network effect to make ePOD adoption a structural norm rather than an enterprise-only exception. The result is a two-tier market: large CPG and pharma shippers using enterprise TMS-bundled ePOD, and the majority of SME freight carriers using paper because no affordable, offline-capable SEA-native solution exists at scale. (3, 5)

- **RC4: Shipper-side claims workflows are not integrated with ePOD data, so digital capture does not translate to evidentiary use** — Even where ePOD is deployed, many shippers treat it as a delivery confirmation tool (for invoice triggering) rather than a risk management tool (for claims evidence assembly). Photos are captured but not systematically reviewed for damage notation; GPS coordinates are logged but not geocoded against the consignee's registered delivery address to confirm correct-address delivery; signatory fields are completed but not cross-referenced against authorized-personnel registries. The McKinsey analysis explicitly notes that realizing handoff waste reduction requires companies to "measure the extent of their handover losses" and "find ways to integrate solutions within their existing operating models and tech stacks" — integration that most mid-market shippers have not undertaken. (1)

- **RC5: No binding regulatory minimum for B2B delivery documentation exists in SEA jurisdictions** — The EU's CMR Convention mandates minimum content for international road transport consignment notes and creates carrier liability upon delivery without notation of damage; no equivalent mandatory digital-documentation standard applies to domestic B2B freight in Indonesia (governed by Law No. 22/2009 on Road Traffic, which sets no minimum for delivery documentation content), Malaysia (Land Public Transport Act, similarly silent on POD standards), or Thailand. Without regulatory pressure, market adoption of ePOD remains voluntary and enterprise-segment concentrated. (see also Pain point 5.5 on regulatory gap enabling consignee fraud) [ASSUMED-4]: to validate — confirm with Indonesian ALFI (National Shippers Council) whether any pending regulation would mandate digital POD for commercial freight.

---

### Pain point 5.2

**Description:** Cargo discrepancies — short deliveries, quantity variances, and condition damage discovered at the consignee's receiving dock — are chronically under-investigated because no party in the B2B freight transaction has both the economic incentive and the legal standing to conduct a timely investigation. The shipper has already been paid (or invoiced), the carrier treats the signed POD as discharging liability, and the cargo insurer receives a claim without contemporaneous condition evidence. The result is that a material share of cargo discrepancies are absorbed as write-offs or result in disputed claims that settle at a fraction of actual loss. Under standard freight terms, the burden of proof for concealed damage lies with the claimant shipper, who must prove carrier fault — a burden that is structurally difficult to meet without photographic and documentary evidence captured at the moment of receipt. TT Club notes that approximately two-thirds of cargo damage claims trace to packing, load distribution, and documentation failures — not carrier negligence — meaning the shipper bears the loss even when a preventable carrier error occurred.

**Who bears it:** Shippers and importers who cannot recover the full value of short or damaged cargo; cargo insurers who absorb undisputed losses; 3PLs who lose repeat business when claims processes fail their clients.

**Estimated cost:**
- McKinsey estimates $45B–$66B per year in B2B last-mile handoff waste (US-primary), of which short deliveries, damage disputes, and re-delivery costs are explicitly cited components. (1)
- Global cargo insurance premiums reached $22.64B in 2024 (IUMI); loss ratios have been improving, but Latin America maintained loss ratios of 40–50%, indicating continued high-loss environments in regions correlating with high cargo crime (Brazil, Mexico). (9)
- CargoNet 2024: 3,625 US theft incidents, average loss $202,364 per incident; a substantial portion of these become cargo discrepancy claims where the absence of receiving-dock evidence makes recovery impossible. (4)
- Cargo claims processing: 30–120 days average settlement cycle; incomplete documentation causes 40% of processing delays. Each unresolved or delayed claim carries a working-capital cost for the claimant. (2)

**Willingness to pay:**

**Frequency:**
- TT Club states approximately two-thirds of cargo damage-related claims result from poor packing, load distribution, securing, and documentary issues — meaning the evidentiary problem is the dominant failure mode, not the physical damage event itself. (7)
- 34% of US packages arrive with some form of damage (2024 estimate, NICB data via Frasco Research). (10)
- More than half of US carrier liability claims are denied, typically because the claimant cannot meet the burden of proving carrier fault without adequate receiving documentation. (11)

**Evidenced or assumed:**
(1) https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste
(2) https://www.gofclogistics.com/a-complete-guide-to-freight-claims/
(4) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/
(7) https://www.ttclub.com/products-and-services/claims-management/ — TT Club claims guidance confirming documentation as dominant claims failure mode
(9) https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/
(10) https://frasco.com/delivery-claims-in-2026-theft-damage-and-the-evidence-that-matters-most/
(11) https://www.atsinc.com/blog/a-freight-brokers-role-in-cargo-claims — "more than half of carrier liability claims are denied"
(12) https://www.logisticsplus.com/6-types-of-freight-claims-and-6-reasons-for-denial/ — six denial types documented including documentation failure
(13) https://www.ntassoc.com/freight-claims-101-how-it-works-how-to-fight-it
(14) https://www.setlifflaw.com/understanding-cargo-claims/ — concealed damage burden of proof on claimant
(15) https://iumi.com/wp-content/uploads/2024/12/IUMI-Stats-Report-2024.pdf — IUMI Stats Report 2024 PDF; markitdown-processable

**Root Causes**

- **RC1: The signed delivery receipt legally discharges carrier liability for visible damage, removing the carrier's incentive to investigate post-delivery** — Under standard freight contract terms in most jurisdictions (Carmack Amendment in the US; CMR Article 30 in Europe; analogous domestic carrier terms in SEA), a delivery receipt signed without notation of visible damage constitutes prima facie evidence that the carrier delivered in good condition. This is not a documentation gap — it is a deliberate legal structure designed to finalize liability at the moment of delivery. Once the carrier's liability is discharged, no economic incentive exists for the carrier to re-open the question; any investigation that confirms carrier-caused damage simply creates liability the carrier has already legally escaped. The result: the investigative incentive burden falls entirely on the shipper and insurer, who were not present at delivery. (7, 14)

- **RC2: Cargo insurer information asymmetry — the insurer prices the risk without access to route-level discrepancy data** — Cargo insurers price premiums based on commodity type, declared value, and general lane risk — not on the shipper's specific historical receiving-dock discrepancy rate, carrier-specific shortage patterns, or route-level damage frequency. The shipper experiences discrepancy events at the receiving dock; the insurer learns of them only when a claim is filed. Without access to systemic discrepancy data (which would require integrated ePOD-to-insurer data flows that do not exist at scale), insurers cannot price risk accurately, cannot reward shippers who invest in evidence infrastructure, and cannot identify high-fraud carriers. This information gap sustains the problem because it prevents the insurance market from creating financial incentives for prevention. [ASSUMED-5]: to validate — ask a cargo insurer (TT Club, Munich Re Specialty) whether they receive shipper-side ePOD or receiving-dock data as part of underwriting; if not, what data do they use to price freight risk?

- **RC3: Receiving dock labor is not trained or incentivized to produce claims-quality documentation** — The person who signs the delivery receipt at the consignee's receiving dock is typically a warehouse operative whose performance metrics are focused on throughput and unload speed, not evidence quality. Noting damage on the BOL, photographing pallet condition, counting individual units against the manifest, and initiating a formal discrepancy report all slow unload throughput. Without explicit management instructions, an incentive structure tied to evidence quality, and a workflow tool at the dock (handheld scanner with photo capture), the default behavior is to sign the delivery receipt and handle discrepancies informally — which produces no claims-bar evidence. This is a workforce management and process design problem that is invisible to the technology solutions (ePOD apps) deployed on the driver's side. [ASSUMED-6]: to validate — interview a CPG or electronics importer's warehouse manager in Indonesia or Malaysia about their standard receiving procedure for B2B freight; ask whether dock staff are trained to refuse a clean signature on a damaged delivery.

- **RC4: Short deliveries below the insurance deductible threshold are absorbed as cost of goods sold, distorting the true frequency of discrepancy events** — Most cargo insurance policies carry per-incident deductibles ($500–$2,500 is common for SME shippers); claims departments at many B2B companies are instructed not to file claims for losses below the deductible. As a result, a large volume of small-to-medium short deliveries (a single case missing from a pallet, a partial pallet shortage) are never recorded as formal cargo discrepancies — they are either absorbed as inventory shrinkage or charged back to the carrier informally. The structural effect is that the systemic frequency of delivery discrepancies is severely underreported in available data, which prevents the market from quantifying the problem or designing proportionate solutions. (See also Pain point 5.1 on the broader documentation gap.) [ASSUMED-7]: to validate — ask three large CPG shippers for their internal "write-off below deductible" freight shrinkage figure as a percentage of total freight value.

---

### Pain point 5.3

**Description:** High-value shipments transiting documented high-risk road corridors — Brazil's São Paulo–Santos corridor, Mexico's Mexico City–Monterrey highway, Indonesia's Trans-Java Toll Road, and South Africa's N1/N3 routes — require physical convoy escort or dedicated armed security escort that is expensive, regionally fragmented, and structurally disconnected from TMS routing and scheduling. The BSI/TT Club 2024 Cargo Theft Report identifies Brazil (68% of South American thefts), Mexico, South Africa, and India as the primary hijacking hotspots, with violent hijacking representing 21% of all global cargo theft methods. Escort services are priced at estimated $500–$2,000 per truck per day for 2-person armed escort in SEA and emerging markets (based on hourly guard rates of $17–$81/hour documented in US markets, with uplifts for armed escort in high-risk emerging market corridors). No major TMS platform (Oracle OTM, SAP TM, Manhattan Associates, Descartes) provides a native module to embed escort scheduling, escort-provider selection, escort cost, and escort route constraints into the shipment routing workflow — meaning security is planned offline, outside the TMS, creating coordination gaps at the handoff between the route plan and the security deployment.

**Who bears it:** High-value goods shippers (pharma, electronics, precious metals, fuel) who absorb escort cost as a freight surcharge; 3PLs who are contractually required to provide secure delivery but must source escort capacity from regional security firms without TMS integration; carriers who bear hijack risk without escort when shipment security requirements are not communicated.

**Estimated cost:**
- Armed escort services: US market hourly rates $17–$81/hour per security officer; a 2-person armed escort team for a 10-hour transit day = $340–$1,620/day in the US; emerging market high-risk corridor pricing is estimated at $500–$2,000/truck/day for a standard escort package (uplift for armed escort, armored vehicle, and elevated corridor risk) [ASSUMED-8]: validate with direct inquiry to G4S, Securitas, or regional SEA security firms.
- Brink's recorded $5.012B total revenue in 2024 (predominantly cash-in-transit); Securitas total revenue $15.3B (2024); GardaWorld $5.9B FY2024 — together the three security majors generate ~$26B annually; cargo escort is a specialty sub-product not separately disclosed. (12, 13, 14)
- Average US cargo theft incident loss: $202,364 (CargoNet 2024); Brazil alone accounted for 68% of South American thefts with losses extending into millions of USD per incident for high-value electronics and pharmaceutical loads. (4, 8)
- TMS integration gap: A custom API integration between a TMS and a security escort dispatch platform is estimated at $50,000–$200,000 in professional services cost plus $20,000–$80,000/year in maintenance [ASSUMED-9]: validate with TMS integrators.

**Willingness to pay:**

**Frequency:**
- BSI/TT Club 2024: 21% of global cargo thefts involved hijacking; trucks represent 76% of all theft incidents; Brazil, Mexico, India, US, Germany, Chile, South Africa are primary hotspots. (8)
- TAPA APAC 2025: 488 cargo crime incidents across APAC recorded; en-route incidents account for nearly 40% of all cases; robbery incidents (17.8%) became a notable escalation in 2025. (15)
- India accounts for ~60% of APAC cargo crime incidents; Indonesia accounts for ~14% of APAC incidents. (16)
- Strategic theft (identity-based, not physical hijack) now represents 18% of US cargo theft, indicating that for the highest-value loads, criminals are shifting to fraud rather than hijack — but physical hijacking remains the dominant APAC and South American method. (8)

**Evidenced or assumed:**
(4) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/
(8) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf — PDF; markitdown-processable
(12) https://www.globenewswire.com/news-release/2025/02/26/3032849/35146/en/Brink-s-Announces-Fourth-Quarter-and-Full-Year-2024-Results.html
(13) https://www.prnewswire.com/news-releases/securitas-ab-full-year-report-2024--januarydecember-302369837.html
(14) https://www.prnewswire.com/news-releases/gardaworld-announces-financial-guidance-for-fiscal-year-ending-january-31-2024-and-intends-to-amend-the-maturity-date-of-its-term-loan-b-due-2026-to-2029-302040627.html
(15) https://tapa-apac.org/the-transported-asset-protection-association-asia-pacific-tapa-apac-releases-2025-intelligence-data-revealing-shifting-cargo-crime-patterns-record-counterfeit-losses-and-escalating-in-transit-risk [NEEDS-ATTENDED-FETCH]: full 2025 report detail; HTTP 403 returned on direct fetch
(16) https://cdnc.heyzine.com/flip-book/pdf/12e9323b9c5babd6e618af9f88d94ea231f220e0.pdf — TAPA APAC TIS Annual Report 2023; PDF; markitdown-processable; Indonesia 14% of APAC incidents; India ~60%
(17) https://www.munichre.com/specialty/global-markets-uk/en/insights/cargo-and-freight/cargo-theft-tactics-and-trends-report-2025.html — Munich Re Cargo Theft Tactics and Trends Report 2025
(18) https://www.solutionsgroupinternational.com/service-divisions/high-value-freight-pharma-security.php — vendor site; armed escort service description (used only for service existence confirmation; not for cost claims)
(19) https://container-news.com/how-security-escort-services-protect-high-risk-freight-on-the-road/ — trade press; escort cost context (no specific pricing disclosed)
(20) https://www.g4s.com/what-we-do/transport-and-logistics-security — G4S service description; Asia Pacific 164,000+ employees; cross-border escort services

**Root Causes**

- **RC1: Security escort market is regionally fragmented with no global service catalog or standardized API** — The security escort market is structured as a mosaic of regional providers: G4S (Allied Universal), Securitas, GardaWorld, and Brink's cover major markets but typically through regional JV structures, domestic subsidiaries, or franchise arrangements. No security escort provider operates a globally standardized service catalog with machine-readable rates, availability APIs, or route-constraint data that a TMS could consume. The result is that a shipper planning a cross-corridor or cross-country high-value shipment must contact regional security providers through manual channels (email, phone) to obtain a quote, confirm availability, and coordinate the escort schedule with the carrier's route plan — a process that is disconnected from the TMS in which the shipment is planned and executed. This fragmentation is structural: security escorts are a labor-intensive, jurisdiction-specific service where local licensing, armed-officer permits, and law-enforcement relationships vary by country, preventing a single standardized service catalog. [ASSUMED-8]

- **RC2: TMS platforms were designed for freight cost and route optimization, not security risk layering** — Major TMS platforms (Oracle OTM, SAP TM, Manhattan Associates, Descartes) model shipment cost as a function of distance, mode, carrier rates, and fuel — not as a function of route-specific crime risk, escort availability, or security protocol requirements. There is no standard data model in any major TMS for "security escort required: yes/no," "corridor risk score," or "escort provider assignment." This is not a missing feature — it reflects a historical design assumption that security is a procurement decision made outside the logistics system. The structural consequence is that security requirements are communicated through manual workarounds (shipper security policies transmitted via email, not TMS flags), creating coordination errors when security requirements change or when a route deviation is needed. [ASSUMED-9]

- **RC3: Armed escort licensing requirements create jurisdiction-specific supply constraints** — In Indonesia, armed private security escorts must comply with Law No. 2/2002 on Police and Law No. 12/2013 on Private Security Services; armed officers must hold a Surat Izin Operasional (SIO) — an operating license from the Indonesian National Police — and carry only firearms approved for private security use. In Brazil, armed escort services (escolta armada) must comply with ANSEG/SESEG regulations; in South Africa, the Private Security Industry Regulatory Authority (PSIRA) governs armed escort licensing. These jurisdiction-specific licensing requirements prevent international security firms from rapidly deploying staff across borders and limit the pool of qualified armed escort providers on each specific corridor. In high-demand periods (holiday season, year-end pharmaceutical distribution), the licensed armed escort supply cannot expand quickly, driving both cost increases and service unavailability. [ASSUMED-10]: to validate — confirm with G4S Indonesia or a Jakarta-based security broker whether armed escort SIO licensing creates supply constraints on the Trans-Java corridor during peak periods.

- **RC4: Crime incident data is insufficiently granular for route-specific escort decisions** — The decision to invest in a convoy escort depends on a cost-benefit calculation that requires route-specific crime probability, not national or regional averages. CargoNet (US-primary) and TAPA TIS (global, but APAC undercounted) provide aggregate crime data at the country and corridor level, but not at the route-segment level required for an evidence-based escort decision on a specific delivery lane. Without granular risk data, shippers either over-invest in escort (applying escort to all high-value shipments regardless of route-specific risk) or under-invest (relying on aggregate national averages that mask corridor-specific hotspots). The underreporting problem in APAC (TAPA APAC 2023: 343 verified APAC incidents vs. 156,503 EMEA incidents) makes this data problem structurally worse in the region most affected by it. (16)

---

### Pain point 5.4

**Description:** Marine surveyor inspection at ports of discharge in ASEAN — particularly for bulk commodities (palm oil, coal, LNG) and high-value industrial cargo — is a manual, sequential, time-intensive process that creates dwell-time costs for consignees and their trade finance banks. The market is structurally concentrated in four multinational TIC firms (SGS, Bureau Veritas/Inspectorate, Intertek/Caleb Brett, Cotecna), whose inspection turnaround times are governed by surveyor availability at port, not by shipment urgency, and whose inspection certificates are prerequisites for cargo insurance claims, letter-of-credit payment releases, and trade finance settlement. When surveyor availability is limited (vessel bunching at port, holiday periods, or surveyor illness), cargo must wait at berth, generating demurrage charges of $10,000–$80,000 per day for bulk vessels. No digital substitute for the independent marine surveyor inspection certificate exists under current commodity trade contracts (GAFTA, FOSFA, PORAM, IBA terms) or letter-of-credit standard documentary credit requirements (UCP 600).

**Who bears it:** Commodity importers (palm oil refiners, coal-fired power plants, LNG terminals) who bear demurrage when inspection delays discharge; trade finance banks whose letter-of-credit payment obligation depends on the inspection certificate; commodity traders whose contract performance is tied to survey completion.

**Estimated cost:**
- Bulk vessel demurrage rates: Capesize bulk carrier $15,000–$40,000/day; Panamax $10,000–$20,000/day; Handysize $7,000–$15,000/day. A 2-day inspection delay on a Panamax vessel carrying coal = $20,000–$40,000 in demurrage cost to the consignee. [ASSUMED-11]: validate with a commodity trading desk or port agent in Tanjung Priok.
- Marine survey per engagement: $500–$3,000 for standard container condition survey; $2,000–$15,000 for a bulk vessel draught survey; $5,000–$50,000+ for complex commodity sampling and lab analysis. (from Stage 5 value-chain profile)
- Global marine survey services market: $4.49B (2024), CAGR 6.19% — Low confidence (commercial research; not cross-validated against government statistics). (21)
- SGS total revenue CHF 6,794M (2024); Bureau Veritas EUR 6,241M; Intertek £3.4B — cargo inspection is a subset of these totals; combined cargo-inspection revenue estimated at $1.5B+ for the three named firms. (22, 23, 24)

**Willingness to pay:**

**Frequency:**
- Port of Singapore handled 39.0M TEUs in 2024 (world's busiest transhipment hub); Port of Tanjung Priok handled ~9M TEUs; Laem Chabang (Thailand) truck waiting times have improved to 3 hours but still represent a material bottleneck at peak periods. (25, 26)
- Indonesia is the world's largest coal exporter; Malaysia and Indonesia together produce ~85% of global palm oil — every export and import cycle of these commodities generates a marine surveyor inspection requirement. [ASSUMED-12]: specific survey volume data not publicly disclosed by TIC firms.
- Bureau Veritas Marine & Offshore segment delivered 13.2% organic growth in Q3 2024, indicating rising demand for independent marine inspection at a rate above GDP growth. (23)

**Evidenced or assumed:**
(21) https://www.researchandmarkets.com/reports/6055294/marine-survey-services-market-global-forecast — Low confidence; commercial market research only
(22) https://www.sgs.com/en/news/2025/02/sgs-2024-full-year-results — audited; High confidence
(23) https://www.globenewswire.com/news-release/2025/02/25/3031665/0/en/BUREAU-VERITAS-2024-annual-results-Bureau-Veritas-LEAP-28-strategy-delivers-outstanding-results-in-2024-confident-2025-outlook.html — audited; High confidence
(24) https://www.intertek.com/siteassets/investors/2025/intertek-2024-full-year-results-announcement.pdf — audited; High confidence; PDF; markitdown-processable
(25) https://www.mpa.gov.sg/port-marine-ops/port-statistics — MPA Singapore government statistics; 39.0M TEUs 2024
(26) https://www.freytworld.com/news/the-cost-of-congestion-laem-chabang-impact-on-regional-freight-flow/ — Laem Chabang dwell and congestion data
(27) https://www.cotecna.com/en/locations/singapore — Cotecna Singapore office confirmed
(28) https://www.mpa.gov.sg/docs/mpalibraries/mpa-documents-files/oms/bunkering/bunkering-services-providers/bunker-surveying-company-licence---1-may-2024.pdf — MPA Singapore licensed bunker surveyors; PDF [NEEDS-ATTENDED-FETCH]: binary-encoded PDF; full extraction requires direct access
(29) https://straitsresearch.com/report/cargo-inspection-market — Low-Medium confidence; $2.94B 2024 cargo inspection market
(30) https://www.tic-council.org/application/files/7917/4523/6518/Annual_Report_2024.pdf — TIC Council Annual Report 2024; PDF; markitdown-processable; global TIC market ~$200B

**Root Causes**

- **RC1: Commodity trade contracts mandate independent third-party inspection as a legal prerequisite for payment, with no digital substitute accepted** — GAFTA (Grain and Feed Trade Association), FOSFA (Federation of Oils, Seeds and Fats Associations), PORAM (Palm Oil Refiners Association of Malaysia), and IBA (international metals) standard contract terms specify that the quantity and quality certificates issued by an approved independent inspector (from an approved list that is typically limited to the four major TIC firms) are the binding documents for payment and insurance purposes. UCP 600 (ICC Uniform Customs and Practice for Documentary Credits) requires that a physical inspection certificate be presented under a letter of credit if stipulated in the credit — there is no mechanism in current international trade finance standards to substitute a digitally-recorded inspection for a physically-signed inspection certificate. The structural persistence of this bottleneck is contractual and institutional, not technical. [ASSUMED-12]

- **RC2: Marine surveyor supply is geographically concentrated and cannot be rapidly expanded** — Professional marine surveyors with IFIA accreditation and the specific technical competency for a given commodity (palm oil sampling, coal draught survey, petroleum Saybolt analysis) require 3–5 years of supervised field experience to qualify. The global supply of experienced commodity surveyors is small relative to cargo volumes and is geographically concentrated in major port cities. At Port of Singapore, MPA's May 2024 licensed bunker surveying firm list shows 49 companies with 288 licensed surveyors — for a port processing 39M TEUs. When vessel bunching occurs (multiple vessels discharging simultaneously at adjacent berths), surveyor capacity is immediately exhausted, and cargo must wait. Unlike software engineers, surveyors cannot be remote or automated for physical quantity and condition assessment. (28)

- **RC3: Four-firm market concentration creates conflict-of-interest risk without a structural remedy** — When the same TIC firm inspects cargo on behalf of both the seller and the buyer in a commodity trade (a common practice under cost-efficiency pressure), the independence claim of the inspection certificate is structurally compromised. This creates a systemic conflict-of-interest risk — but no commodity trade association or standard has mandated seller-buyer surveyor differentiation. Local Malaysian and Indonesian marine surveying firms lack the IFIA accreditation and laboratory infrastructure required by GAFTA, FOSFA, and PORAM contracts, meaning concentration in the four major firms cannot be reduced through competitive entry from the market. This is not a market failure caused by barriers to entry alone — it is a requirements-setting dynamic controlled by the commodity trade associations, which are dominated by the same multinational trading houses that use the four major TIC firms. [ASSUMED-7 from Stage 5 value chain]

- **RC4: Remote and digital inspection technologies are not yet certified under commodity trade contracts** — Bureau Veritas has developed tech-enabled remote survey capabilities (documented in its Marine & Offshore digital classification program), and drones and computer vision are applied to vessel condition surveys in classification contexts. However, bulk quantity verification (draught survey) requires physical measurement of vessel waterline displacement before and after discharge — a physical measurement that cannot be done remotely. Commodity sampling and lab analysis require physical sample collection and chain-of-custody procedures that cannot be digitized without invalidating the evidentiary chain required by trade contracts. The technology constraint and the contractual constraint interact: even where technology could partially substitute, trade contract and insurance requirements maintain the manual process as the legal standard. [ASSUMED-13]: to validate — ask Bureau Veritas or SGS whether any commodity trade association (GAFTA, FOSFA, PORAM) has accepted a digitally-recorded or remote inspection as a substitute for a physically-signed inspection certificate in a letter-of-credit transaction.

---

### Pain point 5.5

**Description:** Fraudulent delivery — where cargo is signed over to an unauthorized person impersonating the consignee's representative, or where a fictitious delivery is documented at the wrong location — is structurally enabled by the absence of consignee identity verification at the point of POD signing. Standard ePOD capture (touchscreen signature) verifies only that someone signed — not that the signatory is the authorized consignee representative. CargoNet 2024 data shows that identity-based scams accounted for nearly one-third of all cargo thefts in 2024, up from ~8% in 2020 — a 4x increase in share in four years. Fictitious pickup incidents (where fraudulent documentation is used to redirect cargo at the shipper's loading dock) rose from an average of 66 per year (2012–2022) to 576 in 2023 — a +772% multi-year surge. The analogous risk at the delivery end is "wrong-consignee delivery" or "rogue consignee fraud" — where a person at the delivery address who is not the authorized procurement officer signs for a shipment and diverts it. No standard commercial ePOD system verifies signatory identity against a pre-registered authorized personnel list; biometric verification (face match against a photo ID), consignee-specific PIN, or NFC-badge match are architectural solutions that exist in patents and pilots but are not deployed at scale in any commercial B2B freight ePOD platform.

**Who bears it:** Shippers whose goods are diverted post-delivery-signature; 3PLs whose liability is discharged by the fraudulent signature and who face reputational damage when the shipper pursues recovery; cargo insurers who face claims for goods that were technically "delivered."

**Estimated cost:**
- CargoNet 2024: 3,625 US theft incidents, average loss $202,364, total US losses $732M+; approximately one-third attributable to identity-based scams = ~$244M in identity-theft-enabled US cargo losses in 2024. (4)
- Fictitious pickup events: 576 in 2023 (CargoNet); this is the loading-dock analogue of the delivery-end fraud; individual incidents range from thousands to millions of dollars depending on commodity. (4, 5)
- Biometric ePOD verification add-on cost: not publicly priced by any major ePOD vendor; estimated $5–$15/driver/month premium for a biometric verification module, plus PDPA/PDP Law compliance cost in SEA [ASSUMED-14].
- A single successful rogue-consignee delivery fraud incident on a pharmaceutical or electronics shipment can represent losses of $50,000–$500,000+ [ASSUMED-14].

**Willingness to pay:**

**Frequency:**
- Identity-based scams: ~33% of US cargo thefts in 2024, up from ~8% in 2020 — a structural, sustained shift in theft methodology toward documentation and identity exploitation. (4, 5)
- Fictitious pickup (loading-dock fraud): 576 verified US events in 2023; on track to exceed 450+ in 2024. (4)
- BSI/TT Club 2024: strategic theft (including identity/document fraud) now represents 18% of all US cargo theft incidents; AI-generated documents and deepfakes are being used to forge BOL and delivery authorizations. (8)
- FBI IC3 2026 advisory confirms: "Cyber-enabled strategic cargo theft surging" — identity fraud techniques including fraudulent email takeover of freight brokers and shippers are expanding the delivery-end fraud vector. (31)

**Evidenced or assumed:**
(4) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/
(5) https://www.denim.com/blog/how-to-spot-pod-fraud-in-freight-red-flags-every-broker-should-know
(8) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf — PDF; markitdown-processable
(9) https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(16) https://cdnc.heyzine.com/flip-book/pdf/12e9323b9c5babd6e618af9f88d94ea231f220e0.pdf — TAPA APAC TIS 2023; PDF; markitdown-processable
(28a) https://www.veriff.com/identity-verification/learn/last-mile-delivery-why-identity-verification-is-your-secret-weapon — biometric/eKYC delivery ID verification solution description
(31) https://www.ic3.gov/PSA/2026/PSA260430 — FBI IC3 2026 advisory on cyber-enabled strategic cargo theft
(32) https://www.munichre.com/specialty/global-markets-uk/en/insights/cargo-and-freight/cargo-theft-tactics-and-trends-report-2025.html — Munich Re Cargo Theft Tactics and Trends Report 2025; AI document forgery documented
(33) https://www.freightwaves.com/news/strategic-cargo-theft-growth-pushes-industry-fraud-toward-all-time-high — FreightWaves on strategic cargo theft reaching all-time high
(34) https://www.insurancebusinessmag.com/us/news/breaking-news/global-cargo-theft-hits-new-highs-as-criminal-networks-evolve--tt-club-572468.aspx — Insurance Business Magazine: global cargo theft new highs
(35) https://link.springer.com/article/10.1007/s12198-025-00325-8 — Springer: "Phantom shipment threat: strengthening transportation security against freight fraud" (2025 academic)

**Root Causes**

- **RC1: ePOD signature capture is designed for delivery confirmation, not identity verification — a fundamentally different security function** — Commercial ePOD systems (Track-POD, Onfleet, FarEye, DispatchTrack) were designed to solve the paper-POD latency and manipulation problem: digitizing the signature and anchoring it to GPS and timestamp eliminates the 24–72-hour return lag and document alteration. They were not designed to verify that the signatory is who they claim to be. This is a deliberate product scope decision, not an oversight: most ePOD deployments operate in B2C contexts (grocery, retail, pharmacy) where any adult at the delivery address is an acceptable recipient. In B2B freight, where the authorized signatory is a specific procurement officer or receiving supervisor who may not be present at every delivery, the identity gap is architecturally significant. No major commercial ePOD platform has made biometric consignee identity verification a standard module rather than an optional add-on. (28a)

- **RC2: Biometric identity verification at the delivery point creates PDPA/PDP Law compliance cost that most SEA SME carriers cannot absorb** — Thailand's PDPA (Personal Data Protection Act, effective June 2022), Malaysia's PDPA 2010 (amended 2023), and Indonesia's PDP Law (effective October 2024) all classify biometric data (fingerprints, facial geometry) as sensitive personal data requiring explicit consent and elevated security safeguards. A carrier deploying biometric consignee verification must: obtain explicit written consent from the consignee's authorized personnel, implement encrypted biometric data storage, appoint a Data Protection Officer (required under Indonesia's PDP Law for large-scale personal data processing), and comply with mandatory breach notification requirements. For SME carriers and regional 3PLs in SEA, this compliance stack is prohibitive relative to the expected return — creating a market where only large shippers with dedicated legal and compliance teams can justify biometric verification. This regulatory cost creates a structural supply-side barrier to adoption even where demand exists. [ASSUMED-4] (see Pain point 5.1)

- **RC3: Authorized consignee personnel registries do not exist in a machine-readable, API-accessible format** — For biometric or photo-ID verification to work at the delivery point, the driver's ePOD app must have access to a pre-registered list of authorized signatories for the consignee organization, including their photo ID or biometric template. This requires the consignee to maintain a digital personnel registry and expose it via API to the shipper's or carrier's ePOD platform. In practice, consignee companies do not maintain such registries in any standardized format — employee rosters exist in HR systems (SAP HCM, Workday) that are not exposed to supply chain applications. No industry standard defines how a consignee organization's "authorized delivery recipient" roster should be formatted, maintained, and made available to carrier ePOD systems. This information-layer absence is the structural bottleneck that prevents identity verification from scaling even when the technology is available. [ASSUMED-15]: to validate — ask three large pharma or electronics importers whether they maintain a digital list of authorized receiving personnel that could be integrated with a carrier's ePOD system; ask what format the list is in.

- **RC4: Fraudulent delivery documentation is increasingly AI-assisted, widening the gap between detection capability and fraud sophistication** — BSI/TT Club 2024 and Munich Re 2025 both document the use of AI-generated content (deepfakes of driver IDs, AI-written phishing emails impersonating dispatch systems, AI-assisted bill-of-lading forgery) in cargo theft operations. The FBI IC3 issued a 2026 PSA confirming that cyber-enabled strategic cargo theft is surging. The fraud detection methods used by most ePOD systems (visual inspection of signature, GPS location match) were designed against human-forged documents and manual deceptions — they have no capability to detect AI-generated document substitutes or identity impersonation using synthetic media. The fraud sophistication curve is structurally outpacing the detection capability curve because AI lowers the marginal cost of document forgery to near-zero while raising the quality of forgeries above human detection capability. (8, 31, 32, 35)

- **RC5: Liability discharge upon signature creates no economic incentive for carriers to verify consignee identity** — Under standard freight terms, the carrier's liability is discharged when a signature is obtained at the delivery address, regardless of whether the signatory is the authorized consignee representative. If the signature is fraudulent, the carrier's legal position is that it performed a valid delivery — the shipper must prove the carrier knew or should have known the signatory was unauthorized, which is an extremely high evidentiary burden. This liability structure means the carrier bears no financial consequence from a consignee identity fraud event (other than reputational damage if the shipper can prove negligence), while the shipper bears the full economic loss. Carriers therefore have no private incentive to invest in consignee identity verification technology — all the economic benefit of preventing the fraud accrues to the shipper. (14, 7)

---

### New pain points (not in original hypothesis)

No additional pain points beyond the five hypothesized are added in this pass. However, the following refinements to working hypotheses are noted:

- **Pain point 5.4 (marine surveyor bottleneck)** is substantively evidenced but the quantification of demurrage cost ($10,000–$80,000/day) is sourced from general bulk shipping demurrage rates rather than from a surveyor-delay-specific study — this should be cross-validated with a commodity trader or port agent interview [ASSUMED-11]. The hypothesis that this is a "dwell bottleneck" is confirmed by port congestion data (Laem Chabang, Singapore), but the causal link specifically to surveyor availability (rather than vessel scheduling or berth congestion) is assumed rather than directly evidenced.

- **Pain point 5.2 (discrepancy investigation incentive gap)** was partially confirmed — the carrier liability discharge mechanism is well-documented (Carmack Amendment, CMR Article 30), and the TT Club statistic (two-thirds of damage claims trace to documentation failures) provides strong structural evidence. However, the specific claim that "shippers are always paid before delivery" is not universally true in B2B freight (many transactions are on credit terms with payment triggered by POD), and this hypothesis element should be refined.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Paper POD penetration in Indonesia domestic B2B trucking exceeds 80% as of 2026. To validate: ask three Indonesia-based 3PLs (JNE Logistics, Pos Logistik, ID Logistics) what proportion of B2B delivery legs use any form of digital POD vs. paper delivery notes; also ask Indonesia National Shippers Council (ALFI).

[ASSUMED-2]: 85% of insurance providers now require delivery photos from couriers. This figure is cited in vendor content (TransVirtual) without an original survey citation. To validate: identify the original survey or insurance association publication from which this statistic derives; if not traceable, treat as Low confidence and mark accordingly.

[ASSUMED-3]: Carrier contracts in SEA domestic B2B freight do not include ePOD cost-sharing provisions (shipper does not reimburse carrier for ePOD deployment cost). To validate: ask Indonesia-based 3PLs and shippers whether their freight contracts specify ePOD requirements and who bears the technology cost.

[ASSUMED-4]: PDPA (Thailand, Malaysia) and PDP Law (Indonesia) compliance requirements for biometric data create a prohibitive compliance cost for SME carriers attempting to deploy consignee biometric verification. To validate: ask a SEA-based data protection law firm for a compliance cost estimate for a regional 3PL deploying biometric POD signature verification; confirm whether the four relevant data protection laws classify fingerprint/facial geometry as sensitive data requiring elevated safeguards.

[ASSUMED-5]: Cargo insurers do not receive shipper-side ePOD or receiving-dock discrepancy data as part of underwriting; they price freight risk based on commodity type, declared value, and general lane risk only. To validate: ask TT Club or Munich Re Specialty whether they use delivery-event data (GPS, photo, discrepancy rate) in cargo underwriting; ask what data shippers are required to provide at policy inception.

[ASSUMED-6]: Warehouse receiving dock labor at consignee facilities in Indonesia and Malaysia is not trained to produce claims-quality documentation (photo of damage, formal discrepancy report) and is incentivized primarily for throughput speed. To validate: interview a CPG or electronics importer's warehouse manager in Indonesia or Malaysia about standard receiving procedures; ask whether dock staff are trained and incentivized to note damage or shortage on the delivery receipt before signing.

[ASSUMED-7] (carried from Stage 5 value chain): The cargo inspection market for palm oil at Malaysian and Indonesian ports is effectively controlled by the four major TIC firms, with no viable locally-accredited alternative. To validate: contact PORAM (Kuala Lumpur) to confirm whether member trade contracts specify approved inspection firms; ask whether any local firm has IFIA accreditation for palm oil inspection.

[ASSUMED-8]: Armed cargo escort pricing in SEA high-risk corridors is $500–$2,000/truck/day for a standard 2-person escort package. To validate: request informal quotes from G4S Indonesia, Securitas Thailand, and a Jakarta-based domestic security broker for a standard pharmaceutical-shipment escort on the Trans-Java Toll Road corridor.

[ASSUMED-9]: No major TMS platform (Oracle OTM, SAP TM, Manhattan Associates, Descartes) provides a native module for escort provider selection, escort scheduling, and escort cost modeling as part of shipment routing. To validate: ask Oracle OTM and SAP TM product managers whether security escort is a planned TMS capability; ask a TMS implementation consultant what the professional services cost is for a custom TMS-to-escort-dispatch integration.

[ASSUMED-10]: Armed escort SIO licensing requirements in Indonesia create supply constraints on the Trans-Java corridor during peak periods. To validate: confirm with G4S Indonesia or a Jakarta-based security broker.

[ASSUMED-11]: Bulk vessel demurrage rates on common ASEAN trade routes (coal, palm oil) are $10,000–$80,000/day and that a 2-day surveyor-delay-attributable dwell incident on a Panamax vessel is a realistic occurrence. To validate: ask a commodity trading desk or port agent in Tanjung Priok or Singapore for a documented case of surveyor-delay-attributable demurrage cost; confirm typical Panamax demurrage rate on Indonesia–East Asia coal routes.

[ASSUMED-12]: Survey volumes for ASEAN commodity exports (coal, palm oil, LNG) are large enough that surveyor capacity constraints at peak periods are a documented operational bottleneck rather than a theoretical risk. To validate: ask SGS or Bureau Veritas Singapore whether they have experienced surveyor capacity constraints at Port of Singapore during high-vessel-volume periods; ask for turnaround time SLAs under their master service agreements with commodity traders.

[ASSUMED-13]: No commodity trade association (GAFTA, FOSFA, PORAM) has formally accepted a digitally-recorded or remote inspection as a substitute for a physically-signed inspection certificate in a letter-of-credit transaction. To validate: ask Bureau Veritas or SGS whether any commodity trade association has piloted or accepted remote/digital inspection certificates; ask a trade finance bank (DBS, Standard Chartered) whether they would accept a digitally-recorded remote inspection in lieu of a physical IFIA-certified inspection certificate under UCP 600.

[ASSUMED-14]: A single rogue-consignee delivery fraud on a pharmaceutical or electronics B2B shipment in SEA typically represents $50,000–$500,000 in cargo loss. To validate: ask TT Club or Munich Re Specialty for the loss range they have observed in consignee-impersonation-at-delivery fraud cases; ask a pharmaceutical distributor (Zuellig Pharma, DHL Healthcare) for an estimate of the typical shipment value delivered to a hospital or pharmacy in Indonesia.

[ASSUMED-15]: Large pharma and electronics importers in SEA do not maintain a digital list of authorized receiving personnel in a format that could be integrated with a carrier's ePOD system for identity verification. To validate: ask three large pharma or electronics importers (Zuellig Pharma, Samsung Electronics SEA, 3M SEA) whether they maintain an authorized delivery recipient registry; ask what HR system it resides in and whether it is accessible via API.

---

### Sources index (all Stage 5 pain points)

(1) McKinsey & Company, "Digitizing mid- and last-mile logistics handovers to reduce waste," January 2024, https://www.mckinsey.com/industries/logistics/our-insights/digitizing-mid-and-last-mile-logistics-handovers-to-reduce-waste — Medium-High confidence; $45B–$66B B2B last-mile handoff waste; primary McKinsey analysis.

(2) GoFC Logistics, "Freight Claims Guide: Process, Timelines & Documentation," https://www.gofclogistics.com/a-complete-guide-to-freight-claims/ and FreightAmigo, "How long does a cargo insurance claim take to process?", https://www.freightamigo.com/en/blog/transport-insurance/how-long-does-a-cargo-insurance-claim-take-to-process/ — Medium confidence; 40% of delays caused by documentation; 30–120 day processing cycle.

(3) Track-POD pricing, https://www.track-pod.com/; ITQlick, https://www.itqlick.com/track-pod/pricing; Onfleet Series B, https://www.businesswire.com/news/home/20220607005530/en/ — Medium confidence (vendor and third-party pricing sites).

(4) CargoNet, "2024 Supply Chain Risk Trends Analysis," https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/ — Medium-High confidence; 3,625 incidents; $202,364 average; 27% YoY increase.

(5) Denim, "How to spot POD fraud in freight," https://www.denim.com/blog/how-to-spot-pod-fraud-in-freight-red-flags-every-broker-should-know — Medium confidence; secondary citation of CargoNet primary data; fictitious pickup +772% multi-year; identity-based scams ~33% of 2024 thefts.

(6) TransVirtual, "What is Electronic Proof of Delivery (ePOD)?", https://www.transvirtual.com/us/blog/what-is-electronic-proof-of-delivery-epod/ — Low-Medium confidence (vendor site; "85% of insurance providers" statistic not independently sourced — [ASSUMED-2]).

(7) TT Club, Claims Management, https://www.ttclub.com/products-and-services/claims-management/ and TT Club, "Freight Forwarder Cargo Liability Case Study," https://www.ttclub.com/news-and-resources/case-studies/case-1-cargo-liability-freight-forwarder/ — Medium-High confidence; two-thirds of damage claims from documentation/packing failures.

(8) BSI/TT Club 2024 Cargo Theft Report (April 2025), https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf — PDF; markitdown-processable; Medium-High confidence; primary annual data collection.

(9) IUMI 2024 Stats Report press release, https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/ and full PDF https://iumi.com/wp-content/uploads/2024/12/IUMI-Stats-Report-2024.pdf — Medium-High confidence; $22.64B global cargo premiums; loss ratios improving sixth consecutive year.

(10) Frasco Research, "Delivery Claims in 2026: Theft, Damage, and the Evidence That Matters Most," https://frasco.com/delivery-claims-in-2026-theft-damage-and-the-evidence-that-matters-most/ — Medium confidence; 34% of US packages arrive with some damage; $4B projected parcel shipping loss and damage costs 2025.

(11) ATS Inc., "Are Freight Brokers Liable for Cargo Claims?", https://www.atsinc.com/blog/a-freight-brokers-role-in-cargo-claims — Medium confidence; more than half of carrier liability claims denied.

(12) Brink's Company, "Brink's Announces Fourth-Quarter and Full-Year 2024 Results," GlobeNewswire, https://www.globenewswire.com/news-release/2025/02/26/3032849/35146/en/Brink-s-Announces-Fourth-Quarter-and-Full-Year-2024-Results.html — High confidence; audited public company; $5.012B 2024 revenue.

(13) Securitas AB, "Full Year Report 2024," PR Newswire, https://www.prnewswire.com/news-releases/securitas-ab-full-year-report-2024--januarydecember-302369837.html — High confidence; audited public company; $15.3B 2024 revenue.

(14) GardaWorld, FY2024 guidance, PR Newswire, https://www.prnewswire.com/news-releases/gardaworld-announces-financial-guidance-for-fiscal-year-ending-january-31-2024-and-intends-to-amend-the-maturity-date-of-its-term-loan-b-due-2026-to-2029-302040627.html — Medium confidence; private company guidance; ~$5.9B FY2024.

(15) TAPA APAC 2025 intelligence release, https://tapa-apac.org/the-transported-asset-protection-association-asia-pacific-tapa-apac-releases-2025-intelligence-data-revealing-shifting-cargo-crime-patterns-record-counterfeit-losses-and-escalating-in-transit-risk — Medium-High confidence (TAPA APAC primary intelligence body); 488 incidents, $30M+ direct losses, en-route 40% of cases; [NEEDS-ATTENDED-FETCH]: full report requires authenticated access.

(16) TAPA APAC TIS Annual Report 2023, https://cdnc.heyzine.com/flip-book/pdf/12e9323b9c5babd6e618af9f88d94ea231f220e0.pdf — PDF; markitdown-processable; Medium-High confidence; 343 APAC incidents; Indonesia 14% of APAC; EMEA 156,503 incidents; underreporting confirmed.

(17) Munich Re, "Cargo theft tactics and trends report 2025," https://www.munichre.com/specialty/global-markets-uk/en/insights/cargo-and-freight/cargo-theft-tactics-and-trends-report-2025.html — Medium-High confidence; AI document forgery, hijacking 21%, food & beverage 22%.

(18) G4S, transport and logistics security, https://www.g4s.com/what-we-do/transport-and-logistics-security — Medium confidence (vendor site; used only for service existence confirmation).

(19) Container News, "How Security Escort Services Protect High-Risk Freight on the Road," https://container-news.com/how-security-escort-services-protect-high-risk-freight-on-the-road/ — Low confidence (trade press; no pricing disclosed).

(20) G4S Asia Pacific, https://www.g4s.com/who-we-are/where-we-operate/g4s-in-asia-pacific — vendor site; regional presence confirmation only.

(21) Research and Markets, "Marine Survey Services Market — Global Forecast 2025-2032," https://www.researchandmarkets.com/reports/6055294/marine-survey-services-market-global-forecast — Low confidence; commercial research; $4.49B 2024; no independent validation.

(22) SGS SA, "2024 Full Year Results," https://www.sgs.com/en/news/2025/02/sgs-2024-full-year-results — High confidence; audited; CHF 6,794M 2024.

(23) Bureau Veritas SA, "2024 Annual Results," GlobeNewswire, https://www.globenewswire.com/news-release/2025/02/25/3031665/0/en/BUREAU-VERITAS-2024-annual-results-Bureau-Veritas-LEAP-28-strategy-delivers-outstanding-results-in-2024-confident-2025-outlook.html — High confidence; audited; EUR 6,241M 2024; Marine & Offshore +13.2% organic Q3 2024.

(24) Intertek Group plc, "2024 Full Year Results," https://www.intertek.com/siteassets/investors/2025/intertek-2024-full-year-results-announcement.pdf — High confidence; audited; £3.4B 2024; PDF; markitdown-processable.

(25) Maritime and Port Authority of Singapore, Port Statistics 2024, https://www.mpa.gov.sg/port-marine-ops/port-statistics — High confidence; government primary statistics; 39.0M TEUs 2024.

(26) Freyt World, "The Cost of Congestion: Laem Chabang's Impact on Regional Freight Flow," https://www.freytworld.com/news/the-cost-of-congestion-laem-chabang-impact-on-regional-freight-flow/ — Medium confidence; trade press; truck waiting time 3 hours; 3–5 day turnaround Laem Chabang to Lat Krabang.

(27) Cotecna, Singapore location, https://www.cotecna.com/en/locations/singapore — Medium confidence; confirms Singapore office.

(28) MPA Singapore, Licensed Bunker Surveying Companies (May 2024), https://www.mpa.gov.sg/docs/mpalibraries/mpa-documents-files/oms/bunkering/bunkering-services-providers/bunker-surveying-company-licence---1-may-2024.pdf — High confidence; government document; 49 firms, 288 licensed surveyors; PDF [NEEDS-ATTENDED-FETCH].

(28a) Veriff, "Last-mile delivery: Why Identity Verification is your secret weapon," https://www.veriff.com/identity-verification/learn/last-mile-delivery-why-identity-verification-is-your-secret-weapon — Medium confidence (vendor site; used only for solution description, not for statistics).

(29) Straits Research, "Cargo Inspection Market," https://straitsresearch.com/report/cargo-inspection-market — Low-Medium confidence; commercial research; $2.94B 2024; directional only.

(30) TIC Council, Annual Report 2024, https://www.tic-council.org/application/files/7917/4523/6518/Annual_Report_2024.pdf — Medium confidence; industry association; ~$200B global TIC market; PDF; markitdown-processable.

(31) FBI IC3, "Cyber-Enabled Strategic Cargo Theft Surging," PSA260430, April 2026, https://www.ic3.gov/PSA/2026/PSA260430 — High confidence; US government advisory; confirms AI-enabled cargo identity fraud expanding.

(32) Munich Re Specialty, "Cargo Theft Tactics and Trends Report 2025," https://www.munichre.com/content/dam/munichre/mram/content-pieces/pdfs/MR_CargoTheftReport_FINAL25.pdf — Medium-High confidence; PDF; markitdown-processable. (Note: accessible via https://www.munichre.com/specialty/global-markets-uk/en/insights/cargo-and-freight/cargo-theft-tactics-and-trends-report-2025.html)

(33) FreightWaves, "Strategic cargo theft growth pushes industry fraud toward all-time high," https://www.freightwaves.com/news/strategic-cargo-theft-growth-pushes-industry-fraud-toward-all-time-high — Medium confidence; trade press.

(34) Insurance Business Magazine, "Global cargo theft hits new highs as criminal networks evolve — TT Club," https://www.insurancebusinessmag.com/us/news/breaking-news/global-cargo-theft-hits-new-highs-as-criminal-networks-evolve--tt-club-572468.aspx — Medium confidence; trade press.

(35) Springer, "The Phantom shipment threat: strengthening transportation security against freight fraud in global supply chains," Journal of Transportation Security, 2025, https://link.springer.com/article/10.1007/s12198-025-00325-8 — Medium-High confidence; peer-reviewed academic; phantom shipment fraud in logistics hubs in Asia, Middle East, North America.
