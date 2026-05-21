## Stage 1: Vendor Procurement & Sub-Carrier Onboarding (Counterparty Risk)

*Solutions covered: Highway, Carrier Assure, RMIS/Truckstop, Descartes MyCarrierPortal, Overhaul FraudWatch, CargoNet/Verisk, FreightValidate, AsiaVerify, Kargo Technologies, Logisly*
*Run date: 2026-05-19 | Researcher: claude-sonnet-4-6*

---

### Pain point 1.1

**Description:** Freight brokers and shippers suffer direct cargo losses and liability exposure because their carrier onboarding workflows pass noncompliant, fraudulent, or high-risk carriers without detecting the problem. Current tools — even automated ones — verify authority and insurance at a point in time but do not continuously monitor carrier status, ownership changes, or behavioral fraud signals throughout the load lifecycle. Carriers that pass initial screening regularly commit fraud during or after load assignment, costing the industry an estimated $725 million in losses in 2025 alone.

**Who bears it:** Freight brokers (28,351 active property brokers registered with FMCSA in the US; equivalent brokerage populations in EU and SEA), shippers using third-party logistics providers, and ultimately cargo owners whose freight is not recovered.

**Estimated cost:**
- Direct fraud losses: ~$725 million industry-wide across North America in 2025 (up from ~$454.9 million in 2024), of which roughly one-third is attributable to double-brokering and one-third to fictitious pickups/identity theft (1)(2)
- Average loss per fraudulent load: ~$40,000–$365,000 depending on fraud type; average fictitious pickup cost surged to $365,000 per incident in Q1 2024 (2)(3)
- Per-company fraud cost: TIA reports 22% of broker respondents lost more than $200,000 in a single six-month period (Sep 2024–Feb 2025); average accumulated company fraud cost approximately $400,000 (4)(2)
- Litigation tail: median trucking nuclear verdict reached $36 million; carrier insurance minimum of $750,000 (unchanged since 1980) covers less than 1.5% of the median nuclear verdict, leaving brokers exposed when they hired under-insured carriers (5)
- Indirect cost: investigation time per incident, reputational damage with shipper customers, and insurance premium increases for brokers with fraud claims history (unquantified but flagged in trade press) (1)(2)

**Willingness to pay:** Not sourced from buyer surveys. Highway SaaS entry point is undisclosed; Truckstop RMIS Lite starts at $340/month per brokerage seat; per-load pricing for tools like Load Lock adds transaction cost that established brokers absorb as cost of doing business. Implied ceiling based on average fraud loss per company (~$400,000/year) suggests substantial WTP, but no published WTP survey found.

**Frequency:**
- 83% of freight brokers experienced at least three types of fraud in the six months Sep 2024–Feb 2025; TIA Watchdog recorded 1,600+ reports in the same period, a 65% increase vs. the prior period (4)
- 14% of US motor carriers screened at pickup by Overhaul FraudWatch flagged as high-risk; 12% found operating without proper FMCSA authority (3)
- Strategic thefts (fictitious pickups, identity impersonation, document forgery) grew 1,475% between 2022 and 2024 and now represent approximately one-third of all cargo crime (1)(6)
- Descartes MyCarrierPortal received 4,468 incident reports in the 12 months Feb 2024–Jan 2025, approximately 3× the volume of competing fraud-reporting platforms (7)
- Truckstop blocked over 8,600 fraudulent carrier onboarding attempts in 2024; double-broker report volume up 400% since 2022 (2)
- Approximately 8% of FraudWatch-enabled shipments encountered high-risk carriers, drivers, or double-brokering attempts (3)

