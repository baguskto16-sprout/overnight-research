# Stage 2: Dispatch — Freight Procurement & Tendering
## Pain Points Research

**Research date:** 2026-05-21
**Geography:** Worldwide; SEA (Singapore, Indonesia, Thailand, Malaysia) flagged throughout
**Builds on:** Stage 1 (Pre-dispatch — Vendor Procurement & Onboarding). Stage 1 documented carrier identity fraud, insurance verification failures, the *Montgomery v. Caribe Transport II* ruling, and SEA carrier-vetting gaps. Stage 2 does not re-litigate those. Stage 2 focuses on risks that arise specifically at the moment of tendering and dispatch — even when a carrier is already onboarded.

**Factual correction from value chain document:** Kargo Technologies (Indonesia) was listed as "bankrupt 2023" in the Stage 2 value chain. This is incorrect. Kargo completed a Series B funding round in July 2024, acquired Malaysia's TheLorry platform (all-stock deal, one of the largest SEA logistics deals of 2024), and remains active as Indonesia's largest B2B trucking marketplace. Logivan (Vietnam) similarly remains active as of 2026. The SEA DFM pain point (2.4 below) is reframed accordingly: the problem is not platform failure but structural thin-market conditions that limit reach and reliability beyond urban corridors.

---

## Stage 2: Dispatch — Freight Procurement & Tendering

### Pain point 2.1

**Title:** Contracted Carrier Tender Rejection & Spot-Volatility Cascade

**Description:** Shippers and 3PLs executing freight via TMS waterfall tendering face unplanned spot-market exposure when contracted carriers reject loads to chase higher spot rates. This is a structural market dynamic: the contracted carrier network collapses precisely when spot rates are highest, forcing shippers to recover loads at premium cost with no systematic hedge. SONAR OTRI peaked above 25% in early 2021 — meaning one in four contracted loads was rejected — with carriers accepting spot loads paying double or triple the contracted rate. The OTRI exceeded 13% in Q4 2025 and 14% in early 2026, the highest rejection levels since 2022, and the contract-to-spot rate gap (which had inverted to $0.69/mile in November 2022 and compressed to $0.11/mile by March 2026) is a leading indicator of the cost shock that follows every OTRI spike. Mid-market shippers without real-time OTRI monitoring are structurally blind to the cascade until primary and backup carriers both reject simultaneously.

**Who bears it:** Enterprise shippers with contracted carrier networks; freight brokers managing shipper transportation programs; 3PLs operating managed-transportation contracts.

**Estimated cost:**
- Spot-market premium on rejected loads: carriers accepted spot loads paying 100–200% above contracted rates at the 2021 OTRI peak of 25% (1)
- DAT data, November 2022: contract van rate was $3.07/mile — $0.69/mile above spot; in October 2022 the premium was $0.66/mile — but the premium reversed during 2021's tight market when spot exceeded contract, confirming the bi-directional cost exposure (2)
- By March 2026, the contract-to-spot gap compressed to $0.11/mile (from $0.39/mile one year prior), flagging that a future OTRI spike would again produce material spot premiums as rates diverge (3)
- C.H. Robinson NAST segment gross profit margin compression: AGP per load fell as spot recovery displaced contracted volume during 2022 market transitions; FY2022 NAST AGP increased 23% revenue-wise but Q3 2022 income from operations declined 7.5% ($287.6M), reflecting margin pressure as market inverted (4)
- [ASSUMED-1]: Mid-market shipper moving 200 TL loads/week at 10% OTRI faces 20 spot recoveries/week; at $3,200 average contracted rate and 15% average spot premium = $9,600/week unbudgeted overage; at 25% OTRI this scales to $24,000/week per 200-load operation.

**Willingness to pay:** [Data gap — no published WTP survey for OTRI-integrated TMS or real-time rejection dashboards. Loadsmart ShipperGuide (SONAR-integrated) raised $200M Series D in 2022 at $1.3B valuation, implying investor-validated enterprise demand for integrated rate intelligence. SONAR subscription cost not publicly disclosed.]

**Frequency:**
- SONAR OTRI: exceeded 13% Q4 2025, 14% early 2026 — highest since 2022 (1)
- OTRI peaked above 25% in early 2021 capacity crisis (1)
- Historical baseline: OTRI below 5% in 2019 loose market; above 10% marks a "tight" market inflection with material spot-recovery exposure (1)
- DAT: spot and contract van rates were virtually equal in February 2022; spread reached $0.69/mile — the all-time record — by November 2022 (2)

**Evidenced or assumed:**
(1) FreightWaves SONAR, "Tender Rejection Indices: Understanding the Impact," https://gosonar.com/features/outbound-tender-rejection-index; FreightWaves, "How Tender Rejections Predict Your Next Rate," https://www.freightwaves.com/news/how-tender-rejections-predict-your-next-rate; Lync Logistics, "Tender Rejection Rates and what they mean for shippers," https://lynclogistics.com/2021/01/15/rejection-rates/
(2) DAT Freight & Analytics, "Gap Widens Between Contract and Spot Market Freight Rates," https://www.dat.com/blog/gap-widens-between-contract-and-spot-market-freight-rates; DAT, "DAT Truckload Volume Index: Gap between spot and contract rates narrowed in December," https://www.dat.com/company/news-events/news-releases/dat-truckload-volume-index-gap-between-spot-and-contract-rates-narrowed-in-december
(3) ARK TMS, "Spot Rates Catching Up to Contract Rates," https://arktms.com/blog/spot-rates-catching-up-contract-rates-freight-brokers-2026 — citing DAT and US Bank rate data; Medium confidence
(4) C.H. Robinson, Q3 2022 Earnings Release, Business Wire, November 2022, https://investor.chrobinson.com/News-and-Events/Press-Releases/press-release-details/2022/C.H.-Robinson-Reports-2022-Third-Quarter-Results/ — audited public company earnings; High confidence
(5) Transporeon, "Tender Rejections: What they are and their role in dynamic spot pricing," https://www.transporeon.com/en/community/blog/tender-rejections-and-their-crucial-role-in-dynamic-spot-pricing
(6) Loadsmart, "Loadsmart lands $200 million backing for freight technology platform," DC Velocity, 2022, https://www.dcvelocity.com/articles/53727-loadsmart-lands-200-million-backing-for-freight-technology-platform
(7) SONAR, "How to Interpret Tender Rejection Rates," https://gosonar.com/freight-market-blog/how-to-interpret-tender-rejection-rates
(8) FreightWaves, "State of Freight: a depressed trucking market suddenly comes to life," https://www.freightwaves.com/news/state-of-freight-a-depressed-trucking-market-suddenly-comes-to-life

**Root Causes**

- **RC1: The contracting model misaligns incentives — carriers commit capacity at bid-cycle prices without bearing financial consequence for rejection.** Annual or quarterly RFP cycles lock in contracted rates that may deviate materially from spot conditions by the time a load tenders. The rate confirmation binds only on accepted loads — rejection carries no contractual penalty in most broker-carrier agreements. Carriers are economically rational to reject contracted loads when spot exceeds the contracted rate. No commercial mechanism — liquidated damages, load-board exclusion, EDI suspension — has been standardized to impose friction on rejections. A 2022 FreightWaves analysis noted that contracted carriers at major shippers rejected at 2.5× normal rates during the OTRI spike with no reported contract forfeitures. (1)(5)

