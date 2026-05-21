# Pain Points by Stage

## Stage 6 — Incident Response, Claims & Insurance

**Actor summary:** Shippers (cargo owners), freight forwarders/3PLs, small and mid-size road carriers, and cargo insurers/underwriters operating across the logistics journey. These actors converge at the moment of a cargo incident — theft, damage, delay, spoilage — to detect the event, coordinate a response, execute a claim, and settle. The solutions landscape here spans cargo insurance/claims platforms (Loadsure, Breeze, Parsyl, Cover Genius, Marsh, TT Club), parametric insurance (Parsyl ColdCover, Skyline Partners, Arbol, Descartes Underwriting), claims management software (Origami Risk, Riskonnect, Ventiv, ClaimVantage), and security/recovery services (Overhaul, CalAmp, Garda, G4S, LoJack Secure-Tractor). Geography: worldwide, SEA as primary deployment target.

---

### Pain point 6.1

**Description:** When a cargo theft or in-transit security incident occurs, the coordinated response across shipper, 3PL, sub-carrier, law enforcement, and insurer is largely manual, phone- and email-driven, and has no shared incident management layer. The consequence is that detection is delayed (often by hours), parties are notified sequentially rather than simultaneously, and the critical recovery window — the first 72 hours, when most recoveries occur — is substantially consumed by communication overhead rather than active recovery. Claims platforms have shortened payout timelines but have not materially shortened *response* time to the incident itself.

**Who bears it:** Shippers (cargo owners) and 3PLs managing high-value or vulnerable freight; insurers absorbing un-recovered losses; subcontracted carriers who bear reputational exposure.

**Estimated cost:**
- Total US+Canada cargo theft losses: $454.9 million in 2024, up 27% year-on-year; average per-theft loss $202,364, up from $187,895 in 2023 (1)
- 2025 losses estimated at $725 million by Verisk CargoNet — a 59% single-year increase (2)
- Freight fraud losses (including double brokering and identity theft) surpassed $455 million in 2024 in the US market alone (3)
- Without real-time GPS monitoring, recovery rate for stolen cargo falls below 20%; with activated real-time response, Overhaul reports 96%+ recovery rates — implying the unmonitored segment faces losses of $360–400 million on an annualised basis that are structurally unrecoverable (4)
- One documented case: full deployment of real-time security monitoring ($380,000 investment) delivered 6.3× ROI by cutting incident response time from 42 minutes to under 10 minutes (5)

**Willingness to pay:** [Not sourced — see ASSUMED-1]

**Frequency:**
- 3,625 reported cargo theft incidents in US+Canada in 2024; each quarter of 2024 exceeded 2023 records (1)
- Overhaul managed over 2,500 Incident Response Operations globally in 2024 (4)
- Cargo theft incidents increased 49% in H1 2024 vs H1 2023; California alone represented 45% of all reported US thefts (6)
- India: 63% of APAC cargo thefts; Indonesia: 14%; China: 11%; Vietnam: 3% — SEA corridor confirmed as active risk zone (7)
- 65,000 railroad cargo thefts in the US in 2024, a 40% increase year-on-year (8)
- Asia reported 107 piracy and armed robbery incidents against ships in 2024, a 6% increase from 2023; Straits of Malacca and Singapore (SOMS) accounted for 62 incidents (7)

**Evidenced or assumed:**
(1) https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/ (Verisk CargoNet 2024 Annual Report)
(2) https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/
(3) https://www.trucknews.com/transportation/freight-fraud-losses-surpass-455m-in-2024/1003196726/
(4) https://www.prnewswire.com/news-releases/cargo-theft-soars-49-in-first-half-of-2024-amid-rising-criminal-sophistication-reveals-overhaul-report-302228584.html (Overhaul H1 2024 Cargo Theft Report)
(5) https://arviem.com/how-real-time-security-monitoring-preventing-cargo-theft-2025/
(6) https://www.dcvelocity.com/articles/61700-h1-2024-cargo-theft-data-reveals-49-surge
(7) https://www.munichre.com/content/dam/munichre/mram/content-pieces/pdfs/MR_CargoTheftReport_FINAL25.pdf/_jcr_content/renditions/original.media_file.download_attachment.file/MR_CargoTheftReport_FINAL25.pdf (Munich Re Cargo Theft Tactics & Trends 2025, PDF — processed via markitdown)
(8) https://over-haul.com/65000-railroad-cargo-thefts-reported-in-2024/
(9) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (TT Club / BSI 2024 Cargo Theft Report, April 2025, PDF — processed via markitdown)
(10) https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(11) https://www.insurancebusinessmag.com/us/news/breaking-news/global-cargo-theft-hits-new-highs-as-criminal-networks-evolve--tt-club-572468.aspx

