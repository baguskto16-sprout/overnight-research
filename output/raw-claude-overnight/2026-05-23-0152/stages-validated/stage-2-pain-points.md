# Stage 2 — Dispatch: Freight Procurement & Tendering

*Run: 2026-05-23-0152 | Topic: Risk-management solutions across the logistics journey (worldwide scan)*
*Authored by pain-point-researcher agent | Stage 2 of 6*

> **Refinements applied (post-validation):**
> - PP2.1 ($500M-$800M loss range): primary citation swapped to Verisk CargoNet 2024/2025 + FBI IC3 PSA260430 (Apr 30 2026, Tier 1); TIA trade-press citations marked (superseded).
> - PP2.1 ($40,760/load): tagged [ASSUMED-N] — TIA member survey of ~200 respondents, methodology not publicly disclosed; no independent cross-validator.
> - PP2.3 (Indonesia 24% of GDP): East Ventures VC blog citation replaced with World Bank "State of Logistics Indonesia 2013" (Sept 6 2013, 24.64% for 2011) + Bappenas/BPS via ANTARA (Sept 14 2023, 23.27% combined).
> - PP2.4 ($500-800M referenced via PP2.1 cluster): same Verisk + FBI IC3 primary upgrade applied.

---

## Stage 2 scope

This stage covers the moment from when a load is ready for tender through carrier/broker selection, rate agreement, and dispatch confirmation. Actors: shippers (cargo owners), 3PLs acting as freight buyers, freight brokers, and digital broker marketplaces. The core risk dimension is **counterparty and market risk at the point of capacity commitment**: who is actually going to move this load, at what price, and with what reliability? The gap between the contracted arrangement and execution reality is the dominant pain space.

---

### Pain point 2.1

**Description:** Shippers and 3PLs awarding loads to brokers on load boards or broker marketplaces routinely receive freight back from unverified sub-carriers — a practice known as double brokering or unlawful brokerage — because the tendering broker re-assigns the load to a second carrier without authorization, exposing the cargo owner to theft, non-delivery, and uninsured liability that the original broker agreement does not indemnify.

**Who bears it:** Shippers (cargo owners), 3PLs/freight brokers (as primary victims), and carriers who haul loads but cannot collect payment from vanishing intermediate brokers.

**Estimated cost:**
- **Primary (post-validation):** Verisk CargoNet (Tier 3 actuarial) measured $454.9M in 2024 cargo theft losses across US+Canada (3,625 incidents; physical + fraud combined), rising to $725M in 2025 — independently confirmed by FBI IC3 PSA260430 (Apr 30 2026, Tier 1 primary-gov): "In 2025, estimated cargo theft losses in the United States and Canada surged to nearly $725 million (60 percent increase from 2024)... The average value per theft rose 36 percent to $273,990." Strategic theft (fraud-driven) rose 1,475% between 2022-2024 and now accounts for ~one-third of all incidents. (4)(53)(54)
- Trade-press secondary (**superseded as primary**): TIA member-survey range of $500M–$800M+/year and TIA president's verbal $800M+ figure (1)(2)
- [ASSUMED-N] $40,760/load TIA per-load fraud cost: derived from TIA 2024 member survey of ~200 respondents (Feb–Aug 2024); per-company average annual loss $402,344 divided by an undisclosed denominator. Methodology not publicly disclosed; no independent actuarial, government, or academic source replicates the per-load figure. ATRI October 2025 LSP survey implies ~$100K/incident (2.5x higher); Verisk CargoNet's all-theft average is $202,364 (2024) / $273,990 (2025) — 5-7x higher but covers physical + fraud combined. (2)
- Highway platform data: 914,719 fraudulent inbound emails blocked in 2024 + 11,992 identity alerts; a 97% reduction in double-brokering observed among brokers using verified-identity tooling (5)
- Fraud prevention spend: 10% of TIA respondents (April 2025) reported spending over $200,000 on fraud prevention in a six-month window — a direct operating cost addition (6)
- Convoy collapse aftermath: ~400 carriers claimed ~$2.6M in unpaid loads from a single broker failure, illustrating how quickly payment-chain collapse propagates when an intermediary vanishes (7)
- Highway platform data: 914,719 fraudulent inbound emails blocked in 2024 + 11,992 identity alerts; a 97% reduction in double-brokering observed among brokers using verified-identity tooling (5)
- Fraud prevention spend: 10% of TIA respondents (April 2025) reported spending over $200,000 on fraud prevention in a six-month window — a direct operating cost addition (6)
- Convoy collapse aftermath: ~400 carriers claimed ~$2.6M in unpaid loads from a single broker failure, illustrating how quickly payment-chain collapse propagates when an intermediary vanishes (7)

**Willingness to pay:** Highway's entry-level carrier identity tier cited at ~$349/month via AscendTMS integration for SMB brokers; enterprise pricing undisclosed. TIA member companies spent >$200K/6 months on fraud prevention (6). No per-load WTP figure sourced from shipper-side buyers; leave blank for field validation.

**Frequency:**
- Truckstop Broker Insight Survey (700+ brokers, 2025): two-thirds of brokers cite fraud as a top-of-mind issue; 86% of those who experienced fraud identify double brokering as the top threat (8)
- TIA Watchdog: 1,600+ fraud reports filed between September 2024 and February 2025 — a 65% increase from the same period in the prior year (6)
- TIA 2025: 97% of respondents cited truckload freight as the most fraud-prone mode; 83% reported experiencing at least three distinct fraud types in the past six months (6)
- CargoNet 2023: fictitious-pickup events surged 762% over the historical 66/year average, with identity fraud complaints rising 438% year-over-year (3)
- 27% more fraudulent activity in 2024 versus 2023 (Commercial Carrier Journal, cited in TIA materials) (2)
- FMCSA: ~92% of the ~780,000 registered US motor carriers are "unrated" — meaning no federal audit has occurred — giving brokers no government-sourced quality signal to differentiate carriers at tender (9)

**Evidenced or assumed:**

