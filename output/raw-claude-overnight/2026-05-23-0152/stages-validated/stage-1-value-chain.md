# Stage 1 — Pre-Dispatch: Vendor Procurement & Carrier Onboarding

*Run: 2026-05-23-0152 | Topic: Risk-management solutions across the logistics journey (worldwide scan)*
*Authored by value-chain-mapper agent | Stage of 6*

---

> **Refinements applied (Phase 1 deep-research, 2026-05-23):**
> - **vc-5 (market size):** Dropped specific $1.54B–$1.62B aggregator figure (Growth Market Reports / Dataintelo, no methodology disclosed). Replaced with honest framing anchored to Gartner SCM software total ($33.4B in 2024, +12.4% YoY) and Descartes' $24M MyCarrierPortal acquisition (Sept 2024) as the best transaction-based anchor. Gartner URL tagged [NEEDS-ATTENDED-FETCH] (HTTP 403). New primary sources: Gartner SCM market press release (27), Descartes MCP acquisition press release (28).

---

## Stage Description

This stage covers the solutions shippers and 3PLs/freight brokers use to vet, onboard, and continuously monitor sub-carriers before a load is tendered. The core risk being managed is **counterparty / vendor risk**: ensuring that the entity dispatching a truck is who it claims to be, holds valid operating authority and insurance, has an acceptable safety record, and is not engaged in fraud (identity theft, MC takeover, double brokering, or sham ownership). The unit of analysis is the **solution** — both commercial software platforms and manual workarounds.

The stage is dominated by the US market (where FMCSA regulatory data creates a rich signal set), with nascent digital equivalents in India, China, and Europe. In SEA, manual processes are the current norm with no dedicated regional solution identified in open sources.

---

## Activities (sub-steps within this stage)

1. **Authority and regulatory-registry lookup** — verify the carrier holds valid operating authority (FMCSA motor carrier number / equivalent national registry) and is not suspended, revoked, or in watchlist status. Done manually via free government portals (FMCSA SAFER Web) or automated via API-connected compliance platforms.
2. **Insurance certificate collection and validation** — obtain and verify certificates of insurance (cargo, liability, auto) against minimum coverage thresholds; monitor for expiry or cancellation in real time. Currently the most time-consuming manual step (chasing COIs by email/phone).
3. **Identity and beneficial-ownership verification** — confirm the person completing onboarding is an officer of the carrier entity; cross-reference banking details, corporate registration, and physical address against FMCSA records and third-party identity databases. Specifically targets MC number hijacking and change-of-ownership fraud.
4. **Safety-record scoring and carrier qualification** — pull DOT inspection history, crash data, CSA BASIC scores, and hours-of-service compliance; apply a pass/fail or graded score against the broker's/shipper's risk threshold. Ranges from manual FMCSA SAFER Web lookups to AI-powered predictive scoring (Carrier Assure).
5. **Carrier packet collection and document management** — execute a broker–carrier agreement, collect W-9, insurance certs, and any shipper-specific addenda; store in document repository. Legacy workflow: email PDF tennis averaging 35–45 minutes per carrier per new engagement. Digital platforms compress this to a single web form in under 10 minutes.^1

---

## Revenue Model (for solutions in this stage)

Tiered SaaS subscription (seat/month + per-monitored-carrier/month), supplemented by per-verification transaction fees for identity checks; enterprise platforms (Highway, RMIS/Truckstop) quote volume-based contracts tied to brokerage size; load-board-bundled onboarding (DAT OnBoard) priced per carrier onboarded/month ($50/month base for 50 carriers).^2^,^3

---

## Cost Drivers (for solutions in this stage)

Government API / data licensing fees (FMCSA data access, state DMV), compliance-data aggregation and refresh (18–20 FMCSA data sources per monitoring platform^4), engineering costs to maintain real-time identity-verification network, customer success and carrier-support headcount, and fraud-signal network maintenance (cross-broker shared data requires trust/legal infrastructure).

---

## Market Size

| Metric | Value | Confidence | Sources |
|--------|-------|------------|---------|
| Global carrier onboarding & compliance platform market (2024) — REFINED | Emerging niche within the $33B+ global SCM software market (Gartner 2024); no audited sub-market size publicly available. Descartes' $24M MyCarrierPortal acquisition (Sept 2024) is the best transaction-based anchor — implies MCP trailing revenue in the low-to-mid single-digit millions at 3–6x ARR multiple. | Medium (Tier 1 Gartner + Tier 3 transaction data) — aggregator figures ($1.54B–$1.62B) lacked methodology and are dropped. | (27), (28); (5), (6) (supplementary) |
| Global SCM software market total (2024) | ~$33.4B (+12.4% YoY) | Medium — Gartner SCM market share data; press-release tier of underlying report | (27) |
| Global freight broker software market (2024, broader — includes TMS, rate tools, compliance) | ~$20B | Low — single trade-research source; scope broader than this stage alone | (7) |
| Asia-Pacific carrier onboarding & compliance platform market (2024) — REFINED | No Tier-1 source independently sizes this APAC sub-segment. Prior aggregator figure (~$340M) lacked methodology and is dropped. APAC is the fastest-growing sub-region of SCM software per Gartner; Descartes APAC geographic revenue was $18.2M in FY2024 as a single-vendor signal. | Low — APAC aggregate; no SEA country-specific breakdown exists | (27), (28); (5) (supplementary) |
| Global carrier onboarding & compliance platform projected CAGR (2025–2033) | 12.8%–13.7% (aggregator estimate); Gartner SCM-with-agentic-AI projects from <$2B (2025) to $53B (2030) for the broader AI-augmented SCM segment | Low (aggregator); Medium (Gartner agentic-AI subset) | (5), (6) (supplementary); (27) |
| North America market share of carrier onboarding & compliance platform (2024) | ~38% (aggregator estimate) | Low — derived from reported share; same source caveat; not independently validated | (5) (supplementary) |