- **RC2: TMS waterfall logic is optimized for normal-market conditions — it does not distinguish rejection from capacity absence versus rate-seeking behavior.** Enterprise TMS waterfall tendering (Oracle OTM, SAP TM, Blue Yonder) routes to backup carriers sequentially after a primary rejection; the system does not identify whether rejection is driven by rate, capacity, equipment type, or driver availability. Under a market-wide OTRI spike, all waterfall tiers reject simultaneously for the same economic reason — the priority stack was built under different rate assumptions. TMS does not re-evaluate contracted rates against real-time spot conditions; the rate-mismatch condition persists until the next bid cycle. [ASSUMED-3]: to validate: Do Oracle OTM or SAP TM waterfall configurations allow dynamic rate-escalation triggers tied to real-time SONAR OTRI data as a native feature?

- **RC3: Real-time rate-benchmarking data (SONAR, DAT) is concentrated at the enterprise tier — the mid-market shippers and brokers most exposed to rejection cascades have no systematic OTRI signal.** The FreightWaves/OTR Solutions 2025 survey found 86% of freight brokerages have back-office teams of 10 or fewer people and only 2% have fully automated AP/AR. These operators have no automated early-warning signal when OTRI is rising. They discover the capacity crunch only when primary and backup carriers reject simultaneously. The tools that would let them pre-book spot capacity or adjust contracted volumes exist (Loadsmart ShipperGuide + SONAR integration) but are priced for Fortune 500 freight managers, not sub-$50M brokers. (Stage 2 Pain point 2.5 for SME TMS pricing gap context; (6)(7))

- **RC4: Annual freight procurement RFP cycles create institutional momentum that prevents rate adjustment mid-cycle even when market conditions justify it.** Enterprise procurement teams typically run one large RFP cycle per year (Emerge, Transporeon SCS); mid-year mini-bids carry procurement overhead. The result is that contracted rates become increasingly disconnected from market rates through the back half of a contract cycle — exactly when carriers are most likely to reject to the spot market. Procurement platforms sell dynamic mini-bid tools as the solution, but adoption requires a procurement team willing to renegotiate contracts mid-year, which most enterprise shippers resist for relationship and operational reasons. [ASSUMED-4]: to validate: What share of Emerge's or Transporeon's enterprise customers run quarterly mini-bids versus annual-only procurement cycles?

- **RC5: Carrier capacity commitments in RFPs are informational, not financial — carriers over-commit capacity to win lanes at favorable rates without a binding infrastructure for withdrawal.** During RFP cycles, carriers quote available capacity by lane without a binding obligation to maintain that capacity. Post-award, carriers who accepted too many lane commitments at below-market rates naturally reject when rates rise. No clearing mechanism equivalent to a financial exchange margin call exists that forces carriers to either honor the commitment or forfeit a deposit. Transporeon SCS and Emerge have piloted dynamic capacity confirmation tools, but these rely on carrier self-reporting, which inherits the same informational asymmetry. [ASSUMED-5]: to validate: Has any freight procurement platform implemented financially binding capacity commitments for contracted loads, and what was the carrier response?

---

### Pain point 2.2

**Title:** Load-Board / Digital Freight Matching Fraud at Posting

**Description:** Fraudulent actors exploit the open-access model of North American load boards (DAT One, Truckstop) and digital freight matching platforms to post fictitious load listings (harvesting carrier credentials or advance fees), impersonate legitimate brokers to intercept cargo, and use stolen or purchased MC authorities to respond to legitimate load postings. Truckstop reviewed more than 63,000 entities in 2025 for fraud indicators, blocking 10,000+ failed identity checks, 4,700 accounts for missing authority, and 30,000+ entities for suspicious data points. DAT's Carrier Management Suite (launched October 16, 2025) adds carrier qualification settings as a layered vetting module integrated into DAT One's posting workflow — the first time a major load board has gated posting access by carrier qualification. Freight fraud reports on Truckstop jumped 130% in 2023 (945 to 2,178 reports), with the attack surface scaling proportionally to load board transaction volume ($1T+ analyzed on DAT in 2024).

**Who bears it:** Freight brokers (load posters) who receive fraudulent carrier responses; carriers victimized by fictitious load postings; shippers whose cargo is intercepted by identity-fraudulent carriers responding via load board.

**Estimated cost:**
- Average gross freight fraud loss per affected US broker: $402,344/year (TIA 2024 survey, n=~200) (1)
- Total US cargo theft: $455M (2024, +27% YoY); estimated $725M (2025, +60% YoY) — strategic/identity-theft schemes (including load-board-enabled fictitious pickup) are the largest growth segment (2)(3)
- DAT: 700,000 loads posted daily on DAT One — the transaction scale is the measure of the attack surface; fraudsters targeting even 0.01% of daily posts create 70 fraudulent interactions per day on one platform (4)
- Truckstop: freight fraud reports jumped 130% in 2023 (945 to 2,178); blocked 12,700 suspicious account creation attempts in 2024; more than 10,000 identity checks failed in RMIS onboarding (5)
- Highway Q2 2025: 495,000 blocked fraudulent emails, 42,000+ fraudulent calls in a single quarter — the majority targeting brokers at the moment of spot-market carrier response (6)

**Willingness to pay:** [Data gap — DAT Carrier Management Suite pricing not publicly disclosed. Truckstop RMIS subscription: not publicly listed but implied by 250,000+ active users. Carrier Assure: $149/month Premium tier. Descartes MyCarrierPortal Standard: $500/month. Post-*Montgomery* (May 2026), underwriters are tying contingent auto liability premiums to documented vetting processes, creating a measurable ROI floor.]

**Frequency:**
- Truckstop 2025 Fraud Report: 63,000+ entities reviewed; 10,000+ identity check failures; 30,000+ entities blocked for suspicious data points; 600+ fraud cases investigated; 45% decrease in customer-reported fraud in January 2025 vs. January 2024 (after enhanced tooling) (5)
- Truckstop fraud reports: +130% in 2023 (945 to 2,178) (5)
- Highway: 1,986,995 fraudulent email attempts in full-year 2025, 117% increase from 2024; 9,129 identity alerts in 2025 (6)
- DAT blocked 2,400 accounts from joining DAT One network in 2023; removed 3,000+ accounts from its platform in 2022 (7)