(1) https://www.truckingdive.com/news/brokerage-fraud-costs-could-surpass-800-million-dollars-transportation-intermediaries-association/650595/ — **(superseded as primary citation for $500M-$800M range; retained for TIA framing only)**
(2) https://www.freightcaviar.com/tia-2024-freight-fraud-report-an-average-of-400-000-in-losses/ — **(superseded as primary; $40,760/load figure retained but tagged [ASSUMED-N], no independent cross-validation)**
(3) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2023-theft-trends/
(4) https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(5) https://highway.com/posts/2024-freight-fraud-trends
(6) https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(7) https://www.freightwaves.com/news/some-convoy-carriers-say-collapsed-startup-owes-them-thousands-of-dollars
(8) https://truckstop.com/press-releases/truckstop-survey-trust-is-top-priority-for-brokers/
(9) https://blog.gettransport.com/news/spot-market-tender-rejection-rates/
(10) https://www.freightwaves.com/news/how-freight-fraud-became-the-perfect-crime
(11) https://www.fmcsa.dot.gov/mission/help/broker-and-carrier-fraud-and-identity-theft
(12) https://news.tianet.org/2024-tia-framework-to-combat-fraud/
(13) https://www.freightwaves.com/news/tias-stark-message-double-brokering-fraud-out-of-control
(14) https://www.fleetowner.com/news/article/21268586/fmcsa-and-tia-target-double-brokering-more-aggressively
(53) **Verisk CargoNet 2025 cargo theft analysis (Tier 3 primary actuarial)**: $725M total US+Canada cargo theft losses 2025 (60% YoY increase from $454.9M in 2024); average loss per theft $273,990. https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/
(54) **FBI / IC3 PSA260430 (Apr 30 2026; Tier 1 primary-gov)**: Independently confirms Verisk CargoNet 2025 figure; cites cyber-enabled double-brokering and strategic cargo theft as dominant and growing method. https://www.ic3.gov/PSA/2026/PSA260430

**Severity:** High. The fraud is systemic, growing (65%+ surge in 12 months), and concentrates at exactly the dispatch decision point — tender acceptance — where a shipper's only visibility is the broker's name, not the executing carrier's identity or capability.

**Link to working hypothesis:** WH1 (vendor blind spots — here manifesting at moment-of-tender rather than pre-onboarding). Also directly related to the Stage 1 pain point on carrier onboarding (see Pain point 1.1), because fraudsters exploit the same identity infrastructure gaps.

**Root Causes**

- **RC1: Structural anonymity of the freight tendering transaction allows unauthorized re-brokering to remain invisible until after cargo moves.** The freight broker model is a principal-agent arrangement in which the shipper contracts with the broker, not the executing carrier. The shipper has no contractual visibility into who actually picks up the load. Load boards post freight without requiring the accepting entity to prove it has the capacity it claims. Until a carrier calls or a driver arrives, the shipper cannot verify the executing party — and by then the chain of custody is already broken. This structural anonymity is not a technology failure; it is the default architecture of spot and broker markets worldwide. (FreightWaves, "How freight fraud became the perfect crime" (10); FMCSA Broker and Carrier Fraud guidance (11))

- **RC2: FMCSA's safety-rating system leaves 92% of active carriers with an "unrated" status that provides no quality signal at the point of dispatch.** Federal safety audits are resource-constrained: fewer than 8% of the ~780,000 registered US motor carriers have ever been formally rated. Carriers labeled "unrated" are legally valid counterparties for load assignment, even though their on-road safety performance and fraud history are unknown. Brokers operating under margin pressure who encounter 92% unrated carriers have no regulatory data to differentiate a legitimate small carrier from a shell entity. The information gap is structural, not correctable by brokers acting individually. (FMCSA; CarrierAssure blog (9))

- **RC3: Freight's digital marketplace infrastructure (load boards, broker TMS, rate APIs) was built for speed and volume, not for identity authentication.** Load boards (DAT, Truckstop) prioritize low-friction matching: a carrier or intermediary needs an active MC number and basic profile data to bid on freight. There is no real-time biometric, behavioral, or network-graph check at bid time. Fraudsters exploit this by cloning MC numbers, hijacking email domains, or registering shell entities with superficially valid FMCSA credentials. After discovering a ban on one platform, fraud networks simply reappear under a new MC. The "whack-a-mole" dynamic persists because entry barriers are low, enforcement lags are long, and load board platforms have historically treated identity as a shipper/broker responsibility, not a platform responsibility. (FreightWaves, "Fraud: Burgeoning double-brokering scheme like whack-a-mole" (13); Highway 2024 fraud data (5))

- **RC4: Federal enforcement authority over unauthorized brokerage was legally weakened between 2019 and 2024, creating a deterrence vacuum.** A 2019 court ruling stripped FMCSA of its explicit authority to levy civil penalties for unauthorized brokerage without going through DOJ — a slow and resource-intensive process. For five years, fraudulent brokers faced effectively no enforcement risk beyond having their MC number revoked, which could be replaced within weeks. FMCSA's November 2024 Notice of Proposed Rulemaking to restore civil-penalty authority signals the gap is acknowledged but the rule is not yet final as of mid-2026. (FMCSA NPRM, Federal Register (November 2024) (11); FreightWaves broker transparency reporting (10))

- **RC5: The financial incentive structure of the spot freight market rewards fraudsters disproportionately relative to prosecution risk.** At a per-load fraud take of ~$40,760 ([ASSUMED-N]: TIA 2024 member-survey average, n~200, methodology undisclosed; no independent actuarial cross-validation), a single successful double-brokering event yields a return that vastly exceeds the enforcement cost on the fraudster side: FMCSA penalty processes are slow, civil suits are expensive for brokers to pursue, and criminal prosecution requires FBI coordination. The cargo is often delivered or has disappeared before the fraud is confirmed. Meanwhile, fraud networks scale by creating parallel MC numbers — the marginal cost of a new fraudulent entity is near-zero. This creates a market failure that individual broker due diligence cannot solve. (TIA 2024 fraud report (2)(12); FreightWaves "perfect crime" analysis (10))

