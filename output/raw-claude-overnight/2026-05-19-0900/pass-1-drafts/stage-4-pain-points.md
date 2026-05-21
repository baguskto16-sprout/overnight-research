# Stage 4: Multi-Leg Handoffs & Chain-of-Custody — Pain Points

**Actor:** Shippers (cargo owners), 3PLs / freight forwarders operating multi-carrier logistics, and the broker tier (freight brokers, lead logistics providers) that connects them. The unit of analysis is the solution ecosystem — control towers, RTTVPs, broker-integration platforms, and chain-of-custody platforms — that attempts to manage risk across multi-leg, multi-party freight journeys.

**Structural gap under investigation:** Visibility and accountability break at the point where a named 3PL or broker subcontracts a load to a smaller, non-integrated carrier. None of the major control-tower or visibility platforms reliably traverse this boundary. The result is a structural blind spot that enables fraud, cargo theft, insurance leakage, and disputed claims simultaneously — not sequentially.

---

## Stage 4: Multi-Leg Handoffs & Chain-of-Custody

### Pain point 4.1

**Description:** Real-time transportation visibility platforms (RTTVPs) and supply-chain control towers provide coverage to named contract carriers but lose signal at the moment a 3PL or broker subcontracts a load to a smaller, non-integrated sub-carrier. The shipper sees the load disappear into a black box for the subcontracted leg, creating an interval of zero visibility that typically runs hours to days. Because subcontracting is structurally normal — not exceptional — in road freight operations, this is not an edge-case failure mode but the routine operating condition for a large fraction of all multi-leg shipments.

**Who bears it:** Shippers (cargo owners), 3PLs contracting to sub-carriers, freight brokers; with downstream consequences for cargo insurers who underwrite shipments whose actual carrier is unverified.

**Estimated cost:**
- McKinsey estimates companies lose close to half of one year's profit over a decade from a single severe supply chain disruption originating in a non-visible supply-chain tier; for a mid-size shipper at $50M EBITDA that implies ~$25M tail exposure per disruption event (1)
- FourKites documents: a $75,000-average-cargo-value shipment delayed one additional day in transit costs ~$25,000 in working capital (inventory carrying cost); with 10,000-container annual volumes, one extra day from visibility-driven delay conservatively costs $2M/year per shipper (2)
- Shippers self-report that 5–10% of shipments requiring manual investigation are flagged as inaccurate or incomplete in data received from non-integrated carriers, generating ~$300–900 per shipment in manual triage labor at 2–4 hours/incident at logistics analyst rates (3)
- project44's Carrier Managed Services data shows customers without CMS experience 40–70 percentage points worse milestone completeness versus customers with managed carrier integration — a gap that quantifies the baseline data-quality hole for subcontracted legs (4)

**Willingness to pay:** [Not sourced — not stated]

**Frequency:**
- McKinsey 2024 survey of 88 senior supply executives: only 30% have good visibility beyond tier-1 carriers, down from 37% in 2023 and 56% in 2022 — the second consecutive year this measure declined (1)
- 95% of respondents have tier-1 visibility, but that extends to tier 2 or beyond for only 42% — the 53-percentage-point gap is the population experiencing systematic blind spots at the subcarrier layer (5)
- Over 47% of supply chain leaders reported disruptions in 2024 caused by issues originating with non-tier-1 partners (5)
- project44 network of 240,000+ carriers; only ~3,580 are in its Preferred Carrier program (~1.5% of the network), indicating the vast majority of smaller subcontract carriers operate without systematic managed integration (4)
- Gartner: 60% of supply chain digital adoption efforts (including visibility implementations) are predicted to fail to deliver promised value by 2028, citing integration gaps as a primary cause (6)
- An average disruption event requires at least 34 manual system updates across 6 platforms (7)

**Evidenced or assumed:**
(1) https://www.mckinsey.com/capabilities/operations/our-insights/supply-chain-risk-survey-2024
(2) https://www.fourkites.com/real-time-transportation-visibility-roi/
(3) https://www.trinetix.com/insights/real-time-freight-visibility
(4) https://www.project44.com/blog/achieving-high-carrier-data-quality-with-project44s-carrier-managed-services/
(5) https://www.z2data.com/insights/why-supply-chain-visibility-efforts-stop-at-tier-1-what-thats-costing-you
(6) https://www.gartner.com/en/newsroom/press-releases/2025-05-07-gartner-predicts-60-percent-of-supply-chain-digital-adoption-efforts-will-fail-to-deliver-promised-value-by-2028
(7) https://www.fourkites.com/blogs/supply-chain-control-towers-whats-changing/
(8) https://www.shippeo.com/blog/tracking-spot-carrier-shipments-the-visibility-gap-that-doesnt-have-to-be
(9) https://www.freightwaves.com/news/what-gartners-new-magic-quadrant-tells-us-about-the-real-time-visibility-market
(10) https://www.elevatiq.com/post/top-real-time-transportation-visibility-platforms/
(11) https://www.trinetix.com/insights/real-time-freight-visibility
(12) https://www.project44.com/press-releases/project44-announces-enhanced-service-level-agreement-reinforcing-commitment-to-high-quality-visibility-data/

**Root Causes**

- **RC1: RTTVPs are built on commercial carrier enrollment, not universal network coverage, creating a structural enrollment ceiling.** The business model of every major RTTV platform (project44, FourKites, Shippeo, Wakeo) is predicated on carriers consenting to integrate — either via API, ELD, telematics feed, or mobile app. Large named contract carriers have the IT staff, the commercial incentive (shipper mandates), and the volume to justify integration. Small sub-carriers operating in the spot or gray market have none of these. Project44 reports 240,000+ carriers in its network but concentrates quality management effort on ~1.5% of that population. The platform cannot mandate sub-carrier onboarding because it has no contract with them; the 3PL that subcontracted has a contractual relationship but no enforcement mechanism tied to the RTTV platform. This means every time a load moves off the named-carrier network, visibility coverage terminates structurally — not because of a technology gap but because of a commercial architecture gap. (4)(9)

- **RC2: 3PLs carry no contractual obligation to preserve the shipper's visibility stack when subcontracting.** Standard 3PL service agreements define service levels (transit time, damage rates, claims) but do not specify that any sub-carrier engaged must be enrolled in the shipper's RTTV platform, must report position at defined intervals, or must carry a GPS unit compatible with the shipper's data stack. The absence of this clause reflects the fact that subcontracting arrangements are often made under time pressure (spot market, capacity crunch) with carriers whose integration status is unknown at dispatch. A structural information asymmetry persists: the shipper has the system but no privity with the sub-carrier; the 3PL has the relationship but no system requirement. [ASSUMED-1]: to validate — what proportion of shipper–3PL master service agreements include RTTV enrollment as a sub-carrier qualification criterion?

- **RC3: The industry has not standardized a minimum data-exchange protocol that small carriers can implement at negligible cost.** Large carriers connect via EDI, API, or ELD integration — all of which require either IT staff or hardware. The mobile-app fallback (driver self-reporting) depends on driver compliance, which is inconsistent and cannot be enforced at the sub-carrier tier. DCSA is developing open-source standards for container shipping, but these do not extend to road sub-carriers. No industry body mandates a lowest-common-denominator position-reporting protocol for road freight. Until such a protocol is mandated or commercially incentivized, sub-carrier integration will remain a voluntary, patchwork effort. (DCSA standards: https://dcsa.org/standards; https://dcsa.org/newsroom/dcsas-highlights-of-2024)

- **RC4: Multi-tier supply chain visibility fell for the second consecutive year (2023–2024) despite RTTV market growth, indicating that network expansion is not closing the gap.** McKinsey's annual survey shows the share of executives reporting good visibility beyond tier 1 fell from 56% in 2022 to 37% in 2023 to 30% in 2024, coinciding with a period of rapid RTTV market growth and significant investment. This counter-intuitive divergence suggests that the growth of the RTTV market is concentrated among already-integrated large-carrier segments, while the sub-carrier tail expands faster than it is being onboarded. The market is growing without solving the structural gap. (1)(5)

- **RC5: Shippers lack commercial leverage over the subcontracted carrier tier because they have no direct privity.** A shipper's ability to impose technical requirements (GPS tracking, ELD mandate) runs out at the boundary of its direct contract. When a 3PL subcontracts, the shipper has no commercial relationship with the sub-carrier and cannot negotiate tracking requirements, insurance minimums, or reporting obligations directly. The 3PL, as the intermediary, could theoretically pass these requirements down, but absorbs the commercial cost of doing so (higher sub-carrier rates, reduced spot-market optionality). The structural incentive is to subcontract freely and manage reporting as a back-office problem, not to incur cost policing sub-carrier integration on the shipper's behalf. [ASSUMED-2]: to validate — do 3PL contracts in SEA markets explicitly permit subcontracting, and do any prohibit it without shipper notification?

---

### Pain point 4.2

**Description:** The subcontractor-tier opacity that drives visibility loss (Pain point 4.1) simultaneously creates the conditions for strategic cargo theft, double-brokering fraud, and identity theft schemes to operate undetected. Criminal actors exploit the exact same structural gap — the interval between a load leaving the named carrier and arriving at its next verified checkpoint — to impersonate carriers, divert loads, and execute theft before the shipper's visibility platform raises an exception. This is not a separate pain from 4.1 but a compounding risk that magnifies its cost: the same blind spot that causes operational inefficiency also exposes cargo to direct criminal exploitation.

**Who bears it:** Shippers (direct cargo loss), freight brokers (double payment liability, relationship loss), small legitimate carriers (identity theft, unpaid invoices), and cargo insurers (rising loss ratios).

**Estimated cost:**
- Verisk CargoNet 2024: $454.9M in recorded US/Canada cargo theft losses, up 27% from $331.9M in 2023; average theft value $202,364/incident (8)
- Double-brokering fraud: $500M–$700M in freight loss annually by industry estimate (9)
- Between 2022 and 2024, bad brokers drained an estimated $10B from the freight industry through non-payment, fraud, and mass broker closures (10)
- Strategic theft (identity fraud, fictitious pickup, document forgery) rose 1,475% between 2022 and 2024, while overall cargo theft rose 93% in the same period — indicating the fraud-enabled vector is growing 16x faster than physical theft (11)
- BSI/TT Club 2024 report: 76% of thefts involve trucks; 18% of all thefts in the US are now classified as strategic (identity/fraud-based) — up from near-zero in 2020 (12)
- 85% of survey respondents (freight brokers, 3PLs, carriers) reported direct financial impact from double brokering in Q2 2023 alone; 56% lost $0–$50K in a single quarter, 18% lost $50K–$150K (9)
- TAPA EMEA Intelligence System: 157,421 cargo crimes across 129 countries in 2022–2024, €2.7B in total losses where value was reported; ~€2.5M stolen from supply chains every 24 hours in EMEA alone (13)
- In SEA, India, Indonesia, China, Bangladesh and Vietnam recorded the highest activity within the region, with half of incidents occurring at warehouses and production sites (13)
- Cargo insurers: claims denial rate has risen to ~25% in 2025 partly due to stricter digital verification requirements that fraudulent claims cannot meet (14)

**Willingness to pay:** [Not sourced — not stated]

**Frequency:**
- 3,625 cargo theft incidents in US/Canada in 2024 — 27% increase from 2023 (8)
- 78% of freight industry professionals describe double brokering as "a widespread problem"; only 0.4% say it is not a problem at all (FreightWaves/TriumphPay survey, n=236) (9)
- Strategic theft now 18% of all US cargo theft incidents; the broader fraud-enabled category has grown nearly 15x since 2022 (11)(12)
- 26% of cargo theft incidents in India in 2024 involved insider participation — reflecting a supply-chain-access model that requires knowing which carrier has custody (12)
- IC3 (FBI) issued a public service announcement in April 2026 warning of "cyber-enabled strategic cargo theft surging" and recommending multi-factor authentication for load assignment platforms (15)
- In Asia Pacific: 107 piracy and armed robbery incidents against ships in 2024, 57% of global total; 62 incidents in the Straits of Malacca and Singapore alone — the key SEA chokepoint (16)

**Evidenced or assumed:**
(8) https://riskandinsurance.com/cargo-theft-losses-hit-record-455m-in-2024/
(9) https://www.freightwaves.com/wp-content/uploads/2023/09/20/TriumphPay-Double-Brokering-Dilemma-WP.pdf (PDF, processed via markitdown)
(10) https://transportationrecovery.com/bad-brokers-double-brokering-federal-enforcement-failures/
(11) https://www.supplychain247.com/article/us-cargo-theft-2025-double-brokering-crisis
(12) https://www.ttclub.com/fileadmin/uploads/tt-club/Documents/TT_and_BSI_annual_theft_report/TT_Club_Report_-_Supply_Chain_Report_April_2025.pdf (PDF, processed via markitdown)
(13) https://iumi.com/newsletter-march-2025/global-cargo-crime-the-scale-of-the-problem-and-the-role-of-tapa/
(14) https://www.accio.com/business/freight-claims-trends
(15) https://www.ic3.gov/PSA/2026/PSA260430
(16) https://safety4sea.com/recaap-isc-half-yearly-report-2024-piracy-and-armed-robbery-against-ships-in-asia/
(17) https://www.insurancebusinessmag.com/us/news/marine/cargo-insurers-face-rising-losses-as-fraud-reshapes-global-theft-risk-564331.aspx
(18) https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking
(19) https://www.travelers.com/resources/business-topics/supply-chain-management/strategic-cargo-theft
(20) https://www.verisk.com/company/newsroom/cargo-theft-surges-to-record-levels-in-2024-verisk-cargonet-analysis-reveals/

**Root Causes**

- **RC1: Strategic cargo theft is structurally enabled by the same sub-carrier identity opacity that prevents RTTV coverage.** A fraudster does not need to physically hijack a truck; they need only to register a carrier entity that looks legitimate, pass a broker's vetting screen, accept a load assignment, and redirect the shipment before the visibility gap triggers an exception. The key enabler is the absence of continuous, verifiable carrier identity through the handoff — precisely the structural gap described in Pain point 4.1. When a 3PL subcontracts a load, neither the shipper's control tower nor the broker's TMS knows the actual DOT number, insurance certificate validity, or physical vehicle of the sub-carrier in real time. Strategic theft exploits the same interval of unknowing as ordinary operational blind spots. The 1,475% growth in strategic theft between 2022–2024 tracks closely with the growth of digital freight matching platforms that created accessible, low-cost identity impersonation vectors — not with a change in physical theft capability. (11)(18)(19)

- **RC2: FMCSA enforcement of broker and carrier identity fraud remains structurally under-resourced relative to the scale of the problem.** MAP-21 legislation prohibits fraudulent double brokering, but enforcement is constrained by FMCSA administrative capacity. The federal minimum cargo insurance requirement for motor carriers has been $750,000 since 1980 — unchanged while the median nuclear verdict in trucking litigation reached $36M in 2022, a 50% increase from 2013. A freight broker is required to hold only a $75,000 surety bond, which covers payment defaults only and carries zero tort liability response. This regulatory underweight means bad actors face near-zero marginal legal cost for operating without valid insurance or carrier credentials, and legitimate carriers cannot distinguish themselves reliably in a market where credential verification is cursory. (https://www.freightwaves.com/news/the-freight-broker-insurance-gap-is-now-real)

- **RC3: Cargo insurers systematically underprice risk in multi-leg shipments because the actual carrier chain is undisclosed at policy inception.** Marine and cargo policies are typically priced against declared value, commodity type, and named carrier or 3PL. When a 3PL subcontracts, the policy was written against the named entity but risk is actually borne by an unknown sub-carrier whose safety record, equipment condition, and operating territory were not underwritten. Insurers cannot price what they cannot observe. The result is systematic underpricing of subcontracted-leg risk, higher-than-expected loss ratios, and claims investigations that must unravel a carrier chain that was never documented in the first place. This is not a bad-faith problem — it is a structural information-asymmetry problem between the underwriting moment and the loss moment. [ASSUMED-3]: to validate — what proportion of cargo insurance claims in SEA involve a subcontracted carrier whose identity was not disclosed in the original policy submission?

- **RC4: Load-board and digital freight-matching platforms created a low-friction identity assumption architecture that criminal actors exploit at scale.** Prior to digital freight matching, fraudulent carrier substitution required physical forgery and in-person impersonation. Digital load boards (DAT, Truckstop, Uber Freight) and broker TMS platforms match loads to carriers via DOT/MC number and posted credentials, without biometric identity verification of the individual taking the load, real-time validation that the DOT number matches the physical equipment dispatched, or cross-check against active theft alert databases. Criminal groups have systematized the exploitation: register an entity near a large reputable carrier's name, pass a broker's automated vetting, accept a high-value load, and redirect. The FBI IC3 advisory of April 2026 explicitly names this architecture as the primary attack surface. The platform operators have the data to close this gap but face collective action problems: unilateral tightening loses volume to competitors with lighter friction. (15)(17)(18)

- **RC5: In SEA markets, the combination of high informality in the carrier base, weak regulatory infrastructure, and a fragmented carrier landscape compounds all of the above structural vulnerabilities.** The SEA 3PL market ($26.6B in 2023, growing at 6.1% CAGR) is served by thousands of small operators with limited digital integration. Regulatory frameworks for carrier credential verification, mandatory GPS tracking, and proof-of-identity at load assignment are absent or unenforced in most SEA jurisdictions. In Indonesia, BSI data identified the carrier base as heavily informal; India showed 26% insider-involvement rates in cargo theft. The same strategic theft patterns spreading through the US (1,475% growth) are now documented by TAPA in Asia Pacific, with India, Indonesia, Vietnam among the highest-activity countries. A venture targeting SEA encounters a market where the structural gap is wider, the enforcement backstop is weaker, and the need for a verifiable chain-of-custody layer is correspondingly more acute. (12)(13)(16)

---

### Pain point 4.3

**Description:** When cargo is lost, damaged, or stolen during a multi-leg shipment, the absence of a shared, tamper-evident chain-of-custody record makes it impossible to determine with certainty which party had custody at the moment of loss. Shippers, 3PLs, sub-carriers, and insurers dispute liability across a chain of paper waybills, unsigned handoff records, and conflicting ETA logs. Claims resolution takes 90–120 days or longer for disputed multi-party cases, and claims are frequently denied or settled at a fraction of declared value because evidence of care and custody at each leg transition cannot be produced. This is a structural claims-integrity failure, not a documentation-practice failure: the industry has no shared ledger that all parties write to at each handoff.

**Who bears it:** Shippers (absorb disputed claims, premium loading from insurer response), 3PLs (operational cost of investigation, customer relationship risk), sub-carriers (bear blame for losses they may not have caused), cargo insurers (inflated investigation cost, adversarial settlement).

**Estimated cost:**
- Cargo claims disputed for 90–120 days create working capital costs: at a $200K average claim value and 30-day DSO impact, each disputed claim costs the claimant ~$1,500 in financing cost and ~$2,000–4,000 in internal labor at 10–20 hours (21)
- 25% claim denial rate in 2025 industry reports — up from historical baselines — driven partly by stricter digital verification requirements that paper-based handoff documentation cannot satisfy (14)
- The shipper who cannot prove continuous custody loses the claim or settles for declared value minus carrier liability limit; Carmack Amendment limits carrier liability to declared value unless the shipper has purchased excess valuation — a provision many shippers using spot sub-carriers are unaware applies (22)
- "Inconsistent or missing documentation remains a leading cause of claim denials" — accio.com freight claims trends report, 2025 (14)
- TradeLens attempted to solve this for ocean freight and accumulated $75M+ in development cost before shutting down in Q1 2023 due to lack of industry adoption — quantifying the prior investment destroyed on the problem (23)
- GSBN (the surviving consortium) and CargoX together represent partial coverage of the ocean container chain — road sub-carrier legs remain entirely outside these systems (24)

**Willingness to pay:** [Not sourced — not stated]

**Frequency:**
- Claims resolution disputes are routine: "complex or disputed claims may take longer than 90–120 days" is explicitly acknowledged in freight claims guides (21)
- Multi-party handoffs with multiple waybills are structurally normal in multi-leg road freight; any international multi-modal shipment (ocean + road drayage + inland road) crosses at least 3–4 custody boundaries (22)
- BSI/TT Club 2024 report: the Austria-to-France copper shipment case study illustrates a mid-six-figure USD loss from a single fraudulent re-direction enabled by false delivery instructions — a chain-of-custody failure that went undetected until the destination confirmed non-delivery (12)
- South Africa metal theft case study: nine container loads collected over several days never reached the export port; no due diligence on trucking providers; manual data entry allowed reconciliation gaps; theft undetected until delivery-point discrepancy (12)

**Evidenced or assumed:**
(21) https://www.gofclogistics.com/a-complete-guide-to-freight-claims/
(22) https://hatfieldandassociates.com/logistics-claims-management-guide-2024/
(23) https://www.supplychaindive.com/news/Maersk-IBM-shut-down-TradeLens/637580/
(24) https://www.gtreview.com/news/fintech/tradelens-failure-the-most-exciting-time-for-gsbn-says-ceo/
(25) https://www.computerworld.com/article/1615596/maersks-tradelens-demise-likely-a-death-knell-for-blockchain-consortiums.html
(26) https://www.maersk.com/news/articles/2022/11/29/maersk-and-ibm-to-discontinue-tradelens
(27) https://dcsa.org/our-mission/interoperability-efficiency
(28) https://dcsa.org/newsroom/dcsas-highlights-of-2024
(29) https://trackonomy.ai/blog/why-is-the-chain-of-custody-important/
(30) https://amblogistic.us/why-u-s-supply-chains-are-rethinking-coverage-liability-and-operational-resilience/
(31) https://www.nicolaidesllp.com/case-studies/coverage-denial-upheld-under-bill-of-lading-exclusion

**Root Causes**

- **RC1: Custody transfers in road freight are documented on paper or unilateral digital records with no multi-party write access or tamper evidence.** A bill of lading and proof of delivery represent assertions by one party about what happened; they are not co-signed, timestamped digital records that both the transferring and receiving party simultaneously validate. Paper PODs can be lost, altered, or back-dated. TMS records from one party are unavailable to the other. The result: when damage or loss is discovered at destination, no party can produce a record that the other party is obligated to accept as authoritative. This is not a technology problem — GPS sensors and smartphones are cheap. It is a governance problem: no mechanism exists to require multi-party co-attestation at each handoff. [ASSUMED-4]: to validate — what custody transfer documentation standard (if any) do major SEA 3PLs use for subcontracted road legs, and who countersigns?

- **RC2: TradeLens's failure established a precedent that has chilled investment in shared chain-of-custody infrastructure for a multi-year period, leaving the problem unsolved.** TradeLens attempted exactly the right solution — a neutral, shared ledger for cargo events — but failed because it was structured as a for-profit platform partially owned by Maersk, the dominant carrier whose competitors did not trust it. GSBN CEO Bertrand Chen explicitly attributed the failure to the "for-profit model" and dual conflict between platform operator and application builder. The lesson absorbed by the market was that shared ledger infrastructure cannot be built by a commercial entity with a stake in the underlying trade flows. This has chilled VC and corporate investment in the space, leaving it to underfunded consortia (GSBN, DCSA) with slow standards timelines and no coverage of road sub-carriers. The absence of a TradeLens successor is not evidence that the problem is solved — it is evidence that the incentive structure to fund a solution is broken. (23)(24)(25)(26)

- **RC3: Insurance policy architecture creates a liability discontinuity at each carrier handoff that neither party has incentive to close.** A shipper's all-risk cargo policy typically covers loss from named departure to named destination regardless of carrier identity. A carrier's motor truck cargo policy covers loss only while cargo is in that carrier's physical custody. When sub-carriers are involved, the question "whose policy responds?" is governed by complex subrogation rules that depend on which party had legal custody at the time of loss — information that is unavailable if no timestamped custody record exists. Insurers respond by either denying claims (citing carrier liability exclusion) or paying and attempting subrogation against a party they cannot identify. Neither outcome creates an incentive for the 3PL to install shared chain-of-custody documentation, because the 3PL's contingent cargo policy covers it regardless. Only the shipper bears the residual undocumented loss, and the shipper has no contractual lever to impose chain-of-custody requirements on a sub-carrier it has never contracted with. (12)(30)(31)(https://beinsure.com/news/freight-brokers-face-new-insurance-gap-after-court-ruling/)

- **RC4: DCSA and industry standards bodies are developing interoperability frameworks that stop at the ocean carrier boundary and do not address road sub-carrier custody.** DCSA's 2024 Commercial Schedules 1.0 and OVS 3.0 standards address vessel-to-vessel and carrier-to-BCO data exchange. These are meaningful advances for container shipping. They do not address: (a) the handoff from ocean terminal to road drayage carrier; (b) road-to-road subcontractor handoffs; (c) multi-modal documentation for loads that cross from ocean to inland. The structural gap in road freight documentation standards has no active standards body addressing it with the urgency or commercial backing that DCSA brings to the ocean segment. In SEA, where road freight operates in a more fragmented and less standardized environment than Europe or North America, this gap is wider. (27)(28)(https://frontiersin.org/journals/blockchain/articles/10.3389/fbloc.2025.1503595/full)

---

### Pain point 4.4

**Description:** Control towers, RTTVPs, and chain-of-custody platforms all face the same adoption bottleneck: they require network-wide participation to function, but each participant in the network only benefits once a critical mass has enrolled. TradeLens is the canonical case — a technically viable platform destroyed by the inability to solve the collective action problem of competing parties sharing a common ledger. This failure pattern repeats: GSBN, CargoX, dexFreight, ShipChain have all faced versions of the same structural barrier. In the road-freight subcontractor tier, the problem is further complicated by the absence of any anchor institution powerful enough to mandate adoption across the informal SME carrier base that constitutes the majority of road freight capacity in SEA and emerging markets.

**Who bears it:** Technology vendors building network-dependent solutions (high customer acquisition cost, long time-to-network-effect); shippers and 3PLs evaluating platforms (cannot commit to a platform that may not achieve critical mass); insurers (cannot price subcontracted legs if the chain-of-custody data network never reaches those carriers).

**Estimated cost:**
- TradeLens: $75M+ in development costs between Maersk and IBM; entirely written off at shutdown in Q1 2023 (23)(26)
- Gartner: 18–24 months average implementation time for traditional visibility solutions, with 60% failing to deliver expected ROI (6)(https://www.srmtech.com/knowledge-base/blogs/supply-chain-control-tower-a-comprehensive-overview/)
- Project44 invested in a Network Operations Agent (deployed April 2026) specifically to automate carrier engagement and close data-quality gaps at scale — signaling that even the market leader has not solved the non-integrated carrier problem organically after 10+ years (4)(https://www.globenewswire.com/news-release/2026/04/07/3269228/0/en/project44-Launches-Network-Operations-Agent-to-maintain-visibility-compliance-and-improve-data-accuracy.html)
- DCSA standards represent years of consortium investment but remain voluntary; GSBN coverage as of 2024 is concentrated in Asia-Pacific container shipping, with road freight legs outside scope (24)(27)

**Willingness to pay:** [Not sourced — not stated]

**Frequency:**
- Every chain-of-custody platform requiring multi-party enrollment faces this problem by definition
- TradeLens shut down after 5 years (2018–2023) with stated reason: "global industry collaboration not achieved" (23)(26)
- None of the major competing blockchain/shared-ledger platforms (GSBN, CargoX, dexFreight, ShipChain) has achieved coverage of road sub-carriers at scale as of 2025 [ASSUMED-5]: to validate via direct interview with GSBN or CargoX product team
- DCSA's 2024 highlights report focuses entirely on ocean container standards; road freight digital documentation standards are absent from the DCSA roadmap (28)

**Evidenced or assumed:**
(Same as Pain point 4.3 footnotes, plus:)
(32) https://www.maritime-executive.com/article/maersk-and-ibm-abandon-blockchain-tradelens-platform
(33) https://www.shippingandfreightresource.com/tradelens-to-be-shutdown-due-to-lack-of-commercial-viability/
(34) https://smartmaritimenetwork.com/2022/11/30/tradelens-maritime-blockchain-to-shut-down-in-2023/
(35) https://theferrarigroup.com/the-termination-of-the-tradelens-blockchain-platform-are-lessons-being-learned/
(36) https://supplychaindigital.com/technology/gsbn-launches-blockchain-enabled-cargo-release-china
(37) https://www.ship-technology.com/news/shipping-blockchain-consortium/
(38) https://www.dcsa.org/standards/booking/documentation-booking-2-beta-1/booking-2-beta-1-introduction

**Root Causes**

- **RC1: Shared chain-of-custody networks exhibit strong network effects but are structurally incompatible with for-profit ownership by a market participant.** The logic is: for a shared ledger to function, all parties must trust that their operational data on the platform will not be used against them commercially. A platform owned or substantially controlled by a competitor cannot guarantee this. TradeLens was co-owned by Maersk; the Asian and Chinese carriers — representing the majority of container volume — refused to join. GSBN's CEO explicitly attributed TradeLens's failure to its for-profit model. The successful archetype for such networks (SWIFT in banking, SITA in aviation) is a non-profit utility governed by consortium members. Building a non-profit network with adequate technical investment and governance is a multi-year process with high pre-revenue capital requirement, which private capital is structurally poorly suited to fund. (23)(24)(25)(26)

- **RC2: The carrier base that most needs to be enrolled (sub-carriers, informal road operators) has the least incentive to join any network that creates documentation obligations.** Large carriers join RTTV networks because shipper mandates make it a commercial prerequisite. Small sub-carriers operating in spot markets, informal relationships, and cross-border gray zones have no such mandate and actively benefit from opacity: opacity enables undisclosed subcontracting, avoidance of safety inspections, and the ability to operate across carrier entities. Any platform that requires these actors to disclose their movements, identity, and custody handoffs imposes costs on precisely those parties whose business model depends on avoiding those disclosures. The enrollment problem is not technical — it is an incentive-design problem. [ASSUMED-6]: to validate — what proportion of sub-carrier capacity in SEA road freight operates outside any digital tracking or registration system?

- **RC3: Legal liability is unclear when data transfers between platforms, creating a governance vacuum that blocks platform interoperability.** GSBN's CEO explicitly identified this: "the real problem is the legal aspect around who is liable if something happens in the transfer between two platforms." If Platform A records a custody event and Platform B records a different state for the same shipment, which record is authoritative in a legal dispute? No international legal framework governs multi-platform chain-of-custody record authority. DCSA is developing interoperability proofs of concept, but these are technical proofs, not legal frameworks. Until liability allocation between competing platforms is resolved in law or by contractual standard, multi-platform interoperability cannot be a foundation for chain-of-custody claims resolution. This means each platform must either achieve monopoly coverage (which TradeLens could not) or accept that its records are not legally authoritative across the full chain. (24)(27)(35)

- **RC4: Standards bodies (DCSA) and industry consortia (GSBN) operate on timelines that are structurally too slow to match commercial deployment risk.** DCSA's Commercial Schedules 1.0 took multiple years to develop and covers a narrow slice of the container booking lifecycle. GSBN's cargo release product was live in China as of 2023 but has not expanded to cover road freight legs. Neither body is meaningfully addressing the road sub-carrier documentation gap that represents the most common chain-of-custody failure mode in multi-modal freight. The structural reason: standards bodies represent their member institutions' interests, which are predominantly large ocean carriers and freight forwarders. Small road sub-carriers are not represented, have no voice in standards development, and therefore no standard is developed to their operating constraints. [ASSUMED-7]: to validate — does any active DCSA or FIATA working group have a mandate covering road sub-carrier custody documentation standards?

---

### New pain points surfaced beyond working hypotheses

The research confirms both working hypotheses (WH2 on RTTV signal loss at the 3PL-to-subcontractor boundary, and the hypothesis that subcontractor opacity drives both insurance leakage and theft exposure simultaneously). Pain point 4.2 fully evidences the simultaneous-risk hypothesis — the structural gap in 4.1 and the security exposure in 4.2 are not coincidentally correlated; they are mechanically the same gap.

One pain point partially rejected: the hypothesis that blockchain/chain-of-custody platforms are close to solving this problem was tested and rejected. GSBN, CargoX, and similar platforms are categorically not addressing road sub-carrier handoffs; they remain ocean-container-only. Pain point 4.4 documents this structural failure to close the gap.

One new pain point surfaced and not in the original hypothesis set: the insurance liability discontinuity at carrier handoffs (documented within Pain point 4.3, RC3) — specifically that the insurance policy architecture structurally depresses shipper incentive to impose chain-of-custody documentation on sub-carriers, because the shipper's all-risk policy responds regardless. This is a candidate for a standalone fifth pain point in subsequent deeper research.

---

### Assumptions tagged in this stage

[ASSUMED-1] What proportion of shipper–3PL master service agreements include RTTV enrollment as a sub-carrier qualification criterion? — to validate: review 10–15 shipper–3PL MSA templates or interview procurement/legal contacts at 3PLs.

[ASSUMED-2] Do 3PL contracts in SEA markets explicitly permit subcontracting, and do any prohibit it without shipper notification? — to validate: collect 5–10 SEA 3PL standard service agreements and review subcontracting and disclosure clauses.

[ASSUMED-3] What proportion of cargo insurance claims in SEA involve a subcontracted carrier whose identity was not disclosed in the original policy submission? — to validate: interview marine cargo claims adjusters at Tokio Marine, Swiss Re, or regional Lloyd's syndicates with SEA books.

[ASSUMED-4] What custody transfer documentation standard do major SEA 3PLs use for subcontracted road legs, and who countersigns? — to validate: site visits or operations interviews with KN, DHL, and Kerry Logistics operations teams in Indonesia or Thailand.

[ASSUMED-5] None of the major competing blockchain/shared-ledger platforms has achieved coverage of road sub-carriers at scale as of 2025 — to validate: product scope interview with GSBN, CargoX, or dexFreight product team.

[ASSUMED-6] What proportion of sub-carrier capacity in SEA road freight operates outside any digital tracking or registration system? — to validate: ATA Kearney or Bain SEA logistics reports; Indonesia logistics ministry data; interview with Kargo or Logisly (Indonesia digital freight broker) operations team.

[ASSUMED-7] Does any active DCSA or FIATA working group have a mandate covering road sub-carrier custody documentation standards? — to validate: review DCSA 2024–2025 working group charters and FIATA digitalization committee scope.