**Root Causes**

- **RC1: No shared incident management layer connects the parties who must act simultaneously** — When cargo is stolen or tampered with, the shipper, 3PL, sub-carrier, insurer, and law enforcement must each be notified and must act within a tight window. There is no software layer that pushes a single incident alert simultaneously to all parties and tracks coordinated response steps. Standard loads involve 4–5 different entities in transit (Loadsure analysis); notifications travel by phone and email sequentially, not in parallel. Each handoff adds 20–60 minutes to the critical response window. The absence of a shared layer is structural: each party uses its own TMS, claims platform, or communication tool with no cross-party integration standard. [ASSUMED-2]: to validate: what is the typical sequence of notifications when a theft is detected in a 3PL-managed shipment, and how long does the first-hour response actually take?

- **RC2: The first-mover incentive for real-time monitoring is asymmetric — the shipper pays, the insurer benefits most** — Shippers bear the cost of GPS trackers and real-time monitoring hardware ($380,000 in the documented case study), but the largest financial beneficiary of fast recovery is the insurer who avoids paying a total-loss claim. Without a shared economics model that transfers monitoring cost toward the insurer — through premium discounts, co-investment, or mandatory coverage conditions — most shippers face a buy decision where the cost is visible and immediate but the recovery benefit is probabilistic and distributed across parties. This explains why the majority of cargo moves without activated real-time monitoring despite the demonstrated 6.3× ROI. (Arviem, 2025; Overhaul H1 2024 Report; Parsyl/Lloyd's initiative documents)

- **RC3: Cargo theft is under-reported, leaving law enforcement and insurers operating on incomplete data** — TT Club's own analysis notes that theft data is fragmented across law enforcement, insurance claims records, and trade association reports, with no mandatory unified reporting mechanism in most jurisdictions. Incident response depends on law enforcement being notified quickly, but police in most jurisdictions have no dedicated cargo crime unit — coordination falls to individual officers with no supply-chain context. In SEA, insider collusion accounts for over 25% of recorded thefts (Munich Re 2025), meaning the "victim" party may itself be implicated, further suppressing reporting. Underreporting means statistical models underestimate incident probability, compounding the pricing-data gap in Pain point 6.3. (TT Club/BSI 2024 Report; Munich Re 2025)

- **RC4: Strategic and AI-enabled theft has outpaced the identity-verification and documentation-check capabilities of freight matching platforms** — TT Club/BSI 2024 Report documents criminals using AI to forge bills of lading, impersonate legitimate carriers, and execute double-brokering at industrial scale; double-brokering complaints rose 400% over six months per Truckstop data. Once cargo is handed to a ghost carrier, it disappears — and neither the shipper's TMS nor the insurer's claims platform has visibility into the sub-contracted leg. The fraud vector exploits the same handoff gap that makes visibility problematic at Stage 3 (see Pain point 3.2). Standard Motor Truck Cargo policies typically exclude double-brokering losses, leaving shippers and legitimate carriers uncompensated. (TT Club/BSI 2024 Report; Loadsure double-brokering analysis at https://www.loadsure.net/latest/article/double-brokering-whats-the-impact-of-this-rising-trend-in-cargo-fraud/)

- **RC5: Security and response services (Overhaul, Garda, G4S) are priced for enterprise shippers, leaving the SME segment structurally unmonitored** — Overhaul's response infrastructure — Law Enforcement Connect teams, geofencing, active monitoring — is commercially priced for the mid-market and enterprise segment. Owner-operators and small carriers (who carry the majority of road freight volume in SEA and are the subcontracted tier in most 3PL chains) lack the per-shipment economics to deploy activated monitoring. The result is a structural monitoring gap precisely in the subcontracted tier where cargo crime risk is highest — small carriers are frequently impersonated in double-brokering schemes and carry cargo for multiple clients without dedicated security coverage. [ASSUMED-3]: to validate: what is the per-shipment cost of Overhaul-class monitoring vs the average per-shipment margin for an owner-operator in Indonesia or Thailand?

---

### Pain point 6.2

**Description:** Cargo insurance claims require multi-party document submission, damage surveys, liability determination across carrier/3PL/subcarrier tiers, and manual adjudication processes that routinely take 30–90 days from loss event to settlement. This cycle time imposes acute working-capital strain on shippers and carriers who must absorb the loss value while waiting for indemnification, and creates administrative overhead that discourages filing for smaller claims entirely, leaving a tail of unrecovered losses.

**Who bears it:** Shippers (cash flow impact during settlement); small carriers and 3PLs (liability disputes); cargo insurers (fraud exposure from documentation manipulation during the claim process).

**Estimated cost:**
- Traditional claims cycle: 30–90 days average, with some complex marine claims extending further; industry-standard settlement 45 days using digital tools (12)
- Incomplete documentation is identified as causing 40% of delays in cargo insurance claims processing (12)
- A shipper absorbing a $202,364 average theft loss (Verisk 2024) for 45 days at a 10% cost of capital = ~$2,500 in financing cost per incident on top of the loss; across 3,625 incidents = ~$9 million in aggregate financing cost to the claim-waiting period annually, in North America alone
- 60% of global freight estimated to be under- or uninsured (Loadsure/FreightWaves), meaning the insured segment is a fraction of the total exposure; the uninsured majority bears the full loss directly (13)
- Double-brokering shipments (standard MTC policy typically excludes coverage) result in total uncompensated losses; 400% increase in complaints over 6 months per Truckstop (14)

**Willingness to pay:**

**Frequency:**
- 60% of freight is under- or uninsured globally; an estimated 60–70% of SME exporters in developing economies lack formal cargo insurance coverage (13, 15)
- Open cover cargo policies represent 42.6% of the global cargo insurance market — suggesting a large share of claims flow through blanket annual policies where per-shipment documentation is weak (15)
- Freight fraud losses (including uninsured double-brokering losses): $455 million in 2024 (3)
- Global cargo insurance premiums: $22.64 billion in 2024 (IUMI), implying a claims pool that processes tens of thousands of claims annually (16)

**Evidenced or assumed:**
(12) https://www.freightamigo.com/en/blog/transport-insurance/how-long-does-a-cargo-insurance-claim-take-to-process/ ; https://traderiskguaranty.com/trgpeak/how-long-cargo-insurance-claim/
(13) https://www.freightwaves.com/news/solving-the-freight-industrys-underinsurance-crisis
(14) https://www.loadsure.net/latest/article/double-brokering-whats-the-impact-of-this-rising-trend-in-cargo-fraud/
(15) https://www.marketresearchfuture.com/reports/cargo-insurance-market-23895 ; https://www.businessresearchinsights.com/market-reports/cargo-insurance-market-120507
(16) https://iumi.com/wp-content/uploads/2024/12/IUMI-Stats-Report-2024.pdf [NEEDS-ATTENDED-FETCH] ; https://www.hellenicshippingnews.com/the-international-union-of-marine-insurance-iumi-has-released-its-2024-analysis-of-the-global-marine-insurance-market-the-iumi-stats-report/
(17) https://www.claimsjournal.com/news/national/2024/07/10/324906.htm
(18) https://commercial.allianz.com/news-and-insights/expert-risk-articles/marine-claims-trends.html (AGCS Marine Claims Trends)
(19) https://www.gofclogistics.com/a-complete-guide-to-freight-claims/
(20) https://freightclaims.com/what-is-the-timeline-for-processing-a-freight-claim/
(21) https://corporate.nvisionglobal.com/avoiding-common-freight-claim-issues-strategies-for-faster-settlements/
(22) https://specialty.ajg.com/marine-cargo/cargo-market-update-q3-2024

**Root Causes**

- **RC1: Liability in multi-tier freight chains is contractually fragmented, requiring contested determination before settlement can proceed** — A typical cargo insurance claim on a 3PL-managed shipment must first establish whether the carrier, the 3PL, or the sub-carrier is liable — a question that requires reviewing multiple contracts (shipper-3PL, 3PL-carrier, carrier-subcontractor) against different legal regimes (Carmack Amendment in the US, CMR in Europe, jurisdictionally variable in SEA). This liability-determination step is the primary driver of the 30–90 day settlement window. Carriers have 30 days to acknowledge claims and 120 days to pay, decline, or offer settlement under US law — legal timelines that are structurally embedded in the process. No shared digital claims triage layer exists to identify liable party at the point of incident, before claim submission begins. (https://fuentesfirm.com/cargo-claim-deadlines-under-the-carmack-amendment/ ; https://corporate.nvisionglobal.com/avoiding-common-freight-claim-issues-strategies-for-faster-settlements/)

- **RC2: Documentation for a valid cargo claim must be assembled from multiple disconnected systems, creating predictable assembly failures** — A valid claim requires bill of lading, proof of delivery, commercial invoice, packing list, inspection report or photos, and repair/replacement estimates. These documents reside in the shipper's ERP, the carrier's TMS, the 3PL's portal, and the inspection agent's email. No unified document-collection layer exists at the moment of shipment that would enable instant claim filing. The 40% documentation delay rate is not a behavior problem — it is a structural consequence of the fact that required documents are held by different parties on incompatible systems that do not pre-integrate for claims purposes. (FreightAmigo; nVision Global; GoFCLogistics)

- **RC3: Smaller claims are economically rational to abandon, creating a dark pool of unreported losses** — Filing a cargo insurance claim involves attorney/adjuster time, documentation assembly, and follow-up over 30–90 days. For claims under ~$5,000, the administrative cost of filing approaches or exceeds the expected recovery, particularly when subrogation (recovery from the liable carrier) is uncertain. Shippers absorb these losses silently. The practical effect is that insurer loss models are based on filed claims only — they systematically undercount actual losses in the small-claim range, which inflates loss ratios on the claims that are filed and distorts pricing models for the entire book. [ASSUMED-4]: to validate: what is the filing rate for cargo claims under $5,000 vs claims over $25,000? Interview target: claims manager at a mid-tier 3PL or freight broker.

- **RC4: Paper-based and manual adjudication processes are structurally incompatible with the fraud patterns they must screen against** — Cargo fraud has become data-enabled: criminals forge bills of lading using AI, alter centrally held digital carrier records, and create phishing attacks against cloud TMS systems (TT Club/BSI 2024). Traditional claims adjudication relies on document authenticity checks that are slow and procedural — not real-time verification against fraud signatures. The result is a verification process that is simultaneously slow (delaying legitimate claims) and penetrable (vulnerable to sophisticated fraud). Upgrading it requires integrating with carrier identity verification, document authentication, and fraud-intelligence databases that are currently siloed across law enforcement (CargoNet), industry networks (BSI SCREEN), and individual insurers. (TT Club/BSI 2024 Report; Allianz Commercial AGCS Marine Claims Trends)

---

### Pain point 6.3

**Description:** Cargo insurance premiums across most of the market continue to be priced off declared cargo values, historical loss rates, and commodity/route classifications — not off real-time shipment-level signals (GPS position, temperature deviations, dwell time anomalies, carrier safety scores). Where real-time IoT data exists, it is collected by the shipper or 3PL and rarely flows into underwriter systems. The consequence is cross-subsidization: safe, well-managed shippers pay premiums calibrated to the industry average; high-risk carriers and routes are underpriced. Parametric products (Parsyl ColdCover, Otonomi, Skyline Partners) address the payout-speed gap but have thin adoption outside specialty perishables and remain Lloyd's-anchored, structurally inaccessible to the SME and SEA segments.

**Who bears it:** Shippers with strong risk management who overpay relative to their actual risk profile; small carriers and SME shippers who face steep or unavailable coverage; insurers who cannot differentiate risk at a shipment level and therefore face adverse selection; the SEA market, where digital insurance infrastructure is nascent.

**Estimated cost:**
- 60–70% of SME exporters in developing economies lack formal cargo insurance coverage — the uninsured segment globally (15)
- Global cargo insurance market: $22.64 billion in premiums in 2024; cargo dominates marine at 56.7% of total marine premiums (16)
- Asia-Pacific: 35–36% of global cargo premiums (~$7.9–8.0 billion), fastest-growing region; still majority priced on conventional declared-value methods (16)
- Loadsure's dynamic pricing engine claims to cut per-shipment costs for FCL/LCL by "as much as 80%" over annual open-cover policies — implying a systematic overcharge in conventional open-cover pricing for many shipments (23)
- Parametric cargo (e.g., Parsyl ColdCover) pays in 72 hours vs 30–90 days for traditional claims — a 22× speed advantage, which implies 22× less working-capital strain on the insured, but adoption remains limited to specialty perishables (24)
- Trade disruption risk was estimated at $131 billion for H1 2024 alone for Singapore, Port Klang, and Tanjung Pelepas ports — virtually none of this exposure was covered by parametric products at the time (22)

**Willingness to pay:**

**Frequency:**
- 88% of commercial fleets have telematics systems; only 64% of insurers use telematics data in underwriting decisions; 79% of fleet managers report insurers have never requested their data (25)
- Only 14% of commercial auto insurers have launched usage-based insurance products; 32% are actively piloting (25)
- 70% of fleet managers do not share telematics data with insurers; among those who do, 65% report receiving better insurance rates (26)
- Only 25% of high-value cargo shipments globally are estimated to use GPS/temperature-monitoring sensors, generating over 100 million data points monthly — yet this data is not systematically incorporated into premium pricing (27)
- Lloyd's total cargo market share: 9.7% of global premiums (16); parametric adoption in the Lloyd's cargo book is estimated as a small fraction of that — no public market share figure available [NEEDS-ATTENDED-FETCH from Lloyd's Market Intelligence]

**Evidenced or assumed:**
(22) https://specialty.ajg.com/marine-cargo/cargo-market-update-q3-2024
(23) https://www.loadsure.net/dynamic-on-demand-cargo-insurance/ [vendor source — Low confidence for own claims]
(24) https://www.parsyl.com/press-release/041520 [vendor source — Low confidence for own claims]; https://www.artemis.bm/news/data-driven-glimpse-of-the-re-insurance-future-parametric-cargo-cover-from-parsyl/
(25) https://www.carriermanagement.com/features/2025/11/24/281755.htm
(26) https://sambasafety.com/blog/why-fleets-wont-share-telematics-data
(27) https://www.hapag-lloyd.com/en/online-business/digital-insights-dock/insights/2025/09/expert-talk-global-cargo-insurance-market-in-the-age-of-digitalization.html [NEEDS-ATTENDED-FETCH — returned 403]
(28) https://www.reinsurancene.ws/lloyds-turns-to-iot-for-marine-cargo-performance-improvement/
(29) https://www.parsyl.com/media/parsyl-announces-new-initiative-with-lloyds
(30) https://www.freightamigo.com/en/blog/transport-insurance/future-trends-in-cargo-insurance-navigating-the-evolving-landscape-of-global-trade/
(31) https://axaxl.com/fast-fast-forward/articles/navigating-north-americas-marine-insurance-market-in-2024
(32) https://genesisglobalinsurance.com/articles/parametric-insurance-an-innovative-solution-for-2024-2025s-complex-risks/
(33) https://www.sosa.co/blog/why-parametric-insurance-is-gaining-ground-in-covering-hard-to-insure-risks
(34) https://agentsync.io/blog/insurance-101/what-is-parametric-insurance
(35) https://reliancepartners.com/freightwaves/telematics-is-changing-the-game-in-trucking-insurance-underwriting/

**Root Causes**

- **RC1: Cargo underwriting has no scalable data pipeline from the IoT/telematics ecosystem to insurer systems** — The data that would enable real-time risk differentiation exists — GPS positions, temperature deviation alerts, geofence breaches, carrier safety scores — but it lives in shipper TMS systems, IoT sensor platforms (Tive, Sensitech, Roambee, Controlant), and fleet telematics (Samsara, Motive, Geotab) that have no standard API connection to Lloyd's or carrier underwriting platforms. Parsyl's 2024 Data Partner Program (launched March 2024) allows customers to integrate monitoring data for coverage benefits — but this is an opt-in mechanism for existing Parsyl customers, not a market-wide standard. The absence of a data pipeline is partly a commercial problem (each side must negotiate integration) and partly a technical one (no common data schema for cargo risk signals). (Parsyl Data Partner Program press release; Carrier Management/Carriermanagement.com telematics integration failure analysis, 2025)

- **RC2: Underwriting, claims, and risk management departments operate in separate data silos within insurers, blocking feedback loops** — Even where telematics or IoT data enters an insurer's ecosystem (through claims investigation), it does not flow back to underwriting to update pricing on renewal. Carrier Management's 2025 investigation documents five recurring failure modes: departmental silos, poor workflow adoption, claims processing major losses without accessing telematics data, unread safety alerts, and underwriting pricing renewals disconnected from actual loss history. This is not a data-scarcity problem — 88% of commercial fleets have active telematics. It is an organizational architecture problem that structured incentives (separate P&L, separate technology stacks per department) have hardened into a persistent structural feature. (https://www.carriermanagement.com/features/2025/11/24/281755.htm; https://sambasafety.com/blog/why-fleets-wont-share-telematics-data)

- **RC3: Parametric cargo products are structurally anchored to Lloyd's and to specialty commodity types, blocking adoption in the mainstream SME and SEA market** — Parsyl's parametric product is a Lloyd's coverholder product, backed by London-based syndicates (Ascot, Antares, Beazley, CNA Hardy, AXA XL, QBE). Lloyd's holds 9.7% of global cargo premiums. The parametric trigger mechanism (temperature threshold for perishables) is technically clean and works well for pharmaceutical and seafood shipments, but its basis-risk profile is not well-suited to general cargo theft (where the trigger is a geofence breach or GPS loss, not a measurable physical parameter). Extending parametric to the general-cargo or SEA-SME market requires localised regulatory approval, distribution infrastructure that Lloyd's cannot provide in Tier 2–3 SEA cities, and willingness to absorb basis risk at thinner premium levels than the London market currently accepts. These are not technology barriers; they are market-access and commercial-viability barriers that compound each other. (Parsyl/Lloyd's initiative documentation; https://agentsync.io/blog/insurance-101/what-is-parametric-insurance; IUMI 2024 statistics on Asia-Pacific market)

- **RC4: Open-cover and annual-blanket policies create a structural disincentive for per-shipment risk differentiation** — 42.6% of the cargo insurance market operates on open-cover blanket policies that bind coverage to any shipment declared under an annual policy. Open-cover pricing is set at renewal based on the prior year's shipment mix and loss experience — not at the moment of each shipment. This architecture means a shipper who adds a new high-risk lane, switches to a riskier sub-carrier, or begins carrying higher-value commodities mid-year is not re-priced until renewal. Insurers lack an economically rational path to offer per-shipment dynamic pricing on an open-cover book without migrating customers to a new product structure — which imposes switching friction for both sides. The result is that per-shipment dynamic pricing (Loadsure Thames, Breeze) is confined to the SME and broker-enabled segment that does not hold annual open-cover policies. (IUMI 2024 statistics; Loadsure product documentation; https://www.freightwaves.com/news/per-load-shippers-interest-insurance-now-available-in-mcleod-tms)

---

### Pain point 6.4 (new pain point — not in working hypotheses)

**Description:** Small and mid-size carriers and freight forwarders in SEA (and in the subcontracted tier globally) operate below the threshold of commercial viability for most cargo insurance and security products. The result is structural underinsurance: 60–70% of SME exporters in developing economies lack formal cargo insurance coverage. When incidents occur in this segment, losses cascade uncompensated through the supply chain, with no claims management infrastructure to absorb or adjudicate them. This is structurally distinct from Pain point 6.3 (pricing-data gap) — the SEA SME is not mispriced; they are absent from the market.

**Who bears it:** SME shippers and freight forwarders in Indonesia, Thailand, Malaysia, Philippines; sub-contracted small road carriers; their downstream buyers/consignees.

**Estimated cost:**
- 60–70% of SME exporters in developing economies without formal cargo insurance (15)
- Asia-Pacific cargo premium base: ~$8.0 billion; if 60–70% of SME transactions are uninsured, the uninsured exposure in APAC alone is structurally multiples of the insured premium base
- India (largest APAC cargo theft source, 63% of regional incidents) and Indonesia (14%): minimal presence of parametric or digital cargo platforms at the SME level; [NEEDS-ATTENDED-FETCH from local SEA insurance regulator data — OJK Indonesia, OIC Thailand]

**Willingness to pay:**

**Frequency:**
- 60–70% of SME exporters in developing economies without coverage (15)
- SEA marine cargo insurance: fastest-growing regional market but starting from low penetration base (15, 16)
- Indonesia alone: 14% of APAC cargo thefts; insider involvement >25% of APAC incidents (7)

**Evidenced or assumed:**
(15) Multiple market research sources: https://www.businessresearchinsights.com/market-reports/cargo-insurance-market-120507 ; https://www.marketresearchfuture.com/reports/cargo-insurance-market-23895
(36) https://reinasia.com/marine/
(37) https://www.insurancebusinessmag.com/asia/news/marine/global-marine-insurance-premiums-hit-record-levels-but-momentum-ebbs-548873.aspx
(38) https://portcalls.com/cargo-continues-to-dominate-global-marine-insurance-premiums/
(7) Munich Re 2025 Cargo Theft Report (processed via markitdown, see footnote 7 above)

**Root Causes**

- **RC1: Annual open-cover policy structure is inaccessible to SMEs with irregular or low-frequency shipment patterns** — Obtaining annual cargo insurance requires: underwriting submission with prior-year shipment data, premium payment upfront, and policy management infrastructure. SME shippers in SEA often ship infrequently, use multiple carriers across different commodity types, and lack the administrative capacity to maintain an annual policy. Per-shipment products (Loadsure, Breeze) address this structurally — but distribution in SEA markets requires local broker networks, local-currency payment infrastructure, and local regulatory approval that these platforms have not yet established. Loadsure operates as a Lloyd's MGA; its distribution into Tier 2 SEA cities requires a local registered coverholder, which is a regulatory and commercial investment that remains unmade for most of SEA outside Singapore. [ASSUMED-5]: to validate: does Loadsure or Breeze have registered coverholders or distribution partnerships in Indonesia, Thailand, Philippines, or Malaysia?

- **RC2: Claims adjudication requires documentation standards that SEA SME shipments structurally cannot meet** — Valid cargo insurance claims require bill of lading, commercial invoice, packing list, inspection report, and proof of delivery. A significant share of SEA road freight — particularly short-haul and informal cross-border shipments in Indonesia, Thailand-Myanmar, and Philippines domestic — is conducted with informal waybills, mobile-phone PODs, and handwritten manifests. This documentation gap means that even where an SME shipper holds a cargo insurance policy, actual claims are frequently denied or underpaid because documentation requirements cannot be met. The informal documentation norm is itself a structural feature of SEA SME logistics (regulatory enforcement of documentation standards is uneven; truck drivers are under time pressure; consignees accept informal delivery receipts). [ASSUMED-6]: to validate: what is the claim denial rate for informal/SME cargo claims in Indonesia and Thailand? Interview target: local P&I broker or TT Club regional contact.

- **RC3: Security and recovery infrastructure for cargo is concentrated in formal port-adjacent corridors, leaving inland and cross-border SEA routes unserved** — Overhaul, Garda, and G4S provide activated cargo security in markets with highway patrol infrastructure, formal logistics hubs, and working law enforcement cooperation (US, Western Europe, Singapore). In inland Indonesia, Thailand highland routes, and Philippines inter-island freight, these infrastructure conditions are absent. Law enforcement response times in these corridors make the 72-hour recovery window structurally unreachable even with GPS monitoring. Insider collusion (25%+ of APAC thefts per Munich Re) further undermines recovery actions. The result is that the risk profile of SEA SME freight is worse than the global average, but the response infrastructure is thinner — a compounding gap that cannot be closed by simply extending existing platforms geographically. (Munich Re 2025; TT Club/BSI 2024 Report; ReCAAP ISC 2024 data on SOMS incidents)

---

### Hypothesis disposition

**WH4 (Incident response is reactive and slow — claims platforms shorten payout but rarely shorten response time):** Confirmed and evidenced. Pain point 6.1 provides direct evidence: Overhaul's incident response operations data shows the value of activated monitoring (96%+ recovery vs <20% without); the absence of a shared incident management layer across parties is confirmed as the structural gap. Claims platforms (Loadsure's 40-second certificate; Parsyl's 72-hour parametric payout) do address payout speed but not the response-to-incident time. No evidence found that any current platform materially shortens the multi-party notification cascade after a theft event.

**WH5 (Risk and insurance pricing are disconnected from real journey data):** Confirmed and substantially evidenced. Pain point 6.3 provides the mechanism: 88% fleet telematics penetration vs 36% insurer data usage; 79% of fleet managers report insurers never asked for their data; departmental silo structure within insurers blocks feedback loops. Parametric adoption is confirmed as thin outside specialty perishables and Lloyd's-anchored distribution. Working hypothesis confirmed — though the barrier is organizational architecture and market access, not technology availability.

### New pain points (beyond working hypotheses)

**Pain point 6.4** is not in the original working hypotheses. It surfaces the structural absence of the SEA SME segment from the cargo insurance market — distinct from mispricing (WH5) because the SME is not priced poorly; they are not in the market at all. This is evidenced by the 60–70% uninsured SEA SME figure and the structural documentation/distribution barriers identified in root causes.

---

### Assumptions tagged in this stage

[ASSUMED-1] Willingness to pay for incident response coordination platform by shippers and 3PLs — not sourced. To validate: what would a large shipper or 3PL pay per-shipment for a single-pane incident management layer that activates response across carrier, insurer, and law enforcement simultaneously?

[ASSUMED-2] Notification cascade time after theft detection in a 3PL-managed shipment is the primary driver of recovery window loss — sourced qualitatively via Overhaul case study (42 min response time without real-time monitoring) but the multi-party notification sequence specifically is not quantified in public sources. To validate: map the actual notification chain at a tier-2 3PL managing a theft incident; time each step.

[ASSUMED-3] Per-shipment cost of Overhaul-class monitoring vs owner-operator margin in SEA is uneconomic. To validate: obtain Overhaul per-shipment pricing (likely under NDA) and compare to average per-shipment gross margin for Indonesian owner-operator truck (~$150–300 estimated for 200km road freight).

[ASSUMED-4] Filing rate for cargo claims under $5,000 is substantially below 50% due to administrative cost of claim exceeding expected recovery — not found in public sources. To validate: interview freight claims manager at a mid-tier 3PL or freight broker; ask for claim-filing behavior by claim size band.

[ASSUMED-5] Loadsure and Breeze lack registered coverholders or distribution partnerships in Indonesia, Thailand, Philippines, or Malaysia outside Singapore — inferred from absence of any public announcement. To validate: check Lloyd's coverholder registry for SEA entries under Loadsure and Breeze; contact companies directly.

[ASSUMED-6] Claim denial rate for informal/SME cargo claims in SEA is materially higher than for formal enterprise claims due to documentation gaps — structurally logical but not quantified in public sources. To validate: interview P&I broker or TT Club regional contact for Southeast Asia; request anonymized claim denial rate by market segment.