---

### Pain point 2.2

**Description:** Shippers who negotiate annual contracted freight rates through an RFP process find that the contracted rates and carrier commitments deteriorate within months of execution — especially when the market moves more than 10% — forcing unplanned spot-market purchases at a 25–35% cost premium per load and triggering costly mini-bid cycles, while leaving procurement teams with no real-time data anchor to know when their routing guide is failing or what the accurate market rate is.

**Who bears it:** Mid-to-large shippers (cargo owners) with contracted carrier networks; 3PLs acting as freight-buying agents on behalf of shippers.

**Estimated cost:**
- Spot rate premium when routing guide fails: 25–35% per affected load above contracted rate under normal conditions; during 2020–2022 peak, the National Truckload Index (spot inclusive of fuel) averaged $3.00/mile vs $2.26/mile pre-pandemic baseline — a 32.7% increase — while the spot-to-contract linehaul spread exceeded 30 cents/mile for extended periods (15)(16)
- Annual RFP cycle administrative cost: four months on average to complete an annual truckload RFP from welcome letter to award; in a typical year, the agreed rates are rendered obsolete ~six months after the bid is complete — meaning shippers can spend more time managing the RFP process than operating under stable contracted rates (17)
- Contract rate inflation following guide failure: contract rates rose 61 cents/mile from $1.97 to $2.58/mile within 12 months following the 2020 routing guide collapse, compressing shipper margin across the network for years (16)
- Accessorial cost escalation: detention wait times exceeded 120 minutes across the US during routing guide failure, adding significant accessorial charges; inventory cost indices surged during the same periods (16)
- Carrier network turnover: average shipper experiences 50%+ annual turnover in its carrier network, meaning roughly half the contracted relationships must be rebuilt each year — a hidden cost in account management, compliance, and insurance verification (18)
- For a typical shipper, the "true" contract rate is 3–21% higher per mile than the face rate, when RFP administration overhead and spot-coverage costs are included (17)

**Willingness to pay:** No sourced figure. SONAR Bulk Rates API launched April 2026 to address rate opacity; DAT RateView and spot-rate analytics products exist in the $500–$5,000/month range for enterprise; specific WTP for routing-guide failure prevention not sourced — leave blank.

**Frequency:**
- Contract rates moved up or down by up to 20%, and spot rates by more than 40%, in a volatile year — making multi-year contracted rate commitments structurally unreliable (18)
- Tender rejection rates (SONAR OTRI) peaked above 13% in late 2025, well above the 7–8% threshold that signals routing guide stress; first-tender acceptance rates fell from ~92% (2023) to ~85% (Q1 2026), demonstrating how quickly guide integrity degrades (19)
- 50%+ carrier network annual turnover means the carrier awarded a lane in Q1 may no longer be servicing it by Q3 without re-tendering (18)
- Routing guide compliance remains at ~94% in the current soft market but historically collapses rapidly as OTRI rises; 2018 and 2020–2022 both showed double-digit rejection rates with rapid budget impact (16)(19)
- A significant share of FTL contracts — approximately 70% — go unused, with shippers paying contracted rate overhead for lanes they redirect to spot (20)

**Evidenced or assumed:**

(15) https://rxo.com/resources/shipper/contract-vs-spot-rates/ — "25 to 35% per load" spot premium; SONAR white paper corroborates
(16) https://gosonar.com/wp-content/uploads/2023/06/The-price-you-pay_-dissecting-cost-in-your-routing-guide-1.pdf (PDF, processed via markitdown — SONAR "The Price You Pay: Dissecting Cost in Your Routing Guide")
(17) https://gosonar.com/freight-market-blog/five-reasons-freight-procurement-is-broken (FreightWaves SONAR, "Five Reasons Freight Procurement is Broken")
(18) https://gosonar.com/freight-market-blog/five-reasons-freight-procurement-is-broken
(19) https://gosonar.com/freight-market-blog/how-to-interpret-tender-rejection-rates
(20) https://freight.amazon.com/newsroom/2023-minibids — Amazon Freight reporting on unused FTL contracts
(21) https://www.freightwaves.com/news/rethinking-freight-procurement-and-the-rfp-process
(22) https://gosonar.com/freight-market-blog/the-freight-market-shift-why-your-rfp-timing-matters
(23) https://blog.btxglobal.com/2026/freight-routing-guide-compliance-how-shippers-reduce-cost-leakage-and-improve-control
(24) https://www.federalregister.gov/documents/2024/11/20/2024-27115/transparency-in-property-broker-transactions (FMCSA NPRM: broker transparency rule, Nov 2024)
(25) https://scm.mit.edu/news-and-events/dealing-with-disruptions-shipper-routing-guide-performance-and-tips-for-tendering-in-the-new-normal/ (MIT SCM)

**Severity:** High. The mismatch between contracted rates and market reality is well-documented across multiple independent sources (SONAR white paper, FreightWaves, MIT SCM). The cost of repeated spot-market purchases during routing guide failure dwarfs the cost of the failure itself because it compounds with every rejection waterfall.

**Link to working hypothesis:** WH1 adjacent (vendor procurement blind spots during RFP); new angle on broker-rate-gaming and RFP failure surfaced by SONAR research. Related to spot-market visibility gap (see Pain point 2.4).

**Root Causes**

- **RC1: Annual RFP cycles lock prices to a single market-clearing moment, but carrier cost structures and spot rates change continuously throughout the year.** The annual contract bid is fundamentally a prediction: shippers and carriers bet that the agreed rate will remain fair for 12 months. In a volatile freight market — where annual rate swings can reach 20% and spot rates 40% — this prediction fails structurally within months. No risk-sharing mechanism is built into standard broker-carrier agreements to compensate for market movement; carriers simply defect to higher-paying spot opportunities when the spread widens. The market has partially responded with mini-bids and index-linked contracts, but adoption is low among mid-market shippers who lack the procurement analytics to execute frequent cycles. (SONAR "Five Reasons" (17)(18); FreightWaves RFP analysis (21))

