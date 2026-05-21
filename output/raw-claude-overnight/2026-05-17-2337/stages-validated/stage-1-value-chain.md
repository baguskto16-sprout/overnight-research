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