**Evidenced or assumed:**
(1) HDT Trucking Info — "Cargo Theft's New Playbook: Strategic Fraud, Double Brokering, and Cybercrime Hit Trucking": https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(2) Foreigh — "The Definitive Freight Fraud Report: A Comprehensive Analysis of Schemes, Impacts, and Countermeasures (2025)": https://foreigh.com/blog/freight-fraud-deep-dive
(3) FreightWaves / Overhaul — "Overhaul's FraudWatch: a new paradigm in freight fraud prevention": https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(4) Transportation Intermediaries Association (TIA) — "State of Fraud in the Industry April 2025 Report": https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(5) FreightWaves — "The Freight Broker Insurance Gap Is Now Real": https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(6) BSI Consulting and TT Club — "2024 Cargo Theft Report" (April 2025), PDF processed via markitdown: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(7) Descartes — "Protecting Your Freight: Descartes MyCarrierPortal Incident Reporting": https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting
(8) CargoNet (Verisk) — 2026 Q1 and 2025 full-year cargo theft statistics: https://www.cargonet.com/cargo-theft-data/
(9) AU10TIX / FreightValidate — "FreightValidate Users Reduce Cargo Theft Incidents by 90%": https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/ [Low confidence: vendor own claim, unaudited]
(10) FreightWaves — "Highway: building a fortress against freight fraud": https://www.freightwaves.com/news/highway-building-a-fortress-against-freight-fraud
(11) Highway — "The Hidden Risk Behind Sold MCs and Ownership Changes": https://highway.com/posts/whats-the-hidden-risk-behind-sold-mcs-and-ownership-changes
(12) C.H. Robinson — "How FMCSA Registration Changes Will Impact You in 2025": https://www.chrobinson.com/en-us/resources/blog/how-fmcsa-registration-changes-will-impact-you-in-2025/
(13) PR Newswire / AU10TIX — "AU10TIX Selected by FreightValidate" (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html

**Root Causes**

- **RC1: Point-in-time verification creates a structural window between onboarding and load execution during which carrier status degrades undetected** — Carrier authority, insurance, and safety status are verified at onboarding but the interval between onboarding and load assignment can be days or weeks; authority can be revoked, insurance can lapse, and ownership can change in the interim. FMCSA no longer requires carriers to file evidence of cargo insurance, so brokers receive no automated notification of lapses and must subscribe to separate monitoring tools to detect them. At large brokers using RMIS or MyCarrierPortal continuous monitoring is available, but the long tail of 28,000+ active US brokers has uneven adoption, and no equivalent monitoring infrastructure exists in SEA markets. (FreightWaves insurance gap analysis (5); Foreigh fraud deep-dive (2); FMCSA insurance filing rules)

- **RC2: Carrier identity theft exploits a one-way trust system where credentials are used but identity is not continuously re-verified at load execution** — US carrier identity tools (RMIS, MyCarrierPortal, Carrier Assure) verify the carrier entity against FMCSA data but do not verify the physical identity of the driver or dispatcher at the moment of load assignment or pickup. This creates an impersonation window: a bad actor who obtains a legitimate MC number — through purchase, theft, or shell company registration — presents clean FMCSA credentials while committing fraud. In June 2025, a 135% spike in suspicious MC ownership changes connected to cargo theft reports demonstrated that static credential checks do not protect against identity after credentials are acquired. Highway's Load Lock and FreightValidate's biometric layer partially address this at pickup, but adoption is concentrated at large brokers rather than the full market. (Highway MC ownership analysis (11); TIA fraud report (4); AU10TIX/FreightValidate (13))

- **RC3: FMCSA carrier registry is freely accessible and cheaply exploitable, creating a permanent pipeline of fraudulent new registrations** — FMCSA issued 8,000–9,000 new USDOT applications per month throughout 2024, with 98% of interstate applicants operating 1–5 trucks — the profile most consistent with fraudulent shell carriers. A new MC number can be obtained with minimal documentation; organized crime groups have purchased "thousands of MC numbers" to fuel operations. FMCSA's 2025 registration modernization adds photo ID and selfie verification for company officials, but the five-person Registration Fraud team represents a structurally insufficient response to the volume of new applicants. The resulting environment means that for every fraudulent carrier blocked by screening tools, new entities are registered to replace them. (CarrierDetails.com / FMCSA 2024 statistics (14); FMCSA registration modernization (12); Foreigh fraud analysis (2))

- **RC4: Tool fragmentation means no single workflow covers the full verification stack — brokers must assemble and maintain multiple point solutions** — The functional coverage of identity verification (Highway, FreightValidate), insurance monitoring (RMIS, MyCarrierPortal), safety scoring (Carrier Assure), and fraud intelligence (CargoNet) is divided across separate vendors with separate API integrations, TMS connectors, and subscription contracts. Even well-resourced brokers face integration overhead; small brokers cannot assemble the full stack at all. This structural fragmentation is not a technology failure but a market structure outcome: each vendor addresses one layer, no vendor owns the full risk surface, and the broker bears the integration burden. (Value-chain-mapper Stage 1 solutions analysis; Truckstop RMIS / Foreigh onboarding guide (2)(15))

- **RC5: SEA markets have no equivalent to FMCSA as a carrier safety registry, making US-designed tool architectures architecturally non-portable to the region** — US counterparty-risk tools are built on top of FMCSA SAFER as their ground truth for carrier authority and safety data. No equivalent centralized carrier safety and authority registry exists in Indonesia, Thailand, Malaysia, Vietnam, or the Philippines. Fragmented national registries (Indonesia's AHU Online + OSS for business entities; Thailand's Department of Land Transport; Vietnam's Ministry of Transport) use different data models, languages, and access mechanisms. Tools like Highway, RMIS, and MyCarrierPortal cannot be deployed in SEA without rebuilding their entire data layer — a barrier equivalent in cost to building a new product from scratch. AsiaVerify provides KYB/UBO across 14 APAC registries but is not freight-specific and does not provide safety data. (AsiaVerify product overview (16); CarrierDetails.com FMCSA data (14); ITF-OECD SEA freight regulatory analysis)

---

### Pain point 1.2

**Description:** Freight brokers and shippers lack a mechanism to verify beneficial ownership and persistent real identity of carrier entities, leaving them exposed to nominee-carrier schemes, shell-company double brokering, and sold MC number fraud that pass all standard FMCSA authority and insurance checks. The structural gap persists because current onboarding tools — including the most advanced US solutions — verify the carrier entity but not the human beings controlling it or the ultimate beneficial owner of the business.

**Who bears it:** Freight brokers (US long tail of 28,000+ active property brokers; SEA brokers and 3PLs operating across Indonesia, Thailand, Malaysia, Vietnam, Philippines); shippers engaging spot-market or informal transport capacity; insurers underwriting cargo policies for freight intermediaries.

**Estimated cost:**
- MC ownership-change fraud: In June 2025, a 135% spike in suspicious MC ownership changes was connected to cargo theft reports; average cargo theft per incident $200,000–$365,000 per event (3)(11)
- $35 billion upper-bound estimate for total US cargo theft losses including unreported incidents, with identity-fraud schemes forming a growing component — NICB estimate cited by AU10TIX/FreightValidate (9)(13)
- 11% of reported US freight fraud incidents in 2024 classified specifically as carrier identity theft; at an average $400,000 per company annual fraud cost, identity theft alone generates ~$44,000/year per affected broker (2)
- Litigation exposure when a broker hires a carrier whose true beneficial owner is a sanctioned entity, organized crime affiliate, or shell company: broker faces "negligent hiring" liability and coverage denial — median broker nuclear verdict $36 million; US minimum insurance ~$750,000 (5)
- Investigation cost per suspected ownership-change fraud incident: unquantified in trade press; operationally involves law enforcement referral and insurance claim dispute process that typically runs weeks to months [ASSUMED-1]: Investigation cost per fraudulent MC ownership-change event estimated at $10,000–$50,000 in internal labor, legal, and claim-management cost — to validate: interview freight broker risk managers and cargo claims adjusters for average cost per identity fraud investigation

**Willingness to pay:** Not sourced. [Interview placeholder: ask Highway, RMIS, and MyCarrierPortal enterprise sales teams whether UBO checks are being requested by large-broker customers and at what price point]

**Frequency:**
- 135% spike in suspicious MC ownership changes in June 2025 connected to cargo theft (Highway Freight Fraud Index) (11)
- 83% of brokers experienced at least three fraud types in six months; unlawful brokering (nominee/shell carrier schemes) was the primary tactic cited by 34% of TIA respondents (4)
- Over 200 unresolved insurance claims logged in TIA's fraud database in 2024, a structural residue of identity fraud after the fact (2)
- Indonesia: 64 million+ MSMEs, majority with inconsistent registry records; beneficial ownership verification requires paid detailed reports from AHU Online (~Rp 500,000 per query, ~$30) and registry fragmentation across AHU Online and OSS makes automated UBO checks operationally complex (16)
- [ASSUMED-2]: No public statistic on the percentage of US freight brokers running beneficial-ownership checks on carrier entities — to validate: commission or source a TIA/DAT member survey on onboarding practice by broker revenue tier

**Evidenced or assumed:**
(1) Highway — "The Hidden Risk Behind Sold MCs and Ownership Changes": https://highway.com/posts/whats-the-hidden-risk-behind-sold-mcs-and-ownership-changes
(2) Foreigh — "The Definitive Freight Fraud Report" (2025): https://foreigh.com/blog/freight-fraud-deep-dive
(3) FreightWaves / Overhaul FraudWatch: https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(4) TIA State of Fraud April 2025: https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(5) FreightWaves insurance gap analysis: https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(6) AU10TIX/FreightValidate — NICB $15–$35 billion estimate: https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/
(7) PR Newswire / AU10TIX (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html
(8) AsiaVerify — Indonesia company verification guide (2025): https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/
(9) AsiaVerify — product overview: https://asiaverify.com/
(10) BSI/TT Club 2024 Cargo Theft Report (PDF, markitdown): https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(11) Foreigh carrier onboarding guide (2025): https://foreigh.com/blog/carrier-onboarding-complete-guide-freight-brokers
(12) Authenticate.com — "Freight Brokerage Compliance: Mastering the New FMCSA Rules in 2025": https://authenticate.com/resources/blog/fmcsa-rules-2025/
(13) FinCEN BOI FAQ — Federal beneficial ownership reporting context: https://www.fincen.gov/boi-faqs

**Root Causes**

- **RC1: US carrier-onboarding tools verify the entity on record with FMCSA but are not designed to verify who controls that entity post-registration** — RMIS, MyCarrierPortal, Highway, and Carrier Assure all use FMCSA SAFER as their ground truth. FMCSA records reflect the entity at registration, not subsequent ownership changes. No FMCSA data field tracks beneficial ownership or real-time changes in company control. When an MC number is sold or transferred to a bad actor, all existing tools continue to return a "clean" result because the FMCSA record has not been updated — or the update itself is part of the fraud. This is a design constraint, not a product failure: the tools work correctly against the data they are built on, but that data does not contain beneficial ownership. (Highway sold-MC analysis (1); FMCSA registration structure per CarrierDetails.com (14 from PP1.1); C.H. Robinson FMCSA changes analysis (12 from PP1.1))

- **RC2: The FinCEN Beneficial Ownership Information registry (effective Jan 2024) does not reach freight carrier entities and creates no enforcement link to FMCSA** — The Corporate Transparency Act's BOI reporting requirements, administered by FinCEN, theoretically require small businesses including trucking companies to report beneficial owners. However, the FinCEN registry is not publicly accessible (law enforcement only), is not integrated with FMCSA SAFER, and has faced implementation delays and litigation. No mechanism exists for freight brokers to query FinCEN BOI data as part of carrier onboarding. This means the legal infrastructure for beneficial ownership reporting exists but creates zero practical benefit for freight counterparty verification. (FinCEN BOI FAQ (13); FMCSA regulatory gap per foreigh.com analysis (2))

- **RC3: No commercially available freight-specific tool bundles UBO verification with carrier safety and insurance data into a single decisioning layer** — AsiaVerify provides real-time UBO checks against 14 APAC government registries but is a general-purpose KYB/AML tool with no freight-specific data (no safety scores, COI monitoring, or authority checks). Highway verifies identity at pickup but does not run UBO on the carrier entity. RMIS and MyCarrierPortal do not run UBO checks as part of standard product. [ASSUMED-3]: No US or SEA freight-specific tool currently combines UBO/beneficial-ownership verification with carrier safety scoring and insurance monitoring in a single integrated product — to validate: confirm with RMIS, MyCarrierPortal, and Highway product teams whether UBO is in their roadmap or available as an add-on. The gap is structural: KYB vendors and freight-compliance vendors operate in separate markets with separate sales motions and separate data relationships, and no acquirer has yet bridged the two.

- **RC4: SEA carrier entity verification is structurally harder than in the US because registries are fragmented, language-gated, and not designed for automated API access** — In Indonesia, business entity data requires queries across AHU Online (company registry) and OSS (licensing), with detailed UBO extraction costing ~Rp 500,000 (~$30) per query and available only in Bahasa Indonesia without an intermediary. Thailand, Vietnam, and the Philippines each have distinct registry architectures, access protocols, and data quality levels. AsiaVerify has built direct registry integrations for 14 APAC markets, but freight operators in SEA have no awareness of or workflow integration with such a tool. The operational friction of cross-registry UBO lookups means most SEA shippers and 3PLs simply do not perform them, even informally. (AsiaVerify Indonesia guide (8); AsiaVerify product overview (9); World Bank LPI 2023 — Indonesia ranked 61st, average customs clearance 7 days vs. 1 day for Singapore)

---

### Pain point 1.3

**Description:** Small-to-mid-size freight brokers, emerging-market 3PLs, and SEA logistics operators onboard carriers through manual, spreadsheet-based workflows that are slow, costly, incomplete, and structurally unable to enforce compliance standards consistently. Manual certificate of insurance collection, paper-based carrier packet processing, and reference-check-dependent safety screening create an onboarding process that averages 1–4 days per carrier, costs $25–$50 per carrier in labor time, and fails to catch forged documents and expired coverage that a trained reviewer cannot detect visually.

**Who bears it:** The 28,000+ US active property brokers (70%+ are small businesses with $1–$5 million annual revenue per TIA); Southeast Asian shippers and 3PLs who have not adopted any structured onboarding platform; owner-operators in Indonesia, Thailand, and Vietnam engaging informal sub-carrier networks.

**Estimated cost:**
- Manual onboarding labor: $25–$50 per carrier in staff time (35–45 minutes per carrier at ~$20–$40/hour burdened cost); with automated tools, same process runs 30–60 minutes end-to-end (aggregate cost ~$1–$2 per carrier) (1)(2)
- Carrier abandonment cost: approximately 50% of carriers abandon manual onboarding processes before completion, requiring the broker to restart the process with a new carrier — each abandoned onboarding wastes $12–$25 in labor (from the partial completion) and delays load booking by hours [ASSUMED-4]: The 50% abandonment rate for manual carrier onboarding is cited in Highway/Truckstop marketing materials but lacks an independent primary survey source — to validate: run a carrier-side survey on onboarding abandonment reasons and frequency
- Forged-COI litigation risk: when a carrier submits a forged certificate of insurance and the broker fails to detect it, the broker faces "negligent hiring" liability on cargo claims against that carrier; median trucking verdict $36 million against under-insured carriers; no published statistic on forged-COI prevalence (5)
- Truckstop blocked 8,600+ fraudulent carrier onboarding attempts in 2024, indicating the volume of fraud attempts that manual processes would need to catch without automated tools (6)
- Total annual carrier onboarding and monitoring platform market (including manual-replacement value): estimated $1.4–1.5 billion globally (market research cluster) — Low confidence, single research cluster, no independent Tier-1 source cross-validation (7)

**Willingness to pay:** Truckstop RMIS Lite at $340/month is the market-floor data point for an automated replacement. Automated tools claim 80% faster onboarding vs. manual (Truckstop RMIS marketing — Low confidence, vendor own) and $400,000+ savings on litigation defense in case studies (Foreigh). Most small brokers' cost per carrier onboarding ($25–$50 manual vs. ~$1–$2 automated) suggests a WTP ceiling of $300–$500/month for a tool serving 10+ carriers/month, consistent with RMIS Lite pricing.

**Frequency:**
- Manual COI review involves someone opening a PDF, reading coverage limits, and comparing against minimum requirements — characterized as nearly entirely manual at small-to-mid-size US brokers (2)
- In 2025, leading brokerages automate 70–85% of onboarding steps, but this adoption is concentrated at large operators; the long tail of 28,000+ active brokers has no published adoption rate for structured tools (1)(2)
- Indonesia: 40% truck utilization rate; roughly three-quarters of Indonesia's 1.3 million trucks are owned by single-vehicle operators with no standardized onboarding, insurance, or safety record accessible to shippers (8)(9)
- Indonesia has 64 million MSMEs, the majority with inconsistent registration records — carrier verification in this market requires cross-registry queries that are not automated (10)

**Evidenced or assumed:**
(1) Foreigh — carrier onboarding complete guide (2025): https://foreigh.com/blog/carrier-onboarding-complete-guide-freight-brokers
(2) Highway blog — carrier onboarding: https://highway.com/posts/the-future-of-efficient-carrier-onboarding-in-freight-brokerage
(3) Truckstop blog — carrier onboarding monitoring: https://truckstop.com/blog/carrier-onboarding-monitoring/ [NEEDS-ATTENDED-FETCH: https://truckstop.com/blog/carrier-onboarding-monitoring/]
(4) Truckstop RMIS — product page and Tekpon review: https://tekpon.com/software/truckstop-rmis/reviews/
(5) FreightWaves insurance gap: https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(6) Foreigh freight fraud deep-dive: https://foreigh.com/blog/freight-fraud-deep-dive
(7) GrowthMarketReports — "Carrier Onboarding Platform Market Research Report 2033": https://growthmarketreports.com/report/carrier-onboarding-platform-market [Low confidence: secondary market research vendor, no Tier-1 cross-validation]
(8) TechCrunch — "Logisly raises $6 million Series A" (Nov 2020): https://techcrunch.com/2020/11/02/indonesian-logistics-platform-logisly-raises-6-million-series-a-to-digitize-truck-shipments/
(9) World Bank — "Improving Indonesia's Freight Logistics System" (World Bank working paper): https://documents1.worldbank.org/curated/en/617051540584814484/pdf/WP-PUBLIC-2015-WBG-Improving-Freight-Logistics.pdf [NEEDS-ATTENDED-FETCH: PDF failed to parse]
(10) AsiaVerify — Indonesia verification guide: https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/
(11) Descartes MyCarrierPortal — 350,000 COIs on file, carrier vetted in ~2 minutes: https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting
(12) TIA State of Fraud April 2025 — 70%+ of TIA members are small businesses $1–$5M revenue: https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(13) DHL Discover Indonesia — "6 Risks of Skipping Shipping Insurance": https://www.dhl.com/discover/en-id/logistics-advice/import-export-advice/6-dangers-of-not-getting-shipping-protection

**Root Causes**

- **RC1: Carrier compliance verification tools are designed for the North American FMCSA data environment and do not have a portable equivalent for SEA regulatory data architectures** — Highway, RMIS, MyCarrierPortal, and Carrier Assure are built on FMCSA SAFER as their data ground truth. This is not a gap that can be patched by adding an API integration: equivalent carrier safety registries with real-time data feeds, standardized insurance filing, and authority/revocation tracking simply do not exist in Indonesia, Thailand, Malaysia, or Vietnam. The World Bank LPI 2023 ranks Indonesia 61st (Philippines and Vietnam tied at 43rd, Thailand 34th) with noted deficiencies in logistics competence and infrastructure — the carrier data layer is a component of this infrastructure gap. Any tool serving SEA brokers and shippers must build local data relationships with national transport ministries, insurance regulators, and business entity registries — a data-acquisition cost that no current US-market tool vendor has funded. (World Bank LPI 2023 (17); AsiaVerify jurisdictional coverage (10))

- **RC2: The commercial incentive for building automated onboarding tools is concentrated at large-volume brokers, leaving the long tail — which represents the majority of the market by entity count — structurally unserved** — Tools like Highway (1,050+ broker customers including 70 of top 100) and Descartes MyCarrierPortal (thousands of subscribing companies) demonstrate that the large-broker tier has adopted automation. But 28,000+ active US property brokers exist; 70% of TIA membership generates $1–$5 million in annual revenue — a segment where per-seat SaaS costs of $340–$500/month represent a meaningful budget line item and where integration engineering overhead is prohibitive. In SEA, the economic case is even harder: most freight brokers and 3PLs in Indonesia and Vietnam are smaller and less technology-mature than US counterparts. The result is that manual processes remain default for the majority of the market by entity count. (FTV Capital / Highway investment note (18); TIA fraud report (12); CarrierDetails.com FMCSA broker count (14 from PP1.1))

- **RC3: COI fraud is visually indistinguishable at manual review and requires real-time insurer API verification to detect — a capability most small brokers do not have** — Carriers submit forged Certificates of Insurance with mismatched fonts, incorrect contact details, or Gmail addresses for the insurance agency. Manual reviewers compare the document against expected coverage levels but cannot verify the policy actually exists without calling the insurer directly or querying a real-time insurance-verification API. Small brokers lack both the time and the tool access to run real-time insurer verification. Truckstop RMIS maintains the largest COI database in North America (350,000+ carriers), but carriers not in its database require a separate verification step that defaults to manual. (Carrier Assure blog on COI errors; Truckstop RMIS database (11); Foreigh onboarding guide (1))

- **RC4: Indonesia's 1.3-million-truck fleet is dominated by single-vehicle owner-operators who have no formal safety record, COI registry, or verifiable operating history accessible to shippers** — Approximately three-quarters of Indonesia's trucks are owned by single-vehicle operators who bargain individually with shippers. These operators have not historically maintained COIs or safety records in a format compatible with structured onboarding tools. Digitization via Kargo Technologies and Logisly has begun — Kargo's 50,000-truck network and Logisly's 40,000-truck coverage provide marketplace-based onboarding — but the vetting methodology of both platforms is not publicly documented and almost certainly relies on document submission and reputation signals rather than continuous insurance monitoring or safety scoring. This structural feature of the Indonesian trucking market cannot be resolved by tool design alone; it requires carrier formalization at the market level. [ASSUMED-5]: Kargo Technologies and Logisly do not run continuous insurance monitoring equivalent to Truckstop RMIS — to validate: interview Kargo BD team and active shipper customers on vetting workflow specifics; ask whether COI-equivalent is collected and continuously monitored. (Logisly TechCrunch (8); DHL Indonesia insurance risks (13); AsiaVerify registry analysis (10))

---

### Pain point 1.4 — New pain point (not in original hypothesis)

**Description:** Freight brokers and cargo insurers face a structural gap between the insurance coverage they require carriers to hold ($750,000 minimum auto liability under FMCSA rules, unchanged since 1980) and the actual verdict exposure from nuclear verdicts in trucking litigation (median $36 million; average $27.5 million 2020–2023). Carrier-onboarding tools verify that carriers meet the FMCSA minimum insurance threshold, but this verification is now commercially meaningless as protection against broker liability: a carrier can pass every insurance check and leave the broker holding exposure equivalent to 1.5% or less of the median nuclear verdict. This is a systemic coverage gap that no current counterparty-risk solution is designed to address.

**Who bears it:** Freight brokers, shippers engaging brokers who hired underinsured carriers, and cargo insurers underwriting contingent cargo and broker liability policies.

**Estimated cost:**
- Median trucking nuclear verdict (verdicts >$1M): $36 million — against a minimum carrier insurance floor of $750,000 (1)
- Average trucking verdict 2020–2023: $27.5 million (1)
- $750,000 adjusted for inflation since 1985 would be ~$2.2 million; adjusted for medical/death award increases, ~$3.7 million — current minimum covers under 1.5% of median nuclear verdict (1)
- Largest US trucking verdict in history (2021): $1 billion (1)
- Broker surety bond requirement: $75,000 — covers only payment defaults, not tort liability (1)
- Insurer exposure: US cargo theft losses $454.9 million reported in 2024 per CargoNet; total including unreported estimated $15–$35 billion per NICB (2)(3)

**Willingness to pay:** Not sourced from carrier-onboarding buyer surveys. Freight broker liability insurance and contingent cargo insurance are existing paid products; broker WTP for tools that provide better carrier insurance verification is evidenced by RMIS market pricing but not quantified above the current platform cost. [Interview placeholder: ask freight broker liability insurers whether claims frequency from "negligent hiring of underinsured carrier" is rising and at what premium delta]

**Frequency:**
- Every FMCSA-registered carrier that passes basic insurance verification is technically compliant but potentially massively underinsured relative to litigation exposure
- Truck-tractor tort case filings grew at an average annual rate of 3.7% between 2014 and 2023; nuclear verdict frequency is rising (1)
- 90% of shipments estimated to be uninsured or underinsured — industry estimate (4)

**Evidenced or assumed:**
(1) FreightWaves — "The Freight Broker Insurance Gap Is Now Real": https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(2) CargoNet (Verisk) — 2025/2026 cargo theft data: https://www.cargonet.com/cargo-theft-data/
(3) AU10TIX / NICB — $15–$35 billion annual cargo theft estimate: https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/
(4) DAT Freight & Analytics — carrier insurance guidance: https://www.dat.com/solutions/freight-broker-insurance
(5) Valley Trucking Insurance — "Load Board Liability Gap": https://www.valleytruckinginsurance.com/the-liability-gap-between-broker-load-boards-and-carrier-policies/
(6) DAT — "The Do's and Don'ts of Insurance for Freight Brokers": https://www.dat.com/blog/dos-and-donts-of-freight-broker-insurance-coverage
(7) FMCSA — Insurance Filing Requirements: https://www.fmcsa.dot.gov/registration/insurance-filing-requirements
(8) Carrier Assure / Descartes MyCarrierPortal — coverage threshold verification as standard product feature: https://www.mycarrierportal.com/partners/carrier-assure/
(9) Logistiq — "Excess Cargo Insurance: A Freight Broker's Guide": https://logistiq.com/excess-cargo-insurance-a-freight-brokers-guide/

**Root Causes**

- **RC1: The FMCSA minimum insurance threshold is a legislative floor set in 1985 that Congress has not updated to reflect current medical costs, litigation environment, or cargo values** — The $750,000 auto liability minimum was established in 1985 and has never been updated. Inflation alone would require a floor of ~$2.2 million today; adjusting for the increase in median verdicts would require $3.7 million. Raising the statutory floor requires Congressional action through the Senate Commerce Committee; no successful bill has passed since the threshold was set. Without a regulatory floor increase, the entire carrier-onboarding compliance stack is optimizing for a standard that has been commercially obsolete for decades. (FreightWaves insurance gap analysis (1))

- **RC2: Carrier-onboarding tools are designed to check compliance against regulatory minimums, not against actual broker or shipper risk exposure** — RMIS, MyCarrierPortal, and Highway all verify carrier insurance against the FMCSA-required threshold. None of them assess whether that coverage level is adequate relative to the cargo value being moved, the jurisdiction, or the broker's litigation exposure. This is a scope boundary built into every product: the tool tells you whether the carrier is legally compliant, not whether compliance is sufficient. No product has yet been built that maps carrier insurance adequacy against cargo value plus broker liability exposure in real time. (RMIS product documentation (4 from PP1.3); FreightWaves analysis (1); Carrier Assure partnership (8))

- **RC3: Contingent cargo insurance and broker liability insurance are purchased separately from carrier-onboarding tools, creating a coverage gap that is invisible within the onboarding workflow** — Even when brokers carry contingent cargo insurance (not required by law), that insurance activates only when the carrier's policy fails to cover a claim. The broker must first pursue the carrier's insurer and demonstrate non-recovery before their own contingent policy responds. This creates a multi-step, multi-party coverage chain that is operationally complex and frequently contested. The onboarding tool does not model this chain; it only confirms the carrier's certificate exists at time of check. [ASSUMED-6]: No carrier-onboarding platform currently models the full multi-party coverage chain (carrier insurance → contingent cargo → broker liability) as a single decisioning layer visible to the broker at point of load assignment — to validate: interview RMIS, MyCarrierPortal, and freight broker liability insurers on whether integrated coverage-adequacy assessment exists or is in product roadmap. (FreightWaves analysis (1); Logistiq excess cargo guide (9))

---

### New pain points surfaced beyond working hypotheses

Pain point 1.4 above (the insurance coverage gap and nuclear verdict mismatch) was not part of Working Hypothesis 1 and was surfaced during research. The core finding is that onboarding tool verification is correctly performing against its design spec — the problem is that the design spec (FMCSA minimum insurance) is commercially obsolete, and no current tool bridges the gap between regulatory compliance and actual risk exposure. This represents a whitespace opportunity for a solution that combines carrier onboarding verification with real-time coverage adequacy assessment and broker liability modeling.

---

### Hypothesis test: WH1

**Working Hypothesis 1:** "Vendor-procurement blind spots: shippers and 3PLs onboard sub-carriers using spreadsheets and reference checks; few tools verify operator legitimacy, insurance coverage, safety record, or beneficial ownership at the small-transporter tier."

**Finding: Partially evidenced, with important structural nuance.**

- Strongly evidenced for SEA and small-broker tier: no freight-specific counterparty-risk tool comparable to RMIS or MyCarrierPortal exists in Thailand, Malaysia, Singapore, Vietnam, or Philippines. Indonesia has Kargo and Logisly as partial marketplace-based solutions with undocumented vetting depth. The ~50% carrier abandonment rate in manual processes and the 35–45 minutes per-carrier manual labor time confirm spreadsheet-based workflows remain dominant at small-to-mid operators.
- Partially contradicted for large US brokers: Highway (1,050+ brokers including 70 of top 100), RMIS (Coyote, Echo, BNSF, Penske), and MyCarrierPortal (thousands of companies) show that large-broker automation adoption is material.
- Beneficial ownership element confirmed as structurally unaddressed: No US tool runs systematic UBO checks. The June 2025 135% spike in MC ownership-change fraud confirms this gap has direct financial consequences.
- One hypothesis element rejected: the hypothesis implies the pain is primarily at onboarding. Research shows that post-onboarding monitoring failure (continuous insurance lapse, ownership change detection) is at least as large a contributor as initial onboarding gaps. The pain is not just at the vendor-procurement moment — it persists through the load lifecycle.

---

### Assumptions tagged in this stage

[ASSUMED-1]: Investigation cost per fraudulent MC ownership-change event estimated at $10,000–$50,000 in internal labor, legal, and claim-management cost — to validate: interview freight broker risk managers and cargo claims adjusters for average cost per identity fraud investigation

[ASSUMED-2]: No public statistic on the percentage of US freight brokers running beneficial-ownership checks on carrier entities — to validate: commission or source a TIA/DAT member survey on onboarding practice by broker revenue tier

[ASSUMED-3]: No US or SEA freight-specific tool currently combines UBO/beneficial-ownership verification with carrier safety scoring and insurance monitoring in a single integrated product — to validate: confirm with RMIS, MyCarrierPortal, and Highway product teams whether UBO is in their roadmap or available as an add-on

[ASSUMED-4]: The ~50% abandonment rate for manual carrier onboarding is cited in Highway/Truckstop marketing materials but lacks an independent primary survey source — to validate: run a carrier-side survey on onboarding abandonment reasons and frequency

[ASSUMED-5]: Kargo Technologies and Logisly do not run continuous insurance monitoring equivalent to Truckstop RMIS — to validate: interview Kargo BD team and active shipper customers on vetting workflow specifics; ask whether COI-equivalent is collected and continuously monitored

[ASSUMED-6]: No carrier-onboarding platform currently models the full multi-party coverage chain (carrier insurance → contingent cargo → broker liability) as a single decisioning layer — to validate: interview RMIS, MyCarrierPortal, and freight broker liability insurers on whether integrated coverage-adequacy assessment exists or is in product roadmap

---

### SEA presence summary for solutions in this stage

- **Yes (SEA native):** Kargo Technologies (Indonesia only, ~50,000 trucks), Logisly (Indonesia only, ~40,000 trucks), AsiaVerify (Singapore HQ, 14 APAC markets — general KYB/UBO, not freight-specific)
- **Unknown (global claim, no documented SEA footprint):** Overhaul (7 global control towers claimed; no named SEA office or carrier-registry integration)
- **No:** Highway, Descartes MyCarrierPortal, Truckstop RMIS, Carrier Assure, Carrier411, FreightValidate, CargoNet (Verisk), CEFIC SQAS, Transporeon (Trimble)
- **Biggest SEA data gap:** No carrier-registry equivalent to FMCSA SAFER exists in Indonesia, Thailand, Malaysia, Vietnam, or Philippines; the building block on which all US tools depend is structurally absent

---

### Sources master list (this stage)

(1) FreightWaves — "The Freight Broker Insurance Gap Is Now Real": https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real
(2) Foreigh — "The Definitive Freight Fraud Report: A Comprehensive Analysis of Schemes, Impacts, and Countermeasures (2025)": https://foreigh.com/blog/freight-fraud-deep-dive
(3) FreightWaves / Overhaul — "Overhaul's FraudWatch: a new paradigm in freight fraud prevention": https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-freight-fraud-prevention
(4) Transportation Intermediaries Association — "State of Fraud in the Industry April 2025 Report": https://news.tianet.org/tia-releases-state-of-fraud-in-the-industry-april-2025-report/
(5) BSI Consulting / TT Club — "2024 Cargo Theft Report" (April 2025), PDF markitdown-processed: https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf
(6) HDT Trucking Info — "Cargo Theft's New Playbook: Strategic Fraud, Double Brokering, and Cybercrime": https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(7) Descartes — "Protecting Your Freight: Descartes MyCarrierPortal Incident Reporting": https://www.descartes.com/resources/knowledge-center/protecting-your-freight-how-descartes-mycarrierportal-incident-reporting
(8) CargoNet (Verisk) — 2025/2026 cargo theft statistics: https://www.cargonet.com/cargo-theft-data/
(9) AU10TIX / FreightValidate — "FreightValidate Users Reduce Cargo Theft Incidents by 90%": https://www.au10tix.com/customer-stories/au10tix-expects-freightvalidate-users-to-reduce-cargo-theft-by-90-tackling-a-35-billion-industry-challenge/ [Low confidence: vendor own claim, unaudited]
(10) PR Newswire / AU10TIX — "AU10TIX Selected by FreightValidate" (Dec 2024): https://www.prnewswire.com/news-releases/au10tix-selected-by-freightvalidate-to-strengthen-freight-industry-security-and-boost-efficiency-302326276.html
(11) Highway — "The Hidden Risk Behind Sold MCs and Ownership Changes": https://highway.com/posts/whats-the-hidden-risk-behind-sold-mcs-and-ownership-changes
(12) Foreigh — "Carrier Onboarding Complete Guide for Freight Brokers (2025)": https://foreigh.com/blog/carrier-onboarding-complete-guide-freight-brokers
(13) FinCEN — Beneficial Ownership Information FAQ: https://www.fincen.gov/boi-faqs
(14) C.H. Robinson — "How FMCSA Registration Changes Will Impact You in 2025": https://www.chrobinson.com/en-us/resources/blog/how-fmcsa-registration-changes-will-impact-you-in-2025/
(15) AsiaVerify — Indonesia company verification guide (2025): https://asiaverify.com/resources/guides/verifying-companies-in-indonesia-complete-guide-for-2025/
(16) AsiaVerify — product overview: https://asiaverify.com/
(17) World Bank LPI 2023 press release: https://www.worldbank.org/en/news/press-release/2023/04/21/world-bank-releases-logistics-performance-index-2023
(18) FTV Capital / Highway — "Highway Secures Strategic Growth Equity Investment Led by FTV Capital" (Aug 2025): https://ftvcapital.com/2025/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital/
(19) CarrierDetails.com / FMCSA — "The Freight Industry by the FMCSA Data: 2024 in Review": https://carrierdetails.com/post/the-freight-industry-by-the-fmcsa-data-2024-in-review/
(20) TechCrunch — "Logisly raises $6 million Series A" (Nov 2020): https://techcrunch.com/2020/11/02/indonesian-logistics-platform-logisly-raises-6-million-series-a-to-digitize-truck-shipments/
(21) DHL Discover Indonesia — "6 Risks of Skipping Shipping Insurance": https://www.dhl.com/discover/en-id/logistics-advice/import-export-advice/6-dangers-of-not-getting-shipping-protection
(22) Authenticate.com — "Freight Brokerage Compliance: Mastering the New FMCSA Rules in 2025": https://authenticate.com/resources/blog/fmcsa-rules-2025/
(23) DAT — "Freight Broker Insurance": https://www.dat.com/solutions/freight-broker-insurance
(24) Valley Trucking Insurance — "Load Board Liability Gap": https://www.valleytruckinginsurance.com/the-liability-gap-between-broker-load-boards-and-carrier-policies/
(25) Logistiq — "Excess Cargo Insurance: A Freight Broker's Guide": https://logistiq.com/excess-cargo-insurance-a-freight-brokers-guide/
(26) GlobeNewswire / Descartes — "Descartes Acquires MyCarrierPortal" (Sept 2024): https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html
(27) FTV Capital / Highway investment note (Aug 2025): https://ftvcapital.com/2025/highway-secures-strategic-growth-equity-investment-led-by-ftv-capital/
(28) Carrier Assure / MyCarrierPortal partner page: https://www.mycarrierportal.com/partners/carrier-assure/
(29) FMCSA — Insurance Filing Requirements: https://www.fmcsa.dot.gov/registration/insurance-filing-requirements
(30) Highway blog — carrier onboarding future: https://highway.com/posts/the-future-of-efficient-carrier-onboarding-in-freight-brokerage