- **RC2: Shippers lack lane-level, real-time rate benchmarks at the point of tender, creating an information asymmetry that brokers monetize.** The broker-shipper relationship is structurally asymmetric: brokers operate in the spot market daily and have continuous visibility into lane-level rate changes; shippers price freight annually and rely on historical contracted rates as their primary reference. This asymmetry is structural — the shipper's transportation team cannot refresh rates at the speed the market moves without specialized analytics infrastructure. FMCSA's 2024 broker transparency NPRM acknowledges the problem explicitly, noting that shippers cannot currently compare what they paid the broker to what the broker paid the carrier for the same load. (FMCSA NPRM (24); SONAR (17); FreightWaves "polite fictions" framing (18))

- **RC3: Contract rate agreements carry no binding capacity commitment, transforming routing guides into aspirational queues rather than enforceable dispatch tools.** Under standard truckload contracts, the carrier "commits" to accept freight at the contracted rate but faces no contractual penalty for rejection. Rejection simply moves the load to the next carrier in the routing guide waterfall, at successively higher rates. This design is legally stable (making hard capacity commitments would be price-fixing risk in some jurisdictions) but operationally fragile: SONAR's OTRI measures exactly this breakdown in real time, but most shippers' TMS do not feed OTRI signals into dispatch decisions. The 50%+ annual carrier network turnover (18) compounds this because even committed carriers may no longer be active by the time the contract is exercised. (SONAR OTRI documentation (19); RFP season analysis (17))

- **RC4: Mini-bids — the natural corrective mechanism — impose procurement overhead that most mid-market shippers cannot sustain operationally.** When routing guides fail, the industry-standard response is to run a targeted mini-bid on the affected lanes. But mini-bids require lane analytics, carrier outreach, rate benchmarking, and scoring — the same infrastructure as the annual RFP, compressed into a shorter cycle. Mid-market shippers without a dedicated freight analytics team run these manually, consuming hours of procurement staff time per lane affected. The result is that shippers tolerate routing guide failures longer than is economically rational because the corrective process is expensive, not because the failure is small. (Amazon Freight mini-bid analysis (20); Intek Logistics mini-bid guide (25 — [ASSUMED-1]: validate mid-market shipper capacity to run mini-bids without specialist tools))

- **RC5: The freight market's cyclicality produces a procurement trap in which the period of maximum routing guide stability (soft market) is also the period in which shippers lock in rates that will fail when the market tightens.** During a soft freight market, carrier acceptance rates are near-universal and contracted rates look sustainable, so shippers have no incentive to invest in dynamic procurement tooling. When the market tightens — typically with rapid onset, as in mid-2020 or late 2021 — routing guides collapse simultaneously across the network, routing guide failure costs peak exactly when spot rates are highest, and there is no time to implement new processes. The structural lag between market signals and procurement response is the core dynamic: shippers in 2023 locked in low rates that will face pressure in 2025–2026 as capacity tightens again. (SONAR routing guide white paper (16); MIT SCM (25))

---

### Pain point 2.3

**Description:** Small and mid-size (SMB) shippers — particularly those in emerging markets including Southeast Asia — lack access to a Transportation Management System (TMS) appropriate to their freight volume and IT budget, and instead run freight procurement through spreadsheets, WhatsApp, and email; this leaves them without carrier vetting, rate benchmarking, or shipment visibility at the moment of tender, creating risk exposure that is invisible until a load fails.

**Who bears it:** SMB shippers ($1M–$50M annual freight spend), small 3PLs, and informal freight intermediaries in SEA (Indonesia, Thailand, Vietnam, Malaysia) and similarly structured markets.

**Estimated cost:**
- Gartner benchmark (historical, logistics management literature): ~50% of companies with $100M+ freight spend use TMS; ~25% of companies with $25M–$100M; ~10% of companies under $25M — meaning the majority of the market has zero formal procurement tooling at the point of tender (26)
- Indonesia total logistics costs (domestic + export combined) represent approximately 23–24% of GDP. The 24% figure originates from World Bank "State of Logistics Indonesia 2013" (Sept 6 2013, primary multilateral; data year 2011 at 24.64%); the most recent Bappenas/BPS figure (2022) is 23.27% (domestic 14.29% + export 8.98%) per ANTARA Sept 14 2023 + Kemenko Perekonomian/BPS Oct 10 2023. Both figures are supported by primary government and multilateral sources. East Ventures VC blog (29) **(superseded as primary)**. (55)(56)(57)
- In Indonesia, approximately 75% of trucking companies operate fewer than 20 trucks; the manual, end-to-end process of matching shippers with carriers creates supply-demand fragmentation, low truck utilization, and empty-run ratios that inflate shipper cost (28)(29)
- Manual dispatch processes in SEA: carrier assignment done by phone or WhatsApp; no digital audit trail; no rate comparison at point of tender; no carrier credential check at time of booking (27)(30)
- ATRI 2023: total marginal cost of operating a truck in the US rose to $2.270/mile, including insurance ($0.099/mile, +12.5% YoY); SMB shippers without TMS cannot capture this cost intelligence and routinely over- or under-pay at tender (31)

**Willingness to pay:** No sourced WTP for SMB-segment TMS. Kargo Technologies (Indonesia) and Waresix pricing not publicly disclosed; Ritase positions as affordable for informal carriers; Locus TMS entry pricing not published for SEA market. Leave blank.