**Evidenced or assumed:**
(1) Transportation Intermediaries Association, "State of Fraud in the Industry 2024 Report," https://www.freightcaviar.com/tia-2024-freight-fraud-report-an-average-of-400-000-in-losses/ — industry association survey; Medium confidence
(2) Verisk CargoNet, "Cargo Theft Surges to Record Levels in 2024," https://integration.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(3) Verisk CargoNet, "Cargo Theft Losses Surge to Estimated $725 Million in 2025," https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/
(4) DAT Freight & Analytics, "DAT to acquire the Convoy Platform from Flexport," Business Wire, July 2025, https://www.businesswire.com/news/home/20250728801115/en/DAT-to-Acquire-the-Convoy-Platform-from-Flexport; DAT, "700,000 loads posted daily" — confirmed via same release and DAT Carrier Management Suite launch announcement
(5) Truckstop.com, "2025 Freight Fraud Report: What 63,000 Fraud Checks Reveal About Prevention," https://truckstop.com/blog/2025-freight-fraud-report/ — vendor-generated platform data; Medium confidence (directional validity corroborated by FMCSA and CargoNet data)
(6) Highway, "Q2 2025 Freight Fraud Index," https://highway.com/press-releases/highway-releases-q2-2025-freight-fraud-index-identity-based-fraud-attempts-escalate-with-495k-blocked-emails-and-42k-fraudulent-calls; Highway, "Q4 2025 Freight Fraud Index," GlobeNewswire, https://www.globenewswire.com/news-release/2026/01/26/3225705/0/en/Highway-Releases-Q4-2025-Freight-Fraud-Index-Revealing-The-Rise-of-Carrier-Involved-Theft.html — vendor data; Low-Medium confidence; directional
(7) FreightWaves / Overdrive, "How load boards are responding to fraud, double brokering," https://www.overdriveonline.com/business/article/15663342/how-load-boards-are-responding-to-fraud-double-brokering; DAT Carrier Management Suite launch: https://www.dat.com/company/news-events/news-releases/dat-introduces-carrier-management-suite-integrating-carrier-vetting-into-dat-one — vendor press release; Medium confidence
(8) Truckstop CEO interview, FreightWaves, "Truckstop CEO: Industry uniting in fight against load board fraud," https://www.freightwaves.com/news/truckstop-ceo-industry-uniting-in-fight-against-load-board-fraud
(9) FreightWaves, "It's time for massive load board players to take responsibility for fraud," https://www.freightwaves.com/news/its-time-for-massive-load-board-players-to-take-responsibility-for-fraud
(10) DAT, "DAT will showcase the latest fraud-fighting tools at TIA 2025," Business Wire, April 2025, https://www.businesswire.com/news/home/20250410049550/en/DAT-will-showcase-the-latest-fraud-fighting-tools-at-TIA-2025
(11) Truckstop, "Truckstop Upholds Rigorous Stance of Zero Tolerance for Fraud with Advanced Technology," PR Newswire, August 2024, https://www.prnewswire.com/news-releases/truckstop-upholds-rigorous-stance-of-zero-tolerance-for-fraud-with-advanced-technology-302231648.html

**Root Causes**

- **RC1: Open-access load board subscription models create a low-friction attack surface — any subscriber with an active MC/DOT and paid subscription can post or respond to loads regardless of operating history.** DAT One and Truckstop have historically operated as data-access platforms: verified FMCSA authority + paid subscription = board access. The business model depends on network liquidity — restricting posting creates friction that reduces both the carrier pool and the load pool, undermining the board's core value proposition. The result is an asymmetric access model where legitimate actors are identified but fraudulent actors use stolen or freshly-registered authorities that pass all FMCSA database checks. DAT's Carrier Management Suite (October 2025) adds vetting as a layered module rather than a gating function, preserving network liquidity while providing optional risk tools for brokers who activate them. (7)(9)

- **RC2: The spot-procurement time window (30–120 minutes for a truck to be confirmed) is structurally incompatible with the verification depth required to confirm carrier identity, insurance currency, and operating history.** A broker posting a load at 2 PM with a 4 PM pickup has 30–120 minutes to select and confirm a carrier. Comprehensive manual vetting (FMCSA lookup, COI request, CSA score review) takes 30–45 minutes per carrier. If the first carrier rejects, verification restarts. Fraudsters exploit this time pressure by responding rapidly with confident language and copied credentials. The platform's design — fastest match wins — rewards speed and confidence, which fraudsters simulate at lower cost than legitimate operators who may be more deliberate. (Cross-reference: Stage 1 Pain point 1.2 on COI fraud; Stage 1 RC4 on FMCSA enforcement lag)

- **RC3: FMCSA registration data confirms the entity that filed — it cannot confirm the entity operating the truck on any given day, meaning credential verification is necessary but structurally insufficient.** Stolen or purchased MC authorities pass all standard SAFER lookups because the registration itself is genuine; only the current controlling party is fraudulent. Highway documents this mechanism: fraudsters pay up to $20,000 cash for a clean aged authority; the resulting carrier has real compliance history, valid insurance filings, and no behavioral red flags in the FMCSA database. The Convoy Platform's ML models (now being acquired by DAT) specifically target behavioral anomaly detection at the load-board layer — identifying carrier accounts exhibiting fraudulent behavioral patterns irrespective of credentials. This shift from credential-verification to behavioral anomaly detection is structurally necessary given the credential-spoofing attack vector. (4)(Stage 1 RC1; FMCSA Fraud Alerts: https://www.fmcsa.dot.gov/registration/fraud-alerts)

- **RC4: Carriers who are victimized by fictitious load postings have no centralized real-time reporting mechanism with feedback to the load board — the fraud cycle restarts before complaints are processed.** When a carrier responds to a fictitious load posting and is asked for advance fees or surrenders banking information, no real-time feedback loop reaches the load board. TIA Watchdog, CargoNet, and FMCSA Fraud Alerts receive complaints after the fact. The fraudulent poster has typically cycled to a new account and new posting by the time a report is processed. Truckstop's risk team investigated 600+ fraud cases in 2025 and DAT has a Network Integrity Unit — both reactive. The complaint-to-removal lag remains the primary window for fraud to execute. [ASSUMED-6]: to validate: What is the average time between a fraudulent posting going live on DAT/Truckstop and its removal following a complaint?

---

### Pain point 2.3

**Title:** TMS Routing Engines Blind to Lane-Level Cargo Theft & Risk Data

**Description:** Enterprise and mid-market TMS platforms (Oracle OTM, SAP TM, Blue Yonder, MercuryGate, Descartes) optimize carrier selection and routing on cost, transit time, carrier performance score, and capacity availability — without natively ingesting lane-level cargo theft concentration data, regional risk indices, or disruption feeds. A shipper routing high-value electronics through California's I-5 corridor (120+ theft events in 2024) or Texas's I-10/I-35 freight nexus (89 incidents in 2024) receives no TMS-native signal that these lanes carry 3–5× the national average theft rate. The signal exists (Verisk CargoNet quarterly theft data; BSI/TT Club 2024 Report; NICB) but is not wired into TMS optimization logic. Total US cargo theft reached $455M in 2024 (+27% YoY) and an estimated $725M in 2025 (+60% YoY); in Asia Pacific, India, Indonesia, China, Bangladesh, and Vietnam are the most affected countries — with the Strait of Malacca/Singapore experiencing a 281% YoY surge in maritime cargo incidents in 2025. The cost materializes as unmitigated cargo claims concentrated in lanes the TMS had no structural mechanism to flag.

**Who bears it:** Shippers of high-value cargo (electronics, pharmaceuticals, consumer goods); freight brokers bearing cargo claim exposure under their contracts; cargo insurers absorbing theft from non-risk-aware routing decisions.