**Data gap:** No government statistics source (BPS Indonesia, DOSM Malaysia, NSO Thailand, FMCSA, US Census) publishes a country-specific "carrier onboarding software" revenue figure. Exhaustive deep-research search (15 queries spanning Gartner, McKinsey, BCG, Bain, Roland Berger, Bloomberg NEF, SEC EDGAR for Descartes 40-F, IEA/OECD/World Bank, and M&A transaction data) confirms that no Tier-1 consultancy or multilateral source sizes "carrier onboarding and compliance platforms" as a distinct sub-market. The aggregator figures previously cited ($1.54B–$1.62B from Growth Market Reports, Dataintelo, MarketIntelo) re-package the same auto-generated model with undisclosed methodology and do not constitute independent cross-validation. The Gartner SCM total and the Descartes/MCP $24M transaction are the only primary anchors available.

**Geography mismatch:** No SEA country-specific (Singapore, Indonesia, Thailand, Malaysia) carrier-onboarding software market figure exists in any accessible source. Asia-Pacific aggregate used as proxy; field validation needed.

---

## Named Solutions by Region

Solutions are sorted within each region from most enterprise-grade to most SMB/manual.

---

### United States

**Highway**
- **What it does:** Real-time carrier identity platform. Validates that the entity dispatching a truck is the licensed motor carrier, not a fraudster who cloned an MC number or hijacked an account. Uses a shared fraud-signal network across its broker network plus biometric/document verification at the carrier level. Blocked ~915,000 fraud attempts in 2024 alone.^8 Launched the Trusted Freight Exchange (TFX) in 2025 as a load-board layer built on top of verified identities.^9
- **Primary user:** Freight brokers (primary), shippers (secondary)
- **Business model:** Monthly SaaS subscription per brokerage, volume-scaled; $349/month entry point via AscendTMS integration for SMB brokers; enterprise deals quoted individually.^3^,^10 Highway's own pricing unpublished.
- **Customers:** 1,050+ freight brokers, including 70 of the largest 100 US brokers.^8
- **Funding:** Undisclosed strategic growth equity led by FTV Capital with Lead Edge Capital (announced August 2025).^8 Founded 2022.
- **Pros:** Strongest fraud-detection signal in the market; real-time (not batch) identity check at booking time; network effects as more brokers join.
- **Cons:** US FMCSA ecosystem only; no public international roadmap; pricing opaque above SMB tier; vendor-side marketing source — independent financial data not available.
- **SEA presence: NO** — US-specific regulatory data dependency (FMCSA); no offices, resellers, or customers in SEA identified in open sources.
- **Source note:** Company metrics sourced from FreightWaves (trade press, Tier 9) and FTV Capital investor blog (Tier 4 — firm's own publication); highway.com marketing site not used as primary.

**Descartes MyCarrierPortal (fka MyCarrierPackets / Assure Assist)**
- **What it does:** Carrier onboarding and risk-monitoring platform. Brokers send carriers a digital packet link; carriers complete W-9, COI, broker-carrier agreement in one sitting. Platform screens carriers for legitimacy, insurance compliance, and safety record; monitors for ongoing compliance with automatic alerts if a carrier falls out of status. Acquired by Descartes Systems Group (DSGX) for $24M upfront + up to $6M earn-out in September 2024.^11
- **Primary user:** Freight brokers, shippers
- **Business model:** SaaS subscription; pricing not publicly listed; described by customers as "reasonably priced" scaling for small brokerages, not just enterprise.^12 Descartes (parent) reports consolidated revenues; no standalone MCP revenue disclosed.
- **Pros:** Established workflow for digital packet collection (pre-acquisition brand equity); integrates with Descartes MacroPoint for combined onboarding + visibility layer; document management replaces shared folders.
- **Cons:** Primarily US trucking ecosystem; FMCSA data dependency limits international applicability; acquired product — integration roadmap with Descartes suite still evolving.
- **SEA presence: NO** — Descartes has global offices (including Singapore) but MyCarrierPortal product is US trucking-specific; Descartes broader TMS platform has SEA customers; MCP functionality not marketed in SEA.
- **Source note:** Acquisition facts from GlobeNewswire (Descartes press release — Tier 3, regulatory body imprint via EDGAR-linked filing); platform description from Carrier Atlas comparison (Tier 9 trade press) and Capterra reviews.

**Truckstop RMIS (Registry Monitoring Insurance Services)**
- **What it does:** The original carrier compliance monitoring platform, now part of Truckstop.com. Continuous monitoring of carrier compliance: insurance certificate capture and tracking, W-9, OFAC screening, authority status, document management. Accelerates onboarding 80% vs. manual; integrates with Truckstop load board.^13
- **Primary user:** Freight brokers (mid-market to large)
- **Business model:** Tiered SaaS; RMIS Lite at $340/month; Pro tier (custom pricing with live carrier registration support, new carrier matching, carrier directory sourcing).^13
- **Customers:** Claimed by Truckstop press release to be widely used; specific customer count not publicly confirmed.
- **Pros:** Deep insurance certificate management; compliance monitoring (not just onboarding); strong legacy brand and Truckstop load-board integration.
- **Cons:** US-only (FMCSA data); now owned by Truckstop — may see product consolidation; legal experts warned FreightGuard (carrier report feature) creates open-ended tort liability for brokers.^14
- **SEA presence: NO** — US-only regulatory infrastructure; no international customers or offices identified.
- **Source note:** Pricing from Tekpon software review (trade press, Tier 9); platform description from Truckstop.com product pages (vendor marketing — used only to confirm product exists, not for claims about performance); legal warning from Overdrive (trade press, Tier 9).

**Carrier411**
- **What it does:** FMCSA-data-focused carrier safety ratings and authority/insurance monitoring. Aggregates 18–20 FMCSA data sources including archived data back 15 years not available on FMCSA's own site. Features FreightGuard carrier report system for broker-submitted performance alerts. Subscription pricing has not been raised since 2004; CEO publicly stated the model is volume (many customers at low cost) over margin.^4
- **Primary user:** Small to mid-size freight brokers (compliance baseline)
- **Business model:** Subscription from $99/month; 3,000+ freight brokers subscribed including 97 of top 100 US brokers.^4
- **Pros:** Low-cost, long-established dataset; broad market penetration; FMCSA archived data depth.
- **Cons:** FreightGuard legal liability risk (noted above); pure compliance baseline, not identity/fraud detection; US-only.
- **SEA presence: NO** — US regulatory data dependency.
- **Source note:** FreightWaves (trade press, Tier 9); Overdrive legal concerns (trade press, Tier 9); Carrier411 website used only to confirm product exists.

**Carrier Assure**
- **What it does:** AI-driven predictive carrier scoring platform. Analyzes millions of FMCSA data points daily to produce an A–F grade predicting how a carrier will perform on a given load. Integrates with Descartes MyCarrierPortal (partner relationship).^15 Focus is performance prediction, not identity verification.
- **Primary user:** Freight brokers, shippers
- **Business model:** SaaS subscription; specific pricing unpublished.
- **Pros:** Forward-looking risk score vs. backward-looking compliance snapshot; data-science model continuously updated.
- **Cons:** Explicitly not a safety indicator per own disclaimer; not available for carriers outside the FMCSA system; US-only.
- **SEA presence: NO**
- **Source note:** Carrier Assure website (vendor marketing — used only to confirm product exists and feature set); FreightWaves cited partnership; Overdrive cited case studies.

**Overhaul FraudWatch**
- **What it does:** Carrier and driver verification at the point of pickup, not just onboarding. Before a load is assigned, FraudWatch screens carrier credentials, compliance history, and risk factors. At pickup, photo-based driver identity verification cross-referenced with carrier risk profiles. 14% of US motor carriers screened at pickup are flagged as high-risk; 7% are potential bad actors; 12% found to be operating without proper FMCSA authority.^16 Won 2025 FreightWaves Fraud Fighter Award.^16 Parent company Overhaul raised $105M Series C (August 2025) and $55M earlier (January 2025); serves 350+ customers including Microsoft, Dyson, Bristol Myers Squibb; safeguards $1.4T in cargo trade.^17
- **Primary user:** Enterprise shippers, 3PLs (pharma, tech, high-value goods)
- **Business model:** Platform + service fee; specific pricing unpublished; enterprise contract only.
- **Pros:** In-transit verification layer beyond pre-dispatch vetting; sector-specific expertise (pharma, tech, food and bev).
- **Cons:** Significant enterprise focus; 350-customer base (not mass market); expensive relative to pure compliance tools.
- **SEA presence: UNCLEAR — to validate.** Overhaul has stated global expansion as part of Series C use-of-funds; no SEA office or customer publicly confirmed.
- **Source note:** TechCrunch ($55M raise, January 2025, Tier 9 tech press); PRNewswire Series C (Tier 4 — firm's own press release); FreightWaves fraud fighter (trade press, Tier 9); Overhaul.com marketing for product description only.

**DAT OnBoard**
- **What it does:** Carrier onboarding bundled with DAT load-board access. Mobile-first onboarding flow; over 50,000 carriers already have pre-filled profiles in the DAT network, reducing data entry for new onboardings. Integrates with TMS directly.^2
- **Primary user:** Freight brokers already using DAT load board
- **Business model:** Subscription from $50/month for up to 50 carriers onboarded; tiered by monthly carrier volume.^2
- **Pros:** Low entry price; network of pre-profiled carriers reduces friction; mobile-native.
- **Cons:** Compliance checks are relatively basic vs. Highway or RMIS; locked into DAT ecosystem; US-only.
- **SEA presence: NO**
- **Source note:** DAT.com product page and blog (vendor marketing — used to confirm product exists and pricing page); confirmed pricing via independent source (DAT blog post with specific dollar amount).

---

### Europe / EU

**Trans.eu**
- **What it does:** Europe's largest freight marketplace and carrier connectivity platform for forwarders. 25,000 active spot carriers verified before gaining access; automated document extraction and compliance scenario checks; 40,000+ users across 40+ European countries and Eurasia; carrier/haulier database of 21,000 entities across Europe, Eurasia, and Middle East.^18 Cuts manual carrier verification work by up to 50% (vendor claim).
- **Primary user:** Freight forwarders, 3PLs in Europe
- **Business model:** Subscription (exact pricing tier not publicly listed; free 24-hour trial for new accounts).^18
- **Pros:** Dominant European freight exchange with built-in carrier verification; auto-translation communicator; spans to Middle East / Eurasia.
- **Cons:** Not a standalone compliance platform — verification is embedded in the marketplace workflow; limited outside its geographic footprint.
- **SEA presence: NO** — European/Eurasian focus; no Asia presence identified.
- **Source note:** Trans.eu platform page (vendor marketing — product existence and user counts); GetApp/Capterra reviews (Tier 9 software review platforms).

**FreightValidate**
- **What it does:** Carrier and freight broker identity verification and vetting system. Serves shippers, carriers, freight brokers, load boards, and factoring companies; designed to ensure regulatory compliance and identify fraudulent or double-brokering threats. Appears to target both US and international markets.^19
- **Primary user:** Freight brokers, factoring companies, load boards
- **Business model:** Tiered SaaS; specific pricing not confirmed in open sources.
- **SEA presence: UNCLEAR — to validate.**
- **Source note:** FreightValidate.com (vendor marketing — product existence only); CargoRex listing (Tier 9).

[ASSUMED-1]: FreightValidate operates primarily in North America despite its non-US-centric branding.
- to validate: Ask FreightValidate sales team which regulatory data sources they connect to internationally; specifically ask whether they have carrier-database coverage in SEA/ASEAN.

---

### India

**Vahak**
- **What it does:** India's largest truck-booking marketplace. 10 lakh+ GST and Aadhaar-verified carriers across 28 states; document checks include vehicle RC & permits, GST & Business ID, driver KYC & mobile verification.^20 Over 1.5 million shippers and transporters registered; 8 lakh+ verified trucks; 20,000+ daily active loads.
- **Primary user:** Shippers and transporters in India
- **Business model:** Marketplace commission; verification is platform feature, not standalone product.
- **Funding:** $25.9M total over 5 rounds; latest Series A closed June 2022 (Nexus Venture Partners).^20
- **Pros:** Massive scale in Indian trucking; government ID database integration (Aadhaar, GST); mobile-native for owner-operators.
- **Cons:** India-only; verification uses government databases (Aadhaar/VAHAN) which are India-specific; not a compliance-monitoring platform (point-in-time registration check only).
- **SEA presence: NO** — India-only.
- **Source note:** Tracxn (Tier 9 startup data); IT Logistics News (Series A, Tier 9 trade press); Vahak.in (vendor marketing — product description only).

**RoaDo (Roado)**
- **What it does:** Enterprise Freight Operating System for B2B manufacturers in India. Integrates with VAHAN (India's national vehicle registration database) and GSTN to automatically verify vehicle fitness, permits, and GST compliance before a load is assigned. Automates 90% of compliance work; trusted by 650+ enterprises managing ₹50,000 Cr+ ($6B+) monthly GMV.^21 VAHAN integration means vehicle fitness and permit checks run automatically before load assignment.
- **Primary user:** Enterprise shippers (manufacturers, FMCG) in India
- **Business model:** SaaS platform subscription; specific pricing not published.
- **Pros:** Government database integration (VAHAN, GSTN) meaningful for India's regulatory context; handles E-Way Bill and GST reconciliation alongside compliance.
- **Cons:** India-specific regulatory integrations not exportable; not a dedicated carrier-vetting product; compliance is a module within broader freight OS.
- **SEA presence: NO** — India-only product.
- **Source note:** RoaDo.co.in product pages and blog (vendor marketing — used to confirm product exists and VAHAN integration).

[ASSUMED-2]: Locus.sh's transporter management module includes carrier compliance monitoring for India-based enterprise shippers (Unilever, Nestlé, Siam Makro cited as customers).
- to validate: Ask Locus.sh whether their transporter compliance module is used for carrier vetting pre-dispatch vs. ongoing contract management only; ask for SEA customer references.

---

### China

**Full Truck Alliance (Manbang / YMM)**
- **What it does:** China's largest digital freight platform by gross transaction value ($27.2B GMV in 2020); connected 70% of trucks on arterial roads and 80% of logistics firms nationally.^22 Trucker identity verification and business registration checks are platform entry requirements, built into registration rather than offered as standalone product. Government cybersecurity review (2021) halted new user registration temporarily, highlighting that state authorities control carrier data in China.
- **Primary user:** Shippers and truckers in China
- **Business model:** Transaction fee on matched loads; registration verification is embedded.
- **Pros:** Unmatched scale in China (over 7.6M registered users at filing).
- **Cons:** Chinese regulatory environment limits data portability and international applicability; subject to Cyberspace Administration of China oversight; listed NYSE (YMM) but operations entirely China-domestic.
- **SEA presence: NO** — China-domestic platform.
- **Source note:** FreightWaves cybersecurity probe (Tier 9 trade press); SCMP IPO coverage (Tier 9 trade press); CBInsights company profile (Tier 9).

[ASSUMED-3]: No dedicated carrier-vetting SaaS platform exists in China separate from the large freight marketplace platforms (FTA, Manbang); compliance is embedded in marketplace registration, not sold standalone.
- to validate: Engage logistics tech analysts at Roland Berger Shanghai or BCG Beijing for confirmation; check if any compliance-tech startups have emerged post-FTA regulatory crackdown.

---

### Southeast Asia (Singapore, Indonesia, Thailand, Malaysia)

No dedicated carrier-vetting or transporter-onboarding compliance platform specific to SEA was identified in open-source research. Locus.sh (India-origin, 30+ countries) and Descartes (global) have TMS/carrier management modules used in SEA, but these are not focused on the pre-dispatch vetting use case.

**Data gap — SEA-specific carrier vetting platform:** No named solution with a primary SEA focus, SEA-regulatory-database integration, or SEA-country-specific user base was found. This is a whitespace finding consistent with WH1.

[ASSUMED-4]: SEA logistics operators (3PLs, freight forwarders) currently vet sub-carriers manually using phone calls, WhatsApp, and informal reference networks — the same pattern that predated Highway/RMIS in the US circa 2018.
- to validate: Interview 5+ freight forwarders in Singapore and Indonesia; ask specifically whether they have any digital tool for carrier registration/license verification; ask about OGIS/LTA database usage in Singapore and Kemenhub data in Indonesia.

---

## Manual Workarounds in Active Use

Manual workarounds are the dominant "carrier vetting system" for small and mid-size brokers, 3PLs, and nearly all SEA operators. They are a first-class category per the research brief.

**1. FMCSA SAFER Web one-at-a-time lookups (USA)**
The US Federal Motor Carrier Safety Administration's SAFER Web portal allows free, ad-hoc queries of carrier safety data — one carrier at a time — by DOT number, MC number, or company name.^23 Widely used by small brokers and shippers who cannot afford subscription compliance platforms. Limitation: point-in-time check (no monitoring); no identity verification; no insurance certificate tracking; cannot detect MC number hijacking.

**2. Email-and-fax COI collection loops**
The pre-digital standard for insurance certificate collection: broker emails carrier requesting COI; carrier faxes or emails a PDF; broker manually reviews coverage amounts, effective dates, and named insured. Takes 35–45 minutes per carrier per new engagement at volume.^1 Still dominant in smaller brokerages and almost universal in SEA and emerging markets. Failure mode: expired certificates, altered documents, no monitoring for cancellation.

**3. Phone-call reference checks**
Brokers call prior customers or shippers listed by the carrier. Unreliable: references are self-selected; fraudulent carriers provide fake references; no standardized question set. Still the primary vetting mechanism for sub-carriers in SEA where no regulatory database equivalent to FMCSA exists.

[ASSUMED-5]: Phone-call reference checks remain the primary carrier vetting mechanism for 3PLs and freight forwarders in Indonesia, Thailand, and Malaysia, used even by mid-size operators managing 100+ carrier relationships.
- to validate: Ask 3-5 logistics operations managers in Indonesia and Thailand: "How do you verify a new transporter before giving them a load? Walk me through the last time you onboarded a new sub-carrier."

**4. WhatsApp and Telegram groups for carrier sharing**
Industry-specific WhatsApp/Telegram groups where shippers, brokers, and logistics staff share informal "blacklists" and positive carrier recommendations. Widespread in India (trucking dispatch circles) and SEA. Advantages: real-time peer-signal without platform subscription cost. Disadvantages: unstructured, unverifiable, subject to misinformation and competitive manipulation; no audit trail; GDPR/PDPA non-compliant for personal carrier data sharing.

[ASSUMED-6]: WhatsApp-based carrier blacklisting and recommendation groups exist and are actively used by logistics dispatchers in Indonesia and Thailand at both shipper and transporter levels.
- to validate: Ask dispatchers directly; cross-reference with Strait Times / Bisnis Indonesia reporting on logistics digitalization.

**5. Spreadsheet-based carrier master lists**
Excel or Google Sheets tracking carrier MC number, insurance expiry, contact details, and subjective performance notes. Maintained manually by operations teams; no automated monitoring for compliance changes. Breaks down at scale (100+ carriers) as updates fall behind. Near-universal in small logistics operations globally. Some operators add a manual calendar reminder to recheck insurance 30 days before expiry.

**6. Paper carrier qualification packets**
Pre-digital version of the digital "carrier packet." Carrier fills out a paper form, signs a broker-carrier agreement in wet ink, faxes or mails back. Still used by some smaller US carriers who are not onboarded to digital platforms, and by carrier-agent relationships in South and Southeast Asia where document infrastructure varies.

---

## Preliminary Pain Points (this stage — linked to WH1)

1. **MC number / operating authority hijacking is systematic and accelerating** — fraudsters buy dormant MC numbers with clean histories, make unauthorized contact changes on FMCSA records, and operate for weeks before detection. In 2024, ~4,000 reported cargo theft incidents in North America, up 27% YoY; strategic identity-theft-based theft rose 1,475% from 2022–2024.^24^,^25 Standard compliance checks (FMCSA authority lookup) do not detect this.

2. **Insurance certificates are point-in-time, not real-time** — a carrier can present a valid COI at onboarding and cancel coverage the next day. Without continuous monitoring (via platforms like RMIS, Highway), shippers and brokers have no notice of cancellation until a claim is filed — at which point the cargo owner is uninsured.

3. **35–45 minutes of manual labor per carrier onboarding at volume** — each new carrier requires verifying FMCSA authority, chasing insurance docs, executing the broker-carrier agreement, and entering data into the TMS; at scale this pulls ops headcount away from revenue-generating dispatch.^1

4. **No FMCSA equivalent in SEA means no structured vetting baseline** — unlike the US where FMCSA data provides a minimum verification floor, SEA countries have no single, accessible, machine-readable carrier registry. Transporters may hold national vehicle registration (e.g., VAHAN in India; LTO in Philippines; LTA in Singapore) but cross-border equivalence and digital API access vary dramatically. This makes systematic carrier vetting structurally infeasible without a data aggregation layer.

5. **Small carriers and owner-operators are structurally excluded from digital onboarding platforms** — Highway, RMIS, and MyCarrierPortal require the carrier to complete a digital process; owner-operators without email, smartphones, or English literacy cannot self-onboard. The long tail of the carrier market (the majority of SEA road freight is moved by owner-operators with 1–5 trucks) is therefore systematically under-vetted.

6. **Beneficial ownership of carrier entities is opaque, especially at the small-transporter tier** — a carrier MC number may be registered to a shell entity; actual beneficial ownership and ultimate controlling party are not required by FMCSA to be publicly disclosed. In emerging markets (India, Indonesia) where nominee ownership structures are common, brokers and shippers have no systematic way to verify who actually controls the truck. Highway's identity checks begin to address this in the US; no equivalent exists in SEA.

7. **Average freight fraud cost to a broker is ~$400,000/year ($41,000/load)** per TIA 2024 survey, with 70% of TIA members spending 2+ hours daily on fraud prevention alone.^26 This represents a direct cost floor that compliance software can undercut to justify ROI.

8. **Carrier blacklists are fragmented and legally risky** — Carrier411's FreightGuard is the primary cross-broker blacklist; legal experts have warned that once a FreightGuard is posted, brokers face open-ended tort liability with no way to mitigate damages from false reporting.^14 This chilling effect means incidents go unreported, reducing the signal quality of shared fraud databases.

9. **Double brokering is invisible to most pre-dispatch tools** — standard compliance platforms verify that a carrier is legitimate; they do not detect when a legitimate carrier receives a load and re-tenders it to a second carrier without the shipper's knowledge. Highway's real-time identity check at pickup (not just onboarding) specifically addresses this, but coverage is limited to brokers on Highway's network.

10. **Verification that "passed" at onboarding goes stale rapidly** — a carrier onboarded with valid authority and insurance in January may lose coverage or have authority suspended by March. Without continuous monitoring, the shipper/broker's approved-carrier list becomes a liability as it ages. Most manual processes re-check only at the next time the carrier is used, not proactively.

11. **No cross-border carrier vetting standard exists** — a European forwarder subcontracting to a Polish carrier crosses no single regulatory database; trans-ASEAN trucking involves multiple national vehicle registries, trade licenses, and ASEAN inter-state transport permits (AFAFGIT). No platform currently aggregates cross-ASEAN carrier data for vetting purposes.

[ASSUMED-7]: Small 3PLs in Singapore and Indonesia perform carrier vetting via a 1–2 item checklist (company registration + casual reference check) taking under 10 minutes, with no insurance verification or beneficial-ownership check.
- to validate: Ask compliance officers at Singapore-based 3PLs (e.g., CWT, YCH, Bollore Logistics) what their carrier qualification process looks like for new sub-contractors.

12. **KYC for financial fraud (AML) and KYC for operational safety are treated as separate problems** — factoring companies and payment platforms (e.g., Triumph, Denim) run their own carrier financial KYC; freight compliance platforms run operational KYC (authority, insurance, safety). These two data streams are rarely shared, leaving a gap where a carrier passes one check and fails the other without either party knowing.

---

## Sources for this Stage

(1) DAT Resources, "Best practices for carrier onboarding: What every broker should know" — https://www.dat.com/resources/carrier-onboarding-guide (trade press / vendor — Tier 9; used for 35-45 min manual onboarding time figure)

(2) DAT Blog, "New Carrier Onboarding Software: Fast, Accurate, 100% Mobile" — https://www.dat.com/blog/new-carrier-onboarding-software-fast-accurate-100-mobile (vendor marketing — used to confirm DAT OnBoard pricing: $50/month base)

(3) BrokerPro Integration Partner page, "Highway for Freight Fraud Prevention" — https://www.brokerpro.com/integrations/partners/highway/ (trade press / vendor partner — Tier 9; used for $349/month Highway entry price via AscendTMS)

(4) FreightWaves, "Carrier411 strives to protect brokers from unsafe carriers" — https://www.freightwaves.com/news/carrier411-strives-to-protect-brokers-from-unsafe-carriers (trade press — Tier 9; used for 18-20 data sources, 3,000+ subscriber claim, 97 of 100 top broker claim)

(5) MarketIntelo / Growth Market Reports, "Carrier Onboarding and Compliance Platform Market Research Report 2033" — https://growthmarketreports.com/report/carrier-onboarding-and-compliance-platform-market (Tier 9 market research; confidence: Low; used for global $1.54B–1.62B market size and APAC $340M figure; no methodology disclosed)

(6) Dataintelo, "Carrier Onboarding Platform Market Research Report 2033" — https://dataintelo.com/report/carrier-onboarding-platform-market (Tier 9 market research; confidence: Low; cross-reference for CAGR range and APAC growth rate; likely shares primary source with (5))

(7) Verified Market Research / MarkWide Research, "Global Freight Broker Software Market 2024–2032" — https://markwideresearch.com/global-freight-broker-software-market/ (Tier 9 market research; confidence: Low; broader market including TMS, rate tools, compliance)

(8) FreightWaves, "Highway secures investment for carrier fraud platform" (Mary O'Connell, August 2025) — https://www.freightwaves.com/news/carrier-identity-platform (trade press — Tier 9; used for 1,050+ broker customers, 915,000 fraud attempts blocked, 70 of top 100 brokers)

(9) FreightWaves, "Highway launches Trusted Freight Exchange to counter fraud" — https://www.freightwaves.com/news/highway-launches-trusted-freight-exchange-to-counter-fraud-and-improve-transparency (trade press — Tier 9)

(10) Carrier Atlas, "Carrier Onboarding Tools for Freight Brokers — Overview & Comparison" — https://carrieratlas.com/carrier-packets.php (trade press / industry comparison site — Tier 9; used for platform feature summaries and pricing range $50–$500/seat/month)

(11) GlobeNewswire (Descartes Systems Group), "Descartes Acquires MyCarrierPortal" (September 18, 2024) — https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html (Tier 3 — company press release via wire service; used for $24M upfront + $6M earn-out acquisition price, product description, KYC framing quote from Dan Cicerchi)

(12) G2 / Capterra, Descartes MyCarrierPortal Reviews — https://www.g2.com/products/descartes-mycarrierportal/reviews (Tier 9; used only for customer quote "reasonably priced")

(13) Tekpon, "Truckstop RMIS Reviews 2025: Pricing & Features" — https://tekpon.com/software/truckstop-rmis/reviews/ (Tier 9; used for RMIS Lite $340/month pricing)

(14) Overdrive, "Carrier411 FreightGuard changes spark legal concerns" — https://www.overdriveonline.com/business/article/15705912/carrier411-makes-big-changes-to-its-freightguard-carrier-reports (trade press — Tier 9; used for legal liability warning re FreightGuard)

(15) Carrier Assure / Descartes MyCarrierPortal partner page — https://www.mycarrierportal.com/partners/carrier-assure/ (vendor marketing — product existence and partnership only)

(16) FreightWaves, "Overhaul's FraudWatch: a new paradigm in freight fraud prevention" — https://www.freightwaves.com/news/overhauls-fraudwatch-a-new-paradigm-in-the-freight-industry (trade press — Tier 9; used for 14% flagged, 7% bad actors, 12% no FMCSA authority statistics)

(17) TechCrunch, "Overhaul raises another $55M to help companies like Dyson and Microsoft fight supply chain theft" (January 2025) — https://techcrunch.com/2025/01/10/overhaul-keeps-tabs-on-cargo-for-customers-like-microsoft-and-dyson/ (Tier 9 tech press; used for 350+ customers, named customers Microsoft/Dyson/BMS, $1.4T in cargo safeguarded)

(18) Trans.eu platform page — https://enterprise.trans.eu/en/ (vendor marketing — product existence; user count 40,000+ cited from multiple review sources; 25,000 spot carriers from GetApp)

(19) FreightValidate.com About page — https://freightvalidate.com/aboutus (vendor marketing — product existence and stated user types only)

(20) Tracxn / IT Logistics News, Vahak company profile and Series A — https://tracxn.com/d/companies/vahak/__kH8ZPvIabkMrvJSC4Zmw7YXo_vlHlrIzYnU97NUHP2c and https://www.itln.in/supply-chain/vahak-loads-up-14m-series-a-funding-led-by-nexus-venture-partners-1345739 (Tier 9; used for user scale, document verification types, funding)

(21) RoaDo.co.in blog, "Carrier Onboarding Process: A Step-by-Step Checklist" — https://roado.co.in/blog/carrier-onboarding-process-the-complete-checklist-for-logistics-managers/ (vendor marketing; VAHAN integration confirmed)

(22) South China Morning Post, "Full Truck, China's 'Uber for trucks', to raise US$1.57 billion in US listing" — https://www.scmp.com/business/banking-finance/article/3137463/full-truck-chinas-uber-trucks-raise-us157-billion-us (Tier 9 trade press; used for GMV figure and market penetration stats from IPO prospectus)

(23) FMCSA SAFER Web — https://safer.fmcsa.dot.gov/ (Tier 1 — US government source; used to confirm free one-at-a-time manual lookup tool exists)

(24) Commercial Carrier Journal, "Fraudulent freight activity increased by 27% in 2024" — https://www.ccjdigital.com/technology/cybersecurity/article/15745983/fraudulent-freight-activity-increased-by-27-in-2024 (trade press — Tier 9; used for 27% increase YoY and 3,625 incidents)

(25) Trucking Info, "Cargo Theft's New Playbook: Strategic Fraud, Double Brokering, and Cybercrime Hit Trucking" — https://www.truckinginfo.com/digital-cover-features/cargo-thefts-new-playbook-strategic-fraud-double-brokering-and-cybercrime-hit-trucking (trade press — Tier 9; used for 1,475% strategic theft rise 2022-2024)

(26) FreightCaviar / TIA 2024 Freight Fraud Report, "An average of $400,000 in losses" — https://www.freightcaviar.com/tia-2024-freight-fraud-report-an-average-of-400-000-in-losses/ (Tier 6 — TIA is an industry association; used for $400K average annual loss per company, $41K per load, 70% spending 2+ hours/day on fraud prevention)

(27) Gartner, "Gartner Forecasts Supply Chain Management Software With Agentic AI Will Grow to $53 Billion in Spend by 2030" — https://www.gartner.com/en/newsroom/press-releases/2026-04-07-gartner-forecasts-supply-chain-management-software-with-agentic-ai-will-grow-to-53-billion-in-spend-by-2030 [NEEDS-ATTENDED-FETCH] (Tier 1 — Gartner press release; HTTP 403 on automated fetch; used for $33.4B global SCM software market 2024 + 12.4% YoY growth + agentic-AI sub-segment trajectory from <$2B in 2025 to $53B by 2030). Supplementary Gartner Market Share: SCM Software Worldwide 2024 paywalled document — https://www.gartner.com/en/documents/6530302 [NEEDS-ATTENDED-FETCH]

(28) GlobeNewswire (Descartes Systems Group), "Descartes Acquires MyCarrierPortal" (September 18, 2024) — https://www.globenewswire.com/news-release/2024/09/18/2948080/0/en/Descartes-Acquires-MyCarrierPortal.html (Tier 3 — company press release via wire service; used as best transaction-based anchor for carrier onboarding sub-market: $24M upfront + up to $6M earn-out implies MCP trailing revenue in low-to-mid single-digit millions at 3–6x SaaS ARR multiple; refines the dropped $1.54B–$1.62B aggregator figure). Note: same press release also cited at footnote 11.

---

## Assumptions to Validate

[ASSUMED-1]: FreightValidate operates primarily in North America despite its non-US-centric branding.
- to validate: Ask FreightValidate sales team which regulatory data sources they connect to internationally; specifically ask whether they have carrier-database coverage in SEA/ASEAN.

[ASSUMED-2]: Locus.sh's transporter management module includes carrier compliance monitoring for India-based enterprise shippers (Unilever, Nestlé, Siam Makro cited as customers).
- to validate: Ask Locus.sh whether their transporter compliance module is used for carrier vetting pre-dispatch vs. ongoing contract management only; ask for SEA customer references.

[ASSUMED-3]: No dedicated carrier-vetting SaaS platform exists in China separate from the large freight marketplace platforms (FTA, Manbang); compliance is embedded in marketplace registration, not sold standalone.
- to validate: Engage logistics tech analysts at Roland Berger Shanghai or BCG Beijing for confirmation; check if any compliance-tech startups have emerged post-FTA regulatory crackdown.

[ASSUMED-4]: SEA logistics operators (3PLs, freight forwarders) currently vet sub-carriers manually using phone calls, WhatsApp, and informal reference networks — the same pattern that predated Highway/RMIS in the US circa 2018.
- to validate: Interview 5+ freight forwarders in Singapore and Indonesia; ask specifically whether they have any digital tool for carrier registration/license verification; ask about OGIS/LTA database usage in Singapore and Kemenhub data in Indonesia.

[ASSUMED-5]: Phone-call reference checks remain the primary carrier vetting mechanism for 3PLs and freight forwarders in Indonesia, Thailand, and Malaysia, used even by mid-size operators managing 100+ carrier relationships.
- to validate: Ask 3-5 logistics operations managers in Indonesia and Thailand: "How do you verify a new transporter before giving them a load? Walk me through the last time you onboarded a new sub-carrier."

[ASSUMED-6]: WhatsApp-based carrier blacklisting and recommendation groups exist and are actively used by logistics dispatchers in Indonesia and Thailand at both shipper and transporter levels.
- to validate: Ask dispatchers directly; cross-reference with Strait Times / Bisnis Indonesia reporting on logistics digitalization.

[ASSUMED-7]: Small 3PLs in Singapore and Indonesia perform carrier vetting via a 1–2 item checklist (company registration + casual reference check) taking under 10 minutes, with no insurance verification or beneficial-ownership check.
- to validate: Ask compliance officers at Singapore-based 3PLs (e.g., CWT, YCH, Bollore Logistics) what their carrier qualification process looks like for new sub-contractors.

---

## NEEDS-ATTENDED-FETCH Tags

The following URLs returned paywalled, anti-bot, or empty content during this pass and should be re-attempted in Phase 2 Playwright mode:

- [NEEDS-ATTENDED-FETCH]: https://www.mckinsey.com/capabilities/operations/our-insights/supply-chain-risk-management-is-back (McKinsey — blocked)
- [NEEDS-ATTENDED-FETCH]: https://www.bcg.com/publications/2025/whats-keeping-logistics-leaders-on-their-toes (BCG 2025 logistics survey — blocked)
- [NEEDS-ATTENDED-FETCH]: https://www.mordorintelligence.com/industry-reports/freight-brokerage-services-market (Mordor Intelligence freight brokerage market — paywalled)
- [NEEDS-ATTENDED-FETCH]: https://www.verifiedmarketresearch.com/product/freight-broker-software-market/ (Verified Market Research freight broker software — paywalled)
- [NEEDS-ATTENDED-FETCH]: https://growthmarketreports.com/report/carrier-onboarding-and-compliance-platform-market (Growth Market Reports carrier onboarding — paywalled; methodology needed to assess confidence)
- [NEEDS-ATTENDED-FETCH]: https://news.tianet.org/2024-tia-framework-to-combat-fraud/ (TIA 2024 Framework — requires TIA member login)
- [NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/newsroom/press-releases/2026-04-07-gartner-forecasts-supply-chain-management-software-with-agentic-ai-will-grow-to-53-billion-in-spend-by-2030 (Gartner SCM software press release — HTTP 403)
- [NEEDS-ATTENDED-FETCH]: https://www.gartner.com/en/documents/6530302 (Gartner Market Share: SCM Software Worldwide 2024 — paywalled)
- [NEEDS-ATTENDED-FETCH]: https://www.sec.gov/Archives/edgar/data/0001050140/000110465924050087/tm242227d1_40f.htm (Descartes 40-F FY2024 SEC filing — automated access blocked)