**Frequency:**
- The 10% TMS adoption rate among shippers under $25M in freight spend implies roughly 90% of this segment relies on manual procurement tools — a pervasive structural gap (26)
- Locus (2024): "Many businesses in Southeast Asia are hesitant to adopt new technologies over change management costs and a preference for traditional manual methods"; "manual random vehicle assignment can lead to vehicles queuing outside warehouses, increasing time under the roof and causing delivery delays" (27)
- World Bank LPI 2023: Indonesia ranked 61st of 139 countries; Thailand 34th; Vietnam 43rd — all behind Singapore (1st) and Malaysia (26th); infrastructure and logistics service quality gaps directly limit digital adoption at the SMB level (32)
- Waresix, Kargo, Ritase, Shipper (Indonesia) all founded 2017–2019 to address the same problem, but collective penetration remains limited: Kargo's 40,000+ truck network and Waresix's 20,000+ trucks represent only a fraction of Indonesia's ~5M registered commercial vehicles (28)(29)(33)
- SEA TMS market: Singapore-based Stemly, Yojee, and Zyllem have entered Indonesia, but TMS coverage in air, sea, and inland freight is described by Deloitte/Vynn Capital as "lowest" among logistics sub-segments; trucking is the most amenable but still underpenetrated (30)

**Evidenced or assumed:**

(26) https://www.logisticsmgmt.com/article/tms_update_adoption_accelerates — Logistics Management, citing Gartner historical TMS adoption bands by freight spend
(27) https://locus.sh/blogs/reimagining-tms-logistics-southeast-asia/ (Locus, "Reimagining TMS in Southeast Asia") — vendor blog, used only for behavioral observation, not performance claim
(28) https://kr-asia.com/how-ritase-is-disrupting-the-indonesian-freight-and-logistics-market-startup-stories (KR Asia, Ritase profile)
(29) https://east.vc/east-ventures/waresix-on-connecting-indonesias-fragmented-logistics-under-a-supply-and-demand-aggregation-platform/ (East Ventures, Waresix profile — 24% GDP logistics cost figure) **(superseded as primary by 55-57 below)**
(55) **World Bank press release (Sept 6 2013; Tier 1 primary multilateral)** — "State of Logistics Indonesia 2013": Indonesia logistics costs = "some 24% of GDP" (headline); underlying PDF shows 24.64% for 2011 (down from 27.61% in 2004). Joint with Bandung Institute of Technology / Indonesian Logistics Association ALI / Panteia. https://www.worldbank.org/en/news/press-release/2013/09/06/high-logistics-costs-impede-higher-economic-growth-for-indonesia
(56) **ANTARA News (Sept 14 2023; primary-gov via state news agency)** reporting Bappenas head Suharso Monoarfa: domestic logistics 14.29% + export 8.98% = combined 23.27% of GDP (most recent 2022/2023 figure). https://en.antaranews.com/news/293688/bappenas-aims-to-lower-indonesias-logistics-costs-to-9-of-gdp
(57) **ANTARA News (Oct 10 2023; primary-gov)** reporting Kemenko Perekonomian Secretary Susiwijono Moegiarso; confirms national logistics costs = 14.29% of GDP (domestic) based on BPS data. https://www.antaranews.com/berita/3765792/pemerintah-sebut-biaya-logistik-nasional-capai-1429-persen-dari-pdb
(30) https://vynncapital.com/wp-content/uploads/2024/11/Indonesia-Logistics-Report.pdf (PDF, Vynn Capital "Evaluating Indonesia's Logistics Market Potential," 2021 — TMS landscape section)
(31) https://truckingresearch.org/about-atri/atri-research/operational-costs-of-trucking/ (ATRI, "Operational Costs of Trucking," annual)
(32) https://lpi.worldbank.org/en/home (World Bank LPI 2023; Indonesia rank 61, Thailand 34)
(33) https://techcrunch.com/2019/07/04/waresix-raises-14-5m/ (TechCrunch, Waresix Series A)
(34) https://cmrindia.com/why-the-southeast-asian-logistics-industry-still-lacks-digitization/ (CMR India, SEA logistics digitization gap)
(35) https://dailysocial.id/post/smart-logistics-is-the-indonesian-digital-economys-up-and-coming-sector (DailySocial, Indonesia smart logistics)
(36) https://www.maersk.com/insights/integrated-logistics/2024/09/23/logistics-readiness-for-the-next-phase-of-e-commerce-in-southeast-asia (Maersk, SEA logistics readiness, 2024)

**Severity:** Medium-High. The TMS adoption gap is well evidenced for the US SMB segment and structurally obvious in SEA markets. The direct cost to any single SMB is lower than the system-wide impact on Indonesia's logistics efficiency (24% GDP). For Tokio Marine + ID&E's SEA deployment target, this is the foundational gap that makes a risk-layer solution viable.

**Link to working hypothesis:** WH1 adjacent (vendor onboarding gaps also apply at dispatch); new surface finding — TMS gap specifically at the tender/dispatch stage in SEA, not in the working hypotheses as stated. Flagged as **new pain point**.

**Root Causes**

- **RC1: Enterprise TMS pricing and implementation cost are calibrated to large logistics operations, leaving SMBs with no affordable on-ramp.** Enterprise TMS solutions (Oracle OTM, SAP TM, Blue Yonder, Manhattan Associates) require 6–18 months of implementation, dedicated IT teams, and license fees in the $100K–$500K+ range — inaccessible to a shipper with $5M in freight spend. Cloud/SaaS TMS have lowered the entry point, but even mid-market solutions (MercuryGate, e2open) assume a minimum operational complexity that many SEA SMBs do not have. The TMS market grew to serve the enterprise buyer first; the SMB segment remains underserved by design. (Gartner TMS Magic Quadrant dynamics (26); Locus market analysis (27))

- **RC2: SEA freight markets are dominated by informal, high-trust, relationship-based procurement that does not generate the structured data TMS requires.** In Indonesia, Thailand, and Vietnam, freight is typically sourced through personal networks — a logistics manager calls a trusted driver, or messages a group of carriers on WhatsApp. These channels work because the parties know each other; they do not generate rate benchmarks, carrier performance records, or audit trails. A TMS is only useful if freight data is digitized at the tender stage; in markets where the tender itself is a phone call, there is no data to manage. The informal-market equilibrium is self-reinforcing: because there is no data, there is no competitive market signal; because there is no competitive market signal, informal pricing persists. (Vynn Capital Indonesia report (30); Locus (27); Waresix investor materials (29))