**Estimated cost:**
- Total US cargo theft: $455M (2024, +27% YoY); estimated $725M (2025, +60% YoY) (1)(2)
- Average value per theft in 2024: $202,364 (up from $187,895 in 2023) (3)
- Strategic/fictitious pickup events: 574 in 2024 (+50% YoY) — average loss per event $273,990 (2)(3)
- California, Texas, and Florida account for 54% of all US reported cargo theft; I-5 Sacramento–LA saw 120+ events in 2024; I-10/I-35 Texas nexus logged 89 incidents (3)(4)
- Asia Pacific: India, Indonesia, China, Bangladesh, Vietnam are top-affected countries; Strait of Malacca/Singapore: 281% YoY surge in maritime incidents in H1 2025 (5)
- [ASSUMED-7]: Electronics cargo theft average loss $140,000–$450,000 per incident; pharmaceuticals $180,000–$700,000 per incident — to validate with CargoNet commodity-specific loss data

**Willingness to pay:** [Data gap — no published WTP survey for theft-aware routing modules in TMS. Descartes MyCarrierPortal acquisition ($24M, September 2024) includes cargo-risk intelligence as a component. CargoNet and BSI data subscription costs not publicly listed.]

**Frequency:**
- 3,625 cargo theft incidents reported in US/Canada in 2024 (+27% from 2023) (3)
- Top three stolen commodities 2024: electronics (9% of incidents), food/beverage (22%), pharmaceuticals (high value per incident despite lower count) (5)
- CargoNet documents quarterly top-10 lane lists; California, Texas, Florida consistently appear (3)(4)
- BSI/TT Club 2024 Cargo Theft Report: strategic deception crime (identity-based theft, including via freight dispatch manipulation) is the most remarkable growth segment globally (5)

**Evidenced or assumed:**
(1) Verisk CargoNet, "Cargo Theft Surges to Record Levels in 2024," https://integration.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(2) Verisk CargoNet, "Cargo Theft Losses Surge to Estimated $725 Million in 2025," https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/
(3) SCDigest, "US Cargo Theft Soared in 2024, Latest Report from CargoNet Finds," https://www.scdigest.com/ontarget/25-01-29_cago_thefts_2024_soar.php?cid=21726 — summarizing CargoNet 2024 Annual Report
(4) Verisk CargoNet, 2024 Supply Chain Risk Trends Analysis, https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/ — primary industry intelligence; Medium-High confidence
(5) BSI Consulting and TT Club, "2024 Cargo Theft Report," April 2025, https://www.bsigroup.com/en-US/insights-and-media/insights/whitepapers/bsi-consulting-and-tt-club-2024-cargo-theft-report/; PDF: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf [NEEDS-ATTENDED-FETCH for full PDF processing via markitdown]
(6) NICB, "New Report Shows Rise in Cargo Theft, With Three States Leading the Way," https://www.nicb.org/news/regional-news/new-report-shows-rise-cargo-theft-three-states-leading-way
(7) Descartes, "Descartes Acquires MyCarrierPortal," September 2024, https://www.descartes.com/resources/news/descartes-acquires-mycarrierportal — $24M acquisition; vendor press release; Medium confidence
(8) FreightWaves, "The carrier vetting tech stack is the new line of defense in freight," https://www.freightwaves.com/news/the-carrier-vetting-tech-stack-is-the-new-line-of-defense-in-freight
(9) Loss Prevention Media, "Cargo Crime in the First Half of 2025," https://losspreventionmedia.com/cargo-crime-in-the-first-half-of-2025-economic-engines-urban-flux-and-predictive-temperaments/
(10) SAFETY4SEA, "TT Club: Majority of cargo theft occurs during transit," https://safety4sea.com/tt-club-majority-of-cargo-theft-occurs-during-transit/

**Root Causes**

- **RC1: TMS vendors face no regulatory or customer-RFP requirement to integrate lane-level theft risk data — so it remains an optional add-on rather than a core optimization variable.** Enterprise TMS selection processes are driven by logistics and procurement teams, not security teams. Buyer RFPs evaluate cost optimization, carrier network size, EDI connectivity, and visibility — cargo risk is categorized as a security or insurance function managed by different stakeholders. No government regulation, INCOTERMS provision, or shipper procurement standard mandates that a TMS routing engine account for cargo theft rates. Software vendors therefore face no commercial pressure to build this natively; they partner with data providers through optional API modules that only enterprise customers with dedicated risk teams activate. [ASSUMED-10]: to validate: Do any top-10 enterprise shipper TMS RFP templates include theft-risk lane awareness as an evaluation criterion?

