# Stage 1: Vendor Procurement & Counterparty Risk — Pain Points
## Worldwide Solution-Landscape Scan — Logistics Risk Management
*Research date: 2026-05-14 | Pass 1 draft*

---

## Stage 1: Vendor Procurement & Counterparty Risk (Shippers, 3PLs, Freight Brokers)

### Pain point 1.1

**Description:** Freight brokers and 3PLs onboarding carriers into dispatch queues suffer direct financial losses when fraudulent actors — using stolen operating authority, newly minted MC numbers, or social-engineered email takeovers — pass standard vetting checks and then divert, steal, or abandon freight. Because current vetting tools are anchored to point-in-time FMCSA record checks rather than continuous behavioral signals, a carrier that passes onboarding at 9 AM can be a fraud actor by 2 PM with no intervening alert. In Q1 2026, half of all freight theft incidents involved carriers with legitimate Motor Carrier numbers and clean operating histories — evidence that passing the current vetting bar is no longer a reliable proxy for safety.

**Who bears it:** Freight brokers and 3PLs booking truckload freight on behalf of shippers; enterprise shippers with internal carrier networks; cargo insurers who fund the residual loss.

**Estimated cost:**
- Direct per-incident loss (all theft types, CargoNet average): $187,895 (2023) → $202,364 (2024) → $273,990 (2025), a 46% rise in two years; CargoNet Q1 2024 quarterly average was $281,757 (1a, 1b, 2). FBI IC3 PSA-260430 (April 2026) corroborates the 2025 CargoNet figure and identifies fictitious pickups as the dominant growth driver (1c). Overhaul's vendor-cited figure of $365,000 per fictitious-pickup specifically (Q1 2024) sits above the all-type average — retained as a vendor upper bound, not a primary-source claim (1)
- Aggregate annual freight fraud payment losses: $500M–$700M in freight payments annually, distinct from physical cargo losses (3)
- Physical cargo theft losses: $454.9M in 2024; $725M in 2025 — 60% year-over-year increase (4, 5)
- Average annual fraud loss per TIA-surveyed company: over $400,000; 22% of respondents lost more than $200,000 in a single six-month period (6)
- Prevention spend: 10% of TIA respondents spent over $200,000 on fraud prevention in a six-month period — a cost borne by brokers with no recovery from carriers (6)

**Willingness to pay:** Highway's Load Lock (per-load fraud protection) is adopted by 1,050+ brokers including 70 of the top 100 US brokers, suggesting significant demonstrated WTP among mid-to-large brokers; Overhaul FraudWatch saved customers a claimed $100M in potential losses in early 2024 adoption — both are commercial proxies for WTP, but precise per-seat ACV is not publicly disclosed (7, 8)

**Frequency:**
- CargoNet recorded 3,625 cargo theft incidents in the US and Canada in 2024, a 27% year-over-year increase; strategic theft (fraud-based) rose 1,475% from 2022 to 2024 (4)
- TIA Watchdog logged 1,611 fraud reports in six months (Sep 2024–Feb 2025), a 65% increase over the prior comparable period (9)
- Highway blocked 914,719 fraudulent email attempts in 2024; in Q1 2026 alone, 527,940 fraudulent emails were blocked (49.9% year-over-year increase), with identity theft cases rising 89.6% and change-of-ownership fraud surging 169.6% (10, 11)
- 83% of TIA-surveyed respondents experienced at least three distinct fraud types in a six-month window (6)
- 8% of Overhaul FraudWatch-enabled shipments encountered a high-risk carrier, driver, or double-brokering attempt in early deployment (8)
- Truckstop reported a 400% increase in double-brokering complaints in Q4 2022–Q1 2023; total freight fraud reports jumped 130% from 2022 to 2023 (12)

**Evidenced or assumed:**
(1) Overhaul/FreightWaves: vendor-cited fictitious pickup average $365K Q1 2024 — https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(1a) Verisk CargoNet Q1 2024 quarterly report ($281,757 per incident, all theft types) — https://www.verisk.com/company/newsroom/2024-q1-cargo-theft/
(1b) Verisk CargoNet 2024 full-year: $202,364 per incident — https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(1c) FBI IC3 PSA-260430 (April 2026), confirms 2025 CargoNet $273,990 per-incident figure and identifies fictitious pickups as dominant growth driver — https://www.ic3.gov/PSA/2026/PSA260430
(2) Verisk CargoNet 2024 annual analysis — https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(3) FTV Capital / FreightWaves industry estimate — https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/
(4) Verisk CargoNet 2024 annual analysis (same as 2) — https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(5) Verisk CargoNet 2025 annual analysis — https://www.cargonet.com/news-and-events/cargonet-in-the-media/2025-theft-trends/
(6) TIA State of Fraud in the Industry, April 2025 — https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(7) Highway / FTV Capital press release — https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/
(8) Overhaul FraudWatch FreightWaves — https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(9) TIA Watchdog fraud reports — https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(10) Highway 2024 Freight Fraud Trends — https://highway.com/posts/2024-freight-fraud-trends
(11) Highway Q1 2026 Freight Fraud Index — https://www.globenewswire.com/news-release/2026/05/05/3288141/0/en/Freight-Fraud-Hits-Record-High-in-Q1-2026-Half-of-All-Incidents-Tied-to-Carriers-With-Clean-Records.html
(12) Truckstop double brokering / TT News — https://www.ttnews.com/articles/double-brokering-increases

**Root Causes**

