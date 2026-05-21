# Stage 1: Vendor Procurement & Counterparty Risk Solutions
## Worldwide Solution-Landscape Scan — Logistics Risk Management
*Research date: 2026-05-17 | Pass 1 draft (improved source quality run)*

---

## Stage 1: Vendor Procurement & Counterparty Risk

### Description

Vendor procurement and counterparty risk solutions are software platforms, data feeds, managed services, and hybrid tools that shippers (cargo owners), 3PLs, and freight brokers use to answer one question before a load moves: *Is this carrier who they say they are, are they legally authorized to haul freight, and are they safe to use?* The workflow begins at first carrier contact (pre-booking identity check), extends through onboarding (document collection, insurance verification, authority check), and continues as a persistent monitoring obligation across the carrier relationship lifecycle (insurance renewal, authority lapses, safety-score deterioration, double-brokering behavioral signals). In North America the solutions ecosystem is the most mature in the world; in Europe a parallel but less deep market exists; in India digitized freight platforms are building informal equivalents; in Southeast Asia the category is structurally absent.

### Activities

1. **Carrier identity establishment** — Confirming a carrier's registered MC/DOT number, state business registration, and legal operating status against authoritative government records (FMCSA SAFER, Secretary of State filings) and proprietary identity intelligence, to distinguish a legitimate carrier from an impersonator or shell entity. In the US, providers include Descartes MyCarrierPortal (Intellivite validation), Highway (Carrier Identity Engine), RMIS, and FreightValidate. In Europe, national road transport authority registers (Germany KBA, France DGITM, Netherlands RDW) are checked by Transporeon's carrier qualification layer. In India, the Ministry of Road Transport (MoRTH) VAHAN database underpins BlackBuck's carrier onboarding.

2. **Document collection and structured onboarding packet completion** — Digitally collecting and verifying the compliance packet every carrier must submit before transacting: W-9/W-8 tax forms, certificates of insurance (COI) naming the broker as certificate holder, signed broker-carrier agreements, FMCSA operating authority copy, and equipment/trailer certifications. Leading providers — Descartes MyCarrierPortal, RMIS by Truckstop, DAT CarrierWatch, and VETCarriers — have pre-loaded COI databases covering 97%+ of active US carriers, allowing packet completion in under five minutes for known carriers.

3. **Insurance status verification and continuous monitoring** — Confirming that cargo, liability, and workers' compensation coverage is active, meets minimum statutory limits ($750,000 liability per 49 CFR 387.9), and triggers automated alerts on renewals, cancellations, and mid-term coverage lapses. RMIS by Truckstop operates the industry's largest insurance certificate database and reportedly registers approximately one new carrier every 12 seconds. DAT CarrierWatch performs daily automated checks against FMCSA financial-responsibility filings; SaferWatch provides real-time alerts on FMCSA-filed insurance changes.

4. **Safety score assessment and compliance monitoring** — Pulling FMCSA CSA Behavioral Analysis and Safety Improvement Category (BASIC) percentiles, roadside inspection records, out-of-service (OOS) rates, and crash data; converting them into simplified A–F or Acceptable/Warning/Alert risk ratings; and monitoring daily for deterioration. Carrier Assure analyzes 2,000,000+ DOT numbers per day. Carrier411 provides community-sourced FreightGuard performance reports alongside BASIC monitoring for 4,500+ broker subscribers.

5. **Fraud signal detection and double-brokering flags** — Identifying behavioral anomalies at load-booking time that indicate impersonation, identity fraud, or re-brokering: carrier accepting loads inconsistent with observed power-unit count; suspicious email domain substitutions in rate confirmations; GPS location spoofing during transit; FMCSA contact-information hijacking; unusual change-of-ownership patterns. Highway's Load Lock product has protected 5M+ loads with zero documented strategic cargo theft since launch and blocked 914,719 fraud attempts in calendar year 2024. Descartes MacroPoint FraudGuard 2.0 analyzes billions of location data points for 16 real-time in-transit risk signal types. Overhaul FraudWatch adds two-step pickup-point verification for enterprise shippers of high-value goods.

### Revenue Model

Annual SaaS subscription tiered by broker annual load volume (entry: $99–$500/month; enterprise: $5,000–$12,000+/year), plus per-carrier onboarding fees for new carrier additions outside the pre-loaded database; fraud-detection point tools add per-load fees or volume-based tiers on top of base monitoring subscriptions.

### Cost Drivers