- **RC2: Cargo theft data is fragmented across competing providers (CargoNet, BSI, TT Club, NICB, Sensitech) with no standardized API format, creating integration friction for TMS vendors.** CargoNet, BSI, TT Club, and NICB each maintain proprietary cargo theft databases with different geographic granularity, incident categorization, and update frequencies. No common theft-data API standard exists. A TMS vendor integrating theft risk into routing would need separate integration agreements with multiple data providers to achieve comprehensive lane coverage — an engineering and licensing cost with uncertain ROI given the optional-module pricing structure. This fragmentation is commercially rational for data providers (proprietary moats) but structurally obstructive for TMS integration. (CargoNet: https://www.verisk.com/businesses/verisk-cargonet/; BSI: https://www.bsigroup.com; TT Club: https://www.ttclub.com)

- **RC3: TMS optimization functions are built on deterministic cost/time minimization that cannot natively incorporate probabilistic expected-loss terms without architectural changes.** Standard TMS routing optimization minimizes an objective function of cost and transit time subject to hard constraints. Incorporating cargo theft risk requires adding a probabilistic expected-loss term (probability of theft × expected loss magnitude by lane and commodity) — conceptually straightforward but architecturally non-trivial for legacy platforms built on deterministic optimization. The expected-loss term also requires actuarial inputs (theft probability by lane, commodity loss distributions) that are not available in a standardized form suitable for automated optimization. Risk-aware routing exists in specialized tools (Descartes Routing & Scheduling, project44 risk intelligence) but is not standard in leading enterprise TMS platforms. [ASSUMED-10]

- **RC4: Cargo insurance underwriters price by commodity and mode, not by lane-level theft concentration — eliminating the price signal that would incentivize risk-aware routing.** A shipper routing electronics through the Laredo I-35 corridor versus a less theft-exposed alternative receives the same cargo insurance premium under most standard policy structures, because insurers rate by commodity class and declared value, not by origin-destination pair or route segment. Without a lane-specific premium signal, shippers have no financial incentive to use a more expensive or longer routing to reduce theft exposure. If insurers routinely applied a 15–40% surcharge for high-theft-concentration lanes (which they generally do not), that premium would directly incentivize TMS-integrated risk routing. The absence of granular lane pricing removes the market mechanism that would otherwise fund TMS risk integration. [ASSUMED-8]: to validate with cargo insurance underwriters at Chubb, AIG, or XL Catlin about lane-specific risk pricing practices.

---

### Pain point 2.4

**Title:** SEA Digital Freight Matching Is Structurally Thin — Shippers Default to WhatsApp & Broker Rolodex Beyond Major Corridors

**Description:** Southeast Asian shippers attempting to procure domestic truck freight digitally face a structurally thin matching ecosystem. Platforms exist (Deliveree, Waresix, Kargo Technologies, Shipsy, Quincus) but their carrier network density drops rapidly beyond major city corridors (Jakarta–Surabaya, Bangkok–Chiang Mai, Metro Manila), leaving cross-island Indonesian routes, rural Thai lanes, and secondary Malaysian corridors without reliable digital alternatives. The SEA domestic digital freight brokerage market was $113.6M in 2024 — a fraction of a domestic trucking market where Indonesia alone has logistics costs of 23.5% of GDP (~$189B annually) and 1.3M trucks, ~75% of which are single-vehicle owner-operators bargaining individually with shippers. Convoy's October 2023 shutdown ($3.8B valuation, "unprecedented freight market collapse") demonstrates that even in the most mature and capital-rich digital freight market, the unit economics of digital matching are fragile under freight downturns; in SEA, the structural conditions are harder — lower per-trip revenue, higher geography complexity, weaker data infrastructure. Shippers default to phone/WhatsApp negotiation with a rolodex of known brokers: no rate benchmark, no rejection index, no carrier safety score, no digital audit trail.

**Factual note:** Kargo Technologies (Indonesia) was incorrectly identified as "bankrupt 2023" in the Stage 2 value chain document. Kargo completed a Series B funding round in July 2024, acquired Malaysia's TheLorry in an all-stock deal (one of the largest SEA logistics platform M&A events of 2024), and remains active. The structural thin-market problem is real but is not driven by Kargo's failure — it is driven by the unit-economics constraints below.

**Who bears it:** Mid-market and enterprise shippers in Indonesia, Thailand, Philippines, Malaysia; FMCG manufacturers, e-commerce platforms, CPG companies requiring reliable domestic trucking outside major city-pair corridors.

**Estimated cost:**
- Indonesia logistics cost: 23.5% of GDP vs. Malaysia's 13% — the efficiency gap attributable in part to informal/manual procurement (1)
- Digital freight brokerage market SEA: $113.6M in 2024 — a nascent fraction of a $189B+ logistics market, implying 99.9%+ of freight by value still moves through traditional channels (2)(1)
- Convoy collapse (US analog): $3.8B valuation destroyed; carriers owed thousands in unpaid settlements; "unprecedented freight market collapse" cited — evidence that DFM unit economics are fragile even in mature markets (3)
- [ASSUMED-11]: 20–30% rate overpayment on lanes negotiated bilaterally without market benchmarks — to validate with supply chain managers at Indonesian FMCG companies
- [ASSUMED-12]: 4–8 hours of manual phone/WhatsApp procurement per shipment outside major corridors vs. <30 minutes via digital platform — to validate with logistics coordinators

**Willingness to pay:** [Data gap — no published WTP survey. Deliveree's $109M total funding and 25,000+ enterprise customers, and Waresix's $179M total funding with documented revenue growth (+28% in 2023), imply validated shipper willingness-to-pay at platform pricing where digital options exist. The gap is not in WTP but in platform carrier-network reach.]

**Frequency:**
- Indonesia: 1.3M trucks, ~75% single-vehicle owner-operators; World Bank LPI 2023 ranked Indonesia 61st of 139 countries (down from 46th in 2018) — evidence of persistent logistics inefficiency (1)(4)
- Indonesia logistics cost: 23.5% of GDP vs. global benchmarks of 8–10% (1)
- SEA digital freight brokerage CAGR: 35.6% projected through 2030, but from the $113.6M base in 2024 — absolute market size remains small relative to total logistics spend (2)
- Traditional brokers retained 60.77% of Asia-Pacific freight brokerage share in 2024; digital platforms exhibit a 21.05% CAGR but from a low base (2)
- Vietnam alone needs 2.2M additional logistics workers by 2030 with qualified staff meeting only 10% of demand (2)
- 85% of ASEAN carriers report workforce shortages, forcing overtime premiums that cut margins (2)

**Evidenced or assumed:**
(1) Geotab, "Lowering Indonesia's Logistics Costs & Maximizing Fleet Uptime," https://www.geotab.com/apac/blog/indonesia-logistics/; Maritime Fairtrade, "Indonesia to Reduce High Logistics Cost," https://maritimefairtrade.org/indonesia-strives-to-reduce-high-logistics-cost/; Indonesian Government target: logistics cost from 14.29% to 8% of GDP per https://icttm.org/logistics-cost-reduction/; 23.5% figure sourced from CEFD/IBC Institute, https://cefd.ibc-institute.id/the-hidden-obstacle-logistics-for-8-percent-growth/
(2) Cognitive Market Research, "Asia Pacific Digital Freight Brokerage Industry Report 2025," https://www.cognitivemarketresearch.com/regional-analysis/asia-pacific-digital-freight-brokerage-market-report; Mordor Intelligence, "Asia-Pacific Freight Brokerage Market," https://www.mordorintelligence.com/industry-reports/asia-pacific-freight-brokerage-market — commercial market research; Low confidence for absolute size; directional for growth rate and traditional-vs-digital share
(3) FreightWaves, "Convoy's shutdown exposes the desperate state of trucking," https://www.freightwaves.com/news/convoy-shutdown-trucking-startup; CNBC, "Bezos-backed freight firm Convoy shuts down," October 2023, https://www.cnbc.com/2023/10/19/bezos-backed-freight-firm-convoy-shuts-down-read-ceo-memo-here.html; Tank Transport, "Convoy Closure: A $3.8 Billion Valuation Falls Amid Freight Recession," https://tanktransport.com/2023/12/convoy-closure-detailed-insight/
(4) World Bank LPI 2023 Indonesia ranking: https://lpi.worldbank.org/ and Indonesia Investments, "Logistics Sector of Indonesia; Dropping in the World Bank's Performance Index," https://www.indonesia-investments.com/news/todays-headlines/logistics-sector-of-indonesia-dropping-in-the-world-bank-s-performance-index/item9660
(5) Kargo Technologies Series B (July 2024) and TheLorry acquisition: DealStreetAsia, https://www.dealstreetasia.com/stories/indonesia-kargo-funding-ac-ventures-405850; Incubees, "Teleport, an AirAsia subsidiary acquired a stake in Indonesia's Kargo Technologies," https://incubees.com/teleport-an-airasia-subsidiary-acquired-a-stake-in-indonesias-kargo-technologies/
(6) Waresix, "Waresix on connecting Indonesia's fragmented logistics," East Ventures, https://east.vc/east-ventures/waresix-on-connecting-indonesias-fragmented-logistics-under-a-supply-and-demand-aggregation-platform/
(7) Deliveree TechCrunch profile, https://techcrunch.com/2022/06/26/deliveree-is-smoothing-southeast-asias-bumpy-logistics-landscape/
(8) PwC Indonesia, "Boosting logistics performance," November 2024, https://www.pwc.com/id/en/media-centre/infrastructure-news/november-2024/boosting-logistics-performance.html
(9) Waresix funding and revenue: DealStreetAsia, https://www.dealstreetasia.com/stories/waresix-earnings-2022-392140

**Root Causes**

- **RC1: The unit economics of digital freight brokerage require carrier density that cannot be built profitably in SEA markets where average revenue per trip is too low to fund matching infrastructure at scale without sustained external subsidy.** Indonesia's trucking market is dominated by owner-operators earning the equivalent of $300–$600/month; a 5% commission on a $100–$200 haul generates $5–$10 per load — insufficient to fund carrier-acquisition, dispatch-support, and technology overhead at the carrier tier without cross-subsidy. Convoy's collapse demonstrates that even in the most mature market ($3.8B valuation, $260M raised 18 months before shutdown), digital brokerage could not sustain itself when freight volumes and rates declined. In SEA, the per-trip revenue base is lower, the geography is more complex, and the venture capital environment is tighter post-2021. (3)

- **RC2: Road infrastructure fragmentation across the Indonesian archipelago (17,000+ islands) prevents the route, transit time, and pricing standardization that is prerequisite for reliable algorithmic freight matching.** Digital freight matching platforms require predictable route parameters to commit to price and service level. Indonesia's multi-island geography means significant freight volumes require truck + ferry + truck segments with weather-dependent ferry schedules, informal toll networks, and road quality variability. No single algorithm can reliably price and commit to these combinations. The product would require human override at every multi-modal segment, eliminating the operational leverage that justifies the digital platform's cost structure over a broker's rolodex. [ASSUMED-15]: to validate: What percentage of Indonesian inter-city freight requires a truck-plus-ferry segment?

- **RC3: Vehicle registration databases (SAMSAT Indonesia, JPJ Malaysia, DLT Thailand) confirm ownership and tax payment but cannot be queried for accident history, cargo-loss claims, or driver behavioral data — making carrier quality scoring structurally impossible without proprietary trip history.** Digital platforms build quality scores from their own platform trip history, which is sound for established digital carriers but creates a cold-start problem for the majority of the fleet that has never been on a digital platform. A carrier with five years of operations that has never used Deliveree or Waresix arrives with no scoreable data, indistinguishable from a new entrant with no track record. The absence of a national carrier safety database equivalent to FMCSA means every SEA platform must build its safety signal from scratch, carrier by carrier. (See also Stage 1 SEA vetting gap; Stage 2 ASSUMED-5 in value chain document)

- **RC4: Enterprise shippers in SEA running global TMS platforms (SAP TM, Oracle OTM, CargoWise) have no EDI/API connectivity with regional SEA trucking platforms, forcing parallel manual procurement channels that defeat the TMS investment.** A regional supply chain manager at a multinational FMCG company (Unilever SEA, Nestlé SEA) running SAP TM cannot digitally tender a domestic Indonesian trucking load to Deliveree or Waresix via EDI 204 — the integration does not exist. The enterprise TMS and the regional carrier network operate in separate ecosystems with no standard API bridge. Even where a digital freight platform exists and has carrier density, the shipper's enterprise TMS cannot systematically use it for contracted tendering — forcing the logistics team to operate a parallel WhatsApp/email channel for regional trucking alongside their TMS for managed carriers. [ASSUMED-16]: to validate: Do Deliveree or Waresix publish an API or EDI integration with SAP TM, Oracle OTM, or CargoWise? Does any SI in Indonesia/Thailand offer a connector?

---

### Pain point 2.5

**Title:** Mid-Market TMS Pricing Gap Leaves SME Brokers & Shippers on Excel + Email Procurement

**Description:** The US freight brokerage market has approximately 26,000+ FMCSA-licensed brokerages; 86% have back-office teams of 10 or fewer people and only 2% have fully automated accounts payable/receivable (FreightWaves/OTR Solutions 2025 survey). Enterprise TMS platforms (Oracle OTM, SAP TM, Blue Yonder) at $200K–$2M+ in annual license plus 100–300% implementation overhead are structurally inaccessible for brokers below ~$100M gross freight revenue. Mid-market cloud TMS (Descartes 3GTMS, Loadsmart ShipperGuide, Cargobase) at $12K–$360K/year addresses the middle tier but still requires carrier EDI onboarding and dedicated implementation. Below both tiers, SME freight brokers default to Excel + email tendering — a workflow with no carrier rate benchmarking, no rejection tracking, no fraud screening, and — after *Montgomery v. Caribe Transport II* (SCOTUS May 2026) — no audit trail for negligent-hiring defense. The SME brokerage population most at risk from fraud and litigation exposure is precisely the population least penetrated by purpose-built tools.

**Who bears it:** SME freight brokers (sub-$50M annual gross freight revenue), small shippers managing their own freight procurement, owner-operator 3PLs.

**Estimated cost:**
- 86% of brokerages have ≤10 back-office staff; only 2% have automated AP/AR (FreightWaves/OTR Solutions 2025 survey) (1)
- 26,000+ licensed US freight brokerages (FMCSA) — implying ~22,400+ operate without meaningful automated systems (2)
- Average gross fraud loss: $402,344/year per affected broker (TIA 2024 survey) — Excel-default brokers absorb this with no automated mitigation (3)
- 45% of brokers cite cost as the #1 barrier to automation (4)
- [ASSUMED-17]: Enterprise TMS total cost of ownership (license + implementation): $400K–$8M+ for Oracle OTM/SAP TM — to validate with Gartner Peer Insights TCO data; treat as directional from implementation partner range
- [ASSUMED-18]: Manual tender management for an SME broker: 15–30 minutes per load; at 200 loads/week = 50–100 hours/week of unautomated procurement labor

**Willingness to pay:** [Data gap — no published WTP survey for mid-market TMS among sub-$50M brokers. The $1.2B–$2.0B global freight procurement software market with 22,000+ underserved SME brokers implies significant unmet demand. FreightCaviar noted that 45% of brokers cite cost as the primary barrier to automation, not lack of interest.]

**Frequency:**
- 26,000+ licensed US brokerages (FMCSA active broker authority data) (2)
- 86% with ≤10 back-office staff; only 2% with automated AP/AR (1)
- 45% of brokers report cost as #1 automation barrier (4)
- Indonesian trucking market: 1.3M trucks, ~75% single-vehicle owner-operators with no TMS equivalent (5)

**Evidenced or assumed:**
(1) FreightWaves / OTR Solutions, 2025 brokerage survey, summarized at IndexBox: https://www.indexbox.io/blog/freight-brokerage-survey-reveals-strain-from-market-volatility-automation-gaps/ — industry survey; Medium confidence. Also corroborated via: FreightWaves, "Controlling back office costs helps offset compressed broker margins," https://www.freightwaves.com/news/controlling-back-office-costs-helps-offset-compressed-broker-margins
(2) FMCSA, "Broker Registration," https://www.fmcsa.dot.gov/registration/broker-registration; FMCSA A&I Registration Statistics, https://ai.fmcsa.dot.gov/RegistrationStatistics — government primary source; High confidence for active broker authority count
(3) TIA, "State of Fraud in the Industry 2024 Report," https://www.freightcaviar.com/tia-2024-freight-fraud-report-an-average-of-400-000-in-losses/ — industry association survey; Medium confidence
(4) FreightCaviar, "45% of Brokers Say This Is the #1 Barrier to Automation," https://www.freightcaviar.com/45-of-brokers-say-this-is-the-1-barrier-to-automation/ — trade press citing survey data; Medium confidence
(5) Geotab, "Lowering Indonesia's Logistics Costs," https://www.geotab.com/apac/blog/indonesia-logistics/ — Indonesia 1.3M trucks, 75% single-vehicle operators; Medium confidence
(6) FreightWaves, "The Supreme Court just told every freight broker that they can be sued," https://www.freightwaves.com/news/the-supreme-court-just-told-every-freight-broker-that-they-can-be-sued — *Montgomery* analysis; Medium-High confidence
(7) OTR Solutions / Epay Manager acquisition: FreightWaves, https://www.freightwaves.com/news/otr-solutions-acquires-back-office-automation-platform-epay-manager — evidence of market response to back-office automation gap
(8) FreightCaviar, "Freight Brokers: Scaling Up in 2025? Here's What's Actually Working," https://www.freightcaviar.com/freight-brokers-scaling-up-in-2025-heres-whats-actually-working/
(9) Yahoo Finance / white paper: "The Backbone of the Resilient 3PL: How Automation is Driving Brokerage Success," https://finance.yahoo.com/news/white-paper-backbone-resilient-3pl-170000872.html
(10) Descartes, "Descartes Acquires 3GTMS," GlobeNewswire, March 2025, https://www.globenewswire.com/news-release/2025/03/25/3048585/0/en/Descartes-Acquires-3GTMS.html — $115M acquisition of mid-market TMS signals market investment in the pricing gap segment

**Root Causes**

- **RC1: The cost structure of enterprise TMS reflects multi-modal, multi-country freight management complexity — a structure that does not scale down gracefully to a 5-person brokerage with 50 loads/day.** Oracle OTM and SAP TM are architected as enterprise-wide transportation lifecycle platforms requiring dedicated IT support, deep ERP integration, and 6–18 month implementation cycles. Their cost reflects the complexity that a $500M freight-spend shipper requires — which is appropriate for that customer but creates a structural pricing mismatch for a broker managing $20M in annual freight. Cloud-native TMS has narrowed the gap but has not eliminated it: even self-serve platforms require carrier EDI onboarding, rate-table configuration, and integration with load boards — tasks that require technical skill not present at most SME brokerages. (10)

- **RC2: The freight brokerage market's long-tail structure makes SME customers economically unattractive for enterprise software vendors — sales cycle costs typically exceed first-year contract revenue.** Enterprise TMS sales cycles average 6–18 months with dedicated account executives and technical pre-sales. A brokerage paying $12,000/year in TMS subscription cannot absorb a 6-month vendor sales cycle that costs $30,000–$50,000 in pre-sales overhead. Vendors naturally focus on Fortune 500 shippers and top-50 3PLs where deal sizes justify the sales motion. Mid-market SaaS TMS attempts to address this through self-serve implementation, but without a fully automated onboarding path (carrier EDI setup, rate-table import without IT involvement), implementation friction remains a barrier that most SME brokers abandon at first complexity. [ASSUMED-19]: to validate: What is the average sales cycle length and first-year implementation cost for Descartes 3GTMS or Loadsmart ShipperGuide for a sub-$50M broker?

- **RC3: EDI carrier connectivity — necessary for systematic electronic tendering — requires individual technical onboarding agreements with individual carriers, a cost that favors large platforms with existing networks over new entrants.** Electronic tender transmission (EDI 204) requires a pre-established EDI mapping with each carrier. DAT, C.H. Robinson Navisphere, and Oracle OTM have built carrier connectivity networks over decades. An SME broker switching to a TMS must either rebuild those connections from scratch (months), rely on the TMS vendor's existing carrier network (limits carrier choice), or continue using email/phone for non-EDI carriers (option C is the default). The carrier connectivity moat is structural: it cannot be replicated quickly by a smaller platform. This keeps SME brokers on email even when they could afford TMS subscription fees. (See: C.H. Robinson 2024 Annual Report — Navisphere processed $28B transactions across 160,000+ carrier connections: https://s21.q4cdn.com/950981335/files/doc_financials/2024/ar/CHRW-2024-Annual-Report-10-K.pdf)

- **RC4: Excel-based freight procurement generated no audit trail — cost-free pre-*Montgomery* but now creates material litigation exposure that SME brokers are only beginning to internalize.** Pre-*Montgomery* (May 2026), federal FAAAA preemption blocked state-tort negligent-hiring claims against brokers. Post-*Montgomery*, the absence of documented vetting is discoverable evidence of negligent practice. Excel spreadsheets generate no timestamped record of insurance verification, CSA score review, or identity confirmation. The SME brokerage population most likely to default to Excel is precisely the population most exposed to *Montgomery* liability — and the population least likely to have implemented documentary vetting practices before the ruling. The ruling creates demand pull toward TMS-based documented procurement, but conversion will be slow given the pricing, implementation, and connectivity barriers in RC1–RC3 above. (6)

---

### New Pain Points (Not in Original Hypothesis)

#### Pain point 2.6 (emergent — spans Stage 1 and Stage 2)

**Title:** Re-Identification Gap at Moment of Dispatch — Onboarded Carrier, Unverified Today

**Description:** Even when a carrier was fully vetted at onboarding (Stage 1), the dispatch workflow does not re-verify carrier identity, insurance currency, or authority status at the moment of tender acceptance. A carrier onboarded six months ago may have: (a) had its authority transferred or sold (Highway documented a 135% spike in suspicious MC ownership changes in June 2025; 149 unauthorized FMCSA contact changes in Q3 2025 alone); (b) allowed insurance to lapse between monitoring cycles; (c) had CSA BASIC scores worsen materially; or (d) been targeted by a fraudster intercepting dispatch communications and impersonating the known carrier. The TMS carrier master file is a static record — it does not refresh in real time against FMCSA change events, insurance lapse notifications, or behavioral anomaly data at the moment of dispatch. Highway and Descartes MyCarrierPortal provide continuous monitoring as a separate product; integration with the TMS dispatch workflow requires custom development that most operators have not done.

**Who bears it:** Freight brokers (all sizes) using contracted carrier networks; 3PLs; enterprise shippers running TMS-managed transportation programs.

**Note:** This is the dispatch-layer manifestation of the onboarding-vetting gap documented in Stage 1 PP 1.1. The Stage 2-specific risk is: a vetted carrier can be compromised between onboarding and any subsequent dispatch, with no systematic re-check at the dispatch moment. Cross-reference: Stage 1 Pain point 1.1 (carrier identity fraud) and Stage 1 Pain point 1.2 (COI fraud).

**Estimated cost:**
- See Stage 1 Pain point 1.1 cost data for cargo theft and double-brokering losses attributable to identity fraud
- Highway Q4 2025: 135% spike in suspicious MC ownership changes detected in June 2025; 149 unauthorized FMCSA contact changes in Q3 2025 — implying a carrier vetted before June 2025 may have undergone a fraudulent authority transfer before next dispatch (1)
- [ASSUMED-20]: Emergency re-procurement cost when a no-show is attributed to a fraudulent carrier: $500–$2,000 spot premium + service failure penalty per incident — to validate with mid-market brokers

**Evidenced or assumed:**
(1) Highway, "Q3 2025 Freight Fraud Index," https://highway.com/posts/freight-fraud-in-q3-2025-top-attack-vectors-how-to-prepare; Highway, "Q4 2025 Freight Fraud Index," GlobeNewswire, https://www.globenewswire.com/news-release/2026/01/26/3225705/0/en/Highway-Releases-Q4-2025-Freight-Fraud-Index-Revealing-The-Rise-of-Carrier-Involved-Theft.html

**Root Causes** (abbreviated — full treatment in Stage 1 PP 1.1)

- **RC1: TMS carrier master files are built for rate management, not continuous identity monitoring — the data architecture does not support real-time credential refresh.** Carrier data in TMS is stored as a rate table plus compliance status snapshot. Oracle OTM, SAP TM, and most TMS platforms do not natively subscribe to FMCSA change-event webhooks or insurance-lapse notifications. Highway and Descartes MyCarrierPortal provide this as a separate monitoring product; integration with the TMS dispatch workflow requires custom API development that most operator-side IT teams have not prioritized.

- **RC2: The operational incentive at dispatch is speed and throughput — dispatchers face productivity metrics that are adversely affected by adding re-verification steps.** A dispatcher managing 100+ loads/day is measured on throughput. Adding a 5-minute re-verification check per load adds 8+ hours of daily overhead. Without automation, re-verification is structurally incompatible with dispatch productivity targets. The incentive misalignment between security (verify always) and operations (dispatch now) persists until automated real-time re-verification is embedded in the dispatch workflow itself, not added as a manual step.

---

### Assumptions Tagged in This Stage

[ASSUMED-1]: Mid-market shipper (200 TL loads/week) economic model for OTRI cost exposure. — to validate: Survey three mid-market shippers about their average spot recovery rate and premium paid during Q4 2025 OTRI spike.

[ASSUMED-2]: SONAR enterprise subscription pricing: $15,000–$45,000/year. — to validate: Request SONAR pricing sheet from FreightWaves sales team; cross-reference with Loadsmart ShipperGuide bundled SONAR pricing.

[ASSUMED-3]: Oracle OTM and SAP TM waterfall configurations do not have dynamic rate-escalation triggers tied to real-time SONAR OTRI data as a native feature. — to validate: Ask an Oracle OTM or SAP TM implementation consultant whether OTRI-triggered waterfall escalation has been implemented in any live customer deployment.

[ASSUMED-4]: Less than 20% of Emerge's or Transporeon's enterprise customers run quarterly mini-bids; the majority run annual-only procurement cycles. — to validate: Ask an Emerge or Transporeon SCS account executive about mini-bid frequency patterns among their top-20 customers.

[ASSUMED-5]: No freight procurement platform has implemented financially binding capacity commitments (deposit, escrow) for contracted loads as a standard feature. — to validate: Review Transporeon SCS and Emerge product documentation for any capacity-commitment financial mechanic; ask a procurement platform product manager.

[ASSUMED-6]: Average time between a fraudulent load posting going live on DAT/Truckstop and its removal following a complaint is greater than 4 hours. — to validate: Ask DAT or Truckstop fraud/compliance team for internal SLA on fraudulent posting removal.

[ASSUMED-7]: Average cargo theft loss per incident for electronics is $140,000–$450,000 and for pharmaceuticals is $180,000–$700,000. — to validate: Request CargoNet commodity-specific loss data from Verisk; cross-reference with BSI pharmaceutical section.

[ASSUMED-8]: Cargo insurers do not routinely apply a lane-specific surcharge for loads routed through top-10 theft concentration corridors. — to validate: Interview a cargo insurance underwriter at Chubb, AIG, or XL Catlin about whether they apply lane-specific risk pricing.

[ASSUMED-9]: I-5 California and I-10/I-35 Texas corridors experience 3–5× the national average cargo theft rate. — to validate: Request CargoNet quarterly lane-level theft concentration data (states' incidents divided by national average per lane-mile).

[ASSUMED-10]: Oracle OTM and SAP TM native routing engines do not have configurable risk-weighted lane avoidance parameters tied to theft data. — to validate: Review Oracle OTM and SAP TM configuration documentation; ask an implementation consultant who has worked on enterprise TMS deployments for electronics or pharma shippers.

[ASSUMED-11]: SEA shippers negotiating without market-rate benchmarks overpay by 20–30% versus market rates. — to validate: Interview five supply chain managers at FMCG companies in Indonesia/Thailand about their rate negotiation process and perceived overpayment.

[ASSUMED-12]: Manual WhatsApp/phone freight procurement takes 4–8 hours per shipment for a mid-market SEA shipper vs. <30 minutes via digital platform. — to validate: Time-and-motion study with logistics coordinators at a mid-market Indonesian FMCG company.

[ASSUMED-13]: Digital freight matching penetration in Indonesia's domestic trucking market is below 5% of total transactions by volume. — to validate: Cross-reference DealStreetAsia and local logistics association (Asosiasi Pengusaha Truk Indonesia / APTRINDO) market data.

[ASSUMED-14]: Indonesia's 1.3M truck fleet includes ~975,000 single-vehicle owner-operators (75%) with no digital procurement standard equivalent to US ELD mandates. — corroborated by Geotab Indonesia analysis but to validate: BPS Indonesia transport statistics + APTRINDO fleet census.

[ASSUMED-15]: More than 30% of Indonesian inter-city freight requires a truck-plus-ferry multi-modal segment. — to validate: Request a freight-geography breakdown from Waresix or Deliveree operations team.

[ASSUMED-16]: Deliveree and Waresix do not publish EDI or API integrations with SAP TM, Oracle OTM, or CargoWise. — to validate: Review Deliveree and Waresix developer documentation; ask a CargoWise implementation partner in Indonesia (e.g., SCF Global Pte Ltd).

[ASSUMED-17]: Oracle OTM and SAP TM total cost of ownership (license + implementation) is $400,000–$8M+. — to validate: Gartner Peer Insights TMS TCO survey; Panorama Consulting Oracle implementation cost study.

[ASSUMED-18]: Manual tender management for an SME broker costs 15–30 minutes per load. — to validate: Time-and-motion study with a dispatcher at a sub-$50M broker.

[ASSUMED-19]: Descartes 3GTMS and Loadsmart ShipperGuide average sales cycles for sub-$50M brokers are 3–6 months with implementation costs of $15,000–$50,000 above subscription. — to validate: Ask a Descartes 3GTMS or Loadsmart sales representative about their average sub-enterprise deal economics.

[ASSUMED-20]: Emergency re-procurement cost after a no-show from a fraudulent carrier averages $500–$2,000 in spot premium plus service failure penalty per incident. — to validate: Survey mid-market brokers about their average cost of a carrier no-show event.