- **RC1: FMCSA registration imposes minimal identity friction, creating a low-cost entry point for fraudulent entities** — A US Motor Carrier authority (MC number) can be obtained for approximately $300 in under one week, requiring no in-person identity check, no beneficial-ownership disclosure, and no operational track record. Prior to FMCSA's 2025 biometric verification rollout, the filed-to-published conversion rate was 60–65%, implying fraudulent applications moved through with little friction; after biometric checks were mandated, the conversion rate dropped to approximately 30% — implying up to half of prior applicants were fraudulent or unable to pass basic identity validation. The structural cause is that FMCSA's registration system was designed for safety regulation, not identity assurance, and the two goals require different verification architectures. Absent a requirement to link corporate registration, beneficial ownership, and biometric identity at the point of MC number issuance, criminals can create new authorities faster than compliance systems can flag them. (FreightWaves — FMCSA crackdown halves newly published authorities: https://www.freightwaves.com/news/fmcsa-crackdown-on-carrier-fraud-halves-newly-granted-authorities; carrier-ok.com FMCSA identity checks analysis: https://www.carrier-ok.com/post/fmcsa-s-new-id-verification-slows-motor-carrier-approvals-early-data-signals-fraud-crackdown-impac)

- **RC2: Carrier vetting is treated as a one-time onboarding event rather than a continuous identity-state signal** — Standard vetting platforms (RMIS, Carrier411, SaferWatch, DAT CarrierWatch) perform a compliance check at carrier onboarding and then monitor for regulatory-record changes (CSA score deterioration, authority lapse, insurance cancellation). They do not monitor for identity-state changes — email account takeover, phone number substitution, contact-information hijacking, or cargo diversion behavior. Highway detected 109,672 FMCSA contact changes in 2024 that were potential fraud signals; no other commercial vetting platform monitors this signal class systematically. In Q1 2026, 50% of theft incidents involved carriers with clean operating records — evidence that the threat has shifted to post-onboarding identity compromise rather than fraudulent applications. The structural cause is that the vetting industry's product architecture was built around regulatory-record compliance (a static verification model), not behavioral identity assurance (a continuous inference model), because FMCSA data does not emit behavioral signals. (Highway Q1 2026 Freight Fraud Index: https://www.globenewswire.com/news-release/2026/05/05/3288141/0/en/Freight-Fraud-Hits-Record-High-in-Q1-2026-Half-of-All-Incidents-Tied-to-Carriers-With-Clean-Records.html; FreightWaves — underground MC number market: https://www.freightwaves.com/news/catch-me-if-you-can-the-underground-market-for-mc-numbers-regulators-are-trying-to-stop)

- **RC3: Carrier fraud tools primarily detect application-stage fraud but cannot verify who physically picks up the load** — Most vetting platforms confirm that a carrier entity is real and authorized at the onboarding or booking stage; they do not verify at pickup that the driver, tractor, and trailer match the authorized carrier profile. Double-brokering and fictitious-pickup schemes are structurally post-booking events — a legitimate carrier is booked and then either sub-contracts without authorization or never dispatches a driver at all. Overhaul FraudWatch found that 14% of US motor carriers screened at pickup were high-risk, and 12% were operating without proper FMCSA authority at the point of physical pickup — risks that had not been detected at booking. The structural cause is that the freight brokerage workflow creates a principal-agent gap between the entity that books the load (identifiable) and the entity that executes it (often unknown), which no booking-stage verification product can close. (Overhaul FraudWatch FreightWaves: https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention; Overhaul product page: https://www.over-haul.com/product/fraudwatch)

- **RC4: Fragmented accountability between shipper, broker, and insurer creates no single party with sufficient financial incentive to invest in comprehensive fraud prevention** — Under the Carmack Amendment, the carrier bears primary cargo liability, but when a carrier is fraudulent or a shell entity, recovery is nil. A broker may be found jointly liable for negligence in carrier selection, but proving negligent vetting against a fast-moving, constantly-evolving fraud method is difficult, and broker standard liability insurance often excludes losses from illegal double brokering. The shipper bears the operational disruption cost. The cargo insurer pays out physical loss claims but has no mechanism to recover from a fraudulent carrier. With loss distributed across four parties and no party bearing the full expected cost of inadequate vetting, each party individually under-invests in fraud prevention relative to the social optimum. (Putterman Law — broker liability in double-brokering: https://putterman-law.com/blog/freight-broker-liability-in-double-brokering-scenarios/; TIA fraud report: https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/)

- **RC5: Criminal sophistication has outpaced the detection capability of FMCSA-data-anchored vetting tools** — The underground market for aged, clean MC numbers (priced at $20,000+) means fraudsters can present a carrier history that passes compliance scoring. Chameleon carriers shut down and re-open under new identities, cycling through DOT numbers faster than CSA enforcement can catch up. Organized crime groups have shifted to email-domain spoofing, SIM-swap attacks on carrier phones, and AI-generated phishing targeting broker dispatch teams — attack vectors that FMCSA records have zero visibility into. Highway's 2024 data shows 9,829 carrier users from 75 countries were blocked from its platform, confirming that the threat actor population is now international and organized. No commercial vetting product currently ingests threat-intelligence signals from sources outside the FMCSA dataset. (FreightWaves — underground MC number market: https://www.freightwaves.com/news/catch-me-if-you-can-the-underground-market-for-mc-numbers-regulators-are-trying-to-stop; Highway 2024 Fraud Trends: https://highway.com/posts/2024-freight-fraud-trends; Trucksafe — chameleon carriers: https://trucksafe.com/post/chameleon-carriers-fraud-detection-and-fmcsa-s-evolving-data-strategy)

**SEA implication:** Highway detected fraud attempts from 75 countries in 2024. The fraud techniques — email domain spoofing, MC number hijacking, fictitious pickups — are infrastructure-agnostic and have been observed in cross-border APAC freight corridors. No SEA-native fraud-detection product currently exists. In SEA, the structural conditions are more permissive: Indonesia, Thailand, and Malaysia have no FMCSA-equivalent central carrier authority registry with continuous compliance monitoring, meaning even the US-standard vetting floor is absent.

---

### Pain point 1.2

**Description:** Freight brokers and shippers onboarding carriers outside North America — and all brokers onboarding owner-operators at the sub-five-truck tier — face a structural data void: the carrier either has no presence in FMCSA-based vetting databases, or has an FMCSA record that is too thin to score reliably. For SEA-domiciled carriers, no machine-readable equivalent of FMCSA SAFER exists: Indonesia's Dishub, Thailand's DLT, and Malaysia's LPKP each maintain carrier licensing records, but none exposes them through a commercial API that vetting platforms can ingest. The result is that carrier qualification in SEA defaults to document-upload and relationship-based trust — the same practices that made US freight fraud financially rational in the pre-RMIS era. The $119B ASEAN road freight market operates with zero purpose-built counterparty-risk tooling.

**Who bears it:** Enterprise shippers and multinational 3PLs managing carrier networks in Indonesia, Thailand, Malaysia, and Vietnam; digital freight platforms in SEA (GoGoX, Haulio, Janio, Kargo, Deliveree) that onboard sub-carriers at scale; cross-border freight forwarders routing cargo through ASEAN corridors.

**Estimated cost:**
- ASEAN road freight market size: estimated $115–$125B in 2025 (commercial-vendor consensus; no Tier-1 primary source publishes this figure). Mordor Intelligence puts it at $119.43B; IMARC Group's separately-modeled ASEAN logistics market ($223.6B) back-calculates to ~$118–$120B at the standard 53% road modal share — a second corroborating data point. ADB, World Bank, ASEAN Secretariat, and ITF/OECD do not publish a USD road freight market size for ASEAN. The 2024 figure was approximately $112–$113B at the implied 6.04% CAGR (13, 13a, 13b)
- Indonesia is ranked 61st in the World Bank 2023 LPI (down from 45th in 2018), with logistics competence and customs scoring among the weakest in ASEAN — structural evidence of the data infrastructure deficit (14)
- Manual carrier qualification in SEA typically requires document collection, reference calls, and site visits — conservatively 4–8 hours per carrier. Fully-loaded labor cost from primary sources: Singapore logistics-coordinator role is $11–$23/hour (talent.com 10,000-record dataset 2026, JobStreet Singapore employer disclosures May 2026, calculated from SGD 24,000–50,280/yr base + 17% CPF); KL/Malaysia logistics-coordinator role is $4–$7/hour (JobStreet Malaysia May 2026 + Malaysia DOSM Salaries and Wages Survey 2024, calculated from MYR 2,875–4,400/mo + 13% EPF). Per-carrier vetting labor cost: $16–$184. A mid-size 3PL adding 20–50 carriers/month incurs approximately $4,000–$110,000 annually in manual vetting labor (Malaysia lower bound to Singapore upper bound). The original $25–$45/hr assumption mapped to manager-grade staff, not coordinator-grade — corrected downward (15, 15a, 15b, 15c, 15d)
- Cargo theft with insider participation: BSI/TT Club 2024 report identified India, Indonesia, China, Vietnam, and Bangladesh as Asia's most-affected countries; 26% of recorded cargo theft incidents in India, Indonesia, and Bangladesh involved insider participation — a structural risk indicator elevated by poor counterparty data availability (16)

**Willingness to pay:** Not sourced for SEA-specific vetting tooling. [ASSUMED-1]: Enterprise shippers operating in SEA would likely pay $200–$500/month for carrier vetting tooling comparable to RMIS Lite pricing, based on cost-equivalence to manual vetting labor — to validate: survey procurement leads at top-10 MNC manufacturers operating in Indonesia and Thailand.

**Frequency:**
- All 20 major vetting platforms reviewed in the Stage 1 value-chain map have no documented SEA carrier database, no integration with Dishub/DLT/LPKP, and no SEA office (with the exception of Cargobase and AU10TIX, neither of which offers fraud detection or compliance monitoring against local authority databases) (17)
- World Bank LPI 2023: Singapore ranks 1st globally; Malaysia 31st; Thailand 37th; Indonesia 61st — a 30-rank spread in logistics quality within the same trade corridor, indicating fragmented regulatory environments that make cross-border vetting uniquely complex (14)
- The ASEAN road freight market remains "moderately fragmented," with digital freight platforms widening the performance gap between carriers with digital presence and legacy operators without (13)

**Evidenced or assumed:**
(13) Mordor Intelligence, ASEAN Road Freight Transport Market, 2025 — https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market
(13a) IMARC Group, Southeast Asia Logistics Market 2025–2033 — used for back-calculation at 53% road modal share — https://www.imarcgroup.com/southeast-asia-logistics-market
(13b) Triangulation note: no Tier-1 (ADB, World Bank, ASEAN Secretariat, ITF/OECD, national statistics offices) publishes a USD ASEAN road freight market size; the $115–$125B figure is commercial-vendor consensus only (Stage 1 deep-research VC-36)
(14) World Bank LPI 2023 — https://lpi.worldbank.org/en/home; Jakarta Globe LPI analysis — https://jakartaglobe.id/business/indonesia-falls-behind-other-asean-countries-in-logistics
(15) talent.com Singapore logistics coordinator salary 2026 (10,000-record dataset) — https://sg.talent.com/salary?job=logistics+coordinator
(15a) JobStreet Singapore logistics coordinator employer disclosures, May 2026 — https://sg.jobstreet.com/career-advice/role/logistics-coordinator/salary
(15b) JobStreet Malaysia logistics coordinator salary, May 2026 — https://www.jobstreet.com.my/career-advice/role/logistics-coordinator/salary
(15c) Malaysia DOSM Salaries and Wages Survey 2024 — https://www.dosm.gov.my/portal-main/release-content/salaries-and-wages-survey-report-malaysia-2024
(15d) Stage 1 deep-research PP-1.2-cost-3: SEA labor cost refined downward — see pass-3-deep-research/stage-1/PP-1.2-cost-3.json
(16) BSI/TT Club 2024 Cargo Theft Report, April 2025 — https://www.ttclub.com/news-and-resources/publications/article/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(17) Stage 1 value-chain map, SEA presence section — all 20 vendors reviewed; Cargobase SEA presence: https://www.cargobase.com/; AU10TIX Singapore office: https://www.au10tix.com/
(18) Thailand DLT carrier database portal — https://infodlt.dlt.go.th/en
(19) OECD Competition Assessment Reviews — Logistics Sector in ASEAN, 2021 — https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html
(20) Indonesia Dishub / Kemenhub carrier licensing — https://kemenhub.go.id/ (no API documentation for commercial vetting use confirmed)
(21) Stage 1 value-chain map, ASSUMED-5 — Thailand DLT, Indonesia Kemenhub/Dishub, Malaysia JPKP/SPAD data access APIs not confirmed available for commercial vetting integration

**Root Causes**

- **RC1: No ASEAN country has built a machine-readable, commercially accessible carrier authority registry equivalent to FMCSA SAFER** — FMCSA SAFER exposes the entire US carrier authority dataset via a free Open Data API, allowing private vetting platforms to build compliance monitoring products on a government-maintained data foundation. Thailand DLT, Indonesia Kemenhub/Dishub, and Malaysia JPKK each maintain national vehicle and carrier licensing databases but publish no open API and provide no commercial data-feed access for third parties. This is not a technology limitation — the data exists — but an institutional design decision: ASEAN transport ministries built databases for internal enforcement use, not as shared data infrastructure for private market counterparty risk. Without a machine-readable feed, the only viable vetting approach is document-upload or manual lookup, which does not scale and cannot be monitored continuously. (Thailand DLT: https://infodlt.dlt.go.th/en; OECD ASEAN Logistics Competition Assessment: https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html; Stage 1 ASSUMED-5)

- **RC2: SEA road freight is dominated by owner-operators and micro-fleets with no credit history, business registry presence, or audit trail** — 90% of US carriers have five trucks or fewer, and 60% are owner-operators; the equivalent fragmentation in SEA is deeper, with Indonesia's road freight market described by Mordor Intelligence as dominated by thousands of small owner-operators. Indonesia's Katadata Insight Center identified the trucking sector as "slowly adopting" digitalization with intermediaries "remaining fragmented." Without a business credit registry, formal insurance requirement, or mandatory compliance-score publication, there is no third-party data source that could feed a risk score for these operators. The structural cause is that the informal economy structure of SEA road freight — which reduces carrier costs and serves shippers in the short run — produces a data desert that makes counterparty risk assessment impossible at scale. (Mordor Intelligence ASEAN road freight: https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market; Nikkei Asia — Indonesia trucking digital gap: https://asia.nikkei.com/Business/Transportation/Indonesia-s-trucking-industry-grapples-with-digital-gap)

- **RC3: US-market vetting platform vendors have no financial incentive to invest in SEA data infrastructure without a proven local revenue model** — The US carrier vetting market supports $340–$500/month SaaS products because FMCSA data is free and the fraud loss problem is quantified in public surveys. In SEA, no equivalent free data foundation exists, the fraud loss problem is not publicly quantified in credible surveys, and potential enterprise buyer counts are smaller (fewer established freight broker intermediaries). Building a SEA carrier database would require proprietary data collection agreements with government agencies and data partnerships with local freight platforms — a multi-year investment with uncertain return. The structural cause is an investment sequencing trap: the market cannot generate the revenue that would justify data investment until the data exists to make the product valuable. (Stage 1 value-chain map market sizing section; Stage 1 ASSUMED-2)

- **RC4: Fragmented cross-border regulatory environments in ASEAN mean a carrier verified in one country cannot be verified against a common standard in another** — Thai trucks cannot cross into Malaysia except at specific points; Chinese trucks cannot enter Vietnam. Each ASEAN country has distinct carrier permit regimes (Thailand DLT route permits, Malaysia LPKP commercial vehicle operating license, Indonesia Dishub inter-province cargo permits) that are not mutually recognized. A freight forwarder routing a load from Jakarta to Kuala Lumpur via Johor Bahru faces three separate carrier-authority verification requirements with no common data standard. The OECD's 2021 competition assessment of the ASEAN logistics sector explicitly identified regulatory fragmentation as a barrier to competitive logistics services. No multilateral framework (ASEAN Framework Agreement on the Facilitation of Goods in Transit, AFAGIT) has produced a unified carrier-authority data layer accessible to private platforms. (OECD ASEAN Logistics Competition Assessment: https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html; Thailand DLT foreign vehicle permit: https://fvp.dlt.go.th/ManageApp?status=4)

**SEA implication:** This pain point is the primary SEA-specific opportunity. The US market analogy is pre-2005 (before RMIS/SaferWatch were built). A platform that aggregates DLT/Dishub/LPKP data into a normalized risk-score API — even at partial coverage — would be first-mover in a $119B road freight market with zero purpose-built counterparty tooling.

---

### Pain point 1.3

**Description:** Freight brokers and 3PLs onboarding even US-registered carriers face compounding vetting fatigue: a fully compliant carrier qualification requires separate lookups across FMCSA SAFER (authority status), DAT or Carrier411 (CSA score), an insurance COI verification service (RMIS or manual), a freight performance community database (FreightGuard), a fraud-signal network (Highway or TIA Watchdog), and optionally a KYB/beneficial-ownership check (LexisNexis or custom workflow). No single commercial product consolidates all six signal types with a single workflow. The result is that compliance teams either accept an incomplete risk picture (surface-level checks only) or bear a sustained manual-labor cost assembling a complete picture, and in both cases the assembled data is point-in-time and decays within weeks. The gap is structural: no platform has market power over all six signal categories simultaneously, and carriers themselves have no incentive to maintain a portable, verifiable compliance profile.

**Who bears it:** Compliance staff at freight brokers (in-house carrier onboarding and monitoring teams); operations staff at enterprise shippers with direct carrier contracting; 3PL carrier-management functions; cargo insurance underwriters assessing counter-party quality on submitted business.

**Estimated cost:**
- Manual onboarding takes "hours and days" per carrier versus minutes for automated processes (RMIS, 80% faster); a mid-size brokerage onboarding 20–30 carriers per month with a 4–8 hour manual process incurs $35,000–$72,000 annually in pure administrative labor at market-rate staffing costs (22)
- Point-in-time insurance verification compliance failure: platforms using real-time network-based COI verification achieve 90%+ compliance rates versus 60–70% averages on legacy document-based tools — a 20–30 percentage point gap that translates to material uncovered cargo exposure per load (23)
- A mid-size 3PL with $50M in annual freight under management and a 0.3% fraud loss rate (industry estimate) would lose approximately $150,000/year attributable to incomplete vetting; at 10 incidents per year the per-incident cost averages $15,000 — well above the cost of a $500/month vetting subscription (24)
- Preventing a single $40,000 fraudulent load (average per-incident estimate) justifies annual technology spending of $10,000–$20,000 at a 2x–4x minimum ROI (24)

**Willingness to pay:** Demonstrated at $340–$500/month for single-purpose vetting platforms (RMIS Lite, MyCarrierPortal Standard). Implied WTP for an integrated multi-signal platform is higher but not publicly surveyed. [ASSUMED-3]: A fully integrated six-signal carrier compliance dashboard would command $800–$1,500/month for mid-size brokers based on the current $500/month single-tool price plus the estimated administrative labor savings — to validate: pricing sensitivity interview with compliance VPs at 5–10 freight brokers.

**Frequency:**
- 97% of TIA respondents identified truckload freight as the most fraud-prone mode — and all of them operate the same fragmented multi-tool vetting workflow (6)
- RMIS database covers 97–98% of active North American carriers, yet even RMIS does not provide: behavioral fraud signals, beneficial-ownership verification, or pickup-point identity confirmation — demonstrating that the widest-coverage single tool still leaves significant signal categories uncovered (25)
- Real-time COI monitoring compliance is 90%+ via network tools vs. 60–70% via legacy document tools — the majority of the market is still on legacy processes (23)
- Insurance data silos are identified as "a leading cause of breakdowns in broker-carrier relationships in 2025" — a practitioner signal that the integration gap remains unresolved (23)

**Evidenced or assumed:**
(22) FreightWaves RMIS onboarding speed — https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small; DAT carrier onboarding guide — https://www.dat.com/resources/carrier-onboarding-guide
(23) Certificial COI compliance benchmarks — https://www.certificial.com/; OIP Insurtech data silos article — https://www.oipinsurtech.com/data-silos-in-insurance/
(24) Foreigh.com Freight Fraud Deep Dive — ROI calculation and per-incident cost — https://foreigh.com/blog/freight-fraud-deep-dive
(25) FreightWaves RMIS database coverage — https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small
(26) Carrier Assure — how it works — https://www.carrierassure.com/how-it-works
(27) Carrier411 — overview — https://www.carrier411.com/overview.cfm
(28) TIA Watchdog fraud reports — https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(29) Highway — blocked fraud attempts — https://highway.com/posts/2024-freight-fraud-trends
(30) RMIS / Carrier Assure partnership — https://www.carrierassure.com/partnership/rmis

**Root Causes**

- **RC1: Six distinct signal categories are owned by different vendors with no integration incentive** — The six risk signals needed for a complete carrier picture (authority status, safety score, insurance status, performance reputation, behavioral fraud signals, and beneficial ownership) are each maintained by separate specialist vendors: FMCSA (authority), Carrier Assure/Carrier411 (safety), RMIS/SaferWatch (insurance), Carrier411 FreightGuard (reputation), Highway/Overhaul (behavioral), LexisNexis (KYB). Each vendor's data is proprietary and sourced from different underlying feeds, each has separate API integration requirements, and each competes for the same broker budget. There is no platform with first-party access to all six signal types simultaneously, so integration requires either bespoke broker-side aggregation (expensive) or tolerating partial coverage (risky). The structural cause is that the market segmented into specialist verticals before a consolidation-grade platform emerged, and the largest incumbents (Descartes, Truckstop) have incentive to defend segment positions rather than enable open data exchange. (Descartes MyCarrierPortal features: https://www.mycarrierportal.com/features/carrier-identify-vetting/; Highway carrier identity: https://highway.com/; LexisNexis: https://risk.lexisnexis.com/global/en/products/lexisnexis-identity-verification-solution)

- **RC2: FMCSA data — the shared foundation — is a compliance record system, not a fraud signal system** — All commercial vetting products derive their core carrier data from FMCSA SAFER, which records authority status, insurance filings, and crash data. FMCSA does not record: who actually contacts a broker claiming to be a carrier, what email domain is used in rate-confirmation exchanges, behavioral anomalies in load acceptance volume, or SIM-swap events on carrier phone numbers. These non-FMCSA signals are the primary fraud vectors in 2024–2026. The structural cause is that the regulatory data infrastructure was built for safety enforcement, not fraud prevention — and private vendors can only add signal types that they independently source and maintain, at their own cost, meaning signal coverage is uneven and not shared across the industry. (FMCSA SAFER: https://safer.fmcsa.dot.gov/; Trucksafe chameleon carriers: https://trucksafe.com/post/chameleon-carriers-fraud-detection-and-fmcsa-s-evolving-data-strategy)

- **RC3: Insurance verification remains point-in-time and cannot reflect mid-policy changes without a real-time data network** — Carrier insurance COI documents are traditionally provided at onboarding and re-verified at annual renewal; mid-year cancellations, coverage reductions, or insurer insolvencies are not automatically surfaced to the broker. RMIS provides continuous monitoring as a differentiated product, but even RMIS depends on insurers voluntarily feeding cancellation notices into the system — not all carriers or insurers participate. The structural cause is that the insurance data ecosystem (insurers, MGAs, certificate-holders) is built for claims processing rather than real-time compliance broadcasting, and no regulatory mandate requires automated cancellation notice to downstream certificate-holders in a machine-readable format. (RMIS FreightWaves: https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small; Reliance Partners API: https://reliancepartners.com/freight-broker-insurance/api-enabled-solutions/)

- **RC4: Beneficial-ownership verification requires enterprise-grade KYB tools that are priced out of the small-broker segment and are not logistics-workflow-integrated** — LexisNexis Risk Solutions provides the most comprehensive beneficial-ownership and adverse-media database for US carriers, but it is an enterprise license product with no FMCSA integration, no COI verification capability, and no out-of-the-box logistics workflow. The typical freight broker compliance team lacks the technical capacity to build a custom LexisNexis integration, and the license cost is prohibitive for brokers below $50M in annual revenue. The structural cause is that general-purpose KYB tools were built for financial services (banks, insurance companies) and have not been productized for the freight workflow — a workflow-integration gap that no current vendor has closed at a price point accessible to the mid-market. (LexisNexis: https://risk.lexisnexis.com/global/en/products/lexisnexis-identity-verification-solution; FreightValidate AU10TIX integration: https://freightvalidate.com/aboutus)

**SEA implication:** In SEA, the fragmentation problem is worse: where US brokers can at least combine FMCSA data with third-party signals, SEA brokers have no reliable first signal to combine anything with. The integration fatigue that US brokers feel assembling six partial signals is structurally similar to the SEA broker starting position — but without even the FMCSA baseline.

---

### Pain point 1.4

**Description:** Insurance verification for carriers operating in markets where commercial vehicle insurance is underenforced or informal — primarily Southeast Asia, and secondarily Mexico interior and parts of Latin America — creates an uncoverable verification gap: the workflow that defines carrier risk management for US brokers (RMIS COI verification, FMCSA insurance filing check, carrier liability confirmation) has no equivalent data source to check against. A shipper or 3PL using a local sub-carrier in Surabaya, Chiang Mai, or Hanoi cannot verify that the carrier carries valid cargo liability insurance, because no third-party database of carrier insurance filings exists, insurer APIs are not public, and many carriers operate under informal or group-vehicle-insurance policies not tied to an individual entity. The risk is not hypothetical: the TT Club/BSI 2024 cargo theft report identified Indonesia among Asia's most-affected markets, with cargo theft involving insider participation at above-average rates. When a loss occurs on an underinsured carrier, the entire loss falls to the shipper's own cargo insurance — at a higher premium, with deductible exposure, and with claims-processing friction.

**Who bears it:** Enterprise shippers sourcing last-mile and middle-mile carriers in Indonesia, Thailand, Vietnam, and Malaysia; multimodal freight forwarders with sub-carrier networks in ASEAN; cargo insurers underwriting ASEAN freight corridors without reliable counterparty data.

**Estimated cost:**
- No direct cost figure for SEA carrier insurance gap is publicly available — [ASSUMED-4]: The uninsured or underinsured loss exposure in ASEAN road freight is estimated to be material given the market's insurance penetration rates. ASEAN non-life insurance penetration averages 1–2% of GDP versus 3–4% in developed markets — suggesting structural under-insurance. To validate: interview cargo insurance underwriters at Marsh, Aon, or regional MGA covering ASEAN logistics.
- Cargo theft with insider involvement in Indonesia/India/Bangladesh: 26% of incidents — when carriers are underinsured, this loss fully surfaces to the cargo owner (16)
- US cargo insurance claims average $40,000–$202,364 per incident (2024); ASEAN incident costs per event are not publicly reported but ASEAN freight value and route densities suggest comparable per-shipment exposure for electronics, pharmaceutical, and consumer goods cargo (4)
- Global cargo theft losses: $80B+ annually per industry estimates, with Asia Pacific contributing a growing share (8)

**Willingness to pay:** Not sourced. [ASSUMED-5]: Cargo insurers underwriting ASEAN freight would pay $50–$200 per carrier verification to reduce adverse selection in their book of business — to validate: interview cargo insurance underwriters at Lloyd's syndicates covering ASEAN logistics.

**Frequency:**
- BSI/TT Club 2024 identified Indonesia, India, China, Vietnam, and Bangladesh as Asia's most cargo-theft-affected countries (16)
- World Bank LPI 2023: Indonesia ranked 61st; Vietnam 50th — logistics quality scores that correlate with inadequate enforcement infrastructure, including insurance compliance (14)
- No SEA-specific carrier insurance verification platform has been identified in the 20-vendor scan — the gap is 100% of the market (17)

**Evidenced or assumed:**
(4) Verisk CargoNet 2024 — https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/
(8) Overhaul global cargo theft figure — https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(14) World Bank LPI 2023 — https://lpi.worldbank.org/en/home
(16) BSI/TT Club 2024 Cargo Theft Report — https://www.ttclub.com/news-and-resources/publications/article/bsi-consulting-and-tt-club-2024-cargo-theft-report/
(17) Stage 1 value-chain map SEA presence section
(31) OECD ASEAN logistics — regulatory fragmentation and insurance enforcement — https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html
(32) Reliance Partners (US insurance API for context) — https://reliancepartners.com/freight-broker-insurance/api-enabled-solutions/

**Root Causes**

- **RC1: Commercial vehicle insurance in SEA is not universally tied to a carrier entity record accessible to third parties** — In the US, FMCSA insurance filing requirements mandate that carriers file insurance evidence with FMCSA, creating a government-backed insurance registry that RMIS and SaferWatch can monitor against. No ASEAN country has an equivalent insurance registry tied to commercial vehicle operator records and accessible via API. Thailand's DLT requires commercial vehicle insurance but does not publish a real-time active-policy database; Indonesia's OJK regulates insurers but carrier policy data is not published at entity level; Malaysia's LPKP licensing does not include insurance status in any publicly accessible data feed. The structural cause is that ASEAN insurance regulation was designed for consumer protection, not for B2B counterparty verification — and no commercial incentive has emerged to build the connecting infrastructure. (Thailand DLT: https://infodlt.dlt.go.th/en; OECD ASEAN logistics: https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html; [ASSUMED-6]: Specific OJK / Bank Negara carrier insurance registry absence — to validate: confirm with insurance regulator in Indonesia (OJK) and Malaysia (Bank Negara) whether any carrier-level insurance status API exists)

- **RC2: Informal insurance structures (group policies, vehicle-fleet blanket policies not mapped to individual operator entities) are invisible to carrier-level verification workflows** — Many owner-operators in SEA are covered under their employer's fleet policy, a logistics association group policy, or an informal self-insurance arrangement. These structures mean the carrier entity does not hold an individually identifiable, entity-linked insurance policy that can be matched to an LPKP or Dishub registration. Even if a carrier presents a COI, the document may reflect coverage that does not extend to the specific load or route being executed. The structural cause is that SEA insurance market design evolved around fleet ownership (insuring vehicles, not operators), which does not align with the verification workflow that checks whether the entity booking a load is covered for that load. ([ASSUMED-7]: Confirmation that informal group insurance is prevalent in SEA commercial trucking — to validate: interview insurance broker at Allianz SE Asia or Bangkok Insurance covering logistics clients)

- **RC3: Cargo insurers in SEA price the verification gap into premiums rather than investing in data infrastructure** — In the absence of carrier insurance status data, cargo insurers underwriting ASEAN freight corridors either charge blanket higher premiums (reflecting average unknown counterparty quality), apply sub-limit exclusions for certain routes or carrier types, or decline to underwrite certain ASEAN lanes entirely. This rational insurer response does not solve the underlying information problem — it monetizes the information asymmetry. Because each insurer builds its own risk model from proprietary claims experience rather than shared carrier data, no insurance market participant has individual incentive to invest in a shared carrier data infrastructure that would benefit competitors equally. The structural cause is a classic public-goods problem: carrier risk data for SEA is underprovided because the market cannot exclude competitors from the benefit of better data, so no single actor invests to create it. (BSI/TT Club 2024 Cargo Theft Report: https://www.ttclub.com/news-and-resources/publications/article/bsi-consulting-and-tt-club-2024-cargo-theft-report/; [ASSUMED-8]: Insurer premium-loading as response to data gap — to validate: claims ratio analysis from cargo insurer for ASEAN vs. North American corridors)

**SEA implication:** This pain point is specific to SEA and other non-insurance-mature markets. It cannot be solved by transplanting US tools (the data source doesn't exist); it requires either a new data-collection layer (carrier self-certification plus incentive mechanism) or an insurer-backed data consortium. This is a product-market gap that cannot be served by the existing 20-vendor landscape.

---

### New pain points (not in original hypothesis)

**Pain point 1.5 — The beneficial-ownership cliff at the small-carrier tier (partly surfaced in hypotheses, but sharper than hypothesized)**

**Description:** Cargo theft and freight fraud increasingly involve criminal enterprise entities — organized rings that control multiple shell carrier companies, rotate them through operating authority cycles, and use them to execute strategic theft. Current vetting platforms verify that a carrier entity is real and authorized, but do not verify who ultimately controls that entity. A carrier operated by a beneficial owner who also controls three previously suspended carriers, or who appears in adverse-media databases under a different entity name, passes FMCSA-standard vetting clean. FinCEN's Corporate Transparency Act (CTA) beneficial-ownership information (BOI) reporting requirement — which would have forced owner-operators and small fleets to report beneficial owners to FinCEN — was effectively suspended in March 2025 when the Treasury Department announced it would not enforce the rule. This regulatory reversal has structurally widened the beneficial-ownership opacity gap at precisely the time when organized crime infiltration of the carrier base is accelerating.

**Who bears it:** Enterprise shippers and 3PLs who sustain large single-incident losses ($200,000+) from organized theft rings operating through shell carrier structures; cargo insurance underwriters attempting to model organized-crime exposure in their book.

**Estimated cost:**
- 22% of TIA respondents lost more than $200,000 in a single six-month period — the loss magnitude that typically implies organized, multi-load theft rather than opportunistic fraud (6)
- Underground market prices clean aged MC numbers at $20,000+ per authority — a direct cost signal for how much organized crime values the ability to cycle through legitimate-looking carrier identities (33)

**Willingness to pay:** Not sourced.

**Frequency:**
- Highway Q1 2026: change-of-ownership fraud surged 169.6% year-over-year; 399 ownership changes flagged as potentially fraudulent in a single quarter (11)
- Treasury withdrawal of CTA enforcement announced March 2025 — https://icij.org/inside-icij/2025/03/treasury-department-wont-enforce-beneficial-ownership-rule-under-the-corporate-transparency-act/

**Evidenced or assumed:**
(6) TIA State of Fraud 2025 — https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(11) Highway Q1 2026 — https://www.globenewswire.com/news-release/2026/05/05/3288141/0/en/Freight-Fraud-Hits-Record-High-in-Q1-2026-Half-of-All-Incidents-Tied-to-Carriers-With-Clean-Records.html
(33) FreightWaves underground MC number market — https://www.freightwaves.com/news/catch-me-if-you-can-the-underground-market-for-mc-numbers-regulators-are-trying-to-stop
(34) Treasury CTA non-enforcement — https://icij.org/inside-icij/2025/03/treasury-department-wont-enforce-beneficial-ownership-rule-under-the-corporate-transparency-act/
(35) Fleet Owner — CTA and small carrier BOI — https://www.fleetowner.com/news/article/55260953/what-happened-with-small-carriers-beneficial-ownership-information-under-the-corporate-transparency-act

**Root Causes**

- **RC1: FMCSA vetting verifies entity existence, not beneficial-owner identity** — FMCSA registration requires a legal entity name, EIN, and operating address, but does not require disclosure of the individuals who beneficially own or control the entity. A shell company with a nominee director and undisclosed principal passes FMCSA authority checks identically to a legitimate family-owned trucking company. The CTA would have partially closed this gap by creating a FinCEN BOI registry that commercial platforms could potentially query, but the Treasury's March 2025 non-enforcement decision has left the BOI database unpopulated for the small-carrier segment most relevant to freight fraud. (FMCSA fraud alerts: https://www.fmcsa.dot.gov/registration/fraud-alerts; CTA non-enforcement: https://icij.org/inside-icij/2025/03/treasury-department-wont-enforce-beneficial-ownership-rule-under-the-corporate-transparency-act/)

- **RC2: Commercial KYB tools are not integrated into freight vetting workflows at accessible price points** — LexisNexis Risk Solutions provides beneficial-ownership and adverse-media data that could surface shell-company patterns, but it is an enterprise license product with no FMCSA integration and no freight-specific workflow. The freight broker compliance team that needs this capability most — mid-tier brokers at $10M–$100M revenue — lacks the technical capacity and budget to integrate a custom LexisNexis workflow. The pricing gap means beneficial-ownership checks are performed only by the largest brokers (top 50–100 US brokers with dedicated legal/compliance teams) and are absent for the vast majority of the market. (LexisNexis: https://risk.lexisnexis.com/global/en/products/lexisnexis-identity-verification-solution; FreightValidate: https://freightvalidate.com/)

- **RC3: Carrier ownership change is an event not monitored by any standard vetting platform** — When a carrier is sold, its DOT number transfers with its compliance history, and the new owner inherits the safety score of the prior entity — a feature the organized-crime market exploits by purchasing "clean" carrier authorities. FMCSA does not send real-time notifications to brokers who have booked a carrier when that carrier's ownership changes; no standard vetting platform monitors ownership-change events as a fraud signal except Highway (which flagged 399 suspicious ownership changes in Q1 2026 alone). The structural cause is that carrier ownership is treated as a corporate registry event (compliance relevant) rather than an identity-state change (fraud relevant), and the vetting industry has built its architecture around the compliance interpretation. (Highway Q1 2026: https://www.globenewswire.com/news-release/2026/05/05/3288141/0/en/Freight-Fraud-Hits-Record-High-in-Q1-2026-Half-of-All-Incidents-Tied-to-Carriers-With-Clean-Records.html; Trucksafe chameleon carriers: https://trucksafe.com/post/chameleon-carriers-fraud-detection-and-fmcsa-s-evolving-data-strategy)

**SEA implication:** Beneficial-ownership opacity is more severe in SEA, where business registry quality is lower and nominee-director structures are common in Indonesia, Thailand, and Malaysia. No equivalent of LexisNexis's SEA beneficial-ownership data layer exists at freight-workflow price points. This gap mirrors the US problem but is harder to solve given weaker underlying registry infrastructure.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Enterprise shippers operating in SEA would likely pay $200–$500/month for carrier vetting tooling comparable to RMIS Lite pricing — to validate: survey procurement leads at top-10 MNC manufacturers operating in Indonesia and Thailand.

[ASSUMED-2]: RESOLVED via deep-research PP-1.2-cost-3. Original $25–$45/hr estimate was overstated; refined to $11–$23/hr Singapore and $4–$7/hr Malaysia for coordinator-grade staff, anchored to talent.com, JobStreet, and Malaysia DOSM. Remaining gap: Indonesia, Thailand, Vietnam coordinator wages — to validate: BPS Indonesia, NSO Thailand, GSO Vietnam labor force surveys.

[ASSUMED-3]: A fully integrated six-signal carrier compliance dashboard would command $800–$1,500/month for mid-size brokers — to validate: pricing sensitivity interview with compliance VPs at 5–10 freight brokers.

[ASSUMED-4]: ASEAN road freight insurance gap creates material uninsured loss exposure — to validate: interview cargo insurance underwriters at Marsh, Aon, or regional MGA covering ASEAN logistics.

[ASSUMED-5]: Cargo insurers underwriting ASEAN freight would pay $50–$200 per carrier verification — to validate: interview cargo insurance underwriters at Lloyd's syndicates covering ASEAN logistics.

[ASSUMED-6]: OJK (Indonesia) and Bank Negara Malaysia do not publish carrier-level insurance status APIs — to validate: confirm with insurance regulators directly.

[ASSUMED-7]: Informal group insurance is prevalent in SEA commercial trucking owner-operator segment — to validate: interview insurance broker at Allianz SE Asia or Bangkok Insurance covering logistics clients.

[ASSUMED-8]: SEA cargo insurers price the data gap into premiums rather than investing in data infrastructure — to validate: claims ratio analysis from cargo insurer for ASEAN vs. North American corridors.

---

## Summary of Sources Referenced in This Stage

| # | URL | Source type |
|---|-----|-------------|
| 1 | https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention | Trade press |
| 2 | https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/ | Industry report |
| 3 | https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/ | Investor analysis |
| 4 | https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/ | Industry report |
| 5 | https://www.cargonet.com/news-and-events/cargonet-in-the-media/2025-theft-trends/ | Industry report |
| 6 | https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/ | Industry association |
| 7 | https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/ | Investor analysis |
| 8 | https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention | Trade press |
| 9 | https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/ | Industry association |
| 10 | https://highway.com/posts/2024-freight-fraud-trends | Vendor data |
| 11 | https://www.globenewswire.com/news-release/2026/05/05/3288141/0/en/Freight-Fraud-Hits-Record-High-in-Q1-2026-Half-of-All-Incidents-Tied-to-Carriers-With-Clean-Records.html | Vendor press release |
| 12 | https://www.ttnews.com/articles/double-brokering-increases | Trade press |
| 13 | https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market | Market research |
| 14 | https://lpi.worldbank.org/en/home | World Bank |
| 15 | Derived estimate — see ASSUMED-2 | — |
| 16 | https://www.ttclub.com/news-and-resources/publications/article/bsi-consulting-and-tt-club-2024-cargo-theft-report/ | Industry report |
| 17 | Stage 1 value-chain map, SEA presence section | Prior research |
| 18 | https://infodlt.dlt.go.th/en | Government |
| 19 | https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html | Multilateral |
| 20 | https://kemenhub.go.id/ | Government |
| 21 | Stage 1 value-chain map ASSUMED-5 | Prior research |
| 22 | https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small | Trade press |
| 23 | https://www.oipinsurtech.com/data-silos-in-insurance/ | Trade press |
| 24 | https://foreigh.com/blog/freight-fraud-deep-dive | Industry analysis |
| 25 | https://www.freightwaves.com/news/rmis-automates-carrier-compliance-for-brokers-big-and-small | Trade press |
| 26 | https://www.carrierassure.com/how-it-works | Vendor |
| 27 | https://www.carrier411.com/overview.cfm | Vendor |
| 28 | https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/ | Industry association |
| 29 | https://highway.com/posts/2024-freight-fraud-trends | Vendor data |
| 30 | https://www.carrierassure.com/partnership/rmis | Vendor |
| 31 | https://www.oecd.org/en/publications/oecd-competition-assessment-reviews-logistics-sector-in-asean_2dcba34b-en.html | Multilateral |
| 32 | https://reliancepartners.com/freight-broker-insurance/api-enabled-solutions/ | Vendor |
| 33 | https://www.freightwaves.com/news/catch-me-if-you-can-the-underground-market-for-mc-numbers-regulators-are-trying-to-stop | Trade press |
| 34 | https://icij.org/inside-icij/2025/03/treasury-department-wont-enforce-beneficial-ownership-rule-under-the-corporate-transparency-act/ | Journalism |
| 35 | https://www.fleetowner.com/news/article/55260953/what-happened-with-small-carriers-beneficial-ownership-information-under-the-corporate-transparency-act | Trade press |

**Unique source domains used:** verisk.com / cargonet.com, tianet.org, freightwaves.com, highway.com, globenewswire.com, ftvcapital.com, ttclub.com / bsigroup.com, mordorintelligence.com, lpi.worldbank.org, oecd.org, freightcaviar.com / ttnews.com, oipinsurtech.com, foreigh.com, infodlt.dlt.go.th, kemenhub.go.id, icij.org, fleetowner.com, trucksafe.com, carrier-ok.com, putterman-law.com, carrierassure.com, dat.com — **22+ unique domains**