- **RC3: Indonesia's extreme geographic fragmentation — 17,000+ islands, limited road connectivity — raises the complexity of freight procurement in ways that generic TMS platforms do not address.** Routing a load from Java to Sulawesi involves multimodal decisions (road + RoRo ferry + port slot) that most TMS platforms handle poorly or not at all. SEA-specific complexity (weather windows, inter-island ferry schedules, checkpoint corruption risks) is not modeled in any internationally available TMS. Platforms built for Indonesia (Kargo, Waresix) address matching but not the full risk layer. This mismatch between platform capability and local complexity is a structural barrier to TMS adoption that cannot be solved by price alone. (Vynn Capital (30); Locus (27))

- **RC4: The SMB segment lacks the data literacy and IT staff to implement even low-cost TMS, making adoption a capability problem, not just a cost problem.** Mid-market shippers in SEA often lack the operational analytics function to configure a TMS, define carrier scoring criteria, or interpret rate benchmarks. Change management costs and organizational resistance to abandoning familiar informal processes are repeatedly cited as the primary barriers to TMS adoption in the region. Without internal capability to operate the tool, the platform investment is not realized. This perpetuates reliance on spreadsheets and WhatsApp as the de facto risk systems for freight procurement. (Locus (27); CMR India (34))

---

### Pain point 2.4

**Description:** When a shipper's primary contracted carrier rejects a load and the routing guide pushes freight into the spot market or to a broker marketplace, the shipper or dispatching 3PL has no real-time visibility into which carrier will actually move the freight, what safety and compliance record that carrier has, or whether the awarded entity is a legitimate operator — creating a risk exposure window at the precise moment the load is most price-sensitive and time-constrained.

**Who bears it:** Shippers and 3PLs that rely on broker-sourced capacity when routing guides fail; freight brokers acting under time pressure to cover loads.

**Estimated cost:**
- At 25–35% spot premium per load above contract rate on routing guide failure (15), any cargo lost or stolen in this window multiplies both the rate premium cost and the cargo loss simultaneously
- **Cluster aggregate (post-validation, shared with PP2.1):** Verisk CargoNet measured $454.9M (2024) and $725M (2025) total US+Canada cargo theft losses; independently confirmed by FBI IC3 PSA260430 (Apr 30 2026, Tier 1 primary-gov). Strategic theft (fraud-driven, the spot-market vector) rose 1,475% between 2022-2024. (4)(53)(54)
- CargoNet 2024: average theft value $202,364/incident; fictitious-pickup events (the spot-market fraud vector) rose to 576 events in 2023 vs. historic average of 66 (3)(4)
- C.H. Robinson Q2 2024: 280-basis-point margin decline, partly attributable to inability to price spot risk accurately in real time (from FreightWaves broker margin analysis) [ASSUMED-2]: validate whether C.H. Robinson earnings call specifically linked the margin decline to spot carrier risk vs. rate compression
- Broker legal liability has materially increased post-Montgomery v. Caribe (SCOTUS, May 2026): state-law negligent hiring claims against freight brokers are now explicitly not preempted by FAAAA — brokers who placed loads with unvetted spot carriers face litigation exposure that was previously blocked by federal preemption (37)
- Freight brokers under margin pressure are incentivized to award loads to carriers with lowest cost, not best-risk profile, because FMCSA's "unrated" status (92% of carriers) provides no differentiation signal at the point of rapid spot placement (9)

**Willingness to pay:** No sourced figure for spot-market carrier vetting premium; Highway's 97% double-brokering reduction among verified-network customers implies strong revealed preference. Leave blank for field validation.

**Frequency:**
- SONAR Outbound Tender Reject Index peaked above 13% in late 2025, meaning 13%+ of loads were falling off primary contracted carriers into broker/spot markets (19)
- In Q1 2026 first-tender acceptance rate fell to ~85%, meaning ~15% of tendered loads required secondary placement — often through the spot broker channel (19)
- 90% of US carriers operate fleets of five trucks or fewer; 60% are single owner-operators — at this scale, carriers lack compliance infrastructure, making real-time vetting at dispatch nearly impossible manually (9)
- FMCSA NPRM (November 2024): agency itself acknowledged brokers currently cannot provide shippers with a record of what the broker paid the carrier vs. what the shipper paid the broker within 48 hours of request as a standard practice — confirming the opacity is endemic (38)
- Strategic cargo theft (fictitious pickups, identity theft): 576 events in 2023 vs. 66/year historic average — the surge is concentrated in the spot-market channel where carrier identity verification is weakest (3)(4)

**Evidenced or assumed:**

(37) https://trucksafe.com/post/montgomery-v-caribe-scotus-csa-score-broker-vetting (TruckSafe, Montgomery v. Caribe ruling analysis)
(38) https://www.federalregister.gov/documents/2024/11/20/2024-27115/transparency-in-property-broker-transactions (FMCSA NPRM, November 2024)
(3) https://www.cargonet.com/news-and-events/cargonet-in-the-media/2023-theft-trends/
(4) https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(9) https://blog.gettransport.com/news/spot-market-tender-rejection-rates/
(15) https://rxo.com/resources/shipper/contract-vs-spot-rates/
(19) https://gosonar.com/features/outbound-tender-rejection-index
(39) https://www.freightwaves.com/news/fmcsa-says-it-has-too-little-data-to-assess-double-brokering-fraud
(40) https://www.overdriveonline.com/regulations/article/15710407/broker-transparency-will-impact-truckers-rates-or-rights
(41) https://www.freightwaves.com/news/widespread-double-brokering-wreaks-havoc-on-brokers-and-carriers-in-q2
(42) https://sheerlogistics.com/blog/digital-freight-brokerage/ (Sheer Logistics, digital freight brokerage risk)
(43) https://www.revolutiontrucking.com/blog-posts/the-ultimate-guide-to-spot-freight-load-boards-broker-carrier-dynamics-and-market-trends

**Severity:** High. The spot market channel concentrates both maximum cost exposure (rate premium) and maximum fraud exposure (fictitious pickup events) simultaneously. The SCOTUS ruling in 2026 has elevated this from an operational to a legal liability risk for brokers.

**Link to working hypothesis:** WH1 (vendor blind spots) — specifically at moment-of-tender when freight moves outside the contracted carrier network. New risk dimension surfaced: legal liability shift post-Montgomery adds urgency. Partially overlaps Pain point 2.1 (double brokering) but is a distinct structural failure mode: 2.1 is about the commissioned broker re-brokering; 2.4 is about the spot-market channel being structurally unvetted when primary routing guides fail.

**Root Causes**

- **RC1: Spot market placement operates on a speed-first, vetting-second logic that is structurally opposed to risk management.** When a load falls off a primary carrier, the shipper or dispatcher needs a truck within hours — often same-day. The vetting tools that exist (FMCSA SAFER Web, Carrier411, CarrierAssure) require lookup time and human judgment to interpret. Under time pressure, dispatchers revert to the fastest available match: load board acceptance. Speed and safety are in direct tension, and the incentive structure of spot dispatch rewards speed. This is not a technology gap alone; it is an operational design choice embedded in dispatch workflows across the industry. (FreightWaves carrier vetting (9); FMCSA SAFER guidance (11))

- **RC2: The FMCSA safety-rating system does not produce carrier quality signals fast enough or at enough coverage to support real-time spot dispatch decisions.** Federal safety audits occur infrequently — 8% of carriers have been rated. A carrier can accumulate significant on-road incidents between review cycles and still show "satisfactory" or "unrated" status. This rating lag means the government safety database is not a reliable quality filter at spot-dispatch speed. CarrierAssure and Highway have partially addressed this with AI-based predictive scoring, but these tools are not integrated into load boards or most mid-market TMS platforms as default vetting layers. (CarrierAssure blog (9); FMCSA data limitations acknowledged in FreightWaves (39))

- **RC3: Broker margin compression during soft freight markets creates a structural conflict of interest at the point of carrier selection.** When dry-van spot rates compress margins to thin levels, brokers face pressure to reduce the per-load cost of carrier acquisition. The least expensive carrier to acquire is the lowest-cost bidder who clears a minimum compliance bar (active authority, valid insurance, FMCSA status). A higher-quality carrier who costs 5–10% more per mile is not selected under this logic, even if they carry meaningfully lower fraud risk. Convoy's collapse illustrated how the margin-compression dynamic, when taken to its extreme, causes broker platforms to burn cash acquiring capacity below cost and then fail — leaving carriers unpaid (7). The incentive misalignment between broker cost-minimization and shipper risk-minimization is structural. (FreightWaves broker margin trough (41); Convoy analysis (7))

- **RC4: Shipper contracts with brokers do not require brokers to disclose executing-carrier identity or sub-carrier credentials, leaving shippers with no contractual right to the information needed for their own risk assessment.** Under standard broker-carrier agreements, the broker's identity is the contracting party; the executing carrier is an operational detail the broker is not required to share. Shippers who want to know which carrier is moving their freight must rely on the broker's voluntary disclosure or on tracking data that arrives after the carrier has picked up. The FMCSA's November 2024 NPRM proposes to require transaction record disclosure within 48 hours, but this is post-hoc — it does not provide real-time carrier identity at the moment of tender, which is when the risk decision is being made. (FMCSA NPRM (38); FreightWaves broker transparency fight (40))

---

### Pain point 2.5

**Description:** Freight broker margin collapse during cyclical soft markets — combined with the Convoy-style failure pattern in which digital brokerages burn capital underpricing contract freight — creates systemic counterparty risk for carriers and shippers who have concentrated their freight with growth-stage broker platforms, because these platforms can shutter rapidly without adequate carrier payment or continuity planning.

**Who bears it:** Carriers (who haul but may not be paid when a broker fails), shippers (who lose continuity with a suddenly defunct capacity platform), and 3PLs that relied on a specific digital brokerage for overflow capacity.

**Estimated cost:**
- Convoy closure October 2023: ~400 carriers filed claims for $2.6M in unpaid loads from a single broker failure; no restructuring process — carriers had no lien or priority claim on the freight they had already hauled (7)
- 1,500+ freight broker closures in 2023, creating multiple simultaneous counterparty-failure events across the industry (44)
- Freight brokerage gross revenue declined 15.1% in 2023 (from $159B to $135B), compressing industry margins and driving weaker brokers toward insolvency (45)
- Surge Transportation (another digital brokerage) filed Chapter 11 in 2024 — confirming Convoy was not an isolated event (45)
- Average freight brokerage net revenue margin runs at ~15% of gross revenue in normal conditions; when spot rates fell 40%+ in 2022–2023, brokers who had locked shipper contracts at above-market rates and were now buying spot capacity at elevated cost were squeezed from both sides (45)
- At $1,912 revenue per load and minimum sustainable margin ~11.3%, freight brokerage economics leave virtually no buffer for sustained rate downturns (45)
- $75,000 surety bond requirement for freight brokers has remained unchanged since 1980; TIA has argued this is catastrophically inadequate relative to modern per-load fraud losses of $40,760+ ([ASSUMED-N]: TIA member survey, no independent cross-validation) (2)

**Willingness to pay:** No sourced figure. Carriers may accept lower rates from brokers with demonstrably strong payment history, implying a small rate premium for creditworthy counterparties. Leave blank.

**Frequency:**
- 1,500+ broker closures in 2023 alone (44)
- Convoy had raised $1B+ at $3.8B valuation 18 months before closure — illustrating that high funding does not protect against model failure (7)
- Freight market cyclicality (20%+ annual contract rate swings) means broker solvency stress is a recurring, not one-time, event (17)
- FMCSA's $75K bond inadequacy: the bond would cover only 1–2 average-size fraud loads ($40,760/load average per TIA 2024 — [ASSUMED-N]: TIA member-survey only, no independent actuarial cross-validation) before being exhausted for a single fraud event — structurally inadequate for a large broker platform (2)
- [ASSUMED-3]: No industry-wide survey quantifies what share of shippers or carriers experienced material operational disruption from a broker counterparty failure in 2023–2024 — to validate: ask shippers and 3PLs what share of their spot/overflow capacity was disrupted by broker closures in 2023.