Government data ingestion and refresh costs (FMCSA SAFER batch pull fees, Secretary of State API licensing), proprietary insurance certificate database maintenance (staff to process COI inbound volume, claims verification), machine-learning model training and real-time scoring infrastructure, carrier database coverage expansion (sales and data-licensing cost to build international carrier records beyond FMCSA), and customer-success headcount for mid-market SaaS deployment.

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global carrier onboarding and compliance platform market (TAM estimate, primary source: growth market research firm, not government statistics) | $1.62B (2024) → $4.38B (2033), 12.8% CAGR | Low — single-category market research report; no government or multilateral primary source available; multiple research firms (Mordor, DataIntelo, GrowthMarketReports) cite similar figures drawing from same base methodology, constituting one triangulation point | (1) |
| Descartes carrier fraud prevention business as % of total revenue (Descartes Q2 FY2026 earnings call, September 2025) | <1% of $651M FY2025 total revenue = <$6.5M ARR for fraud prevention module specifically | High — audited public-company earnings disclosure; Descartes NASDAQ:DSGX | (2), (3) |
| Descartes Systems Group total annual revenue FY2025 (ended Jan 31 2025) | $651.0M (+14% YoY from $572.9M); services revenue $590.2M (91% of total); MCP acquisition contributed ~$36.4M incremental from 2025 acquisitions collectively | High — Descartes investor relations press release citing audited results | (3) |
| US + Canada cargo theft losses (physical cargo), 2025 full year | $725M estimated (+60% from 2024's $454.9M); 2,646 confirmed theft incidents (+18% YoY); avg value per theft $273,990 (+36% YoY) | High — Verisk CargoNet annual analysis, industry-standard primary source, methodology disclosed (delayed-reporting adjustment applied) | (4) |
| US cargo theft + supply-chain crime losses (auditable anchor, includes strategic theft / carrier-identity fraud diversions) | $454.9M (2024 actual); $725M (2025 projection, +60% YoY); 2,646 confirmed theft incidents (+18%); avg value $273,990 (+36%) | High — Verisk CargoNet annual analysis; methodology disclosed; cross-validated by NICB and FBI IC3 | (4) |
| US freight brokerage fraud and double-brokering financial losses (payment fraud only, distinct from physical cargo) | $500M–$800M+ range cited by TIA (2023 Congressional testimony recycled through April 2025) | Low — TIA leadership advocacy assertion; methodology not disclosed in any TIA publication; TIA State of Fraud April 2025 (N=59 members) does NOT contain the $800M figure; figure originated in 2023 Anne Reinke Congressional testimony per Trucking Dive | (5), (6), (7) |
| ASEAN logistics share of GDP / employment (auditable anchor) | ~5% of ASEAN GDP; ~17M jobs (2019–2021 baseline) | High — OECD Competition Assessment Reviews: Logistics Sector in ASEAN (2021), foreword; OECD-originated, not a Mordor citation | (8a) |
| ASEAN road freight transport market (commercial-aggregator estimate, use with caution) | $119.43B (2025) → $160.11B (2030), 6.04% CAGR | Low — Mordor Intelligence; chain-of-citations rule: OECD 2021 logistics-sector report cites Mordor as source for all USD market revenue figures, so multiple intermediaries trace to one aggregator; no independent ADB, World Bank, ASEAN Secretariat, ITF/OECD or BPS-originated USD figure exists | (8) |
| ASEAN structural share — road freight / total freight transport revenue (auditable ratio) | Road freight ≈ 64.6% of ASEAN freight transport revenue (OECD 2021); freight transport ≈ 72.6% of logistics total | High — OECD 2021 report structural ratio | (8a) |
| ASEAN freight and logistics market (all modes) | $288.2B (2025) → $390B (2030), 6.23% CAGR | Low — private research firm; cross-validated by multiple reports at similar scale, but same underlying data sourcing | (8) |
| US 3PL market net revenues (Armstrong & Associates) | $131.5B net revenues (2024 actual); $138B net revenues (2025 projection); gross revenues $323.4B (projection) | High for 2024 actuals; Medium for 2025 projection — Armstrong & Associates is the industry-standard primary source for 3PL market sizing | (9), (24) |

**Data gap — SEA-specific market size for carrier vetting tools:** No government statistical agency (BPS Indonesia, DOSM Malaysia, NSO Thailand, SingStat), multilateral body (ADB, World Bank, ASEAN Secretariat), or named consultancy-authored report has published a country-specific market size for carrier vetting and counterparty risk tooling in Southeast Asia as of research date. The prior-run proxy calculation ($4.4M–$8.8M, based on SEA share of road freight × assumed 5–10% of North America digitization rate) remains an assumption, not a primary source.

**Data gap — carrier fraud prevention vendor revenue:** Neither Highway (private, FTV Capital + Lead Edge Capital backed), RMIS by Truckstop (private), Carrier411 (private), nor Carrier Assure (private) disclose revenue figures. The Descartes earnings call disclosure that carrier fraud prevention is <1% of total revenue provides the only audited data point on segment scale for a public company in this category.

### Current Players by Region

**North America:**
- **Descartes MyCarrierPortal (NASDAQ: DSGX)** — Market-leading carrier onboarding and compliance platform; acquired September 2024 for ~$22.5M (net of cash) with up to $6M performance earnout; serves "hundreds of thousands of carriers and thousands of brokers and shippers"; integrates with MacroPoint FraudGuard 2.0 for combined onboarding + in-transit fraud detection. SEA presence: No.
- **RMIS by Truckstop** — Founded 1996; industry's largest insurance certificate database; registers ~1 new carrier every 12 seconds; major clients include Coyote Logistics, Echo Global, GlobalTranz, Penske; acquired by Truckstop.com March 2021. SEA presence: No.
- **Highway** — Founded 2022; 1,050+ broker clients including 70 of the top 100 US freight brokers; blocked 914,719 fraud attempts in 2024; FTV Capital + Lead Edge Capital growth equity investment August 2025; Gebrüder Weiss deployed Highway for North American operations in 2023–2024. SEA presence: No.
- **Carrier411** — Founded 2005; 4,500+ broker subscribers plus 600 large shippers; FreightGuard community performance reports; FMCSA subscriber including the regulator itself as a data user. SEA presence: No.
- **Carrier Assure** — Predictive A–F score from 2,000,000+ DOT numbers analyzed daily; $149/month entry pricing; partnership with Descartes MyCarrierPortal for integrated vetting. SEA presence: No.
- **DAT CarrierWatch (Roper Technologies, NASDAQ: ROP)** — 500,000+ carrier database; daily automated alerts; part of DAT Freight & Analytics; Roper's Network Software segment (which includes DAT) posted $1,475.6M net revenues in FY2024. SEA presence: No.
- **TriumphPay (Triumph Financial, NASDAQ: TFIN)** — Carrier payments network processing $28.4B annualized payment volume (Q3 2024); exceeded $100B in cumulative payments since inception; covers 50%+ of US brokered freight transactions; carrier identity validation embedded in payment layer. SEA presence: No.

**Europe:**
- **Transporeon (Trimble, NASDAQ: TRMB)** — Acquired by Trimble for €1.88B, completed April 2023; 210,000+ carriers and 1,500+ shippers in EMEA network; carrier qualification module checks documents, licenses, and EU transport authority approvals; 120,000 transports per day; AI natural-language carrier search launched 2024. SEA presence: No.
- **Trans.eu** — European freight exchange platform operational since 2004; 120,000+ active daily users; 25,000 verified carriers; dominant in Eastern European corridors (Poland, Czech Republic, Romania); automated compliance scenario checks reduce manual work by up to 50%. SEA presence: No.
- **TIMOCOM** — German-language freight exchange; 55,000+ verified companies; ~1M transport offers per day; dominant for Germany, Austria, Switzerland corridors. SEA presence: No.
- **Sayari** — Commercial risk intelligence platform (US-headquartered, Washington D.C.); beneficial ownership data from 250+ jurisdictions; used by large logistics operators and customs compliance teams for sub-carrier KYB screening; Sayari Map product for supply chain risk mapping and sub-tier supplier screening. SEA presence: Resellers only (global data coverage including SEA jurisdictions, but not deployed in freight-specific vetting workflow in the region).

**India:**
- **BlackBuck (Zinka Logistics Solutions, NSE/BSE listed November 2024)** — India's largest digital freight platform; IPO raised ₹1,114.72 crore at ₹273/share (November 2024); 963,345 truck operators transacted through the platform in FY2024 (27.5% of all Indian truck operators); payment GTV ₹173,961.93M in FY2024; 700K truckers and 1.2M trucks on platform; onboarding covers MoRTH VAHAN database and Aadhaar-based driver identity; 32.9% market share in truck tolling. SEA presence: No.
- **Kargo Technologies (Indonesia)** — B2B trucking marketplace for Indonesia; total funding $64.2M; acquired Malaysian counterpart TheLorry in an all-stock deal (2024); covers Indonesian archipelago with real-time tracking. Note: Kargo is primarily an Indonesian freight marketplace, not a purpose-built carrier vetting tool — carrier qualification is embedded in marketplace onboarding. SEA presence: Yes (Indonesia + Malaysia via TheLorry acquisition). [ASSUMED-6]
- **Logisly (Indonesia)** — Digital 3PL platform; verifies carriers before platform admission; 100,000+ truck network; B2B logistics covering shippers + verified carrier network. Carrier verification process is platform-proprietary; no equivalent of FMCSA data feed underpins it. SEA presence: Yes (Indonesia).

**Southeast Asia — purpose-built carrier vetting:**
**Data gap** — No SEA-headquartered platform equivalent to Highway, RMIS, or Descartes MyCarrierPortal has been identified in this research or the prior run. The closest approximations are:
- **Haulio (Singapore)** — Digital container haulage marketplace; 800+ trucking and haulage companies; 10,000 first-mile trucks; 1.8M TEUs annually; present in Singapore, Thailand, and Indonesia; $9.9M total raised (Series A led by Heliconia/Temasek-backed fund, PSA unboXed, ComfortDelGro Ventures). Carrier verification detail: no documented formal vetting workflow (no license, insurance, or operator-legitimacy checking found in research); carrier admission appears relationship-based. SEA presence: Yes (Singapore HQ + Thailand + Indonesia).
- **Cargobase (Singapore)** — Cloud TMS for enterprise shippers; offices in Singapore, Malaysia, Netherlands, Mexico, USA; carrier onboarding workflow embedded in freight procurement module; SOC 2 certified; serves listed companies in 50+ countries. Not a purpose-built carrier risk platform; no documented fraud detection, behavioral scoring, or local-authority database integration. SEA presence: Yes (HQ Singapore + KL office).

**Identity verification layer (deployable in SEA):**
- **AU10TIX (Israel)** — AI-powered government document verification from 190+ countries in <4 seconds; Singapore office; verified 190+ country document types including Indonesia KTP, Thailand national ID, Malaysia MyKad; deployed in freight via FreightValidate integration (US-facing). Not a logistics-specific carrier vetting product in SEA. SEA presence: Yes (Singapore office; global document verification capability).
- **LexisNexis Risk Solutions (RELX Group)** — B2B identity and KYB data layer; global coverage; used by large freight brokers in custom compliance workflows for sub-carrier beneficial-ownership screening. Not deployed in logistics-specific workflow in SEA. SEA presence: Resellers only.

### Preliminary Pain Points (this stage)

1. **No FMCSA equivalent exists in any SEA country.** The entire North American carrier vetting ecosystem is built on FMCSA SAFER — a free, machine-readable, continuously updated carrier authority, insurance, and safety database. Indonesia's Dishub/Ditjen Hubdat, Thailand's DLT, Malaysia's LPKP/JPJ, and Singapore's LTA all maintain carrier registration records, but none expose them via public API for commercial risk-tool integration. Singapore's LTA DataMall API (publicly documented) covers traffic and transit datasets, not freight carrier operating licenses. Without a central government data feed, every carrier check in SEA requires manual document retrieval or bilateral data-sharing agreements. (10, 11)

2. **Insurance verification has no data substrate in SEA.** RMIS's core value proposition — checking that a carrier's insurance is active against a regulator-maintained filing — requires that commercial vehicle insurance be filed with and tracked by a central authority. In Indonesia, Thailand, and Malaysia, mandatory vehicle insurance (CTPL/third-party liability) exists, but commercial cargo liability and freight liability insurance are not centrally filed or machine-readable. A carrier can operate in SEA with lapsed or inadequate cargo insurance with no automated detection possible. (10)

3. **FMCSA MC/DOT numbers are structurally stale by 3–6+ months.** Even in the mature US market, FMCSA records carry update latency. Contact information (email, phone, address) for registered carriers is often months out of date — the primary attack vector for identity-hijacking fraud, where criminals use a legitimate carrier's DOT credentials while substituting their own contact details. FMCSA reported over 80,000 fraud complaints in its database with no penalties assessed as of April 2025. (5, 6)

4. **Small-transporter beneficial ownership is unverified at every tier in SEA.** Owner-operators and micro-fleets (1–5 trucks) constitute the dominant carrier segment in Indonesia (4M+ registered commercial vehicles, predominantly owner-operated), Thailand, and Malaysia. No commercial tool — US-market or international — offers a scalable KYB workflow for the owner-operator tier in markets without central business registries, credit history, or tax-ID–linked corporate records. Beneficial ownership verification tools (Sayari, LexisNexis Risk Solutions) require corporate registry data that does not exist for unincorporated truck operators. (12, 13)

5. **Double-brokering behavioral signals require a transaction network to function.** Highway's fraud detection and TriumphPay's capacity-anomaly flag both work because they sit inside a network processing hundreds of thousands of US brokered transactions per week. The behavioral baseline — detecting when a carrier accepts more loads than its power-unit count can physically support — requires dense transaction data. In SEA, no equivalent transaction network exists across digital freight platforms, making behavioral fraud detection computationally infeasible with current data density. (5, 14)

6. **Per-load identity re-verification is absent everywhere.** Virtually all carrier vetting platforms — in the US and globally — verify carriers at onboarding and then monitor for compliance lapses. Highway's Load Lock is the only documented per-load identity re-verification product, and it is US-focused. Once a carrier's identity is verified at onboarding, a subsequent account takeover (SIM swap, email domain compromise, or driver substitution after pickup) is undetectable by onboarding-stage tools. The TT Club/BSI 2024 report found that strategic theft using impersonation and document forgery is the fastest-growing theft modality globally. (7, 15)

7. **Pricing floors exclude the SMB freight broker segment that generates the most fraud exposure.** TIA's April 2025 survey found 70%+ of TIA membership comprises small businesses generating $1M–$5M annually — exactly the tier least likely to afford RMIS ($340/month) or MyCarrierPortal ($500/month). The fraud exposure is highest at this tier (less sophisticated buyers, less leverage over carriers), but the most capable tools are priced for enterprise. Even Carrier Assure's $149/month requires a $1,800/year commitment for a small broker earning $50,000–$100,000 gross margin. (5)

8. **No SEA-native carrier scoring or fraud-signal product exists.** Logisly, Haulio, and Kargo all conduct informal carrier vetting as part of marketplace admission, but none publish carrier risk scores, monitor ongoing compliance against a regulatory database, or offer fraud-signal APIs to external shippers or 3PLs. A shipper in Indonesia using Logisly's carrier network has no way to independently verify the compliance status of the sub-carriers Logisly deploys. (16, 17)

9. **Indonesia's KIR vehicle roadworthiness data is fragmented at district level.** KIR (vehicle periodic inspection) certificates are issued by 500+ Dishub district offices. Electronic KIR (BLU-e smart card + barcode sticker) has been introduced but is not centrally aggregated into a queryable national database. A carrier presenting a valid KIR certificate cannot be verified in real-time against any national registry; physical document inspection remains the only check. (18)

10. **Carrier entity fraud is migrating internationally.** Highway reported that in 2024, its platform detected fraud attempts from carrier users in 75 countries. The impersonation and double-brokering techniques developed in the US (MC hijacking, email domain spoofing, fictitious carrier registration) are now appearing in cross-border APAC freight corridors. No APAC-native tool exists to detect these patterns. (14)

### Sources for this stage

(1) GrowthMarketReports, "Carrier Onboarding and Compliance Platform Market Research Report 2033." https://growthmarketreports.com/report/carrier-onboarding-and-compliance-platform-market

(2) Descartes Systems Group (NASDAQ: DSGX), Q2 FY2026 Earnings Call Transcript, November 27, 2025 — carrier fraud prevention described as "<1% of total business but growing nicely." https://www.fool.com/earnings/call-transcripts/2025/11/27/descartes-dsgx-q2-2026-earnings-call-transcript/

(3) Descartes Systems Group, "Descartes Announces Fiscal 2025 Fourth Quarter and Annual Financial Results," March 5, 2025 (audited). https://www.descartes.com/resources/news/descartes-announces-fiscal-2025-fourth-quarter-and-annual-financial-results

(4) Verisk CargoNet, "Cargo Theft Losses Surge to Estimated $725 Million in 2025, Verisk CargoNet Analysis Reveals," January 2026. https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/ and https://www.cargonet.com/news-and-events/cargonet-in-the-media/2025-theft-trends/

(5) Transportation Intermediaries Association (TIA), "State of Fraud in the Industry," April 2025 report key findings. https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/

(6) Trucking Dive, "Brokerage fraud costs could surpass $800M, TIA president says," quoting TIA President Anne Reinke. https://www.truckingdive.com/news/brokerage-fraud-costs-could-surpass-800-million-dollars-transportation-intermediaries-association/650595/

(7) TT Club and BSI Consulting, 2024 Cargo Theft Report (April 2025) — global cargo theft trends, impersonation and document forgery as strategic crime growth vector. https://www.ttclub.com/news-and-resources/news/article/cargo-theft-report-reveals-rapidly-shifting-criminal-tactics-and-emerging-targets/ and https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf [NEEDS-ATTENDED-FETCH for full PDF]

(8) Mordor Intelligence, "ASEAN Road Freight Transport Market" (2025–2030) and "ASEAN Freight and Logistics Market" (2025–2030). https://www.mordorintelligence.com/industry-reports/asean-road-freight-transport-market and https://www.mordorintelligence.com/industry-reports/asean-freight-and-logistics-market — single commercial aggregator; auto-Low under skill rules.
(8a) OECD Competition Assessment Reviews: Logistics Sector in ASEAN (2021) — https://www.oecd.org/competition/competition-assessment-reviews-asean-logistics.htm (PDF, processed via markitdown) — OECD-originated structural ratios: logistics ~5% of ASEAN GDP, ~17M jobs; road freight ~64.6% of freight transport revenue; freight transport ~72.6% of logistics total. Note: OECD's USD market revenue figures in this report cite Mordor Intelligence as source, so dollar figures inherit the aggregator-Low override; structural ratios cited here are OECD-originated and High confidence.

(9) Armstrong & Associates, "Working through the Uncertainty – Armstrong's Latest Third-Party Logistics Market Results and Predictions for 2025." https://www.3plogistics.com/third-party-logistics-market-results-and-predictions-for-2025/ — US 3PL market net revenues projected $138B (2025), gross revenues projected $323.4B; 2024 actuals were $131.5B net (see source 24).

(10) Singapore Land Transport Authority (LTA) DataMall, publicly documented API datasets — no freight carrier operating license data found; covers traffic, transit, infrastructure. https://datamall.lta.gov.sg/content/datamall/en.html

(11) World Bank Logistics Performance Index 2023 — Southeast Asia country scores: Singapore 1st, Malaysia 26th, Thailand 37th, Indonesia 63rd. Indonesia's biggest drops in "Timeliness" and "Tracking & Tracing." https://lpi.worldbank.org/en/home and https://www.worldbank.org/en/news/press-release/2023/04/21/world-bank-releases-logistics-performance-index-2023

(12) Sayari, "Identifying Foreign Ownership Risk in Supply Chains" (2024) — beneficial ownership verification complexity for sub-tier suppliers. https://sayari.com/resources/wbr-foreign-ownership-risk-in-supply-chains/ and https://sayari.com/platform/

(13) Moody's / KYB overview, beneficial ownership complexity for small business onboarding. https://www.moodys.com/web/en/us/kyc/resources/insights/kyb-and-why-its-essential-for-corporate-onboarding.html

(14) FTV Capital, "Driving Trust in Trucking: Why We Invested in Highway," August 2025 — includes Highway operational statistics (914,719 fraud attempts blocked 2024, 75-country fraud geography, 5M+ loads protected by Load Lock). https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/

(15) Highway, "Highway Launches Load Lock" press release. https://highway.com/press-releases/highway-launches-load-lock-redefining-load-level-protection-and-compliance-for-freight-brokers

(16) Logisly (Indonesia), company description of carrier verification practice. https://logisly.com/ — claims verified carrier network of 100,000+ trucks.

(17) Haulio, company overview and platform description. https://www.haulio.io/ and FreightWaves coverage. https://www.freightwaves.com/news/haulio-uplifting-industry-in-southeast-asia-with-digital-solutions

(18) Indonesia KIR (vehicle roadworthiness inspection) system, Daihatsu Indonesia explanation of BLU-e electronic KIR. https://daihatsu.co.id/en/tips-and-event/tips-sahabat/detail-content/apa-itu-kir-mobil-ini-syarat-biayanya-cara-daftar-2022/

(19) Descartes Systems Group, "Descartes Acquires MyCarrierPortal," September 18, 2024 — acquisition price $22.5M net of cash, up to $6M earnout. https://www.descartes.com/resources/news/descartes-acquires-mycarrierportal and https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html

(20) Highway, "Gebrüder Weiss Partners with Highway to Enhance Carrier Vetting and Combat Freight Fraud" — deployment timeline (2023 initial collaboration, expanded agreement June 2024), North America focus, 800% global freight fraud growth 2019–2021 citing TransUnion. https://highway.com/press-releases/gebruder-weiss-partners-with-highway-to-enhance-carrier-vetting-and-combat-freight-fraud

(21) Gebrüder Weiss 2025 balance sheet announcement — €2.73B net revenues; established new country organizations in Thailand and Philippines 2025. https://www.gw-world.com/newsroom/en-us/2025-balance-sheet-gebrueder-weiss-displays-resilience-and-posts-international-growth/

(22) BlackBuck (Zinka Logistics Solutions) IPO documents — FY2024: 963,345 truck operators, 27.5% of all Indian operators; GTV ₹173,961.93M; 700K truckers, 1.2M trucks; listed NSE/BSE November 22, 2024. https://zerodha.com/ipo/383541/blackbuck/ and https://www.business-standard.com/markets/news/blackbuck-ipo-allotment-today-check-status-gmp-likely-listing-price-124111900106_1.html

(23) Roper Technologies (NASDAQ: ROP), 2024 Annual Results — Network Software segment (includes DAT) net revenues $1,475.6M (21% of total); DAT and Loadlink experienced slight declines in 2024 due to challenging freight market conditions. https://www.ropertech.com/news-releases/news-release-details/roper-technologies-announces-2024-financial-results

(24) Armstrong & Associates, "U.S. 3PL Market Rebounded in 2024," Logistics Management coverage — $131.5B net revenues in 2024. https://www.logisticsmgmt.com/article/u.s_3pl_market_rebounded_in_2024_says_new_armstrong_associates_report

(25) Triumph Financial (NASDAQ: TFIN), Q3 2024 earnings — TriumphPay annualized payment volume $28.4B; $100B+ cumulative payments; 50%+ of US brokered freight transactions; $210M annualized run rate revenue ($60M from payments segment). https://ir.triumph.io/sec-filings/all-sec-filings/content/0001628280-24-042922/tfin-shareholderletterx3q24.htm

(26) Transporeon, company/about page — 210,000+ carriers, 1,500+ shippers, 120,000 transports/day; Trimble acquisition April 2023. https://www.transporeon.com/en/company

(27) Trans.eu platform overview — 120,000 active daily users, 25,000 verified carriers, 24-country coverage, automated compliance verification scenarios. https://www.trans.eu/en/ and https://enterprise.trans.eu/en/

(28) Kargo Technologies, DealStreet Asia — fresh funding from AC Ventures July 2024; acquired TheLorry (Malaysia). https://www.dealstreetasia.com/stories/indonesia-kargo-funding-ac-ventures-405850

(29) FMCSA SAFER Web and Open Data Program — authoritative US carrier registration and authority database. https://safer.fmcsa.dot.gov/

(30) Carrier Assure pricing — $149/month Premium. https://www.carrierassure.com/pricing

(31) Highway funding announcement — FTV Capital + Lead Edge Capital growth equity investment, August 20, 2025. https://highway.com/press-releases/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital and https://ftvcapital.com/insights/driving-trust-in-trucking-why-we-invested-in-highway/

(32) Overhaul, Series C $105M — Springcoast Partners lead, Edison Partners; August 20, 2025; clients include Microsoft, Bristol Myers Squibb, CEVA Logistics. https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(33) Verisk CargoNet, 2024 annual report data — 3,625 cargo theft incidents, $454.9M losses (2024 full year). https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/

---

### Assumptions to validate

[ASSUMED-1]: The $1.62B global carrier onboarding and compliance platform market TAM figure is derived from a private market research firm (GrowthMarketReports); no government statistics body or multilateral institution has published a figure for this category. The figure has not been cross-validated against bottom-up vendor revenue data.
- to validate: Request ARR or revenue contribution data from Descartes investor relations (the only public company with a disclosed carrier fraud/onboarding segment); for private players (RMIS, Carrier411, Highway), seek secondary market estimates from TIA, Transporeon earnings disclosures through Trimble, or Roper Technologies' DAT segment breakdowns. Run bottom-up: [customer count per vendor] × [average ACV per tier] and compare.

[ASSUMED-2]: The SEA proxy TAM of $4.4M–$8.8M (from the prior run) assumes 5–10% digitization adoption relative to North America. Actual adoption could be 0–2% (if enterprise shippers rely entirely on manual relationship-based vetting) or 15%+ (if large 3PLs deploy US tools for their SEA operations). No primary data exists.
- to validate: Interview regional operations leads at top-5 freight forwarders in Singapore (DHL, Kuehne+Nagel, Expeditors, Panalpina/DSV, DB Schenker): "Do you use any software to vet sub-carriers in Indonesia, Thailand, and Malaysia, or is this relationship-based only?"

[ASSUMED-3]: Haulio, Logisly, and Kargo Technologies are described as conducting carrier vetting as part of marketplace admission, but the specific content and depth of their vetting (whether they check government permit databases, insurance, or owner identity) was not documented in any source found. The characterization of their vetting as "informal" or "relationship-based" is inferred from the absence of documented formal vetting workflows.
- to validate: Request product documentation or demo from Haulio, Logisly, and Kargo on carrier onboarding flow; specifically ask: "Do you check DLT/Dishub/LPKP permit records? Do you verify insurance? Do you check beneficial ownership?"

[ASSUMED-4]: Highway's Load Lock product uses a per-load fee or volume-based pricing add-on. Pricing is not publicly disclosed.
- to validate: Request pricing from Highway sales team; compare against Overhaul FraudWatch pricing structure.

[ASSUMED-5]: Indonesia's KIR and STNK records, Thailand DLT truck operating permits, and Malaysia LPKP commercial vehicle operator licenses are not queryable via any public machine-readable API. This is inferred from the absence of any documented API and from the fragmented district-level administration of KIR in Indonesia.
- to validate: Contact Thailand DLT developer portal (infodlt.dlt.go.th), Indonesia Kemenhub/Dishub IT department, and Malaysia JPKK data access desk to confirm whether a national carrier authority API exists or is in development.

[ASSUMED-6]: Kargo Technologies acquired Malaysian logistics platform TheLorry in an all-stock deal (2024), giving Kargo a Malaysian presence. Whether TheLorry's carrier onboarding workflow includes any formal verification against LPKP or JPJ records is not documented.
- to validate: Demo Kargo/TheLorry Malaysia and request documentation of carrier onboarding process.

[ASSUMED-7]: Descartes MacroPoint's carrier fraud prevention business being "<1% of total revenue" (Q2 FY2026 earnings call) reflects combined MCP onboarding + FraudGuard fraud detection revenue. It is assumed this figure includes MyCarrierPortal revenue contribution since acquisition, not just FraudGuard alone. The FY2025 total includes ~$36.4M from 2025 acquisitions collectively (MCP + OCR + ASD + BoxTop + Sellercloud), making MCP's individual contribution unquantifiable from disclosed data.
- to validate: Ask Descartes investor relations to disaggregate MacroPoint TMS revenue from MyCarrierPortal onboarding revenue and FraudGuard fraud detection revenue in their segment reporting.
## Stage 2: TMS, Dispatch & Freight Orchestration

*Research date: 2026-05-18 | Pass 1 draft — verified against primary sources*

---

### Description

Transportation Management Systems (TMS), dispatch platforms, and freight orchestration tools are the software layer through which shippers, freight brokers, and 3PLs plan routes, select carriers, tender loads, and commit freight spend. This is the "decide-and-tender" layer: carrier selection crystalizes from a preference into a legally binding payment obligation when a load tender is issued and accepted. Risk is most acute here because automated tendering to carrier MC numbers without identity re-verification is the primary vector for double-brokering fraud, and because most TMS platforms do not carry forward real-time carrier risk signals (insurance status, safety score, active monitoring flags) into the tendering event itself.

---

### Activities

1. **Route planning and mode optimization** — Determines optimal carrier mode (FTL, LTL, intermodal, air, ocean, parcel), lane combination, and sequence of handoffs across multi-leg shipments. Risk implication: incorrect mode selection increases exposure to handoff points where cargo theft concentrates; suboptimal lane selection elevates carrier count and therefore identity-verification burden.

2. **Carrier tendering and automated load award** — Issues digital rate confirmations to selected carriers; captures acceptance/rejection; re-tenders to backup carrier on rejection. Risk implication: automated tendering to MC numbers without real-time identity re-verification is the primary double-brokering attack surface; platforms vary on whether carrier risk scores are consulted at award time or only at onboarding.

3. **Freight procurement and contract management** — Runs structured RFP/e-tender processes to establish contracted lane rates; manages contract compliance and volume allocation across primary, secondary, and spot carrier tiers. Risk implication: rate contracts lock in approved carrier lists; if approved lists are not refreshed against current safety/insurance data, stale-approval risk accumulates.

4. **Multi-leg orchestration and custody chain management** — Coordinates sequential handoffs across dray, linehaul, transload, and final-mile; issues BOL, appointment confirmations, and dock notifications at each transfer. Risk implication: each handoff without documented carrier identity is a cargo theft scenario; TMS systems that do not log intermediate sub-carrier identity generate chains invisible to the shipper.

5. **Freight audit and invoice management** — Validates carrier invoices against contracted rates; flags accessorial disputes; integrates with factoring/payment networks for carrier settlement. Risk implication: 3–8% of freight spend is widely cited as recoverable via audit; **deep-research outcome: confirmed-scarce** — Cass, U.S. Bank Freight Payment Index, AFS Logistics publish no public quantified freight invoice error rate; Ardent Partners 2024 AP Metrics (n=190) finds 20.7% average all-sector invoice exception rate (broader than freight). The 3–8% figure circulates in vendor marketing without traceable primary source; `[NEEDS-ATTENDED-FETCH]: https://www.apqc.org/resources/benchmarking/open-standards-benchmarking/measures/percentage-invoice-line-items` for APQC primary benchmark. (36, 37)

---

### Revenue Model

Enterprise TMS vendors (SAP TM, Oracle OTM, Manhattan, Blue Yonder): annual SaaS subscription tiered by modules and freight-spend volume, with implementation services generating 2–4x first-year license in professional services billings from SI partners. Digital freight brokerages (Uber Freight, Full Truck Alliance, Lalamove): take-rate on gross freight bookings (5–20% margin); some add SaaS TMS licensing fee for shipper accounts. Freight procurement platforms (Transporeon, Alpega, Cargobase): SaaS subscription per active shipper; freight exchange membership or per-transaction fees for carrier network access.

---

### Cost Drivers

R&D and continuous product engineering (WiseTech CargoWise: 35% of FY25 revenue; Manhattan Associates: ~20% of revenue); cloud infrastructure for 24/7 high-availability order processing (Trimble T&L: 19.7% operating margin reflecting infrastructure overhead); carrier network development and EDI/API integration maintenance (each new carrier connection requires bilateral testing); and, for digital brokerages, carrier acquisition and retention subsidies (SEA platforms document heavy driver-subsidy costs driving unit-economic losses).

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global TMS software market, 2024 | $10.3B (IMARC Group); $9.77B–$10.3B convergence range | Medium | (1), (2) — two independent firms converge on same range; methodology differences create $2–18B spread across all vendors |
| Global TMS market projected 2033 | $36.4B at 14.26% CAGR (IMARC); $47.97B at 10.6% CAGR (Precedence Research) | Low | (1), (3) — ranges reflect scope definition differences (pure TMS vs. logistics software suite) |
| Gartner-defined TMS market, 2019–2024 (narrow-scope SaaS license only) | $1.32B (2019) → $2.11B (2024) — narrow scope: pure-play TMS SaaS software license only, excludes embedded TMS in WMS/SCM suites, professional services, and brokerage platforms | Low — chain-of-citation through TalkingLogistics trade blog to paywalled Gartner research note; **deep-research outcome: contradicting-evidence** — Blue Yonder alone reported $1.36B FY2024 total revenue (WMS+TMS+planning), already numerically exceeding the entire claimed market; figure can only be valid as a narrow pure-play SaaS scope which the trade-press citation does not disclose. Authoritative primary sources (ARC Advisory Group; IDC MarketScape Worldwide TMS Applications 2024) are blocked/paywalled — `[NEEDS-ATTENDED-FETCH]` | (4), `[NEEDS-ATTENDED-FETCH]` arcweb.com TMS, my.idc.com US51982224 |
| Digital freight brokerage market, 2024 | $5.79B–$5.9B | Medium | (5), (6) — two independent firms converge |
| WiseTech Global (ASX:WTC) FY2025 total revenue | A$778.7M (~$500M USD at 0.64 AUD/USD); CargoWise revenue A$682.2M (~$437M USD) | High | (7) — ASX audited financial report; 14% growth vs FY24; 98% recurring revenue |
| WiseTech Global FY2024 total revenue | A$683.7M; CargoWise A$580M+ (18% growth to $682M reported in FY25 comparative) | High | (7) — ASX audited financial report |
| E2open (ETWO) FY2024 total revenue (fiscal year ending Feb 2024) | $634.6M; subscription $536.8M (84.6% of total) | High | (8) — NYSE ETWO earnings release; subscription +0.7% YoY; acquired by WiseTech August 2025 for $2.1B EV |
| Trimble Transportation & Logistics segment FY2024 revenue | $788.8M; operating income $155.1M (19.7% margin) | High | (9) — NASDAQ TRMB Q4/FY2024 earnings release; includes Transporeon, TMW.Suite, MercuryGate (pre-divestiture) |
| Trimble company-wide ARR, Q4 2024 | $2.26B (+14% YoY organic) | High | (9) — NASDAQ TRMB earnings release |
| Manhattan Associates (MANH) FY2024 total revenue | $1,042.4M; cloud subscription $337.2M (+32% YoY) | High | (10) — NASDAQ MANH FY2024 earnings; APAC segment $49.3M |
| Manhattan Associates APAC revenue, FY2024 | $49.3M | High | (10) — NASDAQ MANH 10-K segment data |
| Uber Freight gross bookings FY2024 | $1.28B; adjusted EBITDA loss $(22)M | High | (11) — Uber FY2024 earnings release (SEC) |
| Uber Freight revenue Q1 2025 | $1.26B annualized run-rate (Q1 revenue); EBITDA loss narrowed to $(7)M | High | (12) — Uber Q1 2025 earnings press release (SEC) |
| Full Truck Alliance (NYSE:YMM) FY2024 revenue | RMB 11.24B (~$1.54B USD); net income $428M; profitable | High | (13) — NYSE YMM FY2024 audited earnings |
| Lalamove/Lalatech FY2024 revenue | $1.59B; GTV $11.1B; net profit $501M | Medium | (14) — IPO filing data; not yet audited as listed entity |
| C.H. Robinson (CHRW) FY2024 total revenue | $17.7B; gross profit $2.7B (+5.8%) | High | (15) — NASDAQ CHRW 10-K FY2024; Navisphere serves 83K shippers, 450K carriers |
| Infios (MercuryGate, formerly Körber) customer base | 5,000+ customers, 70 countries; MercuryGate acquisition added ~25% to Körber revenue | Medium | (16) — Infios rebrand press release March 2025; specific ARR not disclosed |
| Indonesia NLE logistics cost as % of GDP | 14.29% (down from prior years) | High | (17) — WCO/WCOOMD magazine citing 2023 Australia-Indonesia Partnership survey |
| Singapore logistics sector GDP contribution (2018 base) | S$6.8B value added; 86,300 employees | Medium | (18) — IMDA Logistics IDP (PDF, processed via markitdown); 2018 data, most recent in IDP |

**Data quality notes:**
- The $9.77B–$10.3B 2024 TMS market figure represents the best-supported convergence range. The $15–18B figures cited by some vendors likely include adjacent WMS, order management, and visibility software within their TMS definition.
- Gartner's $2.11B (2024) is purported to be the narrowest definition — pure-play enterprise TMS software licensing only. However, bottom-up audited triangulation contradicts this as a "whole market" figure: Blue Yonder FY2024 = $1.36B total (Panasonic disclosure); Trimble T&L FY2024 = $788.8M (includes ELD/fleet beyond pure TMS); E2open FY2024 = $634.6M; Descartes FY2025 = $651M; WiseTech FY2025 = A$1.34B (~US$882M). Even at narrowest pure-play scope, $2.11B may understate the practical market multiple-fold. Treat as [ASSUMED with scope caveat]; authoritative ARC Advisory and IDC sources are `[NEEDS-ATTENDED-FETCH]`.
- Country-specific TMS market size for SEA — `Data gap — no country-level TMS software market size for Indonesia, Thailand, Vietnam, or Singapore found in tier-1 sources; ARC Advisory or IDC APAC country report required.`
- WiseTech revenue is reported in AUD; USD conversion at approximate 0.64 AUD/USD as of mid-2025.

[NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/6290615 — Gartner Magic Quadrant 2025 for TMS (full report); paywalled; partial data obtained via vendor press releases.

---

### Current Players by Region

**North America:**
- Oracle Transportation Management (OTM) — 18th consecutive Gartner Leader (2025 MQ); highest ability-to-execute ranking; US-based enterprise deployment; GM, Cisco, Starbucks among disclosed customers; SEA presence: YES (multinational deployments via Oracle regional offices in Singapore, Malaysia, Indonesia)
- SAP Transportation Management (SAP TM) — 11th consecutive Gartner Leader (2025 MQ); embedded in SAP S/4HANA supply chain; targets SAP ERP installed base (~400M SAP users globally); SEA presence: YES (SAP.com/sea localized; manufacturing customer base in SG, MY, TH, ID)
- Manhattan Associates Active TM — 7th consecutive Gartner Leader (2025 MQ); cloud-native continuous-release TMS; $1.04B FY2024 total revenue; APAC revenue $49.3M; SEA presence: PARTIAL (no dedicated APAC TMS implementation center; serves multinationals with SEA subsidiaries)
- C.H. Robinson Navisphere — Gartner MQ participant 2025; 83,000 shippers, 450,000 carriers; $17.7B total 2024 revenue; proprietary TMS used internally and licensed to shippers; SEA presence: NO (North America/Europe primary; sold European Surface Transportation to Sennder 2024)
- Uber Freight (Freight Power TMS) — Gartner MQ Challenger 2025; $1.28B gross bookings FY2024; EBITDA improving from $(22)M FY2024 to $(7)M run-rate Q1 2025; SEA presence: NO (US domestic only)
- Loadsmart (ShipperGuide TMS) — Operating profitable Q3 2024; 85% automation rate; $1.3B valuation; OpenDock dock scheduling layer; SEA presence: NO

**Europe:**
- Transporeon (Trimble) — Trimble T&L segment FY2024 $788.8M revenue; Transporeon serves 1,400+ shippers, 145,000+ carriers, €48B managed freight across Europe; 2025 MQ positioning not separately broken out from Trimble; Freight Marketplace launched September 2023 as spot procurement layer; SEA presence: PARTIAL (Asia mentioned; SEA not primary footprint)
- Blue Yonder TMS — 14th consecutive Gartner Leader (2025 MQ); 3,000+ global customers; 45M monthly shipments via cloud TMS; Panasonic-owned ($7.1B acquisition 2021); acquired One Network May 2024 for network orchestration; SEA presence: YES (Panasonic Asia offices; APAC manufacturing and retail base)
- Alpega Group (TenderEasy + Wtransnet + Teleroute + inet) — Gartner Challenger 2025 (vision regression noted vs. 2024); 70,000+ carriers across European freight exchanges; Brussels HQ; SEA presence: NO (European-centric)
- Infios (formerly Körber/MercuryGate) — Gartner Challenger 2025; 5,000+ customers, 70 countries; MercuryGate acquisition completed August 2024; rebranded as Infios March 2025; SEA presence: PARTIAL (80-country claim; no dedicated SEA office confirmed)
- Sennder — €1.4B combined revenue (post-C.H. Robinson Europe acquisition 2024); 40,000+ deployed trucks; Europe's largest digital FTL broker; SEA presence: NO

**China / Greater China:**
- Full Truck Alliance / Manbang (NYSE:YMM) — $1.54B revenue FY2024; $428M net income; 197.2M fulfilled orders; China's dominant digital freight marketplace; SEA presence: NO (China domestic only)
- Lalamove / Lalatech — $1.59B revenue FY2024; $11.1B GTV; 14 markets including SEA; IPO process ongoing; SEA presence: YES (SG, MY, TH, PH, VN operations)
- GoGoX (HKEX:2246) — Listed; 340+ cities across China, HK, Singapore, Vietnam, South Korea, India; HK IPO raised HK$671M 2022; market cap declined ~97% from peak; SEA presence: YES (SG and VN confirmed)

**India:**
- BlackBuck / Zinka Logistics (NSE/BSE:ZINKA) — IPO listed November 2024 at INR 259–273/share; FY2024 revenue INR 297 Cr (~$36M); 700K truckers, 1.2M trucks, 15M+ monthly transactions; primary product is carrier app + TMS layer for truckers; SEA presence: NO
- Pando.ai — Gartner MQ Visionary 2025 (second consecutive year); India business restructured as independent BU April 2025; focuses on enterprise TMS for large Indian and APAC shippers with ERP integration depth; SEA presence: PARTIAL (APAC-facing; India-primary)
- Rivigo (now Mahindra Logistics) — Acquired by Mahindra Logistics November 2022; relay trucking model; operates in 200+ cities India; not an independent TMS vendor; SEA presence: NO
- Logisly (Indonesia, not India) — See SEA section below

**SEA (Southeast Asia):**
- Cargobase — Singapore HQ (founded 2013); spot-freight TMS for enterprise shippers; Fortune 500 customers in automotive, semiconductor, aviation, oil & gas; 55-country footprint; G2 #6 of 184 TMS globally; SOC 2 Type II certified November 2024; revenue ~$2.4M (2023 baseline; 273% growth claimed); SEA presence: YES (native)
- Haulio — Singapore HQ (founded 2017); container haulage dispatch for first-mile port logistics; 800+ haulage companies, 10,000 trucks, 1.8M TEUs annually; 50%+ of Singapore hauliers on-platform; $7.8M total funding (Temasek-backed Heliconia, PSA unboXed, ComfortDelGro); exploring Indonesia expansion via Logol MOU; SEA presence: YES (native — SG primary)
- Kargo Technologies — Jakarta HQ (founded 2018); Indonesia-focused FTL/LTL digital marketplace; acquired TheLorry (Malaysia) in 2024 for cross-border SEA expansion; 636 employees; $38.6M+ total funding (Peak XV, Tenaya, East Ventures); SEA presence: YES (ID primary + MY)
- Deliveree — Bangkok HQ (founded 2015); FTL/LTL on-demand platform across Thailand, Indonesia, Philippines; 100,000 active commercial trucks; $109M total funding ($30M March 2024); targeting $100M+ GTV 2024; SEA presence: YES (TH, ID, PH)
- Logisly — Jakarta (founded 2019); Indonesia FTL/LTL TMS with free TMS for shippers; 100,000+ truck network; $7M raised (Series A 2020, Monk's Hill Ventures); no new funding rounds disclosed since 2020; SEA presence: YES (Indonesia-only)
- CrimsonLogic / GeTS (Global eTrade Services) — Singapore (PSA International subsidiary); operates Calista platform for cargo owners and LSPs; digital trade facilitation and freight forwarder community platform (Hive); not a traditional TMS but a network connectivity layer; SEA presence: YES (native — Singapore government-linked)

**Note on coverage gap:** No SEA-founded vendor operates at the enterprise shipper TMS level (SAP TM / Oracle OTM equivalent). Cargobase is the closest but focused on spot-freight procurement, not full multi-modal planning and execution. Regional manufacturers in SEA deploy SAP TM or Oracle OTM through local SI partners (Infosys, Wipro, Accenture ASEAN).

---

### Preliminary Pain Points (this stage)

1. **Carrier risk scores are consulted at onboarding, not at tender time.** Most TMS platforms maintain approved carrier lists validated at carrier onboarding (Highway, RMIS checks). But carrier status changes continuously — insurance lapses, safety scores deteriorate, FMCSA conditional ratings are issued — and approved-list records are not updated in real time. When an automated tender is issued to a carrier that passed vetting six months ago but has since lapsed its insurance, the TMS has no signal. The booking event is the right moment to re-check but most TMS platforms do not make this API call. (19, 20)

2. **Subcontracting chain visibility breaks at first re-tender.** When a shipper's TMS tenders a load to a 3PL, and the 3PL re-tenders to a smaller carrier, the shipper's TMS has no record of the second carrier's identity. The shipper holds a legal obligation to the 3PL, but the cargo is physically in the hands of an unvetted third carrier the shipper cannot name. This is structurally identical to a double-brokering scenario except it is legal. An estimated 85% of brokers and carriers experienced at least one double-brokered load in 2023 (TriumphPay/FreightWaves survey), and in Q1 2025 alone Highway blocked 400,000 fraud attempts. The TMS layer has no native mechanism to track sub-carrier identity chains. (19, 21)

3. **Automated load award prioritizes cost, overriding carrier risk signals.** Enterprise TMS algorithmic tendering sequences carriers by contracted rate, then by service score. Carrier risk flags (active monitoring alerts, recent accident records, insurance near-expiration) are not standard inputs to the award algorithm in SAP TM, Oracle OTM, or Blue Yonder out of the box. The tendering engine awards to the cheapest acceptable carrier, and risk data lives in a separate carrier compliance module (or a Stage 1 vendor) with no automated handoff. This is documented as a gap in BCG Platinion's TMS capability model assessment. [ASSUMED-1]: The absence of real-time risk signals in auto-award algorithms is the norm for at least 70% of enterprise TMS deployments; to validate: ask a TMS implementation lead at Accenture or Capgemini Supply Chain whether SAP TM or Oracle OTM natively calls a carrier-risk API at the time of load tender.

4. **EDI 204/214 translation errors create silent state discrepancies.** Shipper-TMS-to-broker integrations still predominantly use EDI 204 (load tender), 214 (shipment status update), 990 (carrier response). EDI mapping errors — wrong pickup times, missing reference numbers, incorrect charges — surface at invoice reconciliation 30–60 days later, not at dispatch time. JSON/REST API is gaining adoption (Uber Freight, Loadsmart, project44) but there is no industry standard for the TMS-to-digital-broker API schema, so every integration is bespoke. Silent EDI mismatches are the most common root cause of freight audit exceptions (3–8% of freight spend in overbillings is recoverable through audit). (22, 37)

5. **Enterprise TMS implementation timelines create 12–24 month risk blindspot.** During SAP TM, Oracle OTM, or Blue Yonder implementations (typically 12–24 months), shippers operate in parallel: old system for live freight, new system for testing. During this window, risk-management features in the new TMS are not yet validated or trusted, so dispatchers revert to manual carrier selection and spreadsheets. This 12–24 month gap is the period of maximum operational risk — increased error rate, reduced exception-management coverage, and dual-system data inconsistencies. BCG Platinion confirms build-vs-buy decisions alone take 3–7 months for scope and selection. [ASSUMED-2]: Most enterprise shippers underestimate integration friction by 30–50% during TMS go-live, resulting in extended parallel-run periods where old and new TMS co-exist; to validate: interview a logistics operations director at a tier-1 manufacturer who completed a SAP TM or Oracle OTM go-live in the last three years; ask how long the dual-system parallel-run lasted and what risk events occurred during it.

6. **Digital freight platform counterparty risk is not modeled by shippers.** Convoy's October 2023 shutdown left carriers owed thousands of dollars and stranded shipper contracted capacity mid-season. The financial health of the digital freight platform — burn rate, EBITDA margin, runway — is itself a form of counterparty risk that most shipper procurement teams do not assess when selecting a freight marketplace. Uber Freight reported $(22)M adjusted EBITDA in FY2024 and a narrowed $(7)M in Q1 2025; GoGoX market cap declined 97% from IPO; Haulio ARR declined from $25M peak to $15M in 2024. Platform financial distress is a real risk category that has no standard TMS risk-scoring framework. (11, 12, 23)

7. **SEA-specific regulatory and data fragmentation elevates tendering friction.** Indonesia's National Logistics Ecosystem (NLE) is implemented across 46 seaports and 6 airports covering 97% of sea cargo but requires separate compliance submissions through INSW (Indonesia National Single Window) that most shipper TMS systems do not natively support. Singapore IMDA's Logistics IDP defines a three-stage digitalization roadmap for SMEs in which Transport Management is a Stage 2 capability — meaning most Singapore logistics SMEs have not yet implemented a TMS. Cross-border tendering in SEA requires per-country permit and documentation compliance (Thailand truck classifications, Indonesia cross-island cabotage rules, Malaysia permit system) that enterprise TMS platforms cover only partially and SEA-native platforms do not cover at all at the multi-country level. (17, 18)

8. **Freight invoice overbilling concentrated in accessorial charges exploits TMS rate-data quality gaps.** Up to 18% of freight invoices contain uncontracted charges; 3–8% of freight spend is recoverable through audit. Accessorial fees (fuel surcharges, detention, liftgate) are the most common billing error vector. TMS freight audit modules can only validate against contracted rate data stored in the TMS — if the contracted rate card is outdated, expired, or incorrectly imported, the audit engine passes incorrect charges. TMS rate-data quality is a systemic problem independent of the audit module's capability. (36, 37)

9. **SEA digital freight platform unit economics have not stabilized, creating carrier-side platform risk.** Across active SEA platforms (Kargo, Deliveree, Haulio, GoGoX), common patterns: heavy carrier-acquisition subsidies; driver churn requiring continuous re-acquisition; multi-country regulatory overhead (per-country compliance cost is multiplicative). GoGoX's 97% market cap erosion and Haulio's 40% ARR decline in one year are observable indicators. A shipper that builds contracted freight capacity around a digitally-native SEA platform faces the same risk Convoy shippers experienced in October 2023 — sudden loss of capacity at worst possible time. [ASSUMED-3]: Most shippers contracting with SEA digital freight platforms do not model platform financial health as a procurement risk criterion; to validate: interview a procurement manager at a FMCG manufacturer operating in Indonesia or Thailand who uses a digital freight marketplace as a primary carrier; ask whether platform viability is part of their supplier-risk scorecard.

---

### Sources for this stage

(1) IMARC Group: TMS market size 2024 — https://www.imarcgroup.com/transportation-management-system-market
(2) Grand View Research TMS market — https://www.grandviewresearch.com/industry-analysis/transportation-management-systems-market
(3) Precedence Research TMS market 2035 — https://www.precedenceresearch.com/transportation-management-systems-market
(4) TalkingLogistics: What is the size of the TMS market? (Gartner $1.32B→$2.11B figure) — https://talkinglogistics.com/2024/03/13/what-is-the-size-of-the-transportation-management-systems-market/ — **trade-press chain-of-citation to paywalled Gartner note; auto-Low; contradicted by audited vendor financials (Blue Yonder alone $1.36B FY2024)**. Attended-fetch needed: ARC Advisory Group (https://www.arcweb.com/market-analysis/transportation-management-systems) and IDC MarketScape Worldwide TMS Applications 2024 (https://my.idc.com/getdoc.jsp?containerId=US51982224).
(5) Precedence Research: Digital freight brokerage market 2024 — https://www.precedenceresearch.com/digital-freight-brokerage-market
(6) GM Insights: Digital freight brokerage market CAGR — https://www.gminsights.com/industry-analysis/digital-freight-brokerage-market
(7) WiseTech Global FY2025 Appendix 4E and financial report (ASX:WTC) — https://www.wisetechglobal.com/media/2t1eeuxx/wtc-fy25-appendix-4e-and-financial-report.pdf (PDF, processed via markitdown)
(8) E2open FY2024 fourth quarter and full year financial results — https://investors.e2open.com/news/news-details/2024/E2open-Announces-Fiscal-2024-Fourth-Quarter-and-Full-Year-Financial-Results/default.aspx
(9) Trimble Q4/FY2024 earnings release: T&L segment $788.8M — https://investor.trimble.com/news/news-details/2025/Trimble-Announces-Fourth-Quarter-and-Full-Year-2024-Results-and-Initiates-2025-Guidance/default.aspx
(10) Manhattan Associates FY2024 audited 10-K (SEC EDGAR, CIK 0001056696, accession 0000950170-25-016295, filed 2025-02-07) — https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK=0001056696&type=10-K&dateb=&owner=include&count=40 — replaces prior press-release citation per validator vendor-marketing override; the manh.com press release recycles the same data and is auto-Low under skill rules.
(11) Uber Technologies FY2024 Freight segment results — https://investor.uber.com/news-events/news/press-release-details/2025/Uber-Announces-Results-for-Fourth-Quarter-and-Full-Year-2024/default.aspx
(12) Uber Q1 2025 earnings press release — https://s23.q4cdn.com/407969754/files/doc_earnings/2025/q1/earnings-result/Uber-Q1-25-Earnings-Press-Release.pdf
(13) Full Truck Alliance FY2024 financial results — https://ir.fulltruckalliance.com/2025-03-05-Full-Truck-Alliance-Co-Ltd-Announces-Fourth-Quarter-and-Fiscal-Year-2024-Unaudited-Financial-Results
(14) Lalatech/Lalamove FY2024 revenue and IPO filing data — https://www.sahmcapital.com/news/content/lalatech-relaunches-hong-kong-ipo-h1-revenue-grows-in-double-digits-2025-10-30
(15) C.H. Robinson FY2024 10-K annual report — https://s21.q4cdn.com/950981335/files/doc_financials/2024/ar/CHRW-2024-Annual-Report-10-K.pdf (PDF)
(16) Infios (Körber/MercuryGate) rebrand announcement March 2025 — https://www.infios.com/en/knowledge-center/news/koerber-supply-chain-software-rebrands-as-infios
(17) WCO magazine: Indonesia National Logistics Ecosystem, dwell time, logistics cost 14.29% GDP — https://mag.wcoomd.org/magazine/wco-news-105-issue-3-2024/national-logistics-ecosystem-indonesia/
(18) IMDA Singapore Logistics Industry Digital Plan (PDF, processed via markitdown) — https://www.imda.gov.sg/-/media/imda/files/programme/smes-go-digital/industry-digital-plans/logistics-idp/logistics-idp.pdf
(19) Freight fraud statistics 2024–2025: $455M losses, 213% increase in double-brokering attempts — https://www.transcredit.com/double-brokering-scams-freight-prevention-2025.html
(20) Highway Q1 2025: 400,000 fraud attempts blocked — https://highway.com/press-releases/sunnybrook-tms-and-highway-set-a-new-standard-for-fraud-prevention-for-brokers
(21) TriumphPay/FreightWaves 2023 survey: 85% of brokers/carriers experienced double-brokered load — https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(22) TMS integrations with digital freight brokers — Supply Chain Dive — https://www.supplychaindive.com/news/digital-broker-tms-integrations-api-supply-chain-transportation/599477/
(23) GoGoX HKEX 2022 IPO, market cap decline — https://equalocean.com/news/2024011320442
(24) 2025 Gartner Magic Quadrant for TMS — leaders and challengers (sourced via vendor press releases) — https://news.sap.com/2025/04/sap-a-leader-gartner-magic-quadrant-transportation-management-systems/ ; https://www.oracle.com/news/announcement/oracle-named-a-leader-in-2025-gartner-magic-quadrant-for-transportation-management-systems-2025-04-10/ ; https://www.manh.com/about-us/newsroom/press-releases/manhattan-named-7x-leader-gartner-mq-tms ; https://blueyonder.com/blog/2025/blue-yonder-named-a-leader-in-the-2025-gartner-magic-quadrant-for-transportation-management-systems ; https://www.e2open.com/resources/2025-gartner-magic-quadrant-for-transportation-management-systems/ [NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/6290615
(25) Sennder acquires C.H. Robinson European Surface Transportation, €1.4B combined — https://www.sennder.com/press/sennder-signs-agreement-to-acquire-c-h-robinson-s-european-surface-transportation-operations-combining-revenue-to-eur-1-4bn
(26) BCG Platinion TMS capabilities model — https://www.bcgplatinion.com/insights/transport-management-systems
(27) Transporeon: 1,400 shippers, 145,000 carriers, Trimble acquisition — https://www.transporeon.com/en/company/press/trimble-completes-transporeon-acquisition
(28) Alpega Group 2025 Gartner Challenger — https://www.alpegagroup.com/en-en/community/library/2025-gartner-magic-quadrant-for-transportation-management-systems-tms/
(29) 2025 Gartner MQ TMS analysis: new entrants, position changes — https://wisechainconsult.substack.com/p/2025-gartner-mq-for-tms-is-there
(30) BlackBuck/Zinka Logistics IPO, FY2024 revenue — https://inc42.com/buzz/ipo-bound-blackbuck-narrows-loss-by-33-to-inr-194-cr-in-fy24/
(31) Pando.ai Gartner Visionary 2025, India BU restructuring — https://pando.ai/company/press-release/pando-ai-recognized-as-a-visionary-in-2025-gartner-magic-quadrant-for-transportation-management-systems
(32) Kargo Technologies TheLorry acquisition, funding — https://techcollectivesea.com/2025/01/24/southeast-asia-logistics-funding-indonesia/
(33) Deliveree $30M March 2024 raise, 100,000 trucks — https://www.idnfinancials.com/archive/43511/deliveree-raises-series-funding
(34) Haulio $7.8M funding, BBTruck partnership, ASEAN expansion — https://www.dealstreetasia.com/stories/haulio-seriesa-heliconia-274905
(35) Cargobase SOC 2 Type II certification, G2 ranking, autonomous TMS — https://www.cargobase.com/blog/singapore-based-logistics-tech-scale-up-cargobase-builds-world's-first-autonomous-tms
(36) Freight audit and payment market: 18% of invoices contain uncontracted charges — https://supplychainbrain.com/blogs/1-think-tank/post/37257-why-should-you-audit-your-freight-bills
(37) Freight overbilling 3–8% of spend recoverable — https://avantiico.com/freight-invoice-audits/ — **[Low confidence: vendor-marketing; deep-research outcome confirmed-scarce: Cass, US Bank, AFS publish no public freight invoice error rate; Ardent Partners AP Metrics 2024 (n=190) cites 20.7% all-sector invoice exception rate (broader than freight); APQC primary measure NEEDS-ATTENDED-FETCH at https://www.apqc.org/resources/benchmarking/open-standards-benchmarking/measures/percentage-invoice-line-items]**
(38) CrimsonLogic GeTS Calista platform and Hive for freight forwarders — https://www.crimsonlogic.com/news/crimsonlogic-announces-its-wholly-owned-subsidiary-global-etrade-services-gets-will-operate
(39) Convoy shutdown October 2023 — https://www.freightwaves.com/news/convoy-shutdown-trucking-startup
(40) WiseTech FY2024 revenue 28% growth, CargoWise revenue — https://cfotech.com.au/story/wisetech-global-reports-28-revenue-surge-in-fy24

---

### Assumptions to validate

[ASSUMED-1]: The absence of real-time carrier risk signals (insurance status, active safety monitoring flags) as inputs to automated load-award algorithms is the norm in at least 70% of enterprise TMS deployments, including SAP TM, Oracle OTM, and Blue Yonder out of the box.
- to validate: Ask a TMS implementation lead at Accenture Supply Chain, Capgemini Invent, or DHL Consulting whether any of the major enterprise TMS platforms natively call a carrier-risk API (Highway, RMIS, Carrier411) at the moment of auto-award rather than at carrier onboarding. Ask whether any customer has built custom middleware to close this gap.

[ASSUMED-2]: Enterprise shippers underestimate TMS implementation integration friction by 30–50%, resulting in extended parallel-run periods (beyond planned go-live) where old and new TMS co-exist, creating elevated error rates and reduced risk-management coverage.
- to validate: Interview a logistics operations director at a tier-1 manufacturer (automotive, FMCG, retail) who completed a SAP TM or Oracle OTM go-live in the last three years. Ask: how long did the dual-system parallel-run last beyond the planned go-live date? What exception-management capability was sacrificed during that window? What was the highest-cost incident during the go-live period?

[ASSUMED-3]: The majority of shippers contracting with SEA digital freight platforms (Kargo, Deliveree, Haulio, Logisly) do not assess platform financial health or operational viability as a formal procurement risk criterion, even though Convoy's 2023 collapse demonstrated that platform insolvency is a material carrier-capacity risk.
- to validate: Interview a procurement or logistics manager at a mid-size FMCG or consumer electronics manufacturer operating in Indonesia or Thailand who uses a digital freight marketplace as a primary or significant secondary carrier. Ask: does your supplier-risk process include assessment of the platform's funding runway or EBITDA margin? What would your contingency be if the platform ceased operations mid-contract?

[ASSUMED-4]: CrimsonLogic's Calista platform and the Singapore NLE provide the connectivity infrastructure for freight documentation but do not function as TMS execution engines; shippers still require a separate TMS for carrier selection, tendering, and rate management.
- to validate: Ask a Singapore-based freight forwarder or beneficial cargo owner using Calista whether they also use a separate TMS for domestic/regional carrier tendering, or whether Calista replaces TMS functionality for their operations.

# Stage 3: Fleet & Driver Management / Telematics — Value Chain

*Run ID: 2026-05-17-2337 | Generated: 2026-05-18*
*Basis: Prior draft (2026-05-14-0107) updated with audited FY2026 filings for Samsara, Motive S-1, EROAD FY2025 NZX, Karooooo FY2026, Geotab September 2025 milestone, Platform Science / Trimble close, Descartes / Idelic acquisition (April 2026), LocoNav acquisition by Sensorise (October 2025), India AIS-140 regulatory context, Cartrack SEA FY2026 subscriber data.*

---

## Description

Fleet and driver management / telematics is the carrier-side risk layer in the logistics value chain: hardware and software solutions installed in or on commercial vehicles — trucks, vans, trailers — that monitor driver behavior, vehicle health, hours-of-service (HOS) compliance, route execution, fuel consumption, and safety events. These solutions are owned and operated by carriers (or leased through SaaS contracts), generating data that is structurally invisible to shippers and 3PLs unless third-party integrations are built. Regulatory anchors (US FMCSA ELD mandate; India AIS-140 VLTD mandate) drive adoption in developed markets; commercial ROI on fuel, insurance, and nuclear-verdict risk drive adoption elsewhere.

---

## Activities

1. **Electronic logging and regulatory compliance:** Recording driver hours-of-service electronically (US: FMCSA ELD mandate, covers ~3.5M heavy trucks; India: AIS-140 VLTD mandate covers all commercial vehicles; EU: digital tachograph), transmitting records to regulators or roadside inspectors on demand, enforcing duty-status rules to prevent fatigue-related incidents. (1, 2)
2. **Real-time GPS tracking and geofencing:** Transmitting vehicle position at regular intervals (typically 1–60 seconds), alerting fleet managers to route deviations, unauthorized stops, geofence breaches, and delivery-window SLA performance; providing carrier-side evidence for cargo-claims disputes.
3. **AI dashcam event detection and driver coaching:** Inward- and outward-facing video cameras with on-device or cloud AI identifying harsh braking, following distance, distracted driving, fatigue, mobile phone use, and forward-collision risk; generating coaching events sent to drivers in real time or post-trip; Lytx data shows Level 2 collision rate down 59% among coached fleets. (3)
4. **Driver behavior scoring and nuclear-verdict risk management:** Aggregating telematics, video, HOS, and violation data into per-driver risk scores; triggering remediation workflows (coaching, training, suspension) before an at-fault incident generates litigation exposure; Idelic (acquired by Descartes April 2026 for $28M) held 40B+ miles of telemetry and 400k+ accident records as a nuclear-verdict defense dataset. (4)
5. **Fleet maintenance and total cost of ownership (TCO) management:** Tracking vehicle odometer, engine fault codes (J1939 / OBD-II), predictive maintenance alerts, scheduled service reminders, and repair workflow management (Fleetio, Cetaris, Decisiv); reducing unplanned downtime and warranty/repair costs for carriers.

---

## Revenue Model

Per-vehicle per-month SaaS subscription (typically $15–60/vehicle/month depending on module set and geography) bundled with proprietary hardware under 24–36-month contracts; upsell from GPS-only to AI dashcam, spend management, and maintenance modules drives net dollar retention above 110%.

---

## Cost Drivers

Hardware bill of materials (GPS unit: $50–150; AI dashcam: $200–500 per camera), cellular data connectivity, cloud infrastructure for video storage and AI inference, direct sales force (particularly in SEA where Cartrack runs a no-reseller direct model), customer support and installation labor, and R&D for AI model training on proprietary driving datasets.

---

## Market Size

| Metric | Value | Year | Confidence | Sources |
|---|---|---|---|---|
| Global commercial vehicle telematics market size | $24.3B | 2024 | Medium — GMI Insights specialist firm; single source | (5) |
| Global aftermarket telematics hardware units shipped | 51.2M units; €2.4B value | 2024 | Medium — Berg Insight primary telematics research firm | (6) |
| Global OEM embedded telematics subscriptions | 286.6M active | 2024 | Medium — Berg Insight; CAGR 13.0% to 528.1M by 2029 | (6) |
| Fleet management installed base — North America | 17.4M active units (2023); 30.5M projected 2028 | 2023 | High — Berg Insight (primary specialist); independently corroborated by FMCSA ELD mandate data | (7, 1) |
| North America telematics penetration rate in commercial vehicles | ~53.3% of non-private commercial vehicles | 2023 | High — Berg Insight estimate; consistent with FMCSA data showing 3.5M ELD-covered heavy trucks | (7, 1) |
| Fleet management installed base — Latin America | 6.5M active units; 13.0M projected 2028 | 2023 | Medium — Berg Insight | (7) |
| Americas combined installed base | ~24M units (2023); 43M projected 2028 | 2023 | Medium — Berg Insight Americas report | (7) |
| Fleet management installed base — Europe | 27.6M projected 2028 | 2024 | Medium — Berg Insight European FM report | (8) |
| Fleet management installed base — Southeast Asia | 3.6M active units (2024); 6.4M projected 2029 | 2024 | High — Berg Insight SEA report (2nd edition, 2026); corroborated by Cartrack NASDAQ filings | (9, 10) |
| SEA fleet management CAGR | 12.3% | 2024–2029 | Medium — Berg Insight | (9) |
| US ELD-covered heavy commercial trucks | ~3.5M trucks | 2024 | High — FMCSA mandate primary government source | (1) |
| Video telematics global market size | $1.69B | 2024 | Medium — GMI Insights; single source | (11) |
| Video telematics installed base projected | 22M units globally | 2030 | Medium — Berg Insight via Computer Weekly | (12) |
| Samsara FY2026 revenue (audited 10-K, year ended Jan 31 2026) | $1,618.6M (+30% YoY); ARR $1.89B | FY2026 | High — SEC 10-K filing (NYSE: IOT) | (13) |
| Samsara FY2025 revenue (audited 10-K, year ended Feb 1 2025) | $1,249.2M (+33% YoY); ARR $1.46B | FY2025 | High — SEC 10-K filing | (14) |
| Motive FY2024 revenue (S-1 registration statement filed Dec 23 2025) | $370M (+19% YoY); ARR $417M at Dec 31 2024 | FY2024 | High — SEC S-1 registration (pending IPO NYSE: MTVE) | (15) |
| Motive ARR as of Sep 30 2025 | $501M (+28% YoY); trailing-12M revenue $429M | Sep 2025 | High — S-1 registration statement | (15) |
| Karooooo / Cartrack FY2026 group revenue (audited) | ZAR 5.48B (~$302M at 18.1 ZAR/USD); ARR ZAR 5.18B; Asia+ME subscribers 336,000 (+23%) | FY2026 | High — NASDAQ KARO audited 6-K / press release | (10, 16) |
| PowerFleet FY2025 revenue (NASDAQ: AIOT) | $362.5M (+26% YoY); 2.8M subscribers | FY2025 | High — NASDAQ AIOT audited press release | (17) |
| EROAD FY2025 revenue (NZX/ASX: ERD) | NZD 194.4M (~$116M USD); ARR NZD 175.1M | FY2025 | High — NZX audited announcement | (18) |
| Geotab subscriptions milestone | 5M active subscriptions worldwide | Sep 2025 | Medium — Geotab press release; private company, no audited financials | (19) |
| Geotab estimated revenue | ~$970M estimated | 2024 | Low — third-party estimate only; private company, not audited | (20) |

*Data gap: No country-level market size for fleet telematics in any individual SEA country (Indonesia, Thailand, Malaysia, Vietnam, Philippines) found in Tier 1–4 audited sources. Berg Insight's SEA aggregate (3.6M units, 2024) is the best available primary figure. Country-level field validation required.*

---

## Current Players by Region

### North America

- **Samsara (NYSE: IOT)** — Largest publicly-traded pure-play fleet telematics; $1.62B FY2026 revenue; $1.89B ARR; 3,194 customers >$100k ARR; AI dashcam + ELD + asset tracking on unified Connected Operations Platform; 350+ marketplace integrations including Highway (carrier vetting), project44, FourKites; 14 trillion data points processed. SEA: No dedicated office; APAC via resellers only. (13)
- **Motive (pending IPO NYSE: MTVE)** — $501M ARR at Sep 2025; AI-powered ELD + dashcam + spend management (fuel card) vertical stack; ~100k customers; Series F ($150M, $2.85B valuation May 2022) + Series G ($150M, Jul 2025, Kleiner Perkins lead); India R&D; no SEA commercial operations. SEA: None. (15, 21)
- **Geotab (private)** — 5M+ active subscriptions globally (milestone Sep 2025); estimated ~$970M revenue 2024; #1 ABI Research commercial telematics ranking 4 consecutive years; open MyGeotab SDK with 200+ marketplace apps; sold exclusively via 500+ authorized resellers; OEM partnerships. SEA: Singapore direct office (Jan 2021); authorized resellers in Indonesia, Malaysia, Thailand, Philippines. (19, 20, 22)
- **Platform Science (private; Trimble 32.5% stake)** — Acquired Trimble's global transportation telematics units (closed Jan 2025); Trimble trailing-12M revenue at divestiture ~$300M; ARR ~$200M; in-cab Virtual Vehicle platform with OEM partnerships (Daimler/Freightliner, Paccar/Kenworth/Peterbilt); app marketplace enables multi-vendor telematics on one screen; native Trimble TMW TMS integration. SEA: None. (23)
- **Verizon Connect (Verizon NYSE: VZ)** — Enterprise fleet management, GPS, ELD, video; North America focus; divested all APAC/international commercial operations to Geotab (2023–24); ~5.56% market share in Transportation & Fleet Management category per Enlyft; revenue not separately disclosed in Verizon 10-K ($134.8B total VZ revenue in 2024). SEA: None — APAC operations divested. (24, 25)
- **Lytx (private; Permira majority stake since 2020, valuation >$2.5B)** — Video telematics specialist; 5.5M+ drivers protected; 300B+ miles in ML training database; 89 countries via resellers; 2025 Road Safety Report: Level 2 collisions down 59% among coached fleets; data licensing to insurers via SambaSafety integration; full telematics (GPS, ELD) added to compete on full suite. SEA: Reseller network in 90+ countries including SEA; no dedicated SEA office. (3, 26)
- **Idelic (now Descartes Systems Group NASDAQ: DSGX, acquired April 2026 for $28M + $12M earn-out)** — Driver safety and performance intelligence platform; 40B+ miles of telemetry + 400k+ accident records; AI analytics for nuclear-verdict risk prevention; Schneider National (12,000 drivers) reference customer; integrated into Descartes Global Logistics Network post-acquisition. SEA: None. (4)

### Europe

- **Webfleet (Bridgestone subsidiary)** — ~783,000 European subscriptions; purpose-built EU tachograph and driver-hours compliance; tire-wear data overlay from Bridgestone parent; Frost & Sullivan best practice leader European commercial telematics 2025; 60,000+ organizations globally. SEA: Select APAC markets via resellers; no dedicated SEA office. (27)
- **PowerFleet (NASDAQ: AIOT; merger of Powerfleet + MiX Telematics + Fleet Complete, closed Apr 2024)** — $362.5M FY2025 revenue; 2.8M subscribers; ABI Research #1 innovation ranking 2025; strong South Africa + EU + Middle East footprint; MiX legacy APAC presence primarily in Australia. SEA: Limited — Australasia-focused; no dedicated SEA office. (17)
- **Geotab** — Also a European market leader; EU ELD and tachograph support; strong government/municipal fleet penetration. (see North America entry above)
- **EROAD (NZX/ASX: ERD)** — NZD 194.4M (~$116M USD) FY2025 revenue; operations in New Zealand (NZD 103.9M), North America (NZD 81.2M), and Australia (NZD 13.7M); HOS compliance + GPS + driver scoring; first to achieve positive free cashflow (NZD 16M) in FY2025; no SEA presence. SEA: None — NZ/AU/NA markets only. (18)

### India

- **Sensorise Digital Services (Eagle.ai; acquired LocoNav India operations Oct 2025)** — Sensorise acquired LocoNav's India fleet management business (14 Oct 2025), gaining 10,000+ customers and 150,000 active device subscriptions (including Hero, Mahindra, Kinetic Green, Dalmia Cement, RevFin); simultaneously launched Eagle.ai, an AI-powered mobility intelligence platform for fleet safety, compliance, and operations; LocoNav's international operations (not part of acquisition) remain with LocoNav for global expansion. AIS-140 VLTD compliant. SEA: None confirmed. (28, 29)
- **Tata Motors Fleet Edge** — Factory-native telematics for Tata Motors commercial vehicles; 500,000+ connected Tata trucks as of Jan 2024; AIS-140 / 4G SIM embedded in all M&HCV; real-time vehicle health, driver behavior, fuel management; Standard and Advance subscription tiers. India's largest OEM-native connected truck program. SEA: None (India OEM-native only). (30)
- **Ashok Leyland i-Alert** — OEM-native telematics for Ashok Leyland commercial vehicles; in-house developed and operated; AIS-140 iGCU compliant; VHMD + track-and-trace + geofencing + driver monitoring + fuel management; available on Android and iOS; launched 2017, latest version 4.0.44 (May 2025). SEA: None (India OEM-native only). (31)
- **BharatBenz Truckonnect (Daimler Truck subsidiary)** — OEM-native telematics for BharatBenz commercial vehicles; standard on all 16-tonne+ models; fleet analysis, trip analysis, driving analysis; Truckonnect platform; AIS-140 compliant; cold-chain IoT integration for temperature-controlled freight. SEA: None (India OEM-native only). (32)
- **Cartrack India (Karooooo subsidiary)** — Direct-sales telematics; part of Asia+ME region contributing 336,000 combined subscribers at FY2026; GPS, driver behavior, stolen vehicle recovery; operates alongside Cartrack SEA. (10)

*Note: India's AIS-140 VLTD mandate (full enforcement by 2023 for N2/N3 vehicles and hazardous goods transport) creates a regulatory floor for GPS telematics adoption across all commercial vehicles — a structural difference from SEA where no equivalent mandate exists. This drives a large domestic market for AIS-140-compliant device vendors (Trimble, MapMyIndia, Tata Motors, Ashok Leyland, and dozens of ARAI-certified hardware providers). (2)*

### China

- **NavInfo (SHE: 002405)** — Shenzhen-listed digital map, telematics, and dynamic traffic information provider; H1 2024 revenue RMB 1.667B (~$230M USD); net loss RMB 356M; primary in-vehicle map supplier for Chinese OEMs; telematics data services for connected vehicles; not a fleet management SaaS vendor in the traditional sense. SEA: No direct presence. (33)
- **Full Truck Alliance (NYSE: YMM) telematics layer** — YMM operates China's largest digital freight platform (FY2024 total revenue RMB 11.24B / ~$1.54B USD, +33% YoY); provides value-added services to truckers including financial institution access, highway authority services, and gas station partnerships, but does not operate as a standalone telematics vendor; GPS tracking of trucks on platform occurs as a platform feature, not as a carrier-sold product. SEA: None. (34)
- **Jimi IoT (China-headquartered; private)** — Leading white-label telematics hardware manufacturer; 200,000+ fleet management units deployed in SEA via local resellers (Berg Insight SEA 2024); B2B2C model enabling local SEA providers to brand their own fleet product; broad hardware portfolio (OBD, hardwired GPS, solar-powered asset trackers). SEA: Strong device presence via resellers in Indonesia, Thailand, Philippines, Vietnam; no direct branded fleet management operations. (9, 35)
- **Sinotruk / FAW connected truck** — OEM-native telematics embedded in Sinotruk and FAW heavy trucks sold in China and export markets; primarily for vehicle health monitoring and fleet management by Chinese fleet operators; no dedicated SEA fleet management product confirmed.

*Data gap: No audited revenue data for Chinese fleet telematics vendors operating in SEA found in any primary source. The Chinese fleet telematics market operates through OEM-embedded platforms and white-label hardware exporters; a Western-style SaaS telematics ecosystem does not exist at equivalent scale. Field validation with a major Chinese logistics operator or CRRC/Sinotruk investor relations required.*

### Southeast Asia

- **Cartrack (Karooooo NASDAQ: KARO)** — Only NASDAQ-listed pure-play telematics with direct SEA offices (Singapore, Malaysia, Thailand, Indonesia, Philippines); 336,000 Asia+ME subscribers at FY2026 (+23% YoY); subscription revenue 17% growth (20% constant currency) in Asia; management calls SEA "the most compelling medium-to-long-term growth opportunity"; GPS tracking, driver behavior scoring, stolen vehicle recovery; dashcam/video product in early rollout ("vast under-penetrated market for sophisticated fleet management and video-based solutions"); Cartrack tag expansion planned for FY2027. (10, 16)
- **TransTRACK (Indonesia; private)** — Berg Insight top-3 SEA fleet management provider; $12M Series A (Eurazeo, Cocoon Capital); 100,000+ fleet management units in SEA; Indonesia-HQ with expansion to Singapore, Malaysia, Middle East; supply chain API integrations for Indonesian FMCG and logistics. SEA: Primary market Indonesia + expansion. (9, 36)
- **Jimi IoT** — 200,000+ SEA devices via resellers; white-label hardware enabling local fleet products. (see China entry)
- **KATSANA (Malaysia; KATSANA Holdings Sdn Bhd)** — Malaysia-HQ fleet management and usage-based insurance telematics; 1,600+ enterprise customers across SEA; $3.2M revenue (Oct 2024, GetLatka); $900k total funding + MYR 6.5M equity + MYR 3M grants; specializes in telematics-for-insurance (UBI) for Malaysian motor insurers; driver behavior + GPS + connected car data. SEA: Direct in Malaysia; limited across broader SEA. (37)
- **DTC (previously identified as top-5 SEA by Berg Insight 2024)** — Berg Insight named DTC among top 5 SEA fleet management providers alongside Jimi IoT, Cartrack, TransTRACK, and Onelink; no independent financial data found. [NEEDS-ATTENDED-FETCH]: https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html (38)

---

## Preliminary Pain Points (this stage)

1. **ELD data is structurally owned by the carrier — shippers and 3PLs have no native pipeline to it without third-party integration.** Telematics systems generate continuous driver-behavior and location data, but this data flows to the carrier's platform (Samsara, Motive, Geotab), not directly to the shipper. Shipper visibility layers (project44, FourKites) require separate API integration agreements with each telematics vendor; Samsara offers 350+ pre-built integrations, but the majority of smaller carriers use platforms with no pre-built shipper-side API, creating a cargo-risk blind spot. (13, Stage 2 context)

2. **AI dashcam safety outcomes are not normalized into shipment-level risk scores for insurers.** Lytx's 2025 Road Safety Report shows Level 2 collisions down 59% among coached fleets, but this safety data remains inside the fleet's telematics dashboard; it is not transmitted in real time to the cargo insurer or 3PL risk system. The FNOL API developed by Samsara is designed for US P&C insurers and has no equivalent in SEA commercial cargo insurance. (3, 13)

3. **AI dashcam event detection models are trained predominantly on North American and European road conditions; accuracy on SEA road environments is lower and unvalidated by any independent study.** Motorcycles represent the majority of mixed-traffic encounters in Thailand, Vietnam, Indonesia, and the Philippines; detection accuracy for two-wheelers is acknowledged as a known limitation by video telematics vendors. No third-party SEA road-condition validation of Lytx, Netradyne, or Samsara AI dashcam accuracy found. [ASSUMED-1]: Dashcam AI models trained on US/EU road data have materially lower detection accuracy for motorcycle-dense SEA traffic. To validate: request Netradyne and Cartrack incident-per-million-mile data for SEA vs. NA fleets; compare false-positive and missed-event rates.

4. **No SEA country has implemented a mandatory ELD or HOS regulation, removing the primary adoption trigger that drove >78% penetration in North American heavy trucks.** In contrast, India's AIS-140 VLTD mandate (enforced by Jan 2023 for N2/N3 vehicles; Maharashtra RTO checks from Nov 2024) creates a regulatory floor that generates demand for compliant GPS devices across all commercial vehicles. Without a similar SEA mandate, adoption remains voluntary and commercial-ROI dependent, systematically excluding small/informal carriers. (1, 2) [ASSUMED-2]: No SEA Ministry of Transport has enacted or is actively planning an ELD-equivalent mandate for trucks above a GVW threshold. To validate: check with Indonesian Kementerian Perhubungan, Thailand DLT, Malaysian JPJ, Singapore LTA for any mandate pipeline.

5. **SEA's owner-operator fleet structure makes telematics aggregation structurally difficult.** Cartrack has 336,000 SEA+ME subscribers as of FY2026 — but the addressable commercial vehicle fleet in Indonesia alone exceeds 6M registered trucks (BPS 2023), indicating maximum ~6% penetration in Indonesia even if Cartrack's entire Asia base were in-country. The majority of SEA freight moves on trucks operated by owner-operators (1–5 vehicles) who cannot absorb $15–60/vehicle/month SaaS subscription. (10, BPS)

6. **AI dashcam hardware costs remain prohibitive for small SEA carriers without insurer subsidy.** AI dashcams cost $200–500 per unit; for an Indonesian owner-operator earning $1,000–2,000/month net, this represents 10–50% of monthly income as a one-time capital cost. No systematic insurer-subsidy or fleet-aggregator financing program for dashcam installation was found in any SEA market. [ASSUMED-3]: No SEA commercial insurer (including Tokio Marine Indonesia, Sompo Indonesia, or AXA Mandiri) currently offers premium discounts or device-subsidy programs in exchange for telematics data from small commercial vehicle operators. To validate: interview underwriting teams at Tokio Marine Indonesia and Sompo Indonesia on whether telematics data is used in commercial auto pricing.

7. **GPS jamming and device tampering compromise telematics data integrity on high-theft SEA freight corridors.** GPS signal jammers are widely available and used on cargo theft routes; Cartrack offers stolen vehicle recovery as a differentiator but signal-jamming detection is not standard across lower-cost telematics hardware. Data gaps created by jamming are indistinguishable from cellular dead zones at the platform level, creating false-confidence in tracking coverage. [ASSUMED-4]: GPS jamming is a materially frequent cause of tracking blackouts (not just cellular dead zones) on high-theft routes in North Sumatra, Java, and Sulawesi. To validate: request incident-level signal-loss data from TransTRACK and Cartrack Indonesia operations teams.

8. **Telematics data and cargo IoT data streams are siloed with no real-time fusion for risk managers.** Telematics platforms track the truck; cargo IoT sensors (Tive, Sensitech, Roambee — Stage 4) track the shipment. These two streams are processed in separate platforms with no production-grade real-time fusion API. An insurer seeking to price the combined vehicle-and-cargo risk in real time would need to build custom integration, which no SEA market participant has productized as of May 2026. (Stage 4 boundary)

9. **Driver coaching interventions require consent and data access that is structurally contested in some SEA jurisdictions.** Inward-facing cameras recording driver behavior may conflict with Indonesia's Personal Data Protection Law (UU PDP No. 27, 2022) and Thailand's PDPA (2022); no published legal framework specifically permits or prohibits in-cab employee recording in these jurisdictions. Fleet operators operating multi-country SEA networks face inconsistent legal exposure with no vendor-provided compliance guidance. [ASSUMED-5]: In-cab driver-facing camera deployment in Indonesia, Malaysia, and Thailand requires informed employee consent under existing privacy laws but no fleet operator has yet faced regulatory enforcement. To validate: review UU PDP No. 27/2022 consent provisions with Indonesian employment lawyer; check whether any fleet operator has received a PDPA challenge in Thailand.

10. **HOS/ELD data formats are nationally incompatible, preventing cross-border visibility through the telematics layer.** US FMCSA ELD records are in a format specific to 49 CFR Part 395; EU digital tachograph data uses DTCO standards; India AIS-140 generates VLTD records; SEA has no equivalent standard. Cross-border freight (Malaysia–Thailand–Vietnam corridor; Indonesia–Singapore sea-bridge connections) cannot be continuously tracked through a single telematics compliance record. Carriers must maintain separate systems per country, multiplying per-vehicle compliance cost.

11. **Nuclear-verdict litigation risk is a North American concern not yet a structural risk factor in SEA, but its precursors exist.** The US trucking industry faced $4.1B in mega-verdicts in one recent period; Idelic was acquired explicitly to address this risk. SEA tort systems and jury-verdict dynamics differ from the US, but road fatality rates in Indonesia, Thailand, and Vietnam are materially higher per vehicle-km than in the US, and as regional insurance markets mature, litigation exposure from fleet incidents will grow. The risk-management data infrastructure (driver risk profiles, incident video evidence, coaching audit trails) does not yet exist at SEA carrier level. (4)

---

## Sources for this stage

(1) FMCSA ELD mandate general information and 3.5M trucks figure. https://www.fmcsa.dot.gov/hours-service/elds/general-information-about-eld-rule

(2) India AIS-140 / VLTD mandatory GPS telematics for commercial vehicles — Ministry of Road Transport & Highways. https://morth.nic.in/sites/default/files/Finalized_Draft_AIS_140_regarding_Intelligent_Transportation_Systems_.pdf | Maharashtra RTO enforcement Nov 2024: https://tracko.co.in/blog/about_tracko/vahan-shakti-ais-140-gps-tracker-the-mandatory-solution-for-vehicle-compliance-in-maharashtra | AIS-140 general: https://www.hashstudioz.com/blog/understanding-ais-140-why-is-it-mandatory-in-india/

(3) Lytx 2025 Road Safety Report — collision reduction data. https://www.lytx.com/blog/statistics-for-fleet-managers-from-2025-road-safety-report | Lytx 2024 State of the Data press release: https://www.lytx.com/news-events/press-release/2024/state-of-the-data-2024

(4) Descartes acquires Idelic for $28M + $12M earn-out, April 2026. Descartes press release: https://www.descartes.com/resources/news/descartes-acquires-idelic | FreightWaves: https://www.freightwaves.com/news/descartes-acquires-fleet-safety-platform-idelic-for-28m | Idelic nuclear-verdict content: https://idelic.com/blog/preventing-nuclear-verdicts-in-court-and-the-back-office/

(5) GMI Insights — global commercial vehicle telematics market $24.3B (2024). https://www.gminsights.com/industry-analysis/commercial-vehicle-telematics-market

(6) Berg Insight — Global Aftermarket Vehicle Telematics Hardware Market; OEM telematics subscriptions data 2024. Press summary: https://insurance-canada.ca/2025/02/03/berg-insight-global-vehicle-telematics-hardware/ | OEM telematics: https://insurance-canada.ca/2025/07/23/berg-insight-global-oem-telematics-market/

(7) Berg Insight — Fleet Management in the Americas (14th edition, 2024). IoT Business News release: https://iotbusinessnews.com/2024/12/04/05033-the-installed-base-of-fleet-management-systems-in-the-americas-to-reach-43-million-units-by-2028/ | PDF product sheet: https://media.berginsight.com/2024/12/03204201/bi-fmam14-ps.pdf (PDF, processed via markitdown not required — product sheet only, full report paywalled [NEEDS-ATTENDED-FETCH]: https://www.berginsight.com/fleet-management-in-the-americas/)

(8) Berg Insight — European Fleet Management Systems. TheFastMode summary: https://www.thefastmode.com/technology-and-solution-trends/38435-berg-insight-european-fleet-management-systems-to-reach-27-6-million-units-by-2028

(9) Berg Insight — Fleet Management in Southeast Asia (2nd Edition, 2026). IoT Business News release: https://iotbusinessnews.com/2026/02/26/the-installed-base-of-fleet-management-systems-in-southeast-asia-to-reach-6-4-million-units-by-2029/ | GlobeNewswire (top-5 providers): https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html | Berg Insight SEA product page: https://www.berginsight.com/fleet-management-in-southeast-asia/

(10) Karooooo FY2026 Q4 earnings transcript and press release. Motley Fool transcript: https://www.fool.com/earnings/call-transcripts/2026/05/14/karooooo-karo-q4-2026-earnings-transcript/ | StockTitan: https://www.stocktitan.net/news/KARO/karooooo-reports-record-q4-and-fy2025-results-fuelled-by-xvv1wen59p0v.html | Billionaires Africa FY2026 summary: https://www.billionaires.africa/2026/05/14/billionaire-zak-calistos-karooooo-delivers-record-earnings-in-fy2026-and-raises-dividend-20-as-cartrack-accelerates-across-africa/

(11) GMI Insights — video telematics market $1.69B (2024). https://www.gminsights.com/industry-analysis/video-telematics-market

(12) Berg Insight — video telematics 22M units by 2030. Computer Weekly: https://www.computerweekly.com/news/366641036/North-America-drives-video-telematics-market-to-22-million-units-by-2030

(13) Samsara FY2026 10-K (year ended Jan 31 2026). BusinessWire press release: https://www.businesswire.com/news/home/20260305580818/en/Samsara-Reports-Fourth-Quarter-and-Full-Fiscal-Year-2026-Financial-Results | SEC filing index: https://investors.samsara.com/financials/sec-filings/default.aspx | StockTitan summary: https://www.stocktitan.net/sec-filings/IOT/10-k-samsara-inc-files-annual-report-8c63bca30d34.html

(14) Samsara FY2025 10-K (year ended Feb 1 2025). SEC annual report PDF: https://www.sec.gov/Archives/edgar/data/1642896/000164289625000048/iot2025ars.pdf

(15) Motive S-1 registration statement filed Dec 23 2025. SEC filing: https://www.sec.gov/Archives/edgar/data/1646681/000162828025058773/motive-sx1.htm | Analysis: https://tomtunguz.com/motive-s-1/ | FreightWaves: https://www.freightwaves.com/news/motive-files-for-ipo-signaling-next-phase-of-fleet-tech-arms-race

(16) Karooooo FY2025 annual results and Q1 FY2026 report. BusinessWire FY2025: https://www.businesswire.com/news/home/20250514850216/en/Karooooo-Reports-Record-Q4-and-FY2025-Results-Fuelled-by-Accelerating-Cartrack-Subscriber-Revenue-Growth-and-Robust-Profitability | Q1 FY2026 StockTitan: https://www.stocktitan.net/news/KARO/karooooo-reports-strong-q1-2026-results-highlighted-by-accelerating-it3smerokqr5.html | Q3 FY2026 SEC 6-K: https://karooooo.com/wp-content/uploads/2026/01/KARO_6-K-Q3-FY2026_20260120.pdf

(17) PowerFleet FY2025 annual results (NASDAQ: AIOT). Press release: https://ir.powerfleet.com/press-releases/detail/484/powerfleet-reports-annual-fy2025-results-a-breakout-year | PRNewswire: https://www.prnewswire.com/news-releases/powerfleet-reports-annual-fy2025-results-a-breakout-year-of-strategic-transformation-and-scaled-growth-302481935.html

(18) EROAD FY2025 results (NZX/ASX: ERD). NZX announcement: https://www.nzx.com/announcements/452220 | Annual report PDF: https://eroadglobal.com/wp-content/uploads/2025/05/EROAD-FY25-Annual-Report.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | NZ Herald: https://www.nzherald.co.nz/technology/eroad-squeaks-back-into-the-black-co-ceos-address-tariffs-3g-shutdown/GCB3CIDBFVCABCFYX43WP4HNY4/

(19) Geotab 5M subscription milestone, Sep 2025. Geotab press release: https://www.geotab.com/press-release/geotab-5-million-subscriptions-milestone/ | GlobeNewswire: https://www.globenewswire.com/news-release/2025/09/04/3144864/0/en/Geotab-surpasses-5-million-global-connected-vehicle-subscriptions.html

(20) Geotab estimated revenue ~$970M (2024). GrowJo third-party estimate: https://growjo.com/company/GEOTAB — [ASSUMED-6]: This revenue estimate is not audited; Geotab is private with no public financial disclosure. To validate: request Geotab's audited financial statements from a formal partner or via Geotab Canada government filing.

(21) Motive Series F and Series G funding. Series F (May 2022, $150M, $2.85B valuation): https://www.freightwaves.com/news/motive-raises-valuation-to-2-85b-after-closing-150m-funding-round | Series G (Jul 2025, $150M, Kleiner Perkins): https://gomotive.com/ai-leader-motive-raises-150-million-to-invest-in-product-go-to-market-expansion/

(22) Geotab SEA Singapore office and reseller network. Geotab APAC: https://www.geotab.com/apac/ | SEA expansion press release: https://www.geotab.com/apac/press-release/southeast-asia-expansion/

(23) Platform Science acquisition of Trimble telematics (closed Jan 2025). Trimble investor release: https://investor.trimble.com/news/news-details/2024/Platform-Science-to-Acquire-Trimbles-Global-Transportation-Telematics-Business-Units-to-Drive-the-Future-of-Transportation-In-Cab-Technology/default.aspx | Platform Science close announcement: https://www.prnewswire.com/news-releases/platform-science-completes-acquisition-of-trimbles-global-transportation-telematics-business-units-302371696.html

(24) Verizon Connect — APAC divestiture to Geotab. Geotab press release: https://www.geotab.com/press-release/verizon-connect/ | Enlyft market share: https://enlyft.com/tech/products/verizon-connect

(25) Verizon 2024 10-K — Business segment revenue $29.5B. Verizon annual report: https://www.verizon.com/about/sites/default/files/2024-Annual-Report-on-Form-10k.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | Q4 2024 earnings: https://www.verizon.com/about/sites/default/files/4Q24-Earnings-Press-Release.pdf

(26) Lytx — Permira investment, 300B+ miles database, 2025 Road Safety Report. Permira announcement: https://www.lytx.com/news-events/press-release/2020/lytx-announces-majority-investment-from-the-permira-funds | Road Safety Report: https://www.lytx.com/blog/statistics-for-fleet-managers-from-2025-road-safety-report

(27) Webfleet European subscribers and Frost & Sullivan recognition. Frost & Sullivan write-up: https://www.frost.com/wp-content/uploads/2025/02/Webfleet-Solutions-Final-Award-Write-up.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | Webfleet company: https://www.webfleet.com/en_us/webfleet/company/

(28) Sensorise acquires LocoNav India fleet business (Oct 14, 2025). Autocar Professional: https://www.autocarpro.in/news/sensorise-acquires-loconavs-india-operations-unveils-eagleai-fleet-management-platform-129228 | APN News: https://www.apnnews.com/sensorise-acquires-loconavs-india-fleet-management-business-launches-eagle-ai-to-power-smarter-safer-fleets/

(29) LocoNav pre-acquisition profile: $48.7M ARR; $47M total funding including Peak XV, RIT Capital. GetLatka: https://getlatka.com/companies/loconav | LocoNav Series B announcement: https://loconav.com/blog/loconav-raises-37-million-dollar-series-b-funding/

(30) Tata Motors Fleet Edge — 500,000+ connected vehicles Jan 2024. Tata Motors press release: https://www.tatamotors.com/press-releases/tata-motors-fleet-edge-digitally-connects-5-lakh-commercial-vehicles/ | Telematics Wire: https://telematicswire.net/tata-motors-connects-500k-vehicles-to-fleet-edge-platform/

(31) Ashok Leyland i-Alert — AIS-140, features, version history. Trucks CardDekho: https://trucks.cardekho.com/en/news/detail/explore-advanced-features-of-ashok-leylands-i-alert-fleet-telematics-to-make-commercial-vehicles-smarter-2884.html | i-Alert product page: https://ialert2.ashokleyland.com/

(32) BharatBenz Truckonnect — connected truck telematics. BharatBenz product page: https://www.bharatbenz.com/truckonnect/ | Daimler Truck Asia release: https://asia.daimlertruck.com/en/press-releases/japan/truckonnect-now-available-bharatbenz-trucks/

(33) NavInfo (SHE: 002405) H1 2024 revenue RMB 1.667B. Futunn earnings report index: https://www.futunn.com/en/stock/002405-SZ/news/announcement/earning-report | MarketScreener profile: https://www.marketscreener.com/quote/stock/NAVINFO-CO-LTD-11367139/company/

(34) Full Truck Alliance FY2024 20-F. PRNewswire results: https://www.prnewswire.com/news-releases/full-truck-alliance-co-ltd-announces-fourth-quarter-and-fiscal-year-2024-unaudited-financial-results-302392757.html | 20-F filing last10k: https://last10k.com/sec-filings/ymm/0001193125-25-079553.htm

(35) Jimi IoT SEA installed base. Berg Insight BusinessWire release: https://www.businesswire.com/news/home/20241105818026/en/Southeast-Asia-Fleet-Management-Market-Report-2024---Fleet-Management-Solutions-in-Southeast-Asia-Expected-to-Double-by-2028-Reaching-5.4-Million-Units---ResearchAndMarkets.com

(36) TransTRACK Series A and Berg Insight recognition. TransTRACK press release: https://blog.transtrack.co/en/press-release/transtrack-technology-summit-2024-fleet-innovation-and-expansion-strategy-with-series-a-funding-of-idr185-billion/ | Berg Insight recognition: https://blog.transtrack.co/en/press-release/transtrack-recognized-again-as-one-of-the-largest-fleet-management-providers-in-southeast-asia-by-berg-insight/

(37) KATSANA Malaysia — revenue, customers, funding. GetLatka $3.2M revenue: https://getlatka.com/companies/katsana-holdings-sdn-bhd | Crunchbase funding: https://www.crunchbase.com/organization/pixelated | KATSANA UBI/insurance article: https://www.katsana.com/telematics-insurance-malaysia-katsana/

(38) Berg Insight SEA top-5 providers (Jimi IoT, Cartrack, TransTRACK, DTC, Onelink). GlobeNewswire: https://www.globenewswire.com/news-release/2024/10/30/2971463/28124/en/Southeast-Asia-Fleet-Management-Market-Report-2024-Featuring-Top-5-Players-Jimi-IoT-Cartrack-Karooooo-TransTRACK-DTC-and-Onelink.html [NEEDS-ATTENDED-FETCH for full Berg Insight report]

(39) Netradyne Driveri accident reduction data — case studies and GreenZone Score methodology. Netradyne ROI guide: https://www.netradyne.com/guides/roi-guide | D.M. Bowman case study: https://www.netradyne.com/case-study/dm-bowman-cuts-preventable-dot-crash-costs-by-98-with-netradyne | NOVA Engineering case study: https://www.netradyne.com/case-study/nova-engineering-environmental-achieves-63-accident-reduction-with-netradyne

(40) Werner Enterprises Samsara dashcam deployment — 22% accident reduction, 19-year DOT low. Samsara customer story: https://www.samsara.com/customers/werner-enterprises | Work Truck Online: https://www.worktruckonline.com/10188918/werner-chooses-samsara-for-safety

(41) ABI Research commercial telematics competitive ranking 2025 — Geotab #1 overall, PowerFleet #1 innovation, Verizon Connect Top Implementer. PRNewswire: https://www.prnewswire.com/news-releases/geotab-samsara-and-powerfleet-take-the-top-spots-in-abi-researchs-commercial-telematics-competitive-ranking-302380732.html

(42) BPS Indonesia — registered motor vehicles by type, 2023. https://www.bps.go.id/id/statistics-table/2/NTcjMg==/perkembangan-jumlah-kendaraan-bermotor-menurut-jenis.html (6,091,822 registered trucks; 157M total vehicles)

---

## Assumptions to Validate

[ASSUMED-1]: AI dashcam event detection models trained on US/EU road data have materially lower accuracy for motorcycle-dense Southeast Asian traffic conditions.
- To validate: Request Netradyne, Cartrack, and Lytx false-positive and missed-event rates for SEA deployments vs. North American fleets; specifically ask whether models have been retrained on SEA road footage and whether a motorcycle detection module exists.

[ASSUMED-2]: No SEA government has enacted or is actively planning an ELD-equivalent mandatory GPS tracking regulation for commercial trucks as of mid-2026.
- To validate: Check with Indonesian Kementerian Perhubungan (Ministry of Transportation), Thailand Department of Land Transport (DLT), Malaysian JPJ (Road Transport Department), and Singapore Land Transport Authority for any mandate pipeline; request regulatory affairs team at Cartrack SEA for status.

[ASSUMED-3]: No SEA commercial insurer (including Tokio Marine Indonesia, Sompo Indonesia, AXA Mandiri) currently offers premium discounts or device-subsidy programs in exchange for telematics data from small commercial vehicle operators.
- To validate: Interview underwriting product managers at Tokio Marine Indonesia, Sompo Indonesia, and Allianz Indonesia on whether any UBI or fleet telematics discount structure exists in their commercial auto or cargo product lines.

[ASSUMED-4]: GPS jamming is a materially frequent cause of tracking blackouts (distinct from cellular dead zones) on high-cargo-theft routes in North Sumatra, Java, and Sulawesi.
- To validate: Request incident-level signal-loss logs from TransTRACK and Cartrack Indonesia operations teams; ask whether any law enforcement report distinguishes between jamming and natural dead zones on the North Sumatra–Jakarta route.

[ASSUMED-5]: In-cab driver-facing camera deployment in Indonesia, Malaysia, and Thailand requires informed employee consent under existing personal data protection laws, and no fleet operator has yet faced regulatory enforcement.
- To validate: Review Indonesia UU PDP No. 27/2022, Thailand PDPA 2022, and Malaysia PDPA 2010 for provisions on workplace monitoring and employee recording; consult local employment counsel on whether any enforcement action or complaint has been filed.

[ASSUMED-6]: Geotab's estimated revenue of ~$970M (2024) is a third-party estimate with no audited financial verification; Geotab is a private company with no public filing obligation.
- To validate: Request Geotab's audited financial statements via a formal business partner relationship or through Canadian corporate registry filings if available.

[ASSUMED-7]: Full Truck Alliance (NYSE: YMM) does not operate a standalone carrier-facing fleet telematics product; its GPS tracking of trucks occurs as a platform feature embedded in freight matching, not as a separately sold telematics SaaS.
- To validate: Review YMM FY2024 20-F technology services section; request YMM investor relations for clarification on whether fleet telematics is offered as a standalone product to truckers outside the freight matching platform.

# Stage 4: In-Transit Visibility & Cargo IoT — Value Chain

*Run ID: 2026-05-17-2337 | Generated: 2026-05-18*

---

## Stage 4: In-Transit Visibility & Cargo IoT

### Description

In-transit visibility and cargo IoT is the technology layer that monitors where freight is, the condition it is in, and what risks it faces between the moment it is tendered to a carrier and the moment it is delivered. This stage encompasses three overlapping actor types: real-time transportation visibility platforms (RTTVPs) that aggregate carrier, ELD, and port event data to produce a shipment status feed; cargo-level IoT sensor vendors that attach GPS, temperature, shock, and humidity loggers to individual pallets or shipments; and supply chain control towers that apply AI analytics on top of both streams to trigger exception workflows and decisions. The critical structural constraint of this stage is that visibility is almost always deployed by a single party (shipper or 3PL) and covers only the carriers that party has directly integrated — data collapses or disappears when freight is subcontracted to carriers outside the platform's integration network.

---

### Activities

1. **Multimodal shipment tracking and ETA prediction:** Aggregating carrier position signals from ELDs, GPS devices, TMS integration feeds, ocean carrier APIs, and port events into a unified shipment timeline; applying machine-learning models to predict estimated time of arrival (ETA) at each milestone with confidence bands; issuing automated proactive exception alerts when predicted delivery diverges from committed window. project44 processes over 1.5 billion shipments annually across 240,000+ carriers; FourKites tracks 1,500+ enterprise brands across 50+ countries; Shippeo tracks 90M+ shipments annually across 228,000+ carriers. (1, 2, 3)

2. **Cargo-level condition monitoring:** Attaching reusable or disposable IoT tracker devices to individual shipments — container, pallet, or case level — that continuously log GPS position, temperature, humidity, shock, light intrusion, and door-open events; transmitting alerts in real time when a parameter exceeds a defined threshold; providing a post-delivery exception report that supports claims documentation. Tive sold 4M+ trackers through May 2026 across 1,200+ customers in 186 countries; ORBCOMM leads with 2.1M installed units on trailers and containers; Sensitech (Carrier Global) and Controlant dominate pharmaceutical cold chain. (4, 5, 6)

3. **Carrier network integration and data enrichment:** Building and maintaining bilateral data connections to carrier fleets through direct ELD API (Samsara, Motive, Geotab), EDI 214 status updates, mobile driver apps, or cellular trackers installed on the load; applying data quality scoring, deduplication, and conflation logic where multiple data sources emit for the same shipment. project44's Connection Accelerator provides access to 80,000+ carriers; Descartes MacroPoint connects through ELD and TMS integration, with 80% of Landstar's brokered loads tracked. (1, 7)

4. **Exception management and automated alerting:** Running configurable business rules and AI models on live shipment feeds to identify at-risk loads — delays exceeding thresholds, temperature excursions, unexpected route deviations, carrier detention, port congestion — and triggering workflows to customer-service teams, procurement systems, or directly to carriers; generating automated carrier communications (project44 deployed nearly 1M automated voice calls and emails in its trailing year). (1, 8)

5. **Supply chain control tower analytics and decision orchestration:** Applying multi-tier network analytics on top of visibility data to model propagating disruption effects, score shipment risk, generate prescriptive recommendations, and automate re-routing or re-sourcing decisions; integrating upstream signals (weather, labor actions, port advisories, news) with in-transit data to provide decision intelligence beyond shipment tracking. Overhaul positions its platform as protecting $1.4 trillion in cargo trade at any moment; e2open (acquired by WiseTech for $2.1B in August 2025) connects 500,000+ partner entities and tracks 18B+ transactions annually. (8, 9)

---

### Revenue Model

Annual SaaS subscription tiered by shipment volume and mode coverage (road, ocean, air, rail) with upsell on per-carrier integration fees, advanced analytics modules, and control tower add-ons; cargo IoT vendors layer a device hardware sale or subscription ($3–30/tracker/month depending on multi-parameter features and connectivity) on top of a per-shipment SaaS fee.

---

### Cost Drivers

Carrier network integration labor and maintenance (each new carrier connection requires bilateral testing; 240,000+ carrier connections at project44 and 228,000+ at Shippeo represent the dominant cost driver for RTTVPs); cloud infrastructure for real-time data ingestion and ML inference at billion-shipment scale; hardware bill of materials for IoT devices ($15–120/unit depending on multi-parameter sensors, battery type, and connectivity: cellular, BLE, LPWAN, or satellite); cellular data plan costs for devices transmitting globally; R&D for AI-based ETA prediction and exception scoring models; direct enterprise sales (typical deal size $100k–$2M+/year for Fortune 500 shippers).

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global cargo tracking hardware installed base (trailers, containers, rail wagons, ULDs, pallets, cargo devices) | 13.8M active units (end 2024); 26.9M projected by 2029; 14.3% CAGR. Trailer tracking = 43% of installed base; intermodal container = 41%. ORBCOMM largest single provider at 2.1M units (end 2024) | **High** — Berg Insight 13th Edition (Dec 2025) product sheet PDF directly fetched and verified via markitdown; GlobeNewswire press release 18 Dec 2025 corroborates verbatim | (4) |
| Global cargo tracking market revenue (hardware + software subscription, all cargo carrying unit types) | €2.7B (~$2.96B at 1.1 EUR/USD) in 2024; €4.5B (~$4.95B) projected 2029; 10.8% CAGR | High — Berg Insight 13th Edition (2025); same primary source as installed base | (4) |
| Global cargo tracking shipments (new units shipped worldwide in 2024) | 4.4M units; 7.2M units projected 2029; 10.3% CAGR | High — Berg Insight 13th Edition (2025) | (4) |
| Global supply chain visibility software market (broader scope: RTTVPs + visibility analytics, narrower than control towers) | $3.2B–$4.9B range across convergent estimates (2024); $865M–$2.5B for narrower RTTVP-software-only scope | Low — range reflects scope definition spread across commercial research firms; no government or multilateral primary source available; bottom-up triangulation via audited vendor revenues gives more confidence (see note below) | (10, 11) |
| project44 implied revenue scale (triangulated from funding, self-reported data, and prior ARR disclosure) | ~$210M revenue (2024, self-reported survey); $124.1M booked ARR at H1 2022 (company press release); 30%+ YoY SaaS growth FY2024; Q4 FY2026 48% new ARR growth; first positive operating free cash flow Q4 2025 | Medium — company press releases (not audited; private company); $124.1M H1 2022 ARR provides floor; consistent with $200M+ scale | (1, 12, 13) |
| FourKites revenue (private company) | ~$114.3M revenue (2024, self-reported survey); $243M total raised (THL, Bain Capital, Qualcomm Ventures, Volvo Group, Zebra Technologies, Mitsui) | Low — self-reported survey data; not audited | (14) |
| Shippeo revenue (private company) | $22.3M revenue (2024, self-reported); $140M total raised; $30M Series D-II January 2025 led by Woven Capital (Toyota) | Low — self-reported survey data; not audited; Shippeo confirmed 40% North America customer growth, 92% shipment growth, 53% APAC customer growth via press releases | (3, 15) |
| Tive ARR (private company) | $100M booked ARR (May 14, 2026 press release); 1,200+ customers; 4M+ trackers sold; 12B miles logged | Medium — company press release; not audited; private company; milestone announcement credible given tracker volume | (16) |
| Global cold chain monitoring market (pharmaceutical + food temperature monitoring, broader than cargo IoT) | $8.31B in 2025 to $15.04B by 2030; 12.6% CAGR | Medium — MarketsandMarkets primary report; single source; pharma segment fastest-growing; Asia-Pacific fastest-growing region | (17) |
| Asia-Pacific cold chain telematics CAGR | 25.6% CAGR (2024–2030); APAC ~26% of global cold chain telematics market in 2024 | Medium — GMI Insights cold chain telematics; corroborated directionally by MarketsandMarkets APAC fastest-growing designation | (18) |

**Bottom-up market size note:** Audited or disclosed vendor revenues for the RTTVP category (project44 ~$210M, FourKites ~$114M, Shippeo ~$22M, Descartes MacroPoint within $651M Descartes total, Transporeon within $788.8M Trimble T&L segment) suggest the pure-RTTVP software market is $500M–$1B in annual vendor revenue globally, with cargo IoT hardware and software adding €2.7B per Berg Insight. Combined, the Stage 4 ecosystem is a $3B–$4B total-spend market (2024) growing at 10–14% CAGR. No government or multilateral body has published a primary market size figure for this category.

**Data gap — country-level SEA market size:** No government statistics agency (BPS Indonesia, DOSM Malaysia, NSO Thailand, SingStat), ADB, World Bank, or named consultancy primary report has published a country-specific market size for RTTVP or cargo IoT in any individual SEA country. The APAC cold chain CAGR is the closest available primary proxy.

---

### Current Players by Region

**North America (RTTVP):**
- **project44 (private; $912M total raised; Thoma Bravo, TPG, Goldman Sachs)** — 2025 Gartner MQ Leader (5th consecutive year); highest on both Ability to Execute and Completeness of Vision axes; 1,000+ customers; 240,000+ carriers; 1.5B+ shipments/year; Intelligent TMS product launched August 2025 with 160+ customers and $35M+ ARR; Q4 2025 first positive Operating Free Cash Flow; 48% new ARR growth Q4 YoY; India R&D hub opened Bengaluru August 2024. SEA: Limited — VP/GM for ANZ and SEA appointed May 2024; OTR tracking live in Thailand, Philippines, Singapore, Malaysia per company coverage claims; no dedicated SEA office confirmed; China delivered "strongest financial performance in 10 quarters" per Q3 2025 press release. (1, 8)
- **FourKites (private; $243M total raised; THL, Bain Capital Ventures, Qualcomm Ventures, Volvo Group, Zebra Technologies, Mitsui)** — Gartner MQ Leader; 1,500+ enterprise customers; Singapore legal entity (FourKites Singapore Pte Ltd); APAC HQ in Chennai, India (September 2023); 91% increase in new APAC customers and 240% growth in APAC shipments tracked in one 12-month period; OTR tracking live in Australia, New Zealand, India, Thailand, Taiwan, Philippines, Singapore, Malaysia; MKI exclusive Japan reseller (Mitsui-backed). SEA: YES — Singapore office; OTR tracking operational in SG, TH, MY, PH. (2, 19)
- **Descartes MacroPoint (NASDAQ: DSGX; Descartes Systems Group)** — RTTVP embedded in Descartes Global Logistics Network; 80% of Landstar brokered loads tracked via MacroPoint; FraudGuard 2.0 launched April 2024; Descartes total FY2025 revenue $651M; MacroPoint revenue not separately disclosed. SEA: Partial — Descartes has APAC offices (Singapore, Melbourne, Hong Kong) but MacroPoint's carrier network is predominantly US and EU. (7, 20)
- **Overhaul (private; $304M total raised; Springcoast Partners, Edison Partners, Morgan Stanley 1GT)** — $105M Series C August 2025; risk-focused visibility (theft prevention, compliance, exception management); 99.9% shipment protection rate; $1.4T cargo protected; clients: Microsoft, Bristol Myers Squibb, CEVA Logistics, Arvato; acquired FreightVerify (added 6 of top-10 automotive manufacturers); Gartner MQ Challenger 2024. SEA: Not confirmed — global reach claimed in 170 countries but no SEA-specific office or named SEA customer found in research. (8, 21)

**Europe (RTTVP):**
- **Shippeo (private; $140M total raised; Woven Capital [Toyota], Battery Ventures, Partech, NGP Capital)** — 2025 Gartner MQ Leader (2nd consecutive year); 90M+ shipments/year across 150 countries; 228,000+ carrier integrations; 1,100+ system integrations; $30M Series D-II January 2025 for North America and APAC expansion; APAC: 53% customer growth and 64% shipment growth in trailing year; clients include Amazon, Yamaha Motor, Fujifilm, Philip Morris International. SEA: Expansion stage — Woven Capital (Toyota) investment aimed at APAC; no dedicated SEA office confirmed; Shippeo Driver mobile app enables spot carrier onboarding without pre-integration, relevant for SEA informal carrier coverage. (3, 15)
- **Wakeo (private; €30M+ raised; Statkraft Ventures, Promus Ventures, 360 Capital)** — Europe-headquartered multimodal visibility (sea + air + road + rail); $4.5M revenue (2024); 67 employees; clients: Air Liquide, Faurecia, Michelin, Acer, Hilti; primarily shipper-facing for overseas trade lanes; Series B €18M December 2023. SEA: No confirmed presence — France-headquartered; trade lane coverage into/out of Asia via ocean APIs, not SEA domestic road freight. (22)
- **Transporeon Visibility (Trimble, NASDAQ: TRMB)** — Launched 2024; combines Trimble Visibility and Transporeon's freight marketplace; 158,000+ carriers; 110,000+ daily transports; €59B+ freight processed annually; 1,400+ shipper clients primarily European; Trimble T&L segment FY2024 revenue $788.8M (includes Transporeon, TMW, ELD, other products). SEA: No confirmed SEA presence — European carrier network dominant; North America rollout in progress as of 2024. (23)
- **Portcast (Singapore HQ; private; $6.5M Series A November 2024; Susquehanna Asia VC, Hearst Ventures)** — Native SEA RTTVP; ocean and air visibility specialist; processes 5M data points daily across 370+ carriers and 800 ports; Gartner Notable Vendor 2025 MQ RTTVP (3rd consecutive year); clients include AIT Corp, Sumitomo Warehouse, MPG Group. SEA: YES (native — Singapore HQ; APAC-first platform). (24)

**Cargo IoT (Global):**
- **Tive (private; $114M+ total raised; WiL, Sageview Capital, AXA Venture Partners, Qualcomm Ventures)** — $100M booked ARR (May 2026); 1,200+ customers; 4M+ trackers sold; 186 countries; Solo 5 (multimodal: LTE + BLE + satellite); temperature, humidity, shock, light, tilt sensors; 12B miles logged; life sciences, food and beverage, high-value electronics primary verticals. SEA: Coverage across 186 countries including SEA, but no dedicated SEA office or named SEA customer confirmed in research. (16)
- **Sensitech (Carrier Global; NYSE: CARR)** — Pharmaceutical and food cold chain leader; acquired Berlinger & Co. AG Monitoring Solutions August 2024 for pharma temperature monitoring; Carrier Global FY2024 total net sales $22,486M (10-K via Fortune mirror, fetched via markitdown — figure corrected from earlier $5.8B in pre-research draft); Climate Solutions Transportation segment (Carrier Transicold + Sensitech combined) $3,475M; Sensitech revenue not separately disclosed; GxP-compliant (21 CFR Part 11 / Annex 11). Sensitech homepage cites 16M shipments monitored annually across 130 countries. SEA: Carrier Global has Singapore, Malaysia, Thailand regional offices; Sensitech's pharma cold chain is deployed in SEA by multinational pharma logistics operators. [ASSUMED-8]: "validated by 8 of top-30 global pharma companies" appears in vendor marketing only; not located in SEC filings or Sensitech's own site. (5, 25)
- **Controlant (private; $92–219M raised; Frumtak Ventures, Iceland HQ)** — Pharmaceutical cold chain real-time monitoring; Series C closed November 2024; 8 of top-30 global pharma companies validated; GxP-compliant; end-to-end platform with automated workflow for temperature excursion management. SEA: Deployed via multinational pharma logistics operators in SEA; no dedicated SEA office confirmed. (6)
- **ORBCOMM (private; acquired by GI Partners 2021; formerly NYSE: ORBC)** — Largest installed base for trailer and container tracking (2.1M units, end 2024); Berg Insight #1 in installed base; full-logistics IoT suite (reefer, dry van, intermodal container, rail, maritime); serves major trucking fleets, ocean carriers (Maersk reefer containers), and rail operators. SEA: Global satellite and cellular network; coverage in SEA via cellular networks; not primarily a SEA-facing go-to-market. (4)
- **Decklar (formerly Roambee; rebranded September 2025; private; $45M raised; Reefknot Investments Singapore participated in Series B)** — "Real-time decision AI platform for supply chains" post-rebrand; 300+ enterprise customers including 50+ of Global Top 100 companies; ~$35M ARR (pre-rebrand 2025); Asia office established (Singapore-based VP/MD APAC appointed); pharma cold chain use case. SEA: Singapore investor presence via Reefknot Investments (Temasek-backed); VP/MD APAC Michael Culme-Seymour. (26)
- **Nexxiot (private; Switzerland HQ)** — Berg Insight #2 in container and rail cargo tracking installed base; container and rail freight wagon tracking; strong Europe-to-Asia trade lane coverage for containerized ocean freight. SEA: Coverage through container tracking on global shipping lanes; no dedicated SEA road freight presence. (4)

**SEA-native and SEA-focused:**
- **Portcast (Singapore)** — See Europe section above; only native SEA vendor in the 2025 Gartner RTTVP MQ. (24)
- **Data gap — SEA native cargo IoT vendors:** No SEA-headquartered cargo IoT sensor vendor (GPS + temperature + shock) with verifiable customer traction has been identified beyond Portcast's ocean visibility niche. Western vendors (Tive, Sensitech, Decklar/Roambee) claim 186-country or global coverage but do not document dedicated SEA sales teams, local distribution, or named SEA customers for road freight use cases.

---

### Preliminary Pain Points (this stage)

1. **Visibility collapses at the subcontracting handoff — WH2 directly evidenced.** When a 3PL or broker re-tenders a load to a sub-carrier who is not pre-integrated with the shipper's RTTVP, the platform has no live feed for that shipment segment. Shippeo documents this explicitly: "If the subcontractor's vehicle isn't already connected with the visibility platform that the shipper, carrier or logistics service provider is already using, then there can be no real-time tracking of the shipment." In SEA markets where 3PLs routinely sub-contract to small owner-operators and where no telematics mandate creates a baseline integration floor, the majority of loads are invisible to shipper-deployed RTTVPs between dispatch and delivery confirmation. (3, 27)

2. **Carrier integration depth on small and informal carriers remains critically thin.** Beacon's 2024 Supply Chain Visibility Capabilities Report found 44% of companies lack automated data-sharing processes with supply chain partners. In the US, 95% of capacity resides with carriers operating fewer than 5 trucks — none of whom have pre-built ELD API integrations with RTTVPs. Shippeo's mobile driver app and project44's app-based tracking are the stopgap, but driver app adoption requires carrier consent and consistent smartphone data access. In SEA, where owner-operators may not have smartphones with reliable data plans, and where 3PL sub-contracting layers are deeper than in North America, this integration gap is structurally worse. (27, 28)

3. **Cargo IoT sensor data is point-deployed and siloed — WH3 directly evidenced.** The industry structure confirms WH3: shippers attach Tive or Controlant devices paid from their own budget; insurers attach Parsyl or ORBCOMM devices from their own coverage program; 3PLs install their own carrier-sourced trackers. Each party owns its data stream, and there is no shared-sensor or data-sharing protocol across parties on the same shipment. A claim investigation requiring temperature history from delivery point back to origin often crosses three data silos — shipper-deployed, 3PL-deployed, and consignee-deployed — with no unified chain-of-custody record. (4, 29)

4. **SEA road visibility has no infrastructure baseline.** Shipper visibility in SEA road freight depends on carrier-side telematics being installed and integrated. As documented in Stage 3: Berg Insight estimates 3.6M active fleet management units across all of SEA (2024) out of an addressable commercial fleet far exceeding 10M vehicles. No ELD or GPS mandate exists in any SEA country. The majority of informal carriers in Indonesia, Thailand, and Vietnam have no telematics device at all, making carrier-side data integration for RTTVPs structurally impossible without physical device installation by the shipper or 3PL — a cost model that works for high-value pharmaceutical loads but not for general cargo.

5. **Data quality from carrier-sourced GPS feeds varies enormously across integration method.** project44 processes 1.5B shipments annually with 240,000+ carrier connections, but connection quality varies: direct ELD API integrations (Samsara, Motive, Geotab) yield high-frequency validated position data; EDI 214 status updates yield 4–8 event-level records per shipment at fixed milestones; mobile driver app pings yield GPS positions only when the app is open. Position interpolation between sparse events is estimated, not observed. For SEA, where the integration method defaults to app-based or no tracking, ETA predictions based on thin data have materially lower confidence. (1)

6. **Temperature excursion accountability is fragmented across custody points.** Cold chain shipments (pharmaceutical, fresh food, chemical) change hands 3–7 times from manufacturer to end customer. Each custody handoff resets accountability: Sensitech or Tive data shows a temperature excursion occurred at some point during transit, but attributing the excursion to the specific leg where it occurred (manufacturer warehouse, origin port dwell, ocean transit, destination port dwell, last-mile delivery) requires synchronized timestamp data from the same sensor across all custody legs. In practice, the sensor belongs to and is read by one party (shipper or insurer) and other parties dispute responsibility without independent data. [ASSUMED-1] (5, 6)

7. **RTTVPs have no penetration in the informal SEA logistics tier.** The Gartner 2025 MQ for RTTVPs lists project44, FourKites, Shippeo, Overhaul, Portcast, and Wiliot as recognized vendors — all serving enterprise Fortune 500 shippers or large 3PLs. No platform in the Gartner MQ serves the informal-sector shipper tier (SME shippers contracting Indonesian truckers, Thai agricultural exporters, Vietnamese apparel manufacturers). This is the tier where most SEA freight originates and where cargo risk is highest. [ASSUMED-2] (28)

8. **Insurance claims cannot access RTTVP data at incident time in most SEA markets.** When cargo is damaged or stolen in SEA, the insurance claim process requires police reports, carrier statements, and shipper documentation. RTTVP data is owned by the shipper and is not automatically shared with the insurer at claim initiation. Overhaul's integrated risk-plus-visibility model (visibility data shared with insurer) is the closest available solution, but Overhaul's SEA presence is unconfirmed. No SEA cargo insurer has a documented API integration with any RTTVP platform for automated FNOL. [ASSUMED-3] (8)

9. **Satellite connectivity gap undermines cargo IoT on remote SEA corridors.** IoT trackers on long-haul road routes in Sumatra, Kalimantan, Sulawesi, and Mekong Delta have prolonged cellular dead zones. Tive's Solo 5 supports satellite fallback; ORBCOMM operates its own satellite network. But satellite-enabled devices cost $60–120/unit vs. $15–30 for cellular-only devices, and satellite data plans cost $5–15/month above cellular — a multiplier that pushes economics beyond what commodity cargo values can support. The result: SEA remote corridors default to cellular-only trackers that drop offline for hours, creating blackout windows on exactly the routes with highest theft risk. [ASSUMED-4]

10. **No SEA-native RTTVP covers domestic road freight at scale.** Portcast (Singapore) is the only SEA-headquartered vendor recognized in the 2025 Gartner RTTVP MQ, but Portcast specializes in ocean and air trade lanes, not domestic road freight within SEA countries. A cargo owner shipping from Jakarta to Surabaya, Bangkok to Chiang Mai, or Kuala Lumpur to Penang has no locally-operated RTTVP with carrier integrations covering that corridor. project44 and FourKites have OTR tracking coverage in Thailand, Singapore, Malaysia, and Philippines but primarily serve multinational shippers; their carrier integration depth for small Indonesian or Vietnamese truck operators is unvalidated. [ASSUMED-5] (1, 2, 24)

11. **AI disruption intelligence does not yet include SEA-specific freight risk signals.** project44's AI Disruption Navigator monitors 8B+ data sources and 100,000+ news posts hourly across 120+ risk categories. These systems are trained predominantly on North American, European, and China disruption patterns. SEA-specific risk signals — Indonesian labor strikes at Tanjung Priok, Thai monsoon-season flooding on Highway 32, Malaysian customs clearance delays at Johor Baru — are not systematically captured as structured input signals to disruption alerts for SEA-deployed shipments. [ASSUMED-6] (1)

12. **Cargo IoT cost-per-shipment is prohibitive for SEA commodity freight.** Tive's Solo Lite (entry device) costs approximately $3–8/shipment in tracker fee, cellular data, and platform fee for a multimodal shipment. For a $200 FMCG pallet from an Indonesian SME exporter, a $5/shipment tracking cost represents 2.5% of cargo value — a threshold that makes per-shipment IoT uneconomical for commodity freight. In North America and Europe, tracking costs are absorbed across high-value loads ($10,000+ average per tracked shipment). The SEA average cargo value per shipment is materially lower, particularly for agricultural produce, FMCG, and garments — the dominant SEA export categories. [ASSUMED-7]

---

### Sources for this stage

(1) project44 Q4 FY2026 press release — first positive Operating Free Cash Flow, 48% new ARR growth, Intelligent TMS $35M ARR, 160+ customers, 1.5B shipments, 240,000 carriers. https://www.project44.com/press-releases/project44-achieves-first-positive-operating-free-cash-flow-quarter-with-48-percent-new-arr-growth-in-q4/ and https://www.prnewswire.com/news-releases/project44-achieves-first-positive-operating-free-cash-flow-quarter-with-48-new-arr-growth-in-q4-302695113.html

(2) FourKites — Singapore entity, APAC expansion, Mitsui investment, OTR tracking SEA coverage. Global offices: https://www.fourkites.com/about/global-offices/ | Mitsui $10M investment: https://www.fourkites.com/press/fourkites-announces-10m-strategic-investment-from-mitsui-co-to-transform-supply-chains-in-asia-pacific/ | APAC HQ Chennai: https://www.fourkites.com/press/fourkites-opens-new-apac-headquarters-in-chennai/

(3) Shippeo $30M Series D-II January 2025, Woven Capital, APAC expansion — press release: https://www.shippeo.com/press-releases/shippeo-raises-30m-strategic-round-led-by-woven-capital-to-accelerate-us-and-apac-expansion | BusinessWire: https://www.businesswire.com/news/home/20250113725048/en/Shippeo-Raises-$30m-Strategic-Round-Led-by-Woven-Capital-to-Accelerate-US-and-APAC-Expansion | FreightWaves APAC metrics: https://www.freightwaves.com/news/shippeo-lands-30m-to-further-its-north-american-and-asia-pacific-ambitions

(4) Berg Insight — Trailer and Cargo Container Tracking, 13th Edition (2025). Installed base 13.8M units (2024), shipments 4.4M/year, market revenue €2.7B, ORBCOMM 2.1M units installed base, top-3 vendors (ORBCOMM, Nexxiot, SkyBitz), cargo device leaders (Sensitech, DeltaTrak, Tive, Controlant, Decklar/Roambee). Product sheet PDF (PDF, processed via markitdown): http://media.berginsight.com/2025/12/13211620/bi-container13-ps.pdf | GlobeNewswire 12th Edition (2025) with 2023 data: https://www.globenewswire.com/news-release/2025/01/14/3009299/28124/en/Trailer-and-Cargo-Container-Tracking-Report-12-Edition-ORBCOMM-Nexxiot-and-SkyBitz-Remain-Top-Three-in-Terms-of-Number-of-Deployed-Tracking-Devices.html | Active cargo tracking CAGR (IoT Business News): https://iotbusinessnews.com/2021/10/25/13560-the-installed-base-of-active-cargo-tracking-units-to-reach-29-million-by-2025/

(5) Sensitech (Carrier Global, NYSE: CARR) — Berlinger & Co acquisition August 2024, pharma cold chain leadership. Carrier press release: https://www.carrier.com/carrier/en/worldwide/news/news-article/sensitech-launches-next-generation-iot-supply-chain--monitoring-devices.html | Carrier 2024 Annual Report: https://fortune.com/company-assets/734/quartr/annual-report-10-k-23c93-2026-02-05-08-34-27.pdf [NEEDS-ATTENDED-FETCH for full 10-K]

(6) Controlant — pharma cold chain, Series C November 2024, $92–219M raised. Controlant website: https://www.controlant.com/ | Food Logistics Series B: https://www.foodlogistics.com/transportation/cold-chain/press-release/21196285/controlant-controlant-raises-15m-in-series-b-funding-to-digitally-transform-the-global-supply-chain

(7) Descartes MacroPoint — carrier integration, Landstar 80% tracking compliance, FraudGuard 2.0. Descartes news April 2024: https://www.descartes.com/resources/news/new-descartes-macropoint-capabilities-help-combat-fraud-transportation-and-logistics | GlobeNewswire April 2024: https://www.globenewswire.com/news-release/2024/04/10/2861167/9197/en/New-Descartes-MacroPoint-Capabilities-Help-Combat-Fraud-in-Transportation-and-Logistics.html

(8) Overhaul $105M Series C August 2025 — $1.4T cargo protected, Microsoft, BMS, CEVA clients, FreightVerify acquisition, 170-country reach. PRNewswire: https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html | Morgan Stanley MSIM 1GT: https://www.morganstanley.com/im/en-us/individual-investor/insights/press-release/msim-1gt-invests-in-series-c-funding-for-overhaul-group.html | Silicon Republic (FreightVerify): https://www.siliconrepublic.com/business/irish-founded-logistics-tech-player-overhaul-raises-105m-acquires-freightverify-dundalk

(9) WiseTech Global acquires e2open for $2.1B (completed August 2025) — 500,000+ partner entities, 18B transactions. WiseTech press release: https://www.wisetechglobal.com/news/wisetech-global-announces-strategic-acquisition-of-e2open/ | E2open completion: https://www.e2open.com/news/press-releases/wisetech-global-completes-strategic-acquisition-of-e2open/

(10) GMI Insights — Global Logistics Visibility Software Market $865.6M (2025) to $2,547.8M (2035). https://www.gminsights.com/industry-analysis/supply-chain-visibility-software-market — single commercial research firm; auto-Low; scope definition varies.

(11) DataIntelo — Real-Time Freight Visibility Platform Market $153M (2024). https://dataintelo.com/report/real-time-freight-visibility-platform-market — single commercial firm; narrow scope; auto-Low.

(12) project44 FY2024 annual results press release — 30%+ YoY SaaS and total GAAP revenue growth. PRNewswire: https://www.prnewswire.com/news-releases/project44-concludes-strong-fy-2024-with-over-30-year-over-year-growth-in-both-software-as-a-service-and-total-gaap-revenue-302158719.html

(13) project44 H1 2022 ARR disclosure — $124.1M booked ARR; 115% YoY growth. project44 press release: https://www.project44.com/press-releases/project44-reports-124-1m-in-booked-arr-in-h1-2022-115-yoy-growth-versus-q2-2021/

(14) FourKites revenue estimate and funding summary. GetLatka (survey data, not audited): https://getlatka.com/companies/fourkites-inc | Series D $100M: https://www.fourkites.com/press/fourkites-secures-100m-series-d-funding/ | Crunchbase: https://www.crunchbase.com/organization/fourkites

(15) Shippeo revenue and growth metrics. GetLatka (survey, not audited): https://getlatka.com/companies/shippeo | FreightWaves APAC growth: https://www.freightwaves.com/news/shippeo-lands-30m-to-further-its-north-american-and-asia-pacific-ambitions | Digital Commerce 360: https://www.digitalcommerce360.com/2025/01/16/shippeo-secures-30-million-funding/

(16) Tive $100M booked ARR milestone, May 14, 2026. GlobeNewswire: https://www.globenewswire.com/news-release/2026/05/14/3295249/0/en/Tive-Reaches-100-Million-in-Booked-ARR.html | 2M trackers milestone December 2024: https://www.globenewswire.com/news-release/2024/12/03/2990695/0/en/Tive-Hits-Two-Million-Real-Time-Shipment-Visibility-Trackers-Sold.html | Series C $40M January 2024: https://www.tive.com/press-release/tive-secures-40-million-in-series-c-funding-led-by-wil-sageview-capital

(17) MarketsandMarkets — Cold Chain Monitoring Market $8.31B (2025) to $15.04B (2030), 12.6% CAGR. PRNewswire: https://www.prnewswire.com/news-releases/cold-chain-monitoring-market-worth-15-04-billion-by-2030---exclusive-report-by-marketsandmarkets-302552165.html | Full report: https://www.marketsandmarkets.com/Market-Reports/cold-chain-monitoring-market-161738480.html

(18) GMI Insights — Cold Chain Telematics Market; APAC fastest-growing at 25.6% CAGR 2024–2030; global market $5.6B (2024). https://www.gminsights.com/industry-analysis/cold-chain-telematics-market | Fortune Business Insights corroboration: https://www.fortunebusinessinsights.com/cold-chain-telematics-market-115810

(19) FourKites APAC expansion and SEA coverage details. Mitsui investment / Japan: https://www.fourkites.com/press/fourkites-announces-10m-strategic-investment-from-mitsui-co-to-transform-supply-chains-in-asia-pacific/ | MKI Japan reseller April 2023: https://www.fourkites.com/press/fourkites-and-mitsui-appoint-mki-as-exclusive-reseller-in-japan/ | APAC OTR country coverage: https://www.builtinchicago.org/articles/fourkites-secures-10m-asia-pacific-expansion-hiring

(20) Descartes Systems Group FY2025 revenue $651M; MacroPoint carrier tracking. Descartes IR: https://www.descartes.com/resources/news/descartes-announces-fiscal-2025-fourth-quarter-and-annual-financial-results | MacroPoint top carriers H1 2024: https://macropoint.com/news/top-carriers-first-half-2024/

(21) Overhaul Series C details — Springcoast Partners, Edison Partners, $105M August 20 2025. Built In Austin: https://www.builtinaustin.com/articles/overhaul-raises-105m-20250821 | Total funding $304M: https://pulse2.com/overhaul-105-million-series-c-raised-for-in-transit-supply-chain-risk-management-platform/

(22) Wakeo — €18M Series B December 2023; $4.5M revenue 2024 (GetLatka survey). Funding: https://tech.eu/2023/12/04/wakeo-raises-18m-for-supply-chain-visibility-and-sustainability/ | GetLatka: https://getlatka.com/companies/wakeo

(23) Transporeon Visibility — 158,000 carriers, 1,400 shippers, €59B freight, 110,000 daily transports; North America rollout Q4 2024. Trimble investor press release: https://investor.trimble.com/news/news-details/2024/Trimble-Unveils-Transporeon-Visibility-with-Seamless-TMS-Integration/default.aspx | Transporeon network stats: https://www.transporeon.com/en/company

(24) Portcast — Singapore HQ; $6.5M Series A November 2024 (Susquehanna Asia VC); Gartner Notable Vendor 2025 MQ RTTVP (3rd year); 370+ carriers, 800 ports. PRNewswire APAC: https://www.prnewswire.com/apac/news-releases/portcast-secures-usd-6-5-million-series-a-funding-led-by-susquehanna-asia-vc-to-automate-actions-through-supply-chain-visibility-302308361.html | Portcast Gartner recognition: https://www.portcast.io/blog/portcast-recognized-as-a-notable-vendor-in-2025-gartner-r-magic-quadrant-tm-for-real-time-transportation-visibility-platforms-for-the-third-year-running | TNGlobal: https://technode.global/2024/11/19/singapores-portcast-secures-6-5m-series-a-funding-led-by-susquehanna-asia-vc/

(25) Carrier Global NYSE CARR — Sensitech subsidiary; FY2024 revenue context. Fortune 10-K filing reference: https://fortune.com/company-assets/734/quartr/annual-report-10-k-23c93-2026-02-05-08-34-27.pdf [NEEDS-ATTENDED-FETCH]

(26) Decklar (formerly Roambee) — rebrand September 2025; $35M ARR pre-rebrand; $45M raised; Reefknot Investments (Temasek-backed, Singapore) in Series B; APAC VP/MD appointment. Former Roambee APAC announcement: https://www.prnewswire.com/news-releases/former-who-advisor--dhl-apac-ceo-joins-roambee-to-drive-rapid-expansion-in-asia--cold-chain-visibility-globally-301259433.html | RevTek financing: https://revtekcapital.com/roambee-closes-second-financing-round/

(27) Shippeo blog — visibility gap with spot and subcontracted carriers: https://www.shippeo.com/blog/tracking-spot-carrier-shipments-the-visibility-gap-that-doesnt-have-to-be | Beacon 2024 Supply Chain Visibility Capabilities Report — 44% lack automated data sharing: https://www.beacon.com/supply-chain-visibility-capabilities-report-2024 | Flex Logistics 7 operational blind spots: https://flexlogistics.eu/7-operational-blind-spots-that-limit-end-to-end-supply-chain-visibility/

(28) Gartner 2025 MQ RTTVP — project44 and Shippeo as Leaders (5th and 2nd consecutive years respectively); Portcast Notable Vendor (3rd year). project44: https://www.project44.com/press-releases/project44-named-a-leader-in-the-2025-gartner-magic-quadrant-for-real-time-transportation-visibility-platforms-for-fifth-consecutive-year/ | Shippeo: https://www.businesswire.com/news/home/20250227846230/en/Shippeo-Named-a-Leader-in-the-2025-Gartner-Magic-Quadrant-for-Real-Time-Transportation-Visibility-Platforms-for-Second-Consecutive-Year | Gartner abstract (full report paywalled): https://www.gartner.com/en/documents/5298863 [NEEDS-ATTENDED-FETCH]

(29) Parsyl cargo IoT plus insurance integration — cargo insurance products powered by IoT data platform. Food Logistics: https://www.foodlogistics.com/software-technology/press-release/21129476/parsyl-parsyl-taps-its-iot-platform-for-cargo-insurance-products | Hapag-Lloyd IoT and sensor technology in container shipping: https://www.hapag-lloyd.com/en/online-business/digital-insights-dock/insights/2024/05/smart-shipping--internet-of-things-and-sensor-technology-in-ship.html

---

### Assumptions to validate

[ASSUMED-1]: Temperature excursion accountability is unresolvable in most cold chain claims because the sensor belongs to one party and other custody-chain parties dispute responsibility without independent data. In SEA pharmaceutical cold chain shipments (Singapore to Indonesia / Philippines), no cross-party sensor data sharing protocol or shared RTTVP log exists as standard practice.
- to validate: Interview a pharma cold chain logistics manager at DHL Singapore, Kuehne+Nagel SEA, or Kerry Logistics SEA; ask: when a temperature excursion is detected on a Sensitech or Tive device at destination, how is custody responsibility attributed across the 3–5 legs of the cold chain? Has any insurer asked for access to the sensor data stream in real time during an active shipment?

[ASSUMED-2]: The 2025 Gartner MQ for RTTVPs is entirely populated by vendors serving enterprise (Fortune 500 / large 3PL) shippers; no RTTVP vendor in the MQ has a documented product or customer base serving SME shippers contracting small or informal carriers in SEA.
- to validate: Review Gartner Critical Capabilities 2025 for RTTVPs (paywalled; NEEDS-ATTENDED-FETCH: https://www.gartner.com/en/documents/6204087) — check whether any MQ vendor claims a mid-market or SME go-to-market for APAC road freight specifically.

[ASSUMED-3]: No SEA cargo insurer (including Tokio Marine Indonesia, Sompo Insurance Singapore, AXA Insurance SEA) has a documented API integration with any RTTVP platform for automated FNOL or real-time claims triggering from in-transit data events.
- to validate: Interview underwriting or claims innovation leads at Tokio Marine Indonesia, Sompo Insurance Singapore, and AXA SEA; ask: "When a cargo theft or damage event is detected via RTTVP alert, does your claims system automatically receive that data, or does the insured file a manual claim?"

[ASSUMED-4]: Satellite-enabled cargo IoT trackers (Tive Solo 5, ORBCOMM) are cost-prohibitive for commodity SEA road freight (average shipment value below $1,000); cellular-only trackers create blackout windows on remote SEA corridors (Sumatra, Kalimantan, Highland SEA) for durations of 2–6 hours, during which cargo theft can occur without detection.
- to validate: Request LTE coverage maps from Tive and ORBCOMM for Indonesian and Thai inland freight corridors; ask: what is the device plus data cost per shipment for satellite-enabled tracking on a 500km SEA road route, and what percentage of existing SEA customers use cellular-only vs. satellite-enabled trackers?

[ASSUMED-5]: project44 and FourKites have technical OTR tracking coverage for road freight in Singapore, Thailand, Malaysia, and Philippines (confirmed via press releases), but the number of local (non-multinational) carriers integrated in those markets is small — estimated below 5% of the addressable carrier universe in each country.
- to validate: Request from project44 SEA GM and FourKites APAC team: how many Thai, Malaysian, Indonesian, and Philippine domestic trucking carriers are actively integrated (not just theoretically accessible) in your network? What is the average data quality score for SEA OTR connections vs. US OTR connections?

[ASSUMED-6]: project44's AI Disruption Navigator and FourKites' AI risk monitoring do not include SEA-specific freight risk signals (Tanjung Priok strikes, Thai monsoon flooding on Highway 32, Malaysian border crossing delays at Johor Baru) as first-class structured data inputs; SEA disruption events are captured only if they appear in English-language news sources that the platform's news crawl indexes.
- to validate: Request a demo from project44 SEA and FourKites APAC showing what SEA-specific disruption alerts were generated for the November 2024 Indonesian port workers' industrial action; ask whether Thai Buddhist calendar holiday closures are automatically flagged as transit-delay risk events.

[ASSUMED-7]: The per-shipment economic case for cargo IoT tracking is negative for SEA commodity freight (agricultural produce, garments, FMCG) where average cargo value per shipment is below $500, because tracker cost plus platform fee ($3–8/shipment at minimum) exceeds the expected loss reduction benefit at the cargo values involved.
- to validate: Build a loss model using: (a) average cargo theft frequency on target SEA corridors from TransTRACK or Cartrack Indonesia incident data; (b) average cargo value at risk per shipment; (c) Tive Solo Lite per-shipment cost. Compare expected loss reduction with tracking cost to establish the value-positive cargo value threshold for SEA road freight IoT deployment.

---

### Deep-research applied — corrections and upgrades (pass-3)

**1. VC4-MS-cargo-tracking-installed-base → upgraded Medium → High.** Berg Insight Trailer and Cargo Container Tracking, 13th Edition (December 2025) — product sheet PDF at media.berginsight.com/2025/12/13211620/bi-container13-ps.pdf was fetched via markitdown (publicly accessible; the paywall is on the full 260-page report). All headline figures (13.8M, 26.9M, 14.3% CAGR, €2.7B → €4.5B, ORBCOMM 2.1M) verbatim confirmed. GlobeNewswire press release 18 Dec 2025 corroborates. The earlier 12th Edition citation is now superseded.

**2. VC4-Player-Sensitech → upgraded Low → Medium with factual correction.** Carrier Global FY2024 total net sales corrected to $22.5B (not $5.8B) via Carrier 10-K FY2025 PDF (Fortune mirror, markitdown-verified). Climate Solutions Transportation segment $3,475M (Carrier Transicold + Sensitech combined; Sensitech not separately disclosed). Sensitech remained inside Carrier through the 2024 portfolio simplification — the CCR (Commercial Refrigeration) business was sold to Haier in October 2024 for $679M, but Sensitech was not divested. Sensitech acquired Berlinger & Co. Monitoring Solutions in August 2024, expanding pharma cold-chain capability. The "8 of top-30 pharma companies validated" claim is flagged [ASSUMED-8] — not found in SEC filings, earnings releases, or Sensitech's own homepage.

**3. VC4-PP1-44pct-no-data-sharing → confirmed scarce; Low retained for Beacon figure, composite Medium-confidence framing added.** Independent triangulation across McKinsey 2024 Supply Chain Risk Survey (40% lack tier-1 visibility, n=88), Accenture 2024 (11% have near real-time alerting; 78% need ≥1 week to assess disruption, n=3,000+), and PwC 2025 (47% cite integration complexity as chief barrier) anchors the broader visibility-gap narrative independently. Beacon 44% figure retained only as illustrative vendor data.

**4. Source list update — Sources for this stage:** Replace footnote (5) reference to "Carrier Global FY2024 revenue $5.8B" with: Carrier Global Corp 10-K FY2025 (filed Feb 2026; https://fortune.com/company-assets/734/quartr/annual-report-10-k-23c93-2026-02-05-08-34-27.pdf), FY2024 net sales $22,486M; Climate Solutions Transportation segment $3,475M. Sensitech-Berlinger acquisition: PR Newswire August 2, 2024 (https://www.prnewswire.com/news-releases/sensitech-completes-acquisition-of-berlinger--co-monitoring-solutions-expanding-life-sciences-cold-chain-solutions-302212754.html). SEC EDGAR HTML returns 403 — [NEEDS-ATTENDED-FETCH]: https://www.sec.gov/Archives/edgar/data/1783180/000178318025000008/carr-20241231.htm.

## Stage 5: Security, Escort & Physical Protection

*Run ID: 2026-05-17-2337 | Generated: 2026-05-18*

*TT Club/BSI 2025 Cargo Theft Report processed via markitdown (PDF, primary source). Brinks NYSE:BCO audited 2024 earnings. Loomis LOOMIS.ST audited 2024 annual report. Prosegur Madrid Bolsa 2024 audited results. GardaWorld FY2024 guidance (private, PE-disclosed). Verisk CargoNet Q2 2025 and FY2025 analysis. Overhaul Series C ($105M) announcement August 2025.*

---

### Description

Security, escort, and physical protection is the layer of the logistics value chain that applies human presence, armored hardware, GPS-enabled locking devices, intelligence data, and incident-response coordination to reduce the probability and cost of cargo theft, hijacking, and diversion. The stage spans two economically distinct sub-segments: (a) the large-scale **cash and valuables logistics** market, dominated by Brinks, Loomis, GardaWorld, and Prosegur, which moves currency, banknotes, jewelry, and high-value commodities in armored vehicles; and (b) the emerging **in-transit cargo security platform** market, where Overhaul (post-SensiGuard acquisition), CargoNet/Verisk, and a fragmented base of escort vendors apply IoT geofencing, AI-driven risk scoring, and 24/7 monitoring control towers to protect freight on commercial trucks. These two sub-segments are converging: Overhaul now combines IoT monitoring with physical escort dispatch, while traditional armored logistics firms (Brinks Global Services) compete for high-value cargo air/road shipments previously handled by freight forwarders. In SEA, neither sub-segment is well-developed: cargo security escort is informal and relationship-based, cargo theft intelligence platforms have no regional footprint, and the TT Club/BSI 2025 report names Indonesia (5% of global theft incidents) as a top-ten country globally for cargo crime.

---

### Activities

1. **Physical escort and convoy security for high-value in-transit cargo** — Deploying armed or unarmed security personnel in escort vehicles accompanying commercial freight trucks carrying electronics, pharmaceuticals, luxury goods, automotive parts, or other high-value loads. Escort teams maintain radio/cellular contact with dispatch control centers, log deviations from approved routes, and are authorized to intervene or alert law enforcement on anomalies. The revenue model is day-rate per escort vehicle plus personnel costs; tier-1 players (Brinks Global Services, Prosegur) operate this alongside their cash-in-transit businesses; specialized cargo escort firms (SGI Solutions Group International, IPSA International, WJM Cargo Security in the UK) focus on freight specifically. (1, 2)

2. **Armored vehicle cash-in-transit and valuables logistics** — Operating fleets of armored vehicles (Brinks: 16,400 vehicles globally; GardaWorld: 3,500 in North America; Loomis: ~400 branches in 27 countries) to transport currency, precious metals, jewelry, diamonds, banknotes, and high-value documents for central banks, commercial banks, retailers, government authorities, and mining/manufacturing customers. Revenue is per-route recurring service contracts, typically multi-year. This constitutes the majority of Brinks ($5.01B total 2024 revenue; CVM contributing the largest share), Loomis (SEK 30.4B 2024 revenue), and Prosegur (€2.09B Cash division 2024) total revenues. Not identical to freight cargo escort, but the infrastructure (armored vehicles, command centers, global network) is increasingly applied to high-value commercial freight. (3, 4, 5)

3. **GPS-enabled cargo lock and asset tracker deployment** — Installing GPS-enabled, tamper-evident mechanical locks on container doors, trailer kingpins, or cargo compartments (Apex Lock, PadLock Pro, Cargo Lock series) with real-time cellular/satellite tracking transmitted to shipper or security operations center dashboards. Alert thresholds include: unauthorized door open, route deviation >X km, extended stop in non-approved location, battery cut, or GPS signal loss. Geotab's GO Anywhere product line offers both hardwired and battery-powered trackers with Starlink Direct-to-Cell for coverage in cellular dead zones; CalAmp (now private, post-Chapter 11 July 2024 restructure) historically served this market before bankruptcy. (6, 7)

4. **Cargo theft intelligence, monitoring, and incident response** — Operating 24/7 global security operations centers (GSOCs) that ingest IoT data streams, apply AI-driven risk scoring (Overhaul's RiskGPT), generate geofence breach alerts, and coordinate physical response through law enforcement partnerships and recovery specialists. Overhaul (Austin, TX) operates 7 global GSOCs after acquiring SensiGuard from Carrier/Sensitech (February 2023), and claims to protect $1.4 trillion in cargo trade with a 99.9% shipment protection rate. CargoNet (Verisk) maintains the US and Canada's largest cargo theft incident database (3,625 incidents in 2024; estimated $454.9M losses) and issues real-time alerts to subscribers. The key product differentiation vs. pure telematics (Stage 3) is active incident response — Overhaul's team contacts law enforcement, provides real-time location data, and coordinates recovery, rather than simply alerting the shipper. (8, 9, 10)

5. **Secure parking network access and theft-hardened stop management** — Operating or accrediting certified secure truck parking facilities that meet minimum standards for perimeter security, video surveillance, and driver access control to prevent the dominant theft mode of "parking-phase theft" (TT Club/BSI 2025: approximately 20% of global theft by category is "theft from vehicle" while parked, and 50% of Asia incidents are facility-based). In Europe, Bosch Secure Truck Parking operates a digital booking platform for certified secure lots; TAPA EMEA's PSR-certified network grew 150%+ year-on-year in 2025 through partnerships with SNAP (digital mobility platform) and TRAVIS Road Services. In the US, CargoNet's TruckPark service and Truck Parking Club aggregate certified-secure lot data. Secure parking is structurally absent in SEA freight corridors. (11, 12, 13)

---

### Revenue Model

Physical security escort: day-rate per escort team/vehicle plus per-shipment load charges (non-disclosed publicly; market pricing ~$500–$2,000/day for armed escort depending on geography and risk classification); armored cash logistics: recurring per-route or per-collection fees under multi-year contracts with volume discounts; cargo security platform (Overhaul, CargoNet): annual SaaS subscription for monitoring per-shipment value tier, plus per-event recovery coordination fees and an optional embedded cargo insurance premium (Overhaul launched a combined theft-prevention + cargo insurance program August 2024); GPS lock/tracker hardware: $150–$500 hardware sale plus $15–30/month cellular/satellite subscription.

---

### Cost Drivers

Armored vehicle fleet capex and maintenance (Brinks: 16,400 vehicles globally represents hundreds of millions in fleet book value); personnel cost for armed/trained security staff (labor-intensive, 24/7 shift requirements); 24/7 GSOC staffing and technology infrastructure (Overhaul: 7 global operations centers); insurance and bonding for loss exposure on transported valuables; law enforcement relationship management and intelligence-sharing network participation (CargoNet/NICB partnerships require FBI and law enforcement access); cellular/satellite data costs for real-time tracking at scale; hardware manufacturing, logistics, and installation for GPS locks and trackers.

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global cash logistics market (CIT + cash processing) | $27.5B (2024); projected $35.3B by 2030 at 4.31% CAGR | Low — single commercial aggregator (Cognitive Market Research); no government statistical primary source; Brinks ($5.01B) + Loomis (~$2.9B USD) + Prosegur Cash ($2.09B) + GardaWorld (~$5.9B total) triangulate to $15–16B for top-4 players alone, suggesting $27.5B total is plausible but scope is ambiguous | (14), (3), (4), (5), (15) |
| Global secure logistics market (broader definition including jewelry, pharma, valuables transport) | $94.2B (2024); $195.5B projected 2034 | Low — Precedence Research commercial aggregator; broader scope than CIT-only; includes armored vehicles, surveillance, facility security; auto-Low under skill rules for single commercial report | (16) |
| Global cargo security market (cargo theft prevention solutions: hardware + software + services) | $3.1B (2024); $7.8B projected 2033 at 10.7% CAGR; North America 37% of 2024 market share; APAC projected highest CAGR at 13.2% | Low — MarketIntelo commercial aggregator; cross-checked against audited player revenues (Overhaul ~$195M total funding, revenue not disclosed; CargoNet is a Verisk business unit with no separate revenue disclosure; Geotab asset trackers a subset of 5M subscriptions) — no bottom-up confirmation | (17) |
| Brinks Company total revenue 2024 (NYSE: BCO, audited) | $5,012M (+3% reported; +12% organic); Rest of World segment (incl. Asia/MEA/BGS international routes) $824M (+2% reported); BGS (Brinks Global Services) noted as growing within Rest of World | High — NYSE:BCO audited Q4/FY2024 earnings press release | (3) |
| Loomis AB total revenue 2024 (LOOMIS.ST, audited) | SEK 30,442M (~$2.87B USD at 10.6 SEK/USD); USA segment ~SEK 16B; Europe & Latin America ~SEK 15B; EBITA margin 12.0% (up from 10.7% in 2023); 27 countries, ~400 branches | High — Loomis full-year report January–December 2024, audited (Stockholm-listed) | (4) |
| Prosegur Cash revenue 2024 (Bolsa Madrid: PSG, audited) | €2,090M (+12.3% YoY; exceeded €2B for first time); Prosegur Security (broader services incl. guards, tech) €2,502M; total group €4,908M | High — Prosegur 2024 audited press release | (5) |
| GardaWorld revenue FY ending January 31, 2024 (private, PE-disclosed) | $5,875M–$5,925M (FY2024 guidance); management-backed majority recapitalization at C$13.5B enterprise value (October 2024) | Medium — GardaWorld financial guidance via PRNewswire; PE-disclosed valuation; no audited public filing | (15) |
| US and Canada cargo theft losses 2025 (Verisk CargoNet annual) | $725M estimated (+60% from 2024's $454.9M); 2,646 confirmed incidents (+18% YoY); avg value $273,990 (+36%) | High — Verisk CargoNet annual analysis (January 2026); industry-standard primary source; methodology disclosed | (8) |
| US and Canada cargo theft Q2 2025 (Verisk CargoNet quarterly) | 884 incidents (+13% YoY); estimated $128M+ losses; avg $203,586 per incident | High — Verisk CargoNet Q2 2025 Supply Chain Risk Trends Analysis | (9) |
| Latin America cargo theft losses (IUMI / InsightCrime) | ~$5.5B annually (2023 estimate from IUMI via InsightCrime; Brazil 68% of South American incidents); Mexico: cargo theft every 33 minutes on major highways (2025 estimate); 73% of Mexican thefts involve violence | Medium — IUMI cited via third-party (InsightCrime); Mexico statistics from Overhaul Mexico Cargo Theft Report Q1 2025 | (18), (19) |
| Europe cargo theft financial losses (TAPA EMEA estimated) | ~€8.2B annually; TAPA EMEA Intelligence System recorded 39,422 freight theft incidents across 50 countries in the two years to March 2026; average €1.59M worth of goods targeted every 24 hours | Medium — TAPA EMEA published figures (Bosch/AJOT cross-reference); not government statistics; TAPA is industry body primary source for European cargo crime | (12), (13) |

**Data gap — SEA-specific cargo security market size:** No government statistical agency (BPS Indonesia, DOSM Malaysia, NSO Thailand, SingStat), multilateral body (ADB, World Bank, ASEAN Secretariat), TAPA APAC, or named consultancy-authored report has published a country-specific market size for cargo security escort services, GPS lock deployment, or cargo theft intelligence platforms in Southeast Asia as of research date. TAPA APAC's Cargo Crime Monitor database exists but country-level APAC aggregate reports are member-restricted with no public citation.

**Data gap — Overhaul revenue:** Overhaul raised $105M Series C (August 2025, total $195M raised); revenue not disclosed. No audited ARR figure available. Revenue not estimable from public filings.

---

### Current Players by Region

**North America (US primary; Canada secondary):**
- **Brinks Company (NYSE: BCO)** — Global leader; $5.01B total 2024 revenue; 68,200 employees; 16,400 armored vehicles; Brinks Global Services (BGS) provides cross-border secure logistics (diamonds, jewelry, pharma, electronics, currency) in 100+ countries; market leader in cash-in-transit. North America segment $1.65B (2024). SEA: YES — Brinks Singapore established 1989; market leader in Singapore, Malaysia, Indonesia, Brunei; BGS covers Thailand and Philippines; Singapore office ~$27.5M annual revenue; new Bangkok and Singapore facilities announced. (3, 20)
- **GardaWorld** — Private (BC Partners PE exit; management-majority + HPS Investment Partners minority from October 2024 C$13.5B recapitalization); $5.9B FY2024 guidance; 3,500 armored vehicles North America; cash-in-transit + cargo escort + international risk; largest private security employer globally. SEA: Limited — operates mainly in North America and select international corridors; no confirmed dedicated SEA cargo escort operation. (15)
- **Allied Universal / G4S** — Allied Universal acquired G4S (April 2021); combined ~$20B revenue; G4S Indonesia has 11,800 employees and provides cargo escort and security guarding; G4S Singapore operates security solutions. SEA: YES — G4S Indonesia (cargo escort services confirmed); G4S Singapore (security services); G4S Thailand (confirmed operations); combined Allied Universal is the largest physical security provider in several SEA markets. (21)
- **Overhaul (private)** — Austin TX; founded 2016; acquired SensiGuard from Carrier/Sensitech February 2023 (adding Brazil, Mexico, Czech Republic offices, 350+ employees); acquired FreightVerify for item-level tracking; $195M total raised ($55M Series B January 2025; $105M Series C August 2025 led by Springcoast + Edison Partners + Morgan Stanley 1GT); 7 global GSOCs; clients: Microsoft, Bristol Myers Squibb, CEVA Logistics, Arvato, Dyson; protects $1.4T cargo trade; 99.9% protection rate claimed. SEA: NO — no SEA office or confirmed APAC commercial deployment found. (10, 22)
- **CargoNet (Verisk Analytics, NASDAQ: VRSK)** — Largest US/Canada cargo theft incident database; 3,625 incidents in 2024 ($454.9M losses); Q2 2025 +13% YoY; publishes quarterly and annual analyses; provides real-time theft alerts to subscriber carriers; partners with NICB and FBI for law enforcement handoff. SEA: NO — North America-focused incident database. (8, 9)

**Europe:**
- **Securitas AB (SECU-B Stockholm, audited)** — Total 2024 revenue MSEK 161,921 (~$15.3B); 336,000 employees in 44 markets; security services + technology and solutions; provides cargo escort and pharmaceutical in-transit security through specialized healthcare logistics units; no separate cargo security segment disclosure. SEA: Partial — Securitas operates in select APAC markets; no confirmed SEA cargo escort division. (23)
- **Loomis AB (LOOMIS.ST, audited)** — SEK 30.4B total 2024 revenue (~$2.87B); 27 countries; primarily Europe and US; cash-in-transit, cash management services, and international valuables logistics (Via Mat legacy); 12% EBITA margin 2024; no declared Asia operations. SEA: NO — operates US and Europe/Latin America only; no SEA cash logistics or cargo escort confirmed. (4)
- **Prosegur (Bolsa Madrid: PSG, audited)** — €4.9B total 2024 group revenue; Cash division €2.09B; Security division €2.5B (guards, escort, technology); obtained IATA airfreight certification in Brazil (expanding international cargo); regional presence in Latin America primary; Prosegur Singapore Pte Ltd confirmed with manned guarding and logistics services. SEA: Partial — Prosegur Singapore office confirmed; broader SEA footprint (Indonesia, Malaysia, Thailand) via security division but primarily manned guarding not cargo-specific escort. (5, 24)
- **Bosch Secure Truck Parking** — Bosch subsidiary; Europe-only; digital booking platform for certified-secure truck parking; TAPA PSR-certified network partner; expanded with SNAP partnership for multi-platform booking; UK launch confirmed. Addresses the 20% of European cargo theft occurring at unsecured parking stops. SEA: NO. (12)

**Latin America (specific high-theft markets):**
- **Prosegur Cash (Brazil, Argentina)** — Largest private secure logistics player in Latin America; cash-in-transit and high-value cargo escort across Brazil and Argentina. Brazil represents 68% of South American cargo theft incidents (IUMI). SEA: No Latin American operations in SEA.
- **Pinkerton (Altair subsidiary)** — Global risk intelligence firm; São Paulo manufacturing threat intelligence and cargo crime analysis for Brazil/LatAm operations; predictive analytics for cargo routing. SEA: YES — Pinkerton has APAC operations including Singapore; primarily risk intelligence, not physical escort. [ASSUMED-1]
- **Carga Segura (Mexico)** — Mexico-specific cargo security service operating in highest-theft corridors (Puebla, Mexico State, Guanajuato, Michoacán); armed escort and cargo monitoring for Mexico domestic moves. SEA: NO. [ASSUMED-2: Named in orchestrator stage scope; no audited revenue data found; Mexico-domestic only]

**Southeast Asia (where present):**
- **Brinks Singapore / Brinks Malaysia / Brinks Indonesia** — Market leader for cash-in-transit and secure valuables logistics; established 1989; serves banks, retailers, mining, jewelry, government; Singapore operations (~$27.5M revenue); expanded Bangkok and Singapore facilities in 2024; BGS cross-border covers Thailand and Philippines for air cargo security. SEA: YES (confirmed, primary regional player). (20)
- **G4S Indonesia (Allied Universal subsidiary)** — 11,800 employees; cargo escort, manned guarding, security technology; nationwide Indonesia coverage. G4S Singapore: general security services. G4S Thailand: confirmed operations. SEA: YES (Indonesia, Singapore, Thailand confirmed; Malaysia and Philippines partial). (21)
- **Prosegur Singapore** — Manned guarding and integrated security solutions; presence at Safety & Security Asia 2025; broader Indonesia, Malaysia, Thailand security coverage. Limited cargo-specific escort vs. general guarding. SEA: Partial. (24)
- **Titan Security Global (Indonesia)** — Indonesia-focused cargo security contractor; provides armed and unarmed security personnel for goods transport; convoy escort; local market only. SEA: Partial (Indonesia-domestic). [ASSUMED-3]

**Data gap — purpose-built cargo theft intelligence or IoT-escort platform in SEA:** No SEA-headquartered platform equivalent to Overhaul or CargoNet identified. No GPS cargo lock vendor with SEA-native GSOC confirmed. The nearest approximation is Geotab's GO Anywhere tracker (Singapore office; resellers in Indonesia, Thailand, Malaysia, Philippines) providing asset tracking but not active incident response. Cartrack (Stage 3) provides GPS and stolen vehicle recovery but not cargo-specific 24/7 escort dispatch.

---

### Preliminary Pain Points (this stage)

1. **Physical cargo theft in SEA is severe and underreported, but no regional intelligence platform exists to aggregate or respond to incidents.** Indonesia ranked 5th globally for cargo theft incidents (TT Club/BSI 2025 Report: 5% of global incidents); Vietnam, China, and Bangladesh also in the top-10 Asia group. Despite this, there is no SEA equivalent of CargoNet providing a centralized incident reporting database, real-time theft alerts, or law enforcement data-sharing infrastructure for freight carriers and shippers. Industry participants rely on informal WhatsApp group alerts. (1, 8)

2. **Incident response coordination is multi-party, manual, and slow — the working hypothesis WH4 is evidenced.** When a theft occurs, the typical notification chain requires the driver to contact the transport company, who contacts the shipper, who contacts the insurer and files a police report — a serial process taking hours before a law enforcement response is activated. Overhaul's value proposition is shortening this with pre-established law enforcement partnerships and a 24/7 GSOC, achieving a 96% US recovery rate vs. industry baseline recovery rates below 20% without real-time alerts. The critical recovery window is the first 30 minutes; most SEA thefts go unreported for hours or days. (10, 25)

3. **Security tool deployment is fragmented by purchasing party — WH3 is evidenced.** GPS locks are purchased by shippers or 3PLs and deployed on specific high-value loads; telematics (Stage 3) is owned by carriers; insurance is contracted separately by shippers; physical escort is arranged by 3PLs or shippers independently. There is no shared visibility layer across these security investments: the shipper's GPS lock data is not visible to the 3PL's telematics vendor, which is not connected to the insurer's loss-prevention platform. Overhaul's device-agnostic GSOC model is the only commercially documented attempt to aggregate across these layers, but it requires enterprise-level SaaS contracts that SEA mid-tier shippers cannot afford. (10, Stage 1 context, Stage 3 context)

4. **GPS jamming defeats cargo tracker hardware during active theft events.** The same GPS jammers (widely sold for $30–100 online) that blind telematics (Stage 3 pain point) also defeat cargo GPS locks. During an active theft, criminals routinely deploy jammers to prevent real-time tracking. Geotab's GO Anywhere Plus uses Starlink Direct-to-Cell connectivity as a jammer-resistant backup layer, but this is a premium hardware tier. In SEA, where lower-cost Chinese-manufactured trackers (Jimi IoT, Concox) predominate, jammer-resistant connectivity is absent at the market level. (6, Stage 3 context)

5. **Facility-based cargo theft dominates in Asia (50% of incidents) but warehouse security standards are not enforced.** The TT Club/BSI 2025 Asia data shows that 50% of Asian cargo theft incidents occur at warehouses and production sites (vs. 20% globally), and insider involvement accounts for 22% of regional thefts (notably high in Indonesia, India, and China). Cargo security solutions focused on in-transit protection (GPS locks, vehicle escort) do not address the dominant Asia theft vector. No mandated minimum-security standard for commercial warehouses exists in Indonesia, Thailand, or Malaysia equivalent to TAPA TSR (Transported Asset Protection Association Truck Security Requirements) compliance in Europe and North America. (1, 26)

6. **Pharmaceutical and electronics cargo require temperature-verified chain-of-custody that security escort does not provide.** High-value cold-chain pharmaceutical shipments require GDP (Good Distribution Practice) compliance documentation alongside physical security. In SEA, GDP enforcement varies: Singapore HSA has active GDP inspection programs; Indonesia BPOM is less systematic; Thailand FDA GDP framework exists but enforcement is patchy. Security escort providers (G4S, Prosegur) in SEA do not integrate real-time temperature monitoring with their escort services; shippers must layer a separate cold-chain IoT device (Sensitech, Controlant — Stage 4) onto an escort service sourced from a different vendor, creating a documentation gap for claims purposes. [ASSUMED-4]

7. **Secure parking infrastructure is structurally absent across SEA freight corridors.** Europe has identified a 390,000-space deficit in certified-secure truck parking (ESPORG 2025 study); the US has insufficient secure parking on major freight lanes. In SEA, no certified-secure truck parking certification scheme, network, or booking platform exists at all. The TT Club/BSI 2025 report confirms that Asia's incident typology is facility-heavy, but parking-phase theft (driver stops for rest breaks on long runs, e.g., the Jakarta–Surabaya corridor or the Bangkok–Chiang Mai highway) is not tracked separately and is structurally unaddressed. (11, 12, 13)

8. **Armored vehicle providers (Brinks, Prosegur) are optimized for cash logistics, not commercial cargo security.** Brinks Singapore and G4S Indonesia operate primarily for banking clients (cash collection, ATM replenishment, vault services). Their armored vehicle fleets and operational protocols are designed for cash, not general cargo. A shipment of consumer electronics or pharmaceuticals that needs an armed escort from the port to a distribution center requires either a cash-logistics firm to operate outside its core (different risk model, different insurance, different vehicle configuration) or a general security firm (G4S, Securitas) that has escort capability but not the same level of cargo tracking technology integration. No SEA player currently bridges this gap at scale. (20, 21, 23)

9. **Strategic cargo theft using fake carrier identity is growing in SEA as TT Club/BSI 2025 confirms for China, and digital freight platforms create the infrastructure for this.** China's TT Club/BSI 2025 data documents a new pattern: criminals creating fictitious driver and company accounts on digital freight platforms to fraudulently collect cargo. The same digital freight platforms operating in SEA (Kargo Technologies, Deliveree, Haulio, Logisly — Stage 1 and Stage 2 context) use lightweight carrier onboarding workflows and cannot verify driver identity at load pickup, making them structurally identical to the Chinese platforms now exploited for fictitious pickup fraud. No SEA cargo security platform currently monitors digital freight platform bookings for fraudulent pickup patterns. (1, 27)

10. **No SEA insurer or reinsurer has built cargo theft prevention into underwriting through a real-time data feed.** TT Club (mutual insurer for the transport industry) publishes the annual cargo theft report but does not provide a real-time incident monitoring API to its SEA members. Tokio Marine Holdings and Sompo International (the most relevant Japan-linked insurers for a SEA cargo insurance venture) price cargo coverage based on declared value and commodity type, not real-time route risk or GPS alert history. The connection between security platform data and insurance pricing is the structural gap that Overhaul's embedded insurance product (launched August 2024, US-only) attempts to close, but no equivalent exists in any SEA market. [ASSUMED-5]

11. **Response time data is US-centric; SEA response time is structurally worse.** The 30-minute recovery window and 73% recovery rate with real-time alerts (industry benchmark) assume law enforcement response times and GPS coverage comparable to US markets. In Indonesia (roads covering 1.9M+ km across a 5,000-island archipelago), Thailand (notoriously slow administrative processes for formal police reports), and Vietnam (limited cargo-crime-specific law enforcement training), equivalent response times are not achievable even with real-time alert platforms. The security platform value proposition (shorten response time) is structurally harder to deliver in SEA — a fact no vendor has publicly documented or quantified. (25, 26)

12. **Cargo theft at the Strait of Malacca surged 281% YoY (2025), but maritime security for SEA freight is siloed from land-side cargo security.** The TT Club/BSI 2025 report documents an 85% global piracy increase in H1 2025 and a 281% surge specifically at the Strait of Malacca and Singapore. Maritime piracy (sea piracy) and land-based cargo theft are tracked separately, covered by different insurance policies, and managed by entirely different security vendors — ReCAAP ISC (maritime) vs. cargo escort firms (land). A shipment moving through the Malacca Strait and then by truck through Indonesia or Malaysia passes through two completely unconnected security frameworks with no shared visibility. (1, 28)

---

### Sources for this stage

(1) TT Club and BSI Consulting, *BSI Consulting and TT Club 2025 Cargo Theft Report* (April 2026). PDF processed via markitdown. https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/Corporate_Literature/TT_Club_BSI_2025_Cargo_Theft_Report_FINAL.pdf — Primary: Top countries Indonesia 5% global; Asia facility-heavy (50%); insider 22% global; Strait of Malacca piracy +281% H1 2025; trucks 70% of all incidents globally.

(2) TT Club and BSI, 2025 Cargo Theft Report summary press release. https://www.ttclub.com/news-and-resources/news/article/tt-club-bsi-consulting-warn-of-escalating-global-cargo-theft-as-criminal-tactics-grow-increasingly-sophisticated

(3) Brinks Company (NYSE: BCO), "Brink's Announces Fourth-Quarter and Full-Year 2024 Results," February 26, 2025 (audited). Total revenue $5,012M; geographic segments (NA $1,650M; LatAm $1,311M; Europe $1,227M; Rest of World $824M); adjusted EBITDA $912M; free cash flow $400M. https://www.globenewswire.com/news-release/2025/02/26/3032849/35146/en/Brink-s-Announces-Fourth-Quarter-and-Full-Year-2024-Results.html

(4) Loomis AB (LOOMIS.ST), Full-Year Report January–December 2024. Revenue SEK 30,442M; USA segment ~SEK 16B; Europe & Latin America ~SEK 15B; EBITA margin 12.0%; 27 countries, ~400 branches. https://www.prnewswire.com/news-releases/loomis-full-year-report-january--december-2024-302368508.html and https://finance.yahoo.com/news/loomis-ab-loimf-q4-2024-070345063.html

(5) Prosegur, "Prosegur increases 2024 consolidated net profit to €78 million (+19%)," 2025. Audited: Cash division €2,090M (+12.3%); Security division €2,502M; total group €4,908M. https://www.prosegur.com/en/media/article/press/prosegur-eleva-su-beneficio-neto-consolidado-en-2024-hasta-los-7-8-millones-de-euros-y-supera-todos-los-objetivos-del-ano

(6) Geotab, "GO Anywhere Asset Tracking Family" press release and product page. https://www.geotab.com/press-release/go-anywhere-asset-tracking/ and https://www.geotab.com/products/asset-tracking/

(7) CalAmp Chapter 11 bankruptcy filing, July 2024, and restructuring: Lynrock Lake takes CalAmp private August 2024 after $229M debt-for-equity swap. https://www.automotive-fleet.com/10222855/calamp-files-bankruptcy-restructuring-finances and https://www.calamp.com/press-releases/lynrock-lake-takes-calamp-private/

(8) Verisk CargoNet, "Cargo Theft Losses Surge to Estimated $725 Million in 2025, Verisk CargoNet Analysis Reveals," January 2026 (FY2025 data). https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/ — Primary: 2,646 incidents FY2025; $725M estimated; avg $273,990 per incident; +60% vs 2024.

(9) Verisk CargoNet, "Cargo Theft Surges 13% Year-Over-Year in Second Quarter 2025," Q2 2025 Supply Chain Risk Trends Analysis. https://www.verisk.com/company/newsroom/cargo-theft-surges-13-year-over-year-in-second-quarter-2025-as-organized-crime-groups-target-high-value-commodities/

(10) Overhaul, Series C $105M press release (August 2025); Overhaul Series B $55M (January 2025); SensiGuard acquisition (February 2023). https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html and https://www.prnewswire.com/news-releases/overhaul-secures-55-million-in-funding-led-by-springcoast-partners-to-accelerate-ai-innovation-and-strategic-growth-302348146.html and https://www.prnewswire.com/news-releases/overhaul-acquires-sensiguard-to-become-largest-in-transit-supply-chain-cargo-security-provider-301739973.html

(11) ESPORG, European Secure Parking Organisation, "The EU's push for safe and secure truck parking," December 2025. Parking space deficit estimated at 390,057 spaces across Europe, projected to rise to 483,000 by 2040. https://esporg.eu/2025/12/15/the-eus-push-for-safe-and-secure-truck-parking/

(12) TAPA EMEA, "TAPA truck parking network grows 150% across Europe amid theft rise" (2026 data, SNAP + TRAVIS partnerships). https://www.stattimes.com/cargo-airports/tapa-truck-parking-network-grows-150-across-europe-amid-theft-rise-1358783 and TAPA EMEA estimates ~€8.2B annual European cargo theft losses: https://ajot.com/news/tapa-partners-with-bosch-secure-truck-parking-boosting-secure-parking-places-by-over-42-in-12-months

(13) Bosch Secure Truck Parking — European certified-secure parking platform; TAPA PSR network partner; QR/ALPR access control. https://www.bosch-secure-truck-parking.com/en/ and https://www.bosch.com/stories/secure-truck-parking/

(14) Cognitive Market Research, "Cash in Transit Services Market" — $16.8B (2024 CIT-specific); $27.5B (broader cash logistics); Brinks/Loomis/GardaWorld/Prosegur jointly >60% share. https://www.cognitivemarketresearch.com/cash-in-transit-services-market-report — [Low confidence: single commercial aggregator; use as directional only]

(15) GardaWorld, "Financial Guidance for Fiscal Year Ending January 31, 2024" (PRNewswire, January 2024). Revenue guidance $5,875M–$5,925M; October 2024 management-majority recapitalization at C$13.5B enterprise value with HPS Investment Partners. https://www.prnewswire.com/news-releases/gardaworld-announces-financial-guidance-for-fiscal-year-ending-january-31-2024-and-intends-to-amend-the-maturity-date-of-its-term-loan-b-due-2026-to-2029-302040627.html

(16) Precedence Research, "Secure Logistics Market Size to Hit USD 195.54 Bn By 2034." $94.2B (2024) → $195.5B (2034). https://www.precedenceresearch.com/secure-logistics-market — [Low confidence: single commercial aggregator; scope ambiguous]

(17) MarketIntelo, "Cargo Security Market Research Report 2033." $3.1B (2024) → $7.8B (2033) at 10.7% CAGR; North America 37% share; APAC highest CAGR 13.2%. https://marketintelo.com/report/cargo-security-market — [Low confidence: single commercial aggregator; auto-Low under skill rules]

(18) InsightCrime, "Land piracy leads to loss of $30 billion a year in Latin America" (citing IUMI 2023 estimate of $5.5B direct annual losses). https://insightcrime.org/news/brief/land-piracy-leads-to-loss-of-30-billion-a-year-in-latin-america/

(19) Overhaul, Mexico Q1-2025 Cargo Theft Report. 81% of incidents involved violence; 84% of thefts in-transit; Puebla 19% of cases; State of Mexico 19%; food and beverage 34% of targets. https://over-haul.com/wp-content/uploads/2025/05/Mexico-Q1-2025-Cargo-Theft-Report-.pdf (PDF, [NEEDS-ATTENDED-FETCH] for full detail)

(20) Brinks Asia Pacific profile and Singapore operations. Established 1989; market leader Singapore, Malaysia, Indonesia, Brunei; new Bangkok and Singapore facilities; BGS provides air cargo security Thailand and Philippines. https://www.apacoutlookmag.com/company-profiles/110-brinks-asia-pacific and https://sg.brinks.com/

(21) G4S Indonesia (Allied Universal subsidiary) — 11,800 employees; cargo escort, manned guarding nationwide Indonesia coverage. G4S Asia Pacific: https://www.g4s.com/who-we-are/where-we-operate/g4s-in-asia-pacific and G4S Indonesia: https://www.g4s.com/en-id

(22) Overhaul, "Cargo Theft Soars 49% in First Half of 2024," Overhaul H1 2024 Cargo Report; Overhaul platform description. https://www.prnewswire.com/news-releases/cargo-theft-soars-49-in-first-half-of-2024-amid-rising-criminal-sophistication-reveals-overhaul-report-302228584.html

(23) Securitas AB (SECU-B.ST), Full Year Report 2024, January–December. Revenue MSEK 161,921 (~$15.3B); EBITA margin 6.9%; 336,000 employees in 44 markets. https://www.prnewswire.com/news-releases/securitas-ab-full-year-report-2024--januarydecember-302369837.html

(24) Prosegur Singapore Pte Ltd — integrated security solutions, manned guarding, logistics, alarms. Safety & Security Asia 2025 exhibitor. https://www.prosegur.com.sg/ and https://www.safetysecurityasia.com/exhibitors/prosegur

(25) Overhaul platform description: 96% US recovery rate; 7 global GSOCs; law enforcement partnerships. https://www.over-haul.com/solutions/prevent-cargo-theft-tampering — [Low confidence for Overhaul's own performance claims: vendor-marketing site; 96% recovery rate has no third-party audit; use as directional benchmark only; cross-reference with insurance recovery data]

(26) TT Club/BSI 2025 Cargo Theft Report, Asia section: 50% of Asia incidents at warehouses and production sites; only 36% truck; insider 22% of regional thefts. (Same as source 1 above — processed via markitdown)

(27) TT Club/BSI 2025 Cargo Theft Report, Asia section: China criminals creating fictitious driver/company accounts on digital freight platforms for fraudulent cargo collection. (Same as source 1 above)

(28) ReCAAP ISC Annual Report 2024, piracy and armed robbery in Asia. https://www.recaap.org/resources/ck/files/reports/annual/ReCAAP%20ISC%20Annual%20Report%202024%20-%20Final.pdf (PDF, [NEEDS-ATTENDED-FETCH] for full data)

(29) NICB, "Cargo Theft Up 27% in 2024 With Continued Rise Expected" (June 2025). 2,217 US cargo theft events; 49% increase YoY; California + Texas + Florida = 54% of incidents. https://www.nicb.org/news/regional-news/report-shows-california-and-texas-account-over-half-all-cargo-theft-2024 and https://www.carriermanagement.com/news/2025/06/25/276715.htm

(30) IUMI and TAPA EMEA joint warning: "nearly 160,000 cargo-related crimes recorded across 129 countries between 2022 and 2024." https://iumi.com/news/press-release/iumi-and-tapa-emea-warn-of-escalating-cargo-theft-and-freight-fraud/

(31) Munich Re, "Cargo theft tactics and trends report 2025." Asia: India 63% of APAC theft cases; Indonesia 14%; China 11%; Bangladesh 3%; Vietnam 3%. Facility thefts 34% of Asia incidents. https://www.munichre.com/specialty/global-markets-uk/en/insights/cargo-and-freight/cargo-theft-tactics-and-trends-report-2025.html — [NEEDS-ATTENDED-FETCH for full PDF: returned HTTP 403]

---

### Assumptions to validate

[ASSUMED-1]: Pinkerton (Altair subsidiary) operates cargo security risk intelligence services in SEA including Singapore. Pinkerton's website indicates APAC presence but specific SEA cargo security operations were not confirmed from primary sources.
- To validate: Contact Pinkerton APAC regional office in Singapore; ask whether they provide cargo theft intelligence or escort coordination services for freight operators in Indonesia, Thailand, and Malaysia.

[ASSUMED-2]: "Carga Segura" was named in the orchestrator stage scope as a Mexico-specific specialty cargo security provider. No audited revenue, company website, or verified third-party source was found for this specific entity. Mexico cargo security is dominated by Overhaul (via SensiGuard operations), Laufer Group, and GardaWorld internationally, plus local armed escort firms.
- To validate: Request Mexico freight security industry directory from Overhaul Mexico operations team or BSI Consulting Mexico office; confirm whether "Carga Segura" is a registered operating company.

[ASSUMED-3]: Titan Security Global Indonesia provides cargo security convoy escort services as a local provider. Company website claims cargo transport security; no revenue, customer count, or independent secondary source found.
- To validate: Request credentials and reference customers from Titan Security Global Indonesia; compare against G4S Indonesia's dedicated cargo escort service offering.

[ASSUMED-4]: Security escort providers in SEA (G4S, Prosegur) do not currently integrate real-time temperature or shock monitoring with their escort services for pharmaceutical or sensitive cargo; shippers must source from two separate vendors. This was inferred from the absence of any documented product combining escort + IoT cold-chain in any SEA operator's public materials.
- To validate: Demo G4S Indonesia cargo escort service and Prosegur Singapore logistics; specifically ask: "Does your escort service include real-time cargo condition monitoring (temperature, humidity, shock) during transit, or is that the shipper's responsibility?"

[ASSUMED-5]: Tokio Marine Holdings and Sompo International price SEA cargo coverage based on declared value and commodity type, not real-time route risk or GPS alert history. This is inferred from the absence of any disclosed telematics-linked cargo pricing product in SEA.
- To validate: Interview underwriting team at Tokio Marine Indonesia and Tokio Marine Singapore on whether real-time GPS data or GSOC monitoring reduces cargo premium; ask whether any cargo security platform (Overhaul equivalent) has approached them for data-sharing integration.

[ASSUMED-6]: The TT Club/BSI 2025 report figure that Indonesia accounts for 5% of global cargo theft incidents is based on incidents reported through BSI's intelligence system and law enforcement partners. Actual underreporting in Indonesia (where formal cargo theft report rates are structurally lower than in OECD countries) means true Indonesian incident rate is likely materially higher.
- To validate: Cross-reference with TAPA APAC Cargo Crime Monitor member data (requires TAPA APAC membership access); interview Indonesia National Police (Polri) cargo crime unit (Bareskrim) for comparison with registered theft reports vs. insurance claims filed with OJK-regulated insurers.


---

### Deep-research applied — corrections and upgrades (pass-3)

**1. VC-MS-3 (global cargo security market $3.1B) → confirmed-scarce; Low retained for precise figure.** The $3.1B (2024) / $7.8B (2033) / 10.7% CAGR / 13.2% APAC CAGR figures derive solely from marketintelo.com (commercial aggregator, auto-Low). No McKinsey/BCG/Roland Berger/BNEF/multilateral primary corroboration. Two independent mid-tier commercial research firms bracket the 2024 market: MarketsandMarkets Supply Chain Security $2.52B (broader scope, 12.6% CAGR to 2030); Mordor Intelligence Cargo & Vehicle Screening $2.76B (narrower scope, 6.5% CAGR). Use the **$2.5–3.0B (2024) with 7–13% CAGR band** as the source-triangulated estimate; flag the precise marketintelo figures as [ASSUMED-N]. Verisk/CargoNet $455M North America 2024 cargo theft losses provides a demand-side anchor.

**2. VC-LatAm-CargoTheft → upgraded Low → Medium with attribution correction.** Mexico cargo theft direction strongly confirmed by primary sources: AMESIS (Asociación Mexicana de Empresas de Seguridad Privada e Industria Satelital) reported 15,937 incidents in 2024 (+9.15% YoY) via El Financiero (Feb 18, 2025); AMESIS secretary Rodrigo Larracilla on record citing "one robbery every 33 minutes" via Mexico Business News; 73% violence rate corroborated by BSI Consulting + TT Club 2024 Cargo Theft Report (April 2025, PDF fetched via markitdown). The $5.5B annual LatAm aggregate loss figure cannot be confirmed at IUMI primary — IUMI's Feb 2026 press release characterizes losses as "several billions of Euros" globally across ~160,000 incidents in 129 countries, without LatAm dollar breakdown. Drop the specific $5.5B IUMI attribution or flag [ASSUMED-N].

**3. New source additions:**
- (29) BSI Consulting + TT Club 2024 Cargo Theft Report, April 2025: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (markitdown-verified)
- (30) AMESIS via El Financiero, Feb 18, 2025: https://www.elfinanciero.com.mx/transporte-y-movilidad/2025/02/18/mas-de-15-mil-robos-a-transporte-en-mexico-en-2024-reporta-amesis/
- (31) AMESIS secretary on-record via Mexico Business News: https://mexicobusiness.news/mobility/news/mexico-battles-cargo-theft-amid-driver-shortage-crisis
- (32) IUMI press release Feb 3, 2026: https://iumi.com/news/press-release/iumi-and-tapa-emea-warn-of-escalating-cargo-theft-and-freight-fraud/
- (33) MarketsandMarkets Supply Chain Security Market 2024: https://www.marketsandmarkets.com/PressReleases/supply-chain-security.asp
- (34) Mordor Intelligence Cargo & Vehicle Screening: https://www.mordorintelligence.com/industry-reports/cargo-and-vehicle-screening-market

# Stage 6: Cargo Insurance, Claims & Incident Response — Value Chain

*Run ID: 2026-05-17-2337 | Generated: 2026-05-18*
*Note to downstream consumer: this stage is specifically flagged as directly relevant to the Tokio Marine + ID&E venture pitch (Wright Partners). Tokio Marine is a primary stakeholder. Stage 3 covers commercial auto / behavioral underwriting (Nirvana, HDVI, Samsara FNOL) — this stage is cargo-specific and does not duplicate Stage 3's auto coverage.*

---

## Description

Cargo insurance carriers, insurtech platforms, claims managers, and incident-response tools form the risk-transfer and loss-recovery layer of the logistics value chain. This stage covers actors that (a) underwrite cargo risk against loss, damage, or delay; (b) manage and settle claims after a loss event; and (c) coordinate physical incident response — theft recovery, cargo salvage, temperature-exceedance escalation — when in-transit loss occurs. The stage spans four sub-segments: traditional marine/cargo insurance carriers (Tokio Marine, AGCS, AIG, AXA XL, Munich Re, Lloyd's syndicates, Chubb, Liberty Mutual); insurtech / parametric cargo (Loadsure, Parsyl, Breeze, Cover Genius, Otonomi); claims management software and third-party administrators (Sedgwick, Crawford & Company, Gallagher Bassett + W K Webster); and embedded insurance (Flexport, Forto, project44 + Reliance Partners, Cover Genius XCover). Each sub-segment plays a structurally different role in how risk is priced, transferred, and recovered.

---

## Activities

1. **Cargo risk underwriting and policy issuance:** Accepting risk against declarations of cargo value, commodity, route, and transit mode; applying actuarial models based on historical loss ratios, commodity class, and geography (not real-time per-shipment IoT data in standard policies) to set premium; issuing open cover, voyage, or per-shipment policies under ICC A/B/C conditions or Institute Cargo Clauses equivalents. (1, 2)

2. **Parametric and IoT-triggered policy execution:** A subset of carriers and insurtechs (Parsyl, Otonomi, Loadsure) deploy sensor data or third-party API triggers (vessel AIS, flight delay databases, temperature logs) to activate coverage or pay claims automatically, without requiring traditional loss survey — Parsyl's ColdCover parametric product settles perishable cargo claims in as little as 48 hours; Otonomi's cargo delay policy pays 50% on trigger date, then 5% per additional day of delay, with full automated settlement in 48 hours, 22x faster than the 30-day industry standard. (3, 4, 5)

3. **Claims intake, investigation, and settlement:** Receiving first notice of loss (FNOL), appointing adjusters and surveyors, coordinating evidence gathering (bills of lading, sensor logs, carrier records), settling valid claims, and managing salvage and subrogation recovery. Sedgwick expanded its global marine operations in August 2024 with a dedicated marine practice; Crawford launched a Logistics, Transportation, and Freight division in Singapore in October 2024; Gallagher Bassett acquired W K Webster Group (est. 1861; 250 staff in London, Singapore, New York, Rotterdam) in February 2025, the world's leading marine and transit claims consultancy. (6, 7, 8)

4. **Embedded / per-shipment insurance distribution:** Delivering cargo insurance at point of freight transaction — within a TMS, freight forwarder portal, or logistics marketplace — without requiring the shipper to maintain a separate annual cargo policy. Loadsure's API-based platform enables 40-second policy issuance; Breeze integrates with WebCargo (Freightos) for per-shipment freight forwarder coverage; Cover Genius XCover embeds across logistics platforms in 60+ countries. (9, 10, 11)

5. **Physical incident response and cargo recovery coordination:** Coordinating law enforcement engagement, GPS tracking lockdowns, cargo salvage, and recovery logistics when a theft or major loss event occurs. Overhaul's platform (CEVA Logistics, Microsoft, Bristol Myers Squibb) provides real-time in-transit risk alerts, cargo lockdown capability, and law enforcement handoff via its proprietary LE Connect network; cargo theft rose 49% in H1 2024 in North America with average loss per incident reaching $115,230 (+83% YoY). (12, 13)

---

## Revenue Model

Traditional carriers: premium written as a percentage of declared cargo value (typically 0.10%–2.00% per shipment depending on commodity, route, and transit mode) with investment income on float; insurtechs / MGAs: per-shipment fee or commission split with the risk carrier (typically 10–30% of premium); TPAs/claims managers: fee-per-claim or percentage of claims expenditure managed under TPA contract; embedded insurance distributors: commission on premium sold, volume-based API pricing.

---

## Cost Drivers

Loss costs (claims paid plus loss adjustment expenses — primary driver, historically 40–70% of premium across cargo lines); reinsurance purchase cost (cargo carriers cede a significant portion of exposure, particularly for natural catastrophe and accumulation perils); actuarial and underwriting talent (small specialized marine underwriting teams command premium salaries); IoT sensor hardware and data infrastructure (for parametric products: sensor procurement, connectivity, and cloud analytics); claims surveyor network and adjusting fees (Sedgwick, Crawford, W K Webster operate global surveyor networks); and distribution / API integration costs for embedded platforms (engineering and distribution partner commission).

---

## Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global marine insurance total premiums (2024) | USD 39.92B (+1.5% YoY) | High — IUMI primary industry body; annual Stats Report; 30 national associations contributing | (1) |
| Global cargo insurance premiums (2024) | USD 22.64B (+1.6% YoY); 57.23% of global marine premium base | High — IUMI Stats Report 2025; cross-referenced against IUMI 2024 Facts & Figures press release | (1, 14) |
| Asia/Pacific share of global cargo premiums (2024) | 35.15%; Asia grew 8.8% in 2024, primarily driven by China; Singapore and Japan showed weaker performance | Medium — IUMI Stats Report 2025 and Facts & Figures press release; no sub-regional SEA country breakdown | (1, 14) |
| Europe share of global cargo premiums (2024) | 37.68% (slight decline from prior year) | High — IUMI Stats Report 2025 | (1) |
| Cargo market share by country (largest markets) | China: 17.6%; Lloyd's: 9.7%; USA: 6.9%; Brazil: 4.7%; Germany: 4.7%; London companies: 4.3% | Medium — IUMI 2024 data presented at IUMI conference Sep 2025; single IUMI source | (14) |
| Tokio Marine Holdings group hull and cargo — direct premiums written (FY2024, Japan GAAP) | ¥248,941M (~USD 1.66B at ¥150/USD); net premiums written ¥214,399M (~USD 1.43B); +9.2% direct / +11.6% net YoY | High — Tokio Marine Holdings 4Q FY2024 Summary Report (TSE: 8766; Japanese GAAP; FY ended March 31 2025) | (15) |
| Tokio Marine Holdings group net premiums written (all lines; FY2024) | ¥5,305,182M (~USD 35.4B); +10.0% YoY; net income attributable to parent ¥1,055,276M (+51.7%) | High — Tokio Marine Holdings 4Q FY2024 Summary Report (TSE: 8766); audited under Japanese GAAP | (15) |
| Allianz Commercial (AGCS + national commercial entities) gross premium (2024) | ~€18B globally (all commercial lines; marine cargo not separately broken out) | Medium — Allianz Commercial public statement; marine cargo sub-segment not disclosed | (16) |
| Munich Re — marine reinsurance insurance revenue (2024) | €575M (+7% from €539M in 2023); impacted by Francis Scott Key Bridge (Baltimore) collapse | High — Munich Re Group Annual Report 2024 (audited; Frankfurt: MUV2) | (17) |
| Munich Re — Global Specialty Insurance (GSI) division revenue (2024) | €8,781M (+10.3% from €7,961M); GSI includes MRS-GM which is "a leading global provider of marine insurance" | High — Munich Re Group Annual Report 2024 | (17) |
| Lloyd's market — gross written premium (2024, all lines) | £55.5B (+6.5% from £52.1B; combined ratio 86.9%); marine cargo share within Lloyd's not separately disclosed | High — Lloyd's 2024 Full Year Results press release | (18) |
| Global insurance TPA market size (2024, all lines) | USD 432.4B (2024); projected USD 886.3B by 2033 at 8.3% CAGR | Low — single market research firm (not Big 4 consultancy); cargo/marine TPA not separately sized | (19) |
| SEA cargo insurance market (Indonesia, per OJK context) | Indonesia total non-life written premiums: IDR 96,955,050M (+4.6%); marine cargo compulsory for crude palm oil and coal exports; no cargo-specific premium breakdown published | Low — OJK regulatory context only; country-level cargo-specific premium not available | (20) |
| Asia Pacific cargo insurance market (2024/2025 estimate) | ~USD 8.7B (36.4% of global ~USD 24B marine cargo premium; APAC includes China, Japan, Korea, ANZ, SEA) | Low — single market research firm (dataintelo); Geography mismatch — APAC figure used as proxy; field validation needed | (21) |

*Data gap: No country-level cargo insurance premium data found for Indonesia, Thailand, Malaysia, Philippines, or Vietnam in Tier 1–4 audited sources. IUMI provides Asia/Pacific aggregate. OJK discloses total Indonesian non-life premium by broad category but not marine cargo in isolation. Country-level SEA cargo insurance premium sizing requires OJK (Indonesia), OIC (Thailand), BNM (Malaysia), and IC (Philippines) regulatory filings, which are not publicly indexed in English.*

---

## Current Players by Region

### Global / Multi-Region Traditional Carriers

- **Tokio Marine Holdings (TSE: 8766) + subsidiaries** — Japan's largest P&C insurer; FY2024 hull and cargo direct premiums ¥248,941M (~USD 1.66B), net ¥214,399M (~USD 1.43B), +9.2%/+11.6% YoY; FY2024 group net premiums written ¥5,305,182M (~USD 35.4B); net income ¥1,055,276M (+51.7%); FY2025 announced acquisition of ID&E Holdings (integrated engineering consulting). SEA: Tokio Marine Asia (HQ Singapore); 8 P&C companies + 5 life companies across 8 countries; direct subsidiaries in Singapore (Tokio Marine Insurance Singapore Ltd), Malaysia (Tokio Marine Insurans Malaysia, 19 branches), Indonesia (PT Asuransi Tokio Marine Indonesia), Thailand, Philippines; dedicated marine cargo product (eMarine platform) across all SEA markets; 10,000+ employees in Asia. (15, 22, 23)

- **Allianz Global Corporate & Specialty (AGCS) / Allianz Commercial** — €18B+ gross commercial premium (2024, all lines); marine is one of AGCS's core lines; named the Safety and Shipping Review publisher (annual marine casualty data). SEA: Singapore office (AGCS Singapore, 79 Robinson Road); Indonesia operations (Allianz Commercial Indonesia); marine cargo available in Malaysia, Singapore, Indonesia; IoT-based Maritime Risk Consulting service developed with Arviem — positions as risk engineering tool for premium clients, not as a dynamic per-shipment pricing mechanism. (16, 24)

- **Munich Re / Munich Re Specialty – Global Markets (MRS-GM)** — Marine reinsurance revenue €575M (FY2024, +7% YoY); GSI division (which includes MRS-GM as "a leading global provider of marine insurance") revenue €8,781M; Francis Scott Key Bridge collapse impacted 2024 results; marine market survey 2024 assesses SEA cargo markets as "Stable to Good." SEA: Reinsurance capacity provider; no direct retail SEA cargo presence confirmed; market conditions for SEA cargo rated "Stable" in 2024 Marine Market Survey. (17, 25)

- **Lloyd's syndicates (cargo book)** — 9.7% global cargo market share (second largest by country/market after China's 17.6%); GWP £55.5B (FY2024, all lines); underlying combined ratio 79.1%; cargo syndicates include Convex, Atrium, Brit, Chaucer, and others with dedicated marine books. SEA: Lloyd's operates through licensed Lloyd's Asia Platform in Singapore; syndicates access SEA commercial cargo risks through Singapore-registered Lloyd's coverholders. (14, 18)

- **Chubb** — Multi-regional P&C insurer with dedicated marine cargo teams; Chubb CargoAdvantage web-based cargo quoting platform; explicit APAC marine expansion in 2024 — appointed new Head of Marine in Malaysia, launched comprehensive marine product range in Philippines. SEA: Direct local presence in Singapore, Indonesia, Malaysia, Thailand, Philippines, Vietnam; CargoAdvantage digital platform active across APAC; provides Cargo Plus, shipment insurance, multimodal freight liability, and fine art specialty. (26)

- **AXA XL (AXA SA group)** — Specialty marine cargo and project cargo underwriter; parametric marine cargo delay product (built on Otonomi platform) for vessel breakdown / port congestion; IoT-enabled Maritime Risk Consulting service (with Arviem) as value-added risk engineering product; pharma cargo specialist. SEA: AXA operates across SEA through AXA General Insurance (Thailand, Malaysia, Philippines, Indonesia); AXA XL specialty lines available via Singapore hub; parametric delay product for international trade lanes including Asia. (5, 24)

### Insurtech / Parametric Cargo

- **Loadsure (UK/US; London HQ)** — Series A: USD 11M (March 2022; MMC Ventures lead + Crowley strategic); total raised USD 12.4M (Series A only confirmed); per-shipment AI-priced cargo insurance API; integrations with Trucker Tools, McLeod TMS, DAT, Amwins; 40-second policy issuance; claims processing in near-real time; underwritten by Lloyd's syndicates; US focus with international expansion via API; cover up to $2M per shipment (FTL) / $100k (LTL). SEA: No confirmed SEA customer base or office; [ASSUMED-1] market entry into SEA flagged as roadmap target based on secondary source claim (not confirmed by Loadsure). (9, 27)

- **Parsyl (US; Denver, CO)** — Series B: USD 25M (January 2024; HSCM Ventures lead; Lineage Ventures, Flexport Ventures, GLP Capital Partners co-invested); perishable and pharma cargo specialist; ColdCover parametric product — first cargo market parametric temperature policy; settlement in as little as 48 hours using IoT temperature data without manual loss survey; $55M capacity; underwritten via Lloyd's; IoT Data Partner Program: sensors from Parsyl, Sensitech, Emerson, Controlant all feed underwriting model. SEA: No confirmed SEA presence; pharma cold chain relevant to SEA biomedical logistics hub Singapore. (3, 28)

- **Breeze AI (UK; London HQ; formerly Breeze)** — Per-shipment digital cargo insurance platform for freight forwarders; founded 2021; strategic investment from Helvetia Global Solutions; US market expansion via Great American Insurance Group partnership; integration with WebCargo by Freightos (enabling per-shipment coverage for international freight forwarders); hundreds of customers, thousands of shipments per month; ~70% of global cargo estimated uninsured — Breeze targets this underinsurance gap. SEA: No confirmed SEA office; WebCargo integration covers international shipments. (10, 29)

- **Cover Genius (Australia; Sydney HQ)** — XCover embedded insurance platform licensed in 60+ countries; Series E: USD 80M (May 2024; Spark Capital lead); ~10.5M customers; $1.1M daily GWP record; 145% net revenue retention; logistics vertical led by dedicated EVP; earlier Series C: AUD 100M (Sompo Holdings Asia strategic anchor investor — directly relevant to Tokio Marine competitive context). SEA: XCover licensed across SEA; operations in Singapore; logistics/shipping embedded coverage active across SEA e-commerce logistics platforms. (11, 30)

- **Otonomi (US; New York)** — Parametric cargo delay insurance; blockchain + AI underwriting; Series A: USD 5M; launched maritime delay (May 2024) + aviation delay (July 2024) coverages; Marsh distribution partnership for parametric marine cargo delay product (AI-assisted algorithm); claims paid in ≤48 hours / within 7 days of delay detection; geographic expansion to Hong Kong and South America (2024). SEA: No confirmed SEA product launch; Marsh partnership could extend to SEA via Marsh Asia. (4, 5)

### Claims Management / TPAs

- **Sedgwick** — Largest global TPA; valuation USD 13.2B (Sep 2024); marine transportation specialty practice; August 2024: expanded global marine operations, appointed Ronnie Adcock as Global Marine Practice Leader. SEA: Singapore hub (Sedgwick Asia, Stephen Kerr CEO Asia, appointed Nov 2024); Indonesia energy claims presence; provides structured cargo claims handling and specialty marine TPA across Singapore and Indonesia. (6, 31)

- **Crawford & Company (NYSE: CRD-A/CRD-B)** — FY2024 revenues USD 1.293B (+2% YoY, record); marine team 230+ professionals (mariners, engineers, naval architects, cargo surveyors, marine solicitors). SEA: Singapore hub; October 2024: launched dedicated Logistics, Transportation, and Freight claims division in Singapore (led by Dan Yeo, 30+ years marine claims; 85 collective years experience in the Singapore team); operates across Malaysia, Hong Kong, China, Japan, Thailand, Philippines, Taiwan, Indonesia. (7, 32)

- **Gallagher Bassett (subsidiary of AJG NYSE: AJG) + W K Webster Group** — AJG FY2024 revenue not separately available for Gallagher Bassett; acquired W K Webster Group (est. 1861) in February 2025 — WKW is the world's leading marine and transit claims consultancy with 250 staff in London, Singapore, New York, Rotterdam; also acquired London marine boutique Mays Brown; acquisition accelerates Gallagher Bassett's marine claims TPA capability. SEA: WKW Singapore office active; marine transit claims coverage extends to SEA cargo routes. (8, 33)

### Incident Response / Cargo Recovery

- **Overhaul (US; Austin, TX)** — Series C: USD 105M (Springcoast Partners lead; Edison Partners; MidCap debt; total raised ~USD 150M); in-transit supply chain risk management combining real-time GPS monitoring, geofencing, AI risk alerts, cargo lockdown, and LE Connect law enforcement handoff; customers include Microsoft, Bristol Myers Squibb, CEVA Logistics, six top-10 automotive OEMs; acquired FreightVerify (adding automotive logistics visibility). SEA: No confirmed SEA office or customer base; focus on US + international Fortune 100 supply chains. (12, 34)

### SEA-Specific Players

- **Sompo Insurance (Indonesia; subsidiary of Sompo Holdings Japan)** — Sompo Holdings (Asia) Pte. Ltd acquired 80% of Sompo Insurance Indonesia shares (OJK approval February 7, 2024); Sompo Indonesia offers marine cargo products; Indonesia unaudited net profit IDR 72.63B (+36.47% YoY prior year); Sompo Asia APAC hub Singapore; 4,500+ APAC employees. SEA: Direct presence in Singapore, Indonesia, Thailand, Philippines, Malaysia, Vietnam. (35)

- **Tokio Marine Asia (Singapore)** — See Traditional Carriers section above; most extensive SEA direct cargo insurance footprint of any carrier in this stage with country-level P&C subsidiaries across all 6 target SEA markets (Singapore, Indonesia, Thailand, Malaysia, Philippines, Vietnam). (22, 23)

- **Crawford & Company SEA Logistics Division** — October 2024 launch of dedicated Logistics, Transportation, and Freight division in Singapore; directly addresses SEA cargo claims market. (7, 32)

---

## Preliminary Pain Points (this stage)

1. **Claims platforms shorten payout time but do not shorten incident response or recovery time — the physical cargo is already gone.** Parametric models (Otonomi: 48-hour settlement; Parsyl ColdCover: 2-day payout) and digital claims platforms (Loadsure: near-real-time) dramatically accelerate financial settlement after a loss. But financial settlement is not physical recovery: cargo theft in H1 2024 rose 49% (North America) and average loss per incident reached $115,230 (+83% YoY). Once cargo is moved off-route, the window for physical recovery is typically measured in hours — not days. No platform reviewed bridges the gap between real-time loss detection (Overhaul, GPS lockdown) and insurance FNOL trigger in an automated workflow. The shipper detects the theft, calls the carrier, calls the broker, submits FNOL — each step manual and hours-slow. (12, 13, 1)

2. **Insurance premiums are priced off declared shipment value and historical loss history, not real-time per-shipment journey data — even where IoT exists.** Standard cargo premiums apply a fixed rate to declared value (0.10%–2.00%) plus route/commodity adjustments. Even where insurers (AXA XL + Arviem) deploy IoT sensors, the product is positioned as risk engineering / loss prevention consulting, not as a mechanism to dynamically lower the premium per shipment when the shipment demonstrates lower in-transit risk (route compliance, seal integrity, temperature within range). Parsyl is the closest exception: IoT data feeds its underwriting model and customers can qualify for better rates via the Data Partner Program — but this is still renewal-based, not real-time per-voyage pricing. (3, 24) [ASSUMED-2]: No cargo insurer operating in SEA adjusts premium rates in real time at a per-shipment level based on IoT sensor data during transit. To validate: interview Tokio Marine Indonesia and Sompo Indonesia marine cargo underwriting teams on whether any IoT-linked per-shipment pricing product exists or is in development.

3. **The 70% underinsurance problem is structural in SEA: most small and mid-size shippers have no cargo insurance at all.** Breeze estimates 70% of global cargo is uninsured; Loadsure targets "70 million small shippers currently operating without formal cargo insurance." In SEA, OJK mandates marine cargo insurance only for crude palm oil and coal exports — all other cargo categories are unregulated and underinsured by default. Small Indonesian and Vietnamese shippers using informal road freight networks have no access to per-shipment digital cargo insurance (Loadsure, Breeze are not operational in SEA), and traditional annual open-cover policies require broker relationships and minimum scale that owner-operators cannot meet. (9, 10, 20)

4. **Cargo claims in traditional insurance are slow by design — 120-day response cycle — and coordination is multi-party and manual.** US Carmack Amendment requires carriers to acknowledge a claim within 30 days and respond substantively within 120 days; before telematics-based FNOL, average time between a high-G-force impact and claim reporting was over 8 days. For cross-border SEA cargo, the multi-party coordination problem is more acute: shipper in Indonesia → 3PL in Singapore → ocean carrier → destination customs → insurer in Japan or UK → surveyor in destination country → subrogation against sub-carrier. No integrated workflow platform manages this coordination chain. (36)

5. **FNOL data quality from SEA cargo losses is structurally poor — most losses are reported without sensor evidence because IoT penetration is thin.** Parsyl's parametric model works because IoT temperature data is continuous. Crawford's and Sedgwick's adjusters in Singapore rely on documentary evidence (seal logs, cargo receipts, witness statements) to assess most SEA cargo claims. GPS tracking blackouts (jamming or cellular dead zones — see Stage 3), absent CCTV on informal trucking routes, and absence of standardized cargo condition documentation on informal contracts mean that most small-shipper cargo claims in Indonesia, Thailand, and Vietnam are adjudicated on paper records that are easily fabricated. Loss ratios for fraud-affected emerging markets reflect this: Latin America cargo loss ratios run 40–50% (IUMI), compared to Europe's sub-30% in 2023–2024. (1, 7)

6. **Embedded cargo insurance integrations exist in US/EU logistics platforms but are absent from SEA-native freight platforms.** Loadsure integrates with McLeod TMS, Trucker Tools, DAT, and Amwins — all US-centric. Breeze integrates with WebCargo (Freightos) — global freight forwarder platform, relevant for formal SEA forwarders. Cover Genius XCover is operational across SEA e-commerce platforms. However, no confirmed integration exists between a SEA-native logistics marketplace (Kargo Indonesia, Janio Asia, Flash Express Thailand, Deliveree, etc.) and a per-shipment cargo insurance provider. [ASSUMED-3]: No SEA-native road freight marketplace or TMS platform has live embedded per-shipment cargo insurance. To validate: check Kargo Indonesia, Deliveree, and Flash Express for insurance embed features; interview product teams on whether insurance integration is in roadmap.

7. **Parametric cargo delay products (Otonomi + Marsh) require third-party data triggers — port AIS data, flight databases — that are unreliable or unavailable for road freight in SEA.** Otonomi's sea voyage delay product triggers on vessel arrival vs. scheduled arrival from AIS data — a reliable third-party feed for ocean freight. The road freight equivalent (actual vs. scheduled delivery for a truck leg from Jakarta to Surabaya) has no equivalent independent data trigger that an insurer could use without relying on the carrier's own GPS data — which creates moral hazard and data integrity risk. Parametric road cargo insurance remains theoretical in SEA. [ASSUMED-4]: No independent third-party data source exists in Indonesia, Thailand, or Vietnam that can serve as a reliable road freight delivery trigger for parametric cargo delay insurance, analogous to AIS for sea freight. To validate: check whether Kargo, Selog, or government customs APIs provide truck delivery timestamps that could serve as triggers.

8. **Cargo theft fraud in SEA — strategic/identity-based theft — is growing but is not captured in traditional cargo insurance models.** The BSI/TT Club 2024 Cargo Theft Report (based on 2024 incident data) records strategic theft — identity impersonation, document forgery, AI-generated bills of lading — at 18% of US incidents, rising. In SEA, similar fraud patterns exist (ghost shipments, fake trucking companies accepting cargo and disappearing) but are not systematically recorded in regional insurance loss data. Insurers in SEA price cargo theft risk using historical loss tables without fraud-signal data — the same gap that parametric insurers in the US are beginning to address via ML models trained on freight fraud patterns. (2, 37) [ASSUMED-5]: SEA cargo insurance underwriters do not systematically incorporate freight fraud indicators (identity verification status of carrier, bill of lading origin analysis, route deviation history) into per-shipment pricing. To validate: interview marine underwriters at Tokio Marine Indonesia and Sompo Indonesia on whether counter-fraud data feeds are used in cargo pricing models.

9. **The insurer-shipper data pipeline does not exist in SEA — cargo IoT data collected by shippers or 3PLs is not transmitted to insurers.** AXA XL's Arviem-based IoT risk consulting works because a premium shipper willingly shares sensor data with AXA XL as part of a risk management engagement. In SEA's small-carrier / owner-operator segment, there is no mechanism to share in-transit data with an insurer: the shipper has no IoT device, the carrier has no telematics, and even if they did, no API pipeline exists between a SEA-native fleet telematics platform and any cargo insurer's underwriting or claims system. This is the structural gap that Stage 3 (fleet telematics) and Stage 6 (cargo insurance) share at their boundary. (24, Stage 3 cross-reference)

10. **Claims surveyor shortages in SEA interior markets delay loss assessment for large claims.** Crawford & Company's Singapore Logistics Division (October 2024 launch) and Sedgwick's Singapore hub cover Singapore, Malaysia, and Indonesia's major ports. For inland cargo losses in Indonesia (North Sumatra to Java inland routes), Thailand (northern provinces), or Vietnam (Ho Chi Minh to Hanoi corridor), there is a shortage of qualified marine cargo surveyors. Large claims on high-value cargo (electronics, pharmaceuticals) can take 30–90 days to fully assess in interior SEA markets. No data on surveyor density per shipment in SEA found in primary sources. [ASSUMED-6]: The ratio of qualified marine cargo surveyors to reportable cargo claims in Indonesia's interior markets is materially lower than in Singapore or Kuala Lumpur, causing average loss assessment delays of 30+ days on inland claims. To validate: interview Crawford's Dan Yeo and Sedgwick Indonesia country lead on surveyor capacity and average assessment turnaround for interior Indonesia claims.

11. **Reinsurance capacity for SEA cargo lines is contracting at the same time that cargo values are rising.** Munich Re's 2024 Marine Market Survey rates SEA cargo markets as "Stable" overall, but notes "coverage creep" and "rate plateaus" across Asia-Pacific. Swiss Re sigma 2025 explicitly flags marine as among the specialty lines where "premium growth will likely slow" due to trade fragmentation. For SEA-specific cargo risks (palm oil, electronics, coal export corridors), this means that domestic Indonesian or Thai primary insurers face tighter reinsurance terms at a time when insurable cargo values are increasing due to e-commerce and nearshoring growth. Primary carriers with thin reinsurance backing are exposed to accumulation risk at ports. (17, 25, 38)

12. **SEA cargo insurance for road freight uses standard ICC terms designed for ocean freight, creating systematic coverage mismatches.** Standard ICC A/B/C clauses are designed for ocean cargo; their application to road freight in SEA involves ambiguity on loading/unloading risk, multi-handoff chain-of-custody, and delay coverage. For intermodal SEA cargo (road + sea + road legs), the standard ICC "attachment" and "termination" of coverage clauses create gaps at each handoff point — particularly for informal road legs where the carrier is not named in the bill of lading. This is a known issue in marine insurance law but no SEA jurisdiction has published specific road cargo insurance regulations equivalent to the Carmack Amendment (US road freight liability standard). [ASSUMED-7]: At least 30% of cargo damage claims in SEA road freight are disputed or underpaid because the coverage attachment point under ICC clauses is ambiguous for road legs handled by unlisted sub-carriers. To validate: interview marine claims counsel at Rajah & Tann (Singapore), Ali Budiardjo Nugroho Reksodiputro (Indonesia), and Baker McKenzie Thailand on the most common coverage dispute pattern in SEA cargo claims.

---

## Sources for this Stage

(1) IUMI Stats Report 2025 — global marine and cargo insurance premiums 2024. IUMI press release: https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/ | IUMI Stats Report 2025 page: https://iumi.com/statistics/iumi-stats-report-2025/

(2) BSI Consulting and TT Club 2024 Cargo Theft Report (April 2025) — global cargo theft statistics, commodity types, theft methods, geographic hotspots. PDF processed via markitdown: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown)

(3) Parsyl — ColdCover parametric perishable cargo insurance; Series B $25M (January 2024); IoT-enabled underwriting. Parsyl Series B press release: https://www.parsyl.com/press-release/parsyl-raises-25m-series-b-to-expand-insurance-and-risk-management-for-essential-supply-chains | Parsyl parametric product announcement: https://www.parsyl.com/press-release/041520

(4) Otonomi — parametric cargo delay insurance; Series A $5M; Marsh distribution partnership; 48-hour claims settlement. Otonomi Series A: https://programbusiness.com/news/otonomi-secures-5-million-series-a-to-advance-insurtech-innovation-in-cargo-insurance/ | Otonomi expansion 2024: https://www.dig-in.com/news/otonomi-expands-parametric-cargo-insurance-to-more-modes

(5) Marsh parametric cargo delay product (Otonomi-powered) — trigger mechanics, 14-day settlement, graduated payout. Marsh product page: https://www.marsh.com/en/industries/cargo/expertise/parametric-coverage-for-cargo-delay.html | AXA XL parametric delay: https://axaxl.com/fast-fast-forward/articles/lets-talk-axa-global-parametrics

(6) Sedgwick — marine operations expansion August 2024; Asia CEO appointment November 2024; Singapore and Indonesia presence. Sedgwick marine expansion press release: https://www.prnewswire.com/news-releases/sedgwick-expands-global-marine-operations-to-support-sectors-changing-needs-302216658.html | Sedgwick Asia: https://www.sedgwick.com/apac/asia/

(7) Crawford & Company — FY2024 revenues $1.293B; marine team 230+ professionals; Singapore Logistics Division launch October 2024; Asia operations under Scott Reichelt. Crawford FY2024 results: https://ir.crawco.com/news/news-details/2025/Crawford--Company-Reports-2024-Fourth-Quarter-and-Full-Year-Results/default.aspx | Crawford Singapore Logistics Division: https://www.claimsjournal.com/news/national/2024/10/02/326473.htm | Crawford marine: https://www.crawco.com/industries/marine

(8) Gallagher Bassett / W K Webster — acquisition February 2025; WKW est. 1861, 250 staff, Singapore + London + NY + Rotterdam. Arthur J. Gallagher press release: https://investor.ajg.com/news/news-details/2025/Arthur-J.-Gallagher--Co.-Acquires-W-K-Webster--Co-Ltd/default.aspx | Gallagher Bassett announcement: https://www.gallagherbassett.com/news-and-insights/gallagher-bassett-expands-into-marine-claims-with-acquisition-of-w-k-webster-group/

(9) Loadsure — Series A $11M (March 2022; MMC Ventures, Crowley); per-shipment API; 40-second issuance; US focus. Loadsure Series A: https://www.loadsure.net/latest/article/loadsure-raises-11-million-series-a-funding-for-its-breakthrough-freight-insurance-technology/ | MMC Ventures: https://mmc.vc/mmc-leads-11-million-series-a-for-embedded-insurance-product-loadsure/ | Loadsure McLeod TMS: https://www.freightwaves.com/news/per-load-shippers-interest-insurance-now-available-in-mcleod-tms

(10) Breeze AI — per-shipment digital cargo insurance for freight forwarders; WebCargo / Freightos integration; Helvetia strategic investment; Great American US expansion. Breeze-WebCargo integration: https://www.insurtechinsights.com/breeze-partners-with-webcargo-for-seamless-cargo-insurance/ | Breeze US expansion: https://meantime.global/news/ai-powered-cargo-insurance-platform-breeze-welcomes-expansion-into-us-market-with-great-american-collaboration/

(11) Cover Genius — XCover embedded platform; Series E $80M (May 2024; Spark Capital); 10.5M customers; $1.1M daily GWP; 60+ countries licensed; Sompo Holdings Asia strategic investor (prior Series C). Series E: https://covergenius.com/cover-genius-closes-80m-in-series-e-funding-as-investors-see-700-billion-opportunity-in-embedded-protection/ | Series C (Sompo anchor): https://covergenius.com/series-c-cap-raise/

(12) Overhaul — Series C $105M (Springcoast Partners, Edison Partners; closed 2025); total raised ~$150M; CEVA Logistics partnership; LE Connect law enforcement network; cold chain quality solution June 2024. Series C press release: https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html | CEVA partnership: https://www.prnewswire.com/news-releases/ceva-selects-overhaul-as-partner-to-bolster-north-american-supply-chain-security-301776646.html | Cold chain June 2024: https://www.prnewswire.com/news-releases/overhaul-unveils-groundbreaking-cold-chain-quality-solution-for-pharma-and-high-value-food--beverage-markets-302163619.html

(13) Overhaul H1 2024 Cargo Theft Report — 49% increase; average loss $115,230 (+83%). PRNewswire: https://www.prnewswire.com/news-releases/cargo-theft-soars-49-in-first-half-of-2024-amid-rising-criminal-sophistication-reveals-overhaul-report-302228584.html

(14) IUMI Facts & Figures Press Release 2024 — country market shares for cargo; Lloyd's 9.7%, China 17.6%, US 6.9%; Asia/Pacific cargo share 35.15%; regional loss ratios. https://iumi.com/statistics/facts-figures-press-release-2024/

(15) Tokio Marine Holdings — FY2024 Summary Report (4Q FY2024; year ended March 31 2025; TSE: 8766; Japanese GAAP). Hull and cargo direct premiums ¥248,941M, net premiums written ¥214,399M; group net premiums written ¥5,305,182M; net income ¥1,055,276M. Official filing: https://www.tokiomarinehd.com/en/ir/event/presentation/2024/o1ckc9000001gbyp-att/4Q_FY2024_Summary_Report_e.pdf (PDF, processed via markitdown) | FY2024 IR download page: https://www.tokiomarinehd.com/en/ir/download/2024.html

(16) Allianz Commercial — €18B gross commercial premium (2024, all lines). Allianz Commercial financials page: https://commercial.allianz.com/about-us/financials.html | AGCS Annual Report 2024 (PDF, [NEEDS-ATTENDED-FETCH]): https://commercial.allianz.com/content/dam/onemarketing/commercial/commercial/about-agcs/AGCS-Annual-Report-2024-EN.pdf

(17) Munich Re Group Annual Report 2024 — marine reinsurance revenue €575M (+7% from €539M); GSI revenue €8,781M. PDF processed via markitdown: https://www.munichre.com/content/dam/munichre/mrwebsiteslaunches/2024-annual-report/MunichRe-Group-Annual-Report-2024-en.pdf/_jcr_content/renditions/original./MunichRe-Group-Annual-Report-2024-en.pdf (PDF, processed via markitdown) | Munich Re Marine Market Survey 2024 (PDF, processed via markitdown): https://www.munichre.com/content/dam/munichre/contentlounge/website-pieces/documents/MunichRe-Marine-Market-Survey-2024.pdf/_jcr_content/renditions/original./MunichRe-Marine-Market-Survey-2024.pdf (PDF, processed via markitdown)

(18) Lloyd's 2024 Full Year Results — GWP £55.5B; combined ratio 86.9%; profit before tax £9.6B. Lloyd's press release: https://www.lloyds.com/insights/media-centre/press-releases/lloyds-reports-2024-full-year-results | Lloyd's full year results page: https://www.lloyds.com/fullyearresults2024

(19) Insurance TPA market size $432.4B (2024) — low-confidence market research figure. PRNewswire (Insight Partners): https://www.prnewswire.com/news-releases/the-rise-of-insurance-third-party-administrator-market-a-544-67-billion-industry-dominated-by-tech-giants---sedgwick-crawford-and-company-and-corvel-corp--the-insight-partners-302291307.html

(20) OJK Indonesia insurance regulatory context — non-life premium IDR 96.955T (+4.6%); marine cargo mandatory for CPO and coal exports. OJK Roadmap: https://ojk.go.id/en/berita-dan-kegiatan/info-terkini/Documents/Pages/Roadmap-for-the-Development-and-Strengthening-of-the-Indonesia-Insurance-Industry-2023-2027/Roadmap%20for%20the%20Development%20and%20Strengthening%20of%20the%20Indonesia%20Insurance%20Industry%202023-2027.pdf (PDF, [NEEDS-ATTENDED-FETCH]) | OJK premium tariff: https://ojk.go.id/en/kanal/iknb/berita-dan-kegiatan/siaran-pers/Pages/press-release-ojk-sets-premium-tariff-for-insurance.aspx

(21) APAC cargo insurance ~$8.7B estimate. Dataintelo (market research, low tier): https://dataintelo.com/report/marine-cargo-insurance-market — Geography mismatch: APAC aggregate used as proxy for SEA; field validation needed.

(22) Tokio Marine Asia SEA operations — 8 P&C companies, 5 life companies, 8 countries, 10,000+ employees, Singapore HQ. Tokio Marine Asia: https://www.tokiomarine.com/asia/en/about-us/tokio-marine-asia/our-regional-companies.html | Tokio Marine Singapore general insurance: https://www.tokiomarine.com/sg/en/non-life/about-us.html

(23) Tokio Marine Indonesia marine cargo product. PT Asuransi Tokio Marine Indonesia product page: https://www.tokiomarine.com/id/en/non-life/products/business/marine/marine-cargo-insurance.html | Tokio Marine Malaysia marine: https://www.tokiomarine.com/my/en/non-life/products/business/marine/marine-cargo-insurance.html

(24) AXA XL + Arviem IoT Maritime Risk Consulting service — risk engineering positioning, not dynamic pricing. Arviem case study: https://arviem.com/resources-library/success-stories/data-driven-risk-consulting/ | AXA XL marine: https://axaxl.com/insurance/products/marine-cargo-insurance

(25) Munich Re Marine Market Survey 2024 — cargo market conditions globally and SEA; "Stable to Good" for SEA. https://www.munichre.com/en/solutions/reinsurance-property-casualty/marine-market-survey-2024.html | Swiss Re sigma 2025 marine premium slowdown: https://www.swissre.com/institute/research/sigma-research/sigma-2025-02-world-insurance-riskier-fragmented-world.html

(26) Chubb marine cargo Southeast Asia — Indonesia, Singapore, Malaysia, Philippines, Thailand, Vietnam presence; CargoAdvantage platform; 2024 marine expansion in Malaysia and Philippines. Chubb Singapore cargo: https://www.chubb.com/sg-en/business/marine/cargo-insurance.html | Chubb Indonesia marine: https://www.chubb.com/id-en/business/marine-cargo-insurance.html | Chubb Asia marine expansion: https://www.reinsurancene.ws/chubb-to-expand-its-marine-business-in-asia/

(27) Loadsure SEA target market — secondary source claim (not confirmed by Loadsure directly). Source (low confidence): Market research firm citing Loadsure roadmap. [ASSUMED-1] flag applies.

(28) Parsyl Series B — $25M January 2024; HSCM Ventures, Lineage Ventures, Flexport Ventures. https://www.parsyl.com/press-release/parsyl-raises-25m-series-b-to-expand-insurance-and-risk-management-for-essential-supply-chains

(29) Breeze AI — Helvetia investment; WebCargo integration; Great American partnership. Breeze-WebCargo: https://www.insurtechinsights.com/breeze-partners-with-webcargo-for-seamless-cargo-insurance/ | Breeze-Great American: https://meantime.global/news/ai-powered-cargo-insurance-platform-breeze-welcomes-expansion-into-us-market-with-great-american-collaboration/

(30) Cover Genius — Series E $80M May 2024; Sompo Holdings Asia anchor investor (Series C). Series E: https://covergenius.com/cover-genius-closes-80m-in-series-e-funding-as-investors-see-700-billion-opportunity-in-embedded-protection/ | Sompo Series C: https://covergenius.com/series-c-cap-raise/ | Australian Business News: https://www.businessnewsaustralia.com/articles/aussie-founded-cover-genius-raises--119m-in-series-e-round-amid-rapid-growth-for-insurtech.html

(31) Sedgwick Asia — Singapore hub; CEO appointment; marine TPA for cargo. Sedgwick marine transportation: https://www.sedgwick.com/loss-adjusting/marine-transportation/ | Sedgwick marine expansion: https://www.sedgwick.com/press-release/sedgwick-expands-global-marine-operations-to-support-sectors-changing-needs/

(32) Crawford & Company — FY2024 results; Singapore Asia operations; Logistics Division launch. Crawford FY2024: https://ir.crawco.com/news/news-details/2025/Crawford--Company-Reports-2024-Fourth-Quarter-and-Full-Year-Results/default.aspx | Singapore division: https://www.insurancebusinessmag.com/asia/news/breaking-news/crawford-debuts-tailored-logistics-and-freight-division-506800.aspx

(33) Gallagher Bassett / W K Webster acquisition February 2025. AJG press release: https://investor.ajg.com/news/news-details/2025/Arthur-J.-Gallagher--Co.-Acquires-W-K-Webster--Co-Ltd/default.aspx | Gallagher Bassett announcement: https://www.gallagherbassett.com/news-and-insights/gallagher-bassett-expands-into-marine-claims-with-acquisition-of-w-k-webster-group/ | Insurance-edge early success: https://insurance-edge.net/2025/05/02/gallagher-bassett-acquisition-helps-wk-webster-deliver-on-success/

(34) Overhaul — Series C; CEVA; Microsoft; Bristol Myers Squibb; LE Connect. Series C: https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html | $55M earlier raise: https://techcrunch.com/2025/01/10/overhaul-keeps-tabs-on-cargo-for-customers-like-microsoft-and-dyson/

(35) Sompo Insurance Indonesia — OJK ownership change February 2024; Sompo Holdings Asia 80% acquisition; IDR 72.63B net profit. IDNFinancials: https://www.idnfinancials.com/news/49149/sompo-insurance-indonesias-ownership-shifts-singapore | Sompo Asia: https://www.sompo-asia.com/

(36) FNOL timing gap — 8+ day average before telematics FNOL; industry 30-day response target. TruckerCloud FNOL: https://www.truckercloud.com/blog/first-notice-of-loss-fnol

(37) BSI/TT Club 2024 Cargo Theft Report — strategic theft 18% of US incidents; AI-enabled document fraud; warehouse vulnerabilities. Publication announcement: https://www.ttclub.com/news-and-resources/news/article/cargo-theft-report-reveals-rapidly-shifting-criminal-tactics-and-emerging-targets/

(38) Swiss Re sigma 2025 — marine premium growth slowing; trade fragmentation impact. Swiss Re sigma 2/2025: https://www.swissre.com/institute/research/sigma-research/sigma-2025-02-world-insurance-riskier-fragmented-world.html

---

## Assumptions to Validate

[ASSUMED-1]: Loadsure has a confirmed Southeast Asian market roadmap or active expansion plan.
- To validate: Contact Loadsure investor relations or BD team directly; check whether any SEA freight platform (Janio, Kargo, Deliveree) has a Loadsure integration agreement. Secondary source claim of $50M Series B and SEA expansion was not confirmed by any primary source — treat as unverified.

[ASSUMED-2]: No cargo insurer operating in SEA currently adjusts premium rates in real time at a per-shipment level based on IoT sensor data during transit.
- To validate: Interview marine cargo underwriting product managers at Tokio Marine Indonesia, Sompo Indonesia, Allianz Indonesia, and Chubb Singapore on whether any per-shipment IoT-linked pricing product exists or is in active development. Ask specifically whether sensor data from Tive, Sensitech, or Roambee devices is used as underwriting input.

[ASSUMED-3]: No SEA-native road freight marketplace or TMS platform (Kargo Indonesia, Deliveree, Flash Express Thailand) has a live embedded per-shipment cargo insurance product.
- To validate: Review Kargo Indonesia, Deliveree, and Flash Express product documentation and App Store listings for insurance features; interview product leads at each platform.

[ASSUMED-4]: No independent third-party data source exists in Indonesia, Thailand, or Vietnam that can reliably serve as a road freight delivery-time trigger for parametric cargo delay insurance.
- To validate: Engage Otonomi, Marsh Asia, and AXA XL Asia parametric teams on whether they have identified a suitable data trigger for SEA road freight parametric delay; check whether Indonesia's Ministry of Transportation digital reporting systems or CEISA customs clearance timestamps could serve as proxy triggers.

[ASSUMED-5]: SEA cargo insurance underwriters at major carriers (Tokio Marine Indonesia, Sompo Indonesia, Chubb Singapore) do not systematically incorporate freight fraud indicators into per-shipment pricing.
- To validate: Interview marine underwriting teams at each carrier on what carrier vetting data they use (if any) beyond declared cargo value and route; ask whether freight fraud pattern databases (analogous to NICB in the US) exist in SEA.

[ASSUMED-6]: The ratio of qualified marine cargo surveyors to reportable cargo claims in Indonesia's interior markets causes average loss assessment delays of 30+ days on inland claims.
- To validate: Interview Crawford Singapore's Logistics Division lead (Dan Yeo) and Sedgwick Indonesia country lead; request average days-to-survey-completion by geography (Singapore vs. Surabaya vs. Medan vs. Makassar).

[ASSUMED-7]: At least 30% of cargo damage claims in SEA road freight are disputed or underpaid because the coverage attachment point under ICC clauses is ambiguous for road legs handled by unlisted sub-carriers.
- To validate: Interview marine claims counsel at Rajah & Tann (Singapore), ABNR (Indonesia), and Baker McKenzie Thailand; request proportion of cargo claims disputes that cite coverage attachment or unnamed sub-carrier issues as the primary ground for denial or reduction.


---

### Deep-research applied — corrections and upgrades (pass-3)

**1. VC-Parsyl-1 → upgraded Low → Medium with three factual corrections.** Parsyl claims previously sourced only from parsyl.com now anchored in independent trade press:
- **Year correction:** Series B of USD 25M closed in **January 2022**, not January 2024. Confirmed across three independent specialist publications: Reinsurance News (Jan 31, 2022), Artemis.bm (Jan 27, 2022), Insurtech Insights (Jan 31, 2022). Round led by HSCM Ventures.
- **Settlement window:** ColdCover parametric documented at **72 hours** under product terms; individual claims (e.g., cod-shipment case) have settled same-day. The vendor "48 hours" figure should be qualified as "as fast as 48 hours" or omitted.
- **Partner list correction:** March 2024 Data Partner Program names **Sensitech (formerly Berlinger), Copeland (formerly Emerson), Roambee, and Tive** — Controlant is NOT listed. Drop Controlant from the partner list.
- The $4 trillion TAM figure remains unverified beyond Parsyl's own materials — flag [ASSUMED-N].
- New citations: https://www.reinsurancene.ws/parsyl-raises-25m-series-b-funding/, https://www.artemis.bm/news/hscm-ventures-backs-parsyl-the-sensor-driven-parametrics-insurtech/, https://www.berlinger.com/medien/berlinger-partners-with-parsyl. Insurance Insider article [NEEDS-ATTENDED-FETCH]: https://www.portal.insuranceinsider.com/article/29mxhpl4qywkjwby119mo/parsyl-secures-25mn-and-announces-us-mga.

**2. VC-TokioMarine-1 → upgraded Low → Medium with factual correction.** Tokio Marine Asia footprint confirmed via two primary IR sources:
- Tokio Marine Holdings Group Overview one-pager PDF (June 2025; tokiomarinehd.com/en/o1ckc9000000qgeb-att/onepager_en.pdf; fetched via markitdown) — states **8 P&C Insurance companies and 4 Life Insurance companies in 8 countries** across Southeast Asia and India.
- Tokio Marine Asia regional companies register (tokiomarine.com/asia/en/about-us/tokio-marine-asia/our-regional-companies.html) — lists exactly 4 life subsidiaries: TM Life Insurance Singapore, TM Life Insurance Thailand, TM Life Insurance Malaysia, TM Life Insurance Indonesia.
- **Correction: 5 Life companies → 4 Life companies.** 8 P&C, 8 countries, 10,000+ employees confirmed. Global group has 51,000 employees (Japan 31,000 / International 20,000). Note: in October 2024 Tokio Marine reportedly paused a ~$1B sale process for its SEA life insurance units (Japan Times, Insurance Journal) — may affect future life-company count. "8 countries" includes India and Myanmar — more precisely "Southeast Asia + India" per Tokio Marine Holdings' own language.

**3. VC-CargoTheft-1 → upgraded Low → Medium with sourcing correction.** Replace Overhaul vendor PR with primary independent trackers. Verisk CargoNet 2024 Annual Report: 3,625 US+Canada incidents (+27% YoY), $454.9M losses (up from $331.9M in 2023), avg $202,364/incident. Q1 2024 +46% YoY; Q2 +33%. NICB 2024 independently confirms 27% YoY rise (2,217 US thefts). BSI/TT Club 2024 Cargo Theft Report corroborates trend and tactics (facility thefts rising; +48% insider participation in NA). The Overhaul "49% H1 / $115,230 avg / 2,500 IROs / $35M recovered" set is vendor-self-reported and should not be cited as independent data; if retained, label [VENDOR-SELF-REPORTED]. Overhaul's H1 figure is directionally consistent with CargoNet's Q1 +46% but is a biased sample (Overhaul customer base only).

**4. New source additions:**
- (28) Verisk CargoNet 2024 trends: https://www.cargonet.com/news-and-events/cargonet-in-the-media/2024-theft-trends/
- (29) NICB 2024 cargo theft report: https://www.nicb.org/news/regional-news/report-shows-california-and-texas-account-over-half-all-cargo-theft-2024
- (30) Tokio Marine Holdings Group one-pager: https://www.tokiomarinehd.com/en/o1ckc9000000qgeb-att/onepager_en.pdf (markitdown-verified)
- (31) Tokio Marine Asia regional companies: https://www.tokiomarine.com/asia/en/about-us/tokio-marine-asia/our-regional-companies.html
- (32) Reinsurance News on Parsyl Series B: https://www.reinsurancene.ws/parsyl-raises-25m-series-b-funding/
- (33) Artemis.bm on Parsyl Series B: https://www.artemis.bm/news/hscm-ventures-backs-parsyl-the-sensor-driven-parametrics-insurtech/
- (34) Berlinger announcing Parsyl partnership: https://www.berlinger.com/medien/berlinger-partners-with-parsyl
- (35) BSI/TT Club 2024 Cargo Theft Report April 2025: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf

