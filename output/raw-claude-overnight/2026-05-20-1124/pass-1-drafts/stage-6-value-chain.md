## Stage 6: Post-Incident — Claims, Insurance & Recovery

### Description

This stage covers everything that happens after an adverse event — cargo theft, physical damage, temperature excursion, total loss, delay — and before the risk is priced for the next shipment. Actors span (1) cargo underwriters and insurtechs that price and embed coverage; (2) parametric insurance platforms that pay on trigger events without requiring loss proof; (3) cargo claims management software and loss-adjuster networks that handle indemnity claims; (4) theft recovery specialists; and (5) telemetry-to-underwriting feedback loops that close the cycle by using in-transit sensor data to reprice the next policy. This stage is structurally adjacent to Stage 3 (IoT sensors that generate the condition data that feeds claims) and Stage 1 (carrier credentialing that affects insurability). It does not re-document those stages; its scope is the post-incident transaction and the pricing feedback.

---

### Activities

1. **Underwriting and policy issuance**: Pricing cargo risk per-shipment or per-policy using declared value, commodity type, route, carrier history, and — increasingly — telematics or IoT sensor data; issuing coverage as embedded, per-load, or annual open-cover.
2. **Parametric trigger monitoring and payout**: Monitoring agreed objective triggers (temperature exceedance, port delay hours, shock threshold) and executing pre-agreed payouts automatically on trigger confirmation, without a formal claims investigation.
3. **Cargo claims intake, investigation, and settlement**: Receiving first-notice-of-loss (FNOL), dispatching surveyors or loss adjusters, gathering documentation (CMR, bill of lading, commercial invoice, photos), assessing liability, and settling or declining claims — a process that currently averages 30–90 days for international cargo claims.(6)
4. **Theft recovery coordination**: Mobilizing law enforcement, covert GPS tracker activation, and recovery networks (CargoNet in North America; Overhaul in LATAM/EU; local cargo police affiliations) within the first 48–72 hours after a theft report, which is the critical recovery window.
5. **Risk-pricing feedback loop**: Feeding telematics data, excursion records, and claims outcomes back to the underwriting model to reprice the next policy — the mechanism by which IoT-equipped shippers receive discounted premiums and the cargo insurance market moves from declared-value to journey-level pricing.

---

### Revenue Model

Cargo underwriters earn premium income (annual open-cover or per-shipment premium) underwritten on a loss-ratio basis; insurtech MGAs earn a percentage of gross written premium as a managing-general-agent fee plus profit commission; parametric platforms earn premium on trigger-based products (no claims-ratio risk exposure per trigger design); claims management software companies earn annual SaaS license fees from insurers and 3PLs; loss adjusters earn per-claim fees or retainer agreements from carriers/insurers; theft recovery networks charge annual subscription plus success fees per recovery.

---

### Cost Drivers

Reinsurance purchasing cost and catastrophic loss exposure (for traditional underwriters); actuarial and data science labor (insurtech MGAs); claims adjuster labor, surveyor dispatch, and legal/subrogation costs (loss adjusters); cellular and satellite data ingestion for parametric trigger monitoring; law enforcement coordination and covert recovery operations (theft recovery); and capital required to hold insurance risk on balance sheet (Lloyd's capacity).

---

### Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global marine cargo insurance premiums (IUMI 2024 Stats Report) | $22.64B (2024), up 1.6% YoY | High — IUMI primary source, covers all marine cargo globally | (1) |
| Asia/Pacific share of global cargo insurance premiums (IUMI) | 35.15% of $22.64B = ~$7.96B (2024) | High — IUMI primary source | (1) |
| Asia/Pacific cargo premium growth YoY (IUMI 2024) | +8.8% YoY, driven primarily by China (17.6% of global) | High — IUMI primary source; Japan and India posted small declines | (1) |
| Total global marine insurance premiums (all lines; IUMI 2024) | $39.92B (2024), up 1.5% YoY | High — IUMI primary source | (1) |
| TT Club gross earned premiums (mutual; transport & logistics specialty) | $284.2M (2024), stable YoY; 93% member retention; 1,300+ members | High — TT Club 2024 Annual Report | (2) |
| Crawford & Company global revenue (loss adjusting + claims management) | $1.293B (2024), record high, +2% YoY; NYSE: CRD.A | High — corporate press release citing 2024 Form 10-K | (3) |
| Cargo claims management software market (GrowthMarketReports.com) | $1.23B (2024), CAGR 10.6%, projected $3.07B by 2033 | Low — single market research firm; methodologically opaque; treat as directional only | (4) |
| Parametric insurance market size (Global Market Insights) | ~$14.4–15.9B (2024E, all lines; cargo is a sub-segment) | Low — multiple market research firms with divergent estimates; no government or multilateral source; Swiss Re and Munich Re sigma do not publish a dedicated parametric line-item | (5) |
| Cargo theft losses — US + Canada (Verisk CargoNet 2025 full-year) | $725M estimated (2025), up 60% from $455M in 2024; 3,594 incidents | High — Verisk CargoNet primary incident database | (6) |
| Loadsure Series A funding | $11M (March 2022); MMC Ventures lead + Crowley + Insurtech Gateway | High — company press release | (7) |
| Parsyl total funding | ~$66M total (Seed + Series B $25M HSCM Ventures lead + Series C $20M Lightsmith Group lead, January 2025) | High — company press releases | (8) |
| Cover Genius Series E funding | $80M (May 2024); Spark Capital lead; 107% YoY revenue growth 2023; 30M+ customers, 60+ countries | High — GlobeNewswire / company press release | (9) |
| Nirvana Insurance valuation + total funding | $1.5B post-money (Series D, 18 Dec 2025); $100M round led by Valor Equity Partners; $262M+ total raised | High — Nirvana own PRNewswire announcement (primary-corporate); cross-confirmed by TechCrunch Series C coverage | (10) |

**Data gap — SEA cargo insurance sub-market:** No government statistics agency (BPS Indonesia, DOSM Malaysia, OIC Thailand, MAS Singapore) or multilateral body publishes cargo-insurance-specific premium volumes for individual SEA countries. The IUMI Asia/Pacific figure ($7.96B) includes China, Japan, South Korea, and Australia — country-level SEA figures are not isolable from available public sources. Tokio Marine Holdings' annual report (TSE-listed, integrated report 2025) discloses consolidated figures but does not separately break out Indonesia, Malaysia, or Thailand marine cargo premiums. Field validation required with national insurance regulators and Tokio Marine regional heads.

**Data gap — parametric cargo insurance sub-segment:** The $14–16B parametric market estimate covers all lines (weather, agriculture, catastrophe, cyber) and is not cargo-logistics-specific. No credible source isolates a parametric-cargo-only premium figure. Descartes Underwriting (Paris) is the most relevant specialty player; they targeted $200M+ total GWP in 2024 across all parametric lines, with cargo logistics not a primary stated focus.

---

### Current Players by Region

**Global / US — Embedded Cargo Insurtech MGAs:**

- **Loadsure** (London / New York; Lloyd's coverholder) — first-to-market transactional cargo MGA; per-load coverage issued in <40 seconds via API; claims resolved in <3 days (vs. 30–90 days industry benchmark); Insurance Insider 2024 Insurtech Product of the Year; European launch April 2024 (Benelux, DE, FR, Nordics); motor truck cargo product launched February 2024; partner of Amwins, DAT, Trucker Tools; Five Sigma AI claims platform deployed February 2026; Series A $11M (2022).(7)(11)(12) Primary users: freight brokers, carriers, shippers. SEA presence: none confirmed.
- **Parsyl** (Denver; Lloyd's Syndicate 1796) — data-powered cold-chain cargo insurer; manages the Essential Consortium at Lloyd's for pharmaceutical and food/beverage cargo; ColdCover parametric temperature product; Series C $20M (January 2025, Lightsmith Group lead); total $66M raised; significant growth in food, beverage, pharma marine cargo over 24 months.(8) Primary users: pharmaceutical shippers, cold-chain logistics. SEA presence: Lloyd's global market reach but no regional SEA office confirmed.
- **Breeze AI** (New York; formerly Breeze) — AI-powered per-shipment cargo insurance platform for freight forwarders and logistics providers; partnership with Helvetia (strategic investment); US expansion via Great American Insurance Group (August 2025); investors include NFX, 7percent Ventures, Trousdale.(13) Primary users: freight forwarders. SEA presence: none confirmed.
- **Cover Genius** (Sydney; global) — embedded insurance platform covering logistics, travel, retail; $80M Series E (May 2024, Spark Capital); 30M+ customers; 60+ countries; 107% YoY revenue growth (2023); partners include Uber, Ryanair, eBay; logistics is one of four named verticals but cargo-specific GWP not disclosed.(9) SEA presence: yes — 60+ countries; specific SEA cargo logistics partnerships not confirmed.
- **Nirvana Insurance** (San Francisco) — telematics-native trucking insurer; prices coverage using real-time ELD and telematics data (30B+ miles of data); offers motor truck cargo coverage as part of its fleet insurance stack; reached **$1.5B post-money valuation in $100M Series D (December 18, 2025, led by Valor Equity Partners), bringing total funding to $262M+**; founded by former Samsara executive. **Tokio Marine Future Fund** — the $42M CVC arm of Tokio Marine & Nichido Fire Insurance Co., Ltd. (managed by WiL, LLC) — is a confirmed early-stage portfolio investor (Series A participant, 2022) and continues to list Nirvana as an active portfolio company as of 2026; later-round participation is not publicly disclosed.(10)(22) Primary users: US trucking fleets. SEA presence: none; US-only product.

**Global — Parametric Insurance for Logistics:**

- **Descartes Underwriting** (Paris) — parametric specialty insurer covering climate, cyber, and emerging risks; MGA of the Year (The Insurer, 2024); targeted $200M+ GWP in 2024 with >50% growth; 20+ perils across 60+ countries; cargo/logistics not a primary stated product line but weather-related delay parametric applicable.(14) SEA presence: partial — 60 countries in scope; no SEA office named.
- **AXA Climate** (Paris) — parametric climate and weather risk products; agriculture, construction, logistics-adjacent delay triggers; global reach; SEA presence through AXA regional network. SEA presence: yes — AXA has Singapore and broader SEA offices.
- **Hannover Re parametric cell / Munich Re specialty** — provide reinsurance capital behind parametric logistics products; Munich Re's "Full Protection" links IoT sensor data to cargo coverage terms (active loss prevention + enhanced cargo cover + data sharing); original Full Protection concept documented 2018; Munich Re IoT Cover solution is an ongoing product line.(15) SEA presence: both have APAC reinsurance offices.

**Global — Loss Adjusters (Cargo Specialty):**

- **Crawford & Company** (Atlanta; NYSE: CRD.A) — world's largest publicly listed independent claims management provider; $1.293B revenue (2024, record); loss adjusting includes marine cargo; 70+ country footprint; targets $1.5B revenue by FY2026.(3) SEA presence: yes — regional offices in Singapore and broader APAC.
- **Sedgwick** (Memphis; private, KKR-backed) — largest loss adjusting network by headcount (33,000 colleagues, 80+ countries); dedicated cargo casualty team for container and mass-cargo events; specialist expertise in carrier/general average cases.(16) SEA presence: yes — operations in APAC.
- **McLarens** (London; global) — specialist independent loss adjuster with marine roots since 1931; 41-country footprint; marine, cargo, hull, ports and terminals; consumer goods and pharmaceutical cargo specialist teams.(17) SEA presence: yes — Australasia and APAC coverage confirmed.
- **Charles Taylor Adjusting** (London) — specialist marine and cargo loss adjuster; also operates INSIS claims management software platform.(18) SEA presence: yes — APAC operations.

**Global / US — Theft Recovery:**

- **CargoNet (Verisk)** (Jersey City, NJ; Verisk Analytics subsidiary) — the primary US/Canada cargo theft intelligence and recovery network; incident database since 2010; 3,594 incidents tracked in 2025 with $725M estimated losses; law enforcement integration for recovery; TAPA global partnership; no SEA operational presence.(6) Recovery rate: not publicly disclosed by CargoNet; Overhaul (which uses independent recovery methods) reports 96% FTL recovery rate.(19)
- **Overhaul** (Austin, TX) — integrated cargo risk management + recovery + insurance platform; licensed wholesale broker; 96% recovery rate claimed for FTL theft (Overhaul-stated); 86% reduction in cargo theft across client base; partnership with Loadsure for insurance layer; exclusive cargo insurance program since July 2023 offering 50–65% premium discounts vs. standard market for platform users; $105M Series C (August 2025); safeguards $1.4T in cargo trade; offices in US, Brazil, Mexico, Czech Republic.(19)(20) SEA presence: none confirmed.

**SEA — Traditional Cargo Insurers (Conventional; not parametric or insurtech):**

- **Tokio Marine Asia / PT Asuransi Tokio Marine Indonesia / Tokio Marine Singapore** — leading cargo insurer across SEA; marine cargo insurance offered in Singapore, Indonesia, Malaysia, Thailand, Vietnam, Philippines; parent Tokio Marine Holdings FY2024 net income ¥695.81B; group revenue ¥7.42T; TMHCC International GWP $2.7B (2024); Tokio Marine Future Fund (CVC, $42M) has invested in Nirvana Insurance (US telematics insurer).(21)(22) SEA presence: yes — entity-by-entity across all major SEA countries; cargo is a core product line.
- **MSIG (Mitsui Sumitomo Insurance Group)** — MS&AD Group subsidiary; present across SEA (Singapore, Malaysia, Indonesia, Thailand, Vietnam, Philippines); marine cargo is a core product; competes directly with Tokio Marine for marine cargo premium in the region. SEA presence: yes.
- **Sompo Holdings Asia** — Sompo International (global specialty lines arm); Sompo Singapore and country entities across SEA; marine cargo specialty.(23) SEA presence: yes — Singapore HQ for Asia operations.
- **Bolttech** (Singapore) — embedded insurtech platform; Series C $100M (2024); Sumitomo Corporation strategic investment and JV (announced May 2025); 37 markets; 700+ distribution partners; 230+ insurers; 6,000+ products; parametric exploration confirmed as part of product roadmap; logistics-specific cargo coverage not a primary disclosed product line.(24) SEA presence: yes — Singapore HQ; strong SEA first.
- **Igloo** (Singapore) — SEA-rooted full-stack insurtech; transit/purchase protection insurance embedded in e-commerce and logistics platforms (Tokopedia partnership for purchase protection, April 2024); partnerships with Lalamove and Ritase for logistics-embedded products; transit insurance is a listed product; D2C Indonesia launch (October 2024); focus is e-commerce and SME coverage, not commercial cargo.(25) SEA presence: yes — Singapore HQ; Indonesia, Vietnam, Philippines active.

**Global — Claims Management Software:**

- **Guidewire ClaimCenter** (San Mateo; NYSE: GWRE) — dominant P&C insurer core claims platform; not cargo-native but used by major cargo carriers; G2 leader in claims management.(4) SEA presence: yes — APAC insurers use Guidewire.
- **Origami Risk** (Chicago; private) — RMIS + claims management; ~25% RMIS market share; Strong Performer (Forrester); used by risk managers at 3PLs and self-insured shippers.(4) SEA presence: partial.
- **Riskonnect** (Atlanta; private) — integrated risk + claims management platform; used for cargo claims tracking at enterprise shippers and 3PLs.(4) SEA presence: partial.

---

### Geography & SEA Presence Matrix

| Solution Category | US | EU | LATAM | SEA Presence |
|---|---|---|---|---|
| Embedded cargo insurtech MGA (Loadsure, Parsyl, Breeze) | Strong | Loadsure EU launch 2024 | None | None — no SEA product, API, or regulatory filing confirmed |
| Parametric cargo insurance (Descartes Underwriting, AXA Climate) | Partial | Strong (EU origin) | Partial | Partial — AXA Climate through AXA SEA network; Descartes 60-country scope but no SEA cargo product named |
| Telematics-native insurance (Nirvana, Samsara Marketplace) | Strong | None | None | None — US ELD/FMCSA dependent; no SEA product |
| Theft recovery networks (CargoNet, Overhaul) | Strong | Overhaul EU | Overhaul LATAM | None confirmed — critical gap |
| Loss adjusters (Crawford, Sedgwick, McLarens) | Strong | Strong | Partial | Yes — all three have SEA offices; conventional service model |
| Claims management software (Guidewire, Origami, Riskonnect) | Strong | Strong | Partial | Yes — used by SEA insurers but not cargo-native |
| Traditional cargo insurers / SEA-native (Tokio Marine, MSIG, Sompo, Bolttech, Igloo) | Tokio Marine HCC in US | Partial | None | Yes — dominant in SEA; conventional products; parametric thin |

**SEA structural gap:** Embedded per-shipment cargo insurtech (Loadsure model), parametric delay/temperature products, and theft recovery networks are essentially absent from SEA. The market is served by traditional annual cargo policies from Tokio Marine, MSIG, Sompo, and local carriers. Bolttech and Igloo represent the closest SEA-native insurtech equivalents, but neither offers a commercial cargo product comparable in scope or automation to Loadsure or Parsyl.

---

### Preliminary Pain Points (this stage)

1. **Claims resolution averages 30–90 days for international cargo — well above the incident-response window.** Industry data and aggregator sources confirm that complex cargo claims (multi-jurisdiction, high-value, or temperature-sensitive) take 45–90 days to settle; even domestic claims average 30–45 days.(6) Loadsure's model (sub-3-day resolution via automation) is the exception, not the norm, and covers only brokers and carriers that have pre-embedded coverage — the majority of cargo in the world is covered under annual open-cover policies where claims still follow manual surveyor-dispatch workflows.

2. **Insurance pricing is still based on declared value and historical loss rates, not real-time journey signals.** Underwriters pricing cargo policies request declared commodity value, route, and historical claims — not IoT sensor feeds, ELD-derived route deviation data, or real-time carrier behavior scores. Nirvana Insurance and the Samsara Insurance Marketplace are the furthest-advanced in linking telematics to pricing, but they are US-trucking-specific and cover motor liability + cargo as a bundle, not standalone cargo policies. The Munich Re "Full Protection" IoT-linked cargo concept has been articulated since 2018 but has not become a mainstream product at scale. [ASSUMED-1]: Fewer than 5% of global cargo policies are priced with any form of in-transit IoT or telematics input at the underwriting stage — to validate: ask five Lloyd's cargo underwriters and three Asian regional cargo underwriters (Tokio Marine, MSIG, Sompo) whether they accept IoT sensor data as a primary underwriting input and what discount range, if any, they apply.

3. **Subrogation against the sub-contractor tier is structurally broken.** A 3PL who hires a small truck owner-operator (common in SEA, LATAM, and US spot markets) typically bears the cargo loss itself and then attempts to recover from the sub-carrier under subrogation rights. In practice, small carriers hold minimum statutory liability limits (e.g., $100,000 under the Carmack Amendment for US motor carriers) that are far below the cargo value of a high-value load. Waiver-of-subrogation clauses in broker contracts further undermine recovery. The 3PL absorbs the residual and its own loss experience worsens, feeding through to higher premiums — but without the sub-carrier being correctly rated as a risk.(26) [ASSUMED-2]: More than 60% of SEA 3PLs do not contractually require sub-contractors to carry cargo liability insurance beyond national statutory minimums — to validate: review 20 SEA 3PL sub-carrier agreements across Indonesia, Thailand, and Malaysia; record whether a cargo liability minimum is specified and what the limit is.

4. **Cargo theft recovery rates outside North America are low and no SEA-equivalent recovery network exists.** Overhaul reports a 96% FTL recovery rate in the US using its integrated tracking and law enforcement mobilization model.(19) CargoNet does not publicly disclose a comparable recovery-rate figure. In SEA, no equivalent of CargoNet or Overhaul operates: there is no shared theft intelligence network, no law enforcement coordination API, and no real-time GPS recovery mobilization service. BSI/TT Club 2024 identifies Indonesia as a top-10 global cargo theft country; Strait of Malacca sea piracy surged 281% YoY in H1 2025. Recovery is reactive, dependent on local police, and rarely tracked.(27) [ASSUMED-3]: Cargo theft recovery rates in Indonesia and Thailand are below 20% — to validate: ask Tokio Marine, MSIG, and Sompo Asia cargo claims teams what percentage of theft claims result in any recovery of goods; cross-check with local freight police or insurance industry bodies.

5. **Parametric cargo insurance adoption in SEA is negligible.** AXA Climate, Descartes Underwriting, and Munich Re offer parametric products for weather and delay, but none has a disclosed commercial product distributed in the SEA cargo market. Bolttech has "parametric exploration" on its roadmap but no confirmed commercial launch. Igloo covers transit/purchase protection at e-commerce scale but does not offer event-triggered parametric cargo coverage for commercial freight. The result is that SEA cargo shippers — particularly cold-chain and pharmaceutical — face the same claims friction (45–90 days, surveyor-dependent) that parametric insurance is designed to eliminate. [ASSUMED-4]: No commercial parametric cargo insurance product is live in Indonesia, Malaysia, or Thailand as of May 2026 — to validate: search OJK (Indonesia), BNM (Malaysia), and OIC (Thailand) insurer product filings for any parametric cargo product; ask Tokio Marine and Bolttech product teams whether parametric cargo is in their 2026 product roadmap.

6. **IoT sensor data from Stage 3 (Tive, Roambee, Sensitech) does not flow automatically to insurers at FNOL.** As documented in Stage 3, cargo sensors generate excursion alerts in real time, but these are typically siloed to the shipper's QA team. When a claim is filed, the insurer must request the sensor log retroactively — a forensic exercise. The insurer does not receive a live FNOL-equivalent alert at the moment of temperature breach or shock event; instead, the claim is initiated by the shipper, and the sensor log is submitted as evidence alongside invoices and bills of lading. This delay increases both settlement time and dispute risk. [ASSUMED-5]: Fewer than 15% of cargo policies covering temperature-sensitive goods include a clause requiring the insured to transmit sensor alerts to the insurer within 24 hours of an excursion event — to validate: review policy wordings from 10 Lloyd's cargo syndicates and five Asian cargo insurer policies covering pharmaceutical or perishable shipments; check for IoT-notification clauses.

7. **Insurance data for the feedback loop to Stage 1 (carrier onboarding) is not shared across the chain.** Claims outcomes — which carriers generated losses, what routes, what commodity types — are held by insurers and are not structured data that flows back to carrier vetting platforms (Highway, Carrier411, MCP). The result is that a carrier responsible for a $500,000 pharmaceutical theft in 2023 may receive the same safety score from an FMCSA-data-based vetting platform in 2025 if no criminal prosecution or FMCSA action was filed. The insurance loss signal is structurally disconnected from the pre-dispatch vetting signal.

8. **Bundled 3PL cargo insurance in SEA means claims data is fragmented and not standardized.** Shippers in SEA typically purchase cargo coverage through their 3PL (bundled into the freight rate), which means neither the shipper nor the final carrier has direct visibility of policy terms, coverage limits, or claims history. When a loss occurs, the shipper must make a claim through the 3PL, who in turn makes a claim with the insurer — with no direct shipper-insurer relationship. This three-layer claims workflow extends settlement time and makes it impossible for insurers to build a journey-level risk model from fragmentary data.

---

### Sources for this stage

(1) IUMI International Union of Marine Insurance — **Stats Report 2025** (covering 2024 data), directly downloaded and verified via markitdown (6,106 lines extracted): https://iumi.com/wp-content/uploads/2025/11/IUMI-Stats-Report-2025.pdf — confirms global cargo premium $22.64B (2024), Asia/Pacific 35.15% share (~$7.96B), Asia/Pacific cargo +8.8% YoY (China-driven), China 17.6% of global cargo, total marine all-lines $39.92B (2024, +1.5% YoY). Cross-validated via IUMI press release: https://iumi.com/news/press-release/steady-insurance-markets-for-hull-and-cargo-in-2024-but-offshore-energy-business-is-challenged-headwinds-loom-for-all-markets-reports-iumi/ and IIMS independent summary: https://www.iims.org.uk/iumi-report-shows-global-marine-insurance-premiums-total-39-92-billion/

(2) TT Club 2024 Annual Report / Financial Highlights — gross earned premiums $284.2M, combined ratio 106%, AM Best A-. https://www.ttclub.com/news-and-resources/corporate-literature/article/financial-highlights-2024 ; https://www.ttclub.com/news-and-resources/corporate-literature/article/tt-club-annual-report-2024-industry-resilience-growth/

(3) Crawford & Company 2024 Full Year Results — record $1.293B revenue, +2% YoY. https://ir.crawco.com/news/news-details/2025/Crawford--Company-Reports-2024-Fourth-Quarter-and-Full-Year-Results/default.aspx

(4) Cargo Claims Management Software Market — GrowthMarketReports.com (2024 estimate $1.23B, CAGR 10.6%); Origami Risk ~25% RMIS market share per AppsRunTheWorld / CBInsights; Guidewire ClaimCenter G2 Leader. https://growthmarketreports.com/report/cargo-claims-management-software-market [Note: single market research firm source; confidence Low; use as directional only]

(5) Parametric insurance market — Global Market Insights (GMI) estimate $14.42B (2024); Market Research Future $15.9B (2024). https://www.gminsights.com/industry-analysis/parametric-insurance-market ; https://www.marketresearchfuture.com/reports/parametric-insurance-market-24564 [Note: all-lines figure; no cargo-specific parametric source found; confidence Low]

(6) Verisk CargoNet 2025 Annual Statistics — $725M estimated losses, 3,594 incidents, +60% YoY from $455M (2024). https://www.verisk.com/company/newsroom/cargo-theft-losses-surge-to-estimated-$725-million-in-2025-verisk-cargonet-analysis-reveals/ ; Claims processing timeline (30–90 days): FreightAmigo https://www.freightamigo.com/en/blog/transport-insurance/how-long-does-a-cargo-insurance-claim-take-to-process/ ; Carmack 120-day final decision: https://fuentesfirm.com/cargo-claim-deadlines-under-the-carmack-amendment/

(7) Loadsure Series A — $11M, March 2022, MMC Ventures lead; claims in <3 days. https://www.loadsure.net/latest/article/loadsure-raises-11-million-series-a-funding-for-its-breakthrough-freight-insurance-technology/ ; Crowley participation: https://www.crowley.com/news-and-media/press-releases/crowley-participates-in-loadsure-11-million-series-a-round-to-close-cargo-insurance-gap/

(8) Parsyl Series B ($25M, HSCM Ventures lead) + Series C ($20M, Lightsmith Group lead, January 2025) + total $66M. https://www.parsyl.com/press-release/parsyl-raises-25m-series-b-to-expand-insurance-and-risk-management-for-essential-supply-chains ; https://www.parsyl.com/media/parsyl-secures-series-c-funding ; Lightsmith press release: https://lightsmithgp.com/news-posts/lightsmith-leads-20-million-investment-round-in-ai-powered-insurer-parsyl-supporting-climate-resilience-in-complex-supply-chains/

(9) Cover Genius Series E ($80M, May 2024, Spark Capital); 30M+ customers; 107% YoY growth. https://www.globenewswire.com/news-release/2024/05/15/2882646/0/en/Cover-Genius-Closes-80M-in-Series-E-Funding-as-Investors-See-700-Billion-Opportunity-in-Embedded-Protection/

(10) Nirvana Insurance Series D — primary company announcement on PRNewswire (Dec 18, 2025): $100M Series D, $1.5B post-money valuation, led by Valor Equity Partners, $262M total funding. https://www.prnewswire.com/news-releases/nirvana-raises-100-million-series-d-funding-led-by-valor-equity-partners-doubling-valuation-to-1-5-billion-302636878.html ; Series C cross-check on TechCrunch: https://techcrunch.com/2025/03/10/nirvana-keeps-on-truckin-with-80m-at-a-830m-valuation-for-its-ai-powered-insurance/ ; Crunchbase News: https://news.crunchbase.com/ai/insurance-platform-nirvana-valuation-nearly-doubles/

(11) Loadsure — Insurance Insider 2024 Insurtech Product of the Year; European launch April 2024; motor truck cargo February 2024. https://fintech.global/2024/04/30/insurtech-mga-loadsure-enters-european-market/ ; https://www.insurancejournal.com/news/international/2024/02/13/760490.htm

(12) Loadsure + Five Sigma AI claims deployment (February 2026). https://coverager.com/loadsure-deploys-five-sigmas-ai-claims-platform-and-clive-to-accelerate-freight-claims/

(13) Breeze AI — Great American Insurance Group US expansion (August 2025); Helvetia strategic investment; NFX + 7percent Ventures investors. https://meantime.global/news/ai-powered-cargo-insurance-platform-breeze-welcomes-expansion-into-us-market-with-great-american-collaboration/ ; https://www.reinsurancene.ws/helvetia-and-breeze-partner-to-revolutionise-cargo-insurance-with-advanced-technology/

(14) Descartes Underwriting — MGA of the Year (The Insurer, 2024); $200M+ GWP target in 2024, >50% growth. https://descartesunderwriting.com/newsroom/parametric-insurer-awards-2024 ; Intelligent Insurer expansion coverage: https://www.intelligentinsurer.com/baden-baden-today/descartes-sets-sights-on-expansion-with-parametric-innovation

(15) Munich Re IoT Cover / Full Protection — cargo IoT-linked insurance combining active loss prevention and enhanced cargo cover. https://www.munichre.com/en/solutions/for-industry-clients/iot-cover.html ; LinkedIn (Stefan Fröhlich, Munich Re): https://www.linkedin.com/pulse/cargo-insurance-meets-iot-stefan-fr%C3%B6hlich

(16) Sedgwick — 33,000 colleagues, 80+ countries; cargo casualty specialist team. https://www.sedgwick.com/loss-adjusting/marine-transportation/

(17) McLarens — 41-country footprint; marine roots since 1931; cargo, hull, ports and terminals specialty. https://www.mclarens.com/expertise/transportation/marine/

(18) Charles Taylor Adjusting — specialist marine and cargo loss adjuster; INSIS claims software. https://www.charlestyloradjusting.com/ [Note: URL to be confirmed in attended fetch if needed]

(19) Overhaul cargo theft recovery rate (96% FTL; 86% theft reduction across client base); exclusive insurance program since July 2023; 50–65% premium discount vs. market; $105M Series C August 2025. https://www.prnewswire.com/news-releases/overhaul-combines-its-cargo-theft-prevention-and-recovery-services-with-an-exclusive-cargo-insurance-program-302220417.html ; https://www.prnewswire.com/news-releases/overhaul-secures-105-million-series-c-to-drive-platform-innovation-and-expansion-302533989.html

(20) Overhaul LATAM/EU offices (Brazil, Mexico, Czech Republic). https://wwd.com/sourcing-journal/logistics/cargo-theft-overhaul-supply-chain-risk-visibility-73-million-law-enforcement-1238813482/

(21) Tokio Marine Holdings FY2024 — net income ¥695.81B; revenue ¥7.42T; TMHCC International GWP $2.7B (2024), $2.9B (2025). https://www.tokiomarinehd.com/en/ir/download/ ; TMHCC financials: https://www.tmhcc.com/en/about-us/financial-strength

(22) Tokio Marine Future Fund — $42M CVC of Tokio Marine & Nichido Fire Insurance Co., managed by WiL LLC, launched April 2022. Nirvana Insurance listed as current portfolio company on the fund's own portfolio page (primary disclosure): https://tmfuturefund.com/ ; launch press release: https://www.businesswire.com/news/home/20220419005075/en/Global-Insurance-Company-Tokio-Marine-Launches-Tokio-Marine-Future-Fund-a-42M-CVC-Arm-to-Support-Early-Stage-Startups ; TechCrunch fund-launch coverage explicitly naming Nirvana (April 2022 Series A): https://techcrunch.com/2022/04/19/tokio-marine-future-fund/ ; CBInsights tracker: https://www.cbinsights.com/investor/tokio-marine

(23) Sompo Holdings Asia SEA presence — Sompo Singapore, marine cargo specialty. https://www.sompo-hd.com/en/ [Note: country-specific cargo premium data not found in public filings; confirm with Sompo regional IR]

(24) Bolttech Series C ($100M, 2024); Sumitomo JV announcement (May 2025); 37 markets, 700+ distribution partners. https://bolttech.io/who-we-are/ ; Sumitomo announcement: https://www.sumitomocorp.com/en/asia-oceania/news/topics/2025/group/20250508

(25) Igloo — Tokopedia purchase protection partnership (April 2024); Lalamove and Ritase logistics partnerships; D2C Indonesia launch (October 2024). https://iglooinsure.com/press/e-commerce-insurance-partnership-tokopedia/ ; https://beinsure.com/news/insurtech-igloo-entered-indonesia/

(26) Subrogation and 3PL/sub-contractor insurance gap — Overdrive article on contract traps; MarlinBlue subrogation in cargo insurance. https://www.overdriveonline.com/partners-in-business/independence-growth/article/15709550/contract-traps-for-carriers-additional-insured-subrogation-waivers-and-offsetting ; https://marlinblue.com/claims-subrogation-in-cargo-insurance-from-claim-to-recovery/

(27) BSI Consulting and TT Club 2024 Cargo Theft Report (April 2025 edition) — Indonesia top-10 global cargo theft country; Strait of Malacca piracy +281% YoY H1 2025. https://www.ttclub.com/news-and-resources/publications/article/bsi-consulting-and-tt-club-2024-cargo-theft-report/ [PDF full report — NEEDS-ATTENDED-FETCH for markitdown conversion: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf ]

---

### Assumptions to Validate

[ASSUMED-1]: Fewer than 5% of global cargo policies are priced with any form of in-transit IoT or telematics input at the underwriting stage.
- to validate: Ask five Lloyd's cargo underwriters (Beazley, Atrium, Ascot, AXA XL, QBE) and three Asian regional cargo underwriters (Tokio Marine HCC, MSIG, Sompo International) whether they accept IoT sensor data (Tive, Roambee, Sensitech) as a primary underwriting input; document what premium discount, if any, they apply for IoT-equipped fleets vs. non-equipped; determine whether any policy clause requires sensor-feed access as a condition of coverage.

[ASSUMED-2]: More than 60% of SEA 3PLs do not contractually require sub-contractors to carry cargo liability insurance beyond national statutory minimums.
- to validate: Collect and review 20 sub-contractor agreements from Indonesian, Thai, and Malaysian 3PLs (tier 1 and tier 2); look for cargo liability minimum coverage requirements; cross-check against OJK (Indonesia), BNM (Malaysia), OIC (Thailand) minimum statutory cargo liability requirements for hired carriers.

[ASSUMED-3]: Cargo theft recovery rates in Indonesia and Thailand are below 20%.
- to validate: Interview claims managers at Tokio Marine Indonesia, MSIG Thailand, and Sompo Singapore; request aggregate data on the percentage of theft claims in which any portion of goods was recovered; cross-reference with available local police cargo theft statistics if public.

[ASSUMED-4]: No commercial parametric cargo insurance product is live in Indonesia, Malaysia, or Thailand as of May 2026.
- to validate: Search OJK (Indonesia), BNM (Malaysia), and OIC (Thailand) insurer product registries for any product labeled "parametric" in the cargo or marine category; ask Tokio Marine and Bolttech product heads whether parametric cargo is in their 2026 product roadmap; verify AXA Climate's SEA commercial cargo parametric offering (if any) via AXA Asia's commercial lines team.

[ASSUMED-5]: Fewer than 15% of cargo policies covering temperature-sensitive goods include a clause requiring the insured to transmit sensor alerts to the insurer within 24 hours of a temperature excursion event.
- to validate: Review policy wordings from ten Lloyd's cargo syndicates (including Parsyl's Essential Consortium) and five Asian cargo insurer policies (Tokio Marine, MSIG, Sompo) covering pharmaceutical or perishable shipments; identify whether any policy contains an IoT notification clause; ask the brokers (Marsh, Aon, Willis/WTW) whether such clauses are being requested by underwriters at renewal.

[ASSUMED-6]: Tokio Marine's CVC investment in Nirvana Insurance (US telematics insurer) has not produced a product or pilot applicable to the SEA market.
- to validate: Ask Tokio Marine Future Fund (Palo Alto) whether the Nirvana relationship has generated any SEA market exploration; ask Nirvana whether they have evaluated Indonesia, Malaysia, or Singapore as product markets and what the regulatory/data blockers are.