**Evidenced or assumed:**

(7) https://www.freightwaves.com/news/some-convoy-carriers-say-collapsed-startup-owes-them-thousands-of-dollars (FreightWaves)
(44) https://www.truckinfo.net/research/convoy-not-alone-thousands-of-freight-brokers-have-closed-in-2023
(45) https://brushpassresearch.blog/2024/04/16/2023-freight-brokerage-revenues-decline-15-1/ (Brush Pass Research, 2023 brokerage revenue analysis)
(46) https://www.freightwaves.com/news/freight-brokerages-struggle-through-a-long-trough (FreightWaves, April 2024)
(47) https://www.freightwaves.com/news/the-75000-bond-and-truckers-left-holding-the-bag (FreightWaves, broker bond inadequacy)
(48) https://tanktransport.com/2023/12/convoy-closure-detailed-insight/ (Tank Transport, Convoy closure analysis)
(49) https://www.logisticsnavigators.com/casestudies/convoys-shutdown-and-the-limits-of-freighttech-hype (Logistics Navigators, Convoy structural analysis)
(50) https://www.truckingdive.com/news/digital-brokerage-convoy-shuttering-operations/697246/ (Trucking Dive, Convoy closure)
(51) https://www.scmr.com/article/convoy-likely-wont-be-the-last-brokerage-shutdown (SCMR, systemic brokerage risk)
(52) https://www.freightcaviar.com/cutting-costs-to-survive-strategies-for-freight-brokers-in-2024/

**Severity:** Medium. The individual failure events (Convoy, Surge) were large but time-limited. The structural inadequacy of the $75K bond, however, is a persistent regulatory gap. The risk is highest for carriers with concentrated exposure to digital broker platforms and shippers who have outsourced overflow capacity to growth-stage platforms without fallback routing guides.

**Link to working hypothesis:** New pain point — not in original five working hypotheses. Surfaces from Convoy bankruptcy lesson direction specified in the research brief. Flagged accordingly.

**Root Causes**

- **RC1: Freight brokerage business models optimized for volume and growth over margin during the 2020–2022 boom left no buffer when the cycle reversed.** Digital brokerages raised growth capital on the assumption that market-share growth would eventually compress unit costs through network effects. Convoy's approach — automated matching, no owned assets, continuous volume growth — worked in a rising market but had no downside mechanism. When spot rates fell 40%+ in 2022–2023, brokers who had committed to shipper contract rates above current market were simultaneously being underbid by competitors and losing carrier capacity to higher-paying spot loads. The structural weakness is that asset-light brokerage has no natural hedge against simultaneous volume decline and rate compression. (FreightWaves Convoy analysis (49)(48))

- **RC2: The $75,000 surety bond requirement has been static since 1980, creating a chronically under-secured creditor claim system for carriers when a broker fails.** The bond was set in 1980 before digital brokerage platforms were processing millions of loads annually. A $75K bond covers fewer than two average-size loads (at $40,760 fraud average per TIA 2024). When Convoy closed, $2.6M in carrier claims competed for a $75K priority claim pool — leaving carriers as unsecured creditors with no practical recovery path. This is not an operational failure; it is a structural regulatory gap that has been known and documented for years with no legislative correction. (FreightWaves bond analysis (47); TIA 2024 fraud report (2))

- **RC3: Shippers and carriers have no standardized financial due diligence protocol for evaluating broker counterparty risk before committing freight.** Credit ratings and audited financials are standard in other financial markets, but there is no equivalent disclosure requirement for freight brokers. A shipper awarding a significant percentage of overflow capacity to a digital broker platform has no mechanism to assess that broker's cash position, accounts-payable aging, or capital adequacy relative to the volume being awarded. Convoy raised $1B+ and had a $3.8B valuation 18 months before closure — external signals provided no warning. This information asymmetry is not addressed by any existing regulatory framework. (CNBC Convoy closure (from search); FreightWaves (46))

- **RC4: Freight broker failure propagates payment failure to carriers through a payment timing mismatch that carriers cannot self-protect against.** Carriers haul freight and invoice the broker, but payment terms (30–60 days) mean carriers have already completed the service before they know the broker can pay. When a broker closes, in-flight hauls become unrecoverable receivables. Unlike secured lending where collateral exists, the "collateral" in a freight transaction — the delivered cargo — is already in the hands of the shipper. Carriers have no lien right on delivered freight in standard industry contracts. This timing mismatch is inherent to how freight brokerage payment flows work; it is not addressable by faster invoicing alone. (FreightWaves carrier claims (7); Convoy closure structure (48))

---

### New pain points (not in original hypothesis)

Pain point 2.3 (SMB TMS gap in SEA) and Pain point 2.5 (broker counterparty/solvency risk) were not in the five original working hypotheses. Both are surfaced from the Convoy research direction and the SEA logistics literature.

Pain point 2.4 (spot-market carrier risk at routing guide failure) overlaps WH1 but is a distinct dispatch-stage manifestation not explicitly hypothesized for this stage.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Mid-market shippers cannot operationally sustain frequent mini-bid cycles without specialist freight analytics tooling — to validate: ask procurement managers at $50M–$500M freight spend companies how many mini-bids they ran in 2023 and what internal headcount this required.

[ASSUMED-2]: C.H. Robinson's 280 basis-point margin decline in Q2 2024 was partly attributable to spot-carrier quality risk and unvetted carrier awards, not solely to rate compression — to validate: review C.H. Robinson Q2 2024 earnings call transcript for specific attribution language.

[ASSUMED-3]: No industry-wide survey quantifies the share of shippers/carriers that experienced material operational disruption from a freight broker counterparty failure in 2023–2024 — to validate: conduct structured interviews with 3PLs and large carriers asking about broker counterparty failures in 2023.

