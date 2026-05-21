# Cross-Stage Observations — Logistics Risk Management Solutions Worldwide

Run ID: 2026-05-20-1124
Date: 2026-05-20
Stages mapped: 6 (pre-dispatch → dispatch → in-transit → handoffs → delivery → post-incident)

## 1. SEA whitespace map — where global solutions don't reach

| Stage | Global solution category | SEA-specific equivalent | Whitespace severity |
|---|---|---|---|
| 1 Pre-dispatch | Highway, MyCarrierPortal, Carrier411, RMIS | **None** — no FMCSA-equivalent data; no commercial carrier-vetting SaaS | **High** — entire category absent |
| 2 Dispatch | Loadsure / Parsyl insurance-at-tender; Highway fraud scoring at TMS | **None** integrated at SEA-platform tier | High |
| 3 In-transit (RTTVP) | project44, FourKites, Shippeo, Wakeo | **None** — no SEA-native RTTVP product; Berg Insight 17.5% telematics penetration | **High** |
| 3 In-transit (cold-chain IoT) | Tive, Sensitech, Roambee, Controlant, ELPRO | Roambee has limited SEA ops via MDI Ventures (Indonesia); no Tive/Sensitech SEA distributor confirmed | Medium |
| 4 Handoffs (control tower) | project44 Movement, FourKites Premier Carrier, Descartes GLN, SAP Business Network | **CrimsonLogic / GeTS (Singapore)** mature for customs orchestration; carrier-tier handoff visibility absent below 3PL | Mixed — customs solved, carrier gap open |
| 5 Delivery (POD) | DispatchTrack, Onfleet, Bringg | **Locus (acquired by Ingka/IKEA Oct 2025)** strong in SEA prior to acquisition; GreenMile LATAM-strong | Medium — Locus exit reshapes the field |
| 5 Delivery (security) | Securitas Ibero-America, Allied Universal/G4S (LATAM); Verkada (yards) | **PT Garda Bangsa, Titan Force, PT Sigap Prima Astrea** — Indonesian/Malaysian operators exist but no TMS/RTTVP integration | High |
| 6 Post-incident (insurance) | Tokio Marine, MSIG, Sompo Asia — traditional cargo policies | Tokio Marine, MSIG, Sompo present in SEA | Saturated for traditional |
| 6 Post-incident (parametric & telematics-native) | Loadsure, Parsyl, Nirvana, Cover Genius | **Zero** commercial deployment in Indonesia, Malaysia, Thailand | **Critical whitespace — the venture wedge** |

**Conclusion:** the post-incident parametric / telematics-native insurance layer (Stage 6) is the largest unaddressed whitespace in SEA. Tokio Marine has the infrastructure, licenses, claims data, **and a CVC investment in Nirvana (the leading US telematics-native trucking insurer at $1.5B post-money, $262M raised)** but no SEA-native parametric cargo product as of May 2026. This is the structurally sharpest wedge for a Tokio Marine + ID&E + Wright venture.

## 2. Working-hypothesis test results

| WH | Working hypothesis (from input) | Outcome | Strongest evidence |
|---|---|---|---|
| WH1 | Vendor-procurement blind spots — sub-carrier tier vetted with spreadsheets | **EVIDENCED** | TIA State of Fraud Apr 2025: 22% of brokers lost >$200K to fraud in 6 mo; Highway built first commercial layer over FMCSA SAFER data; covers only 1,050 of ~13,000 active US brokers |
| WH2 | RTTVPs see shipper-tendered loads but signal collapses at sub-carrier handoff | **EVIDENCED** | McKinsey Risk Pulse 2025: only 42% of organizations reach Tier 2 visibility (95% prioritize it); project44's own carrier network has <2% high-compliance carriers per its Premier Carrier Program data |
| WH3 | IoT cargo sensors are point-deployed, data siloed to buyer | **EVIDENCED** | Parsyl Data Partner Program (March 2024) is the ONLY commercial attempt to bridge insurer-sensor data gap; no equivalent at Lloyd's, AIG, Swiss Re, Zurich |
| WH4 | Incident response is reactive and slow | **EVIDENCED** | Time-to-FNOL averages 6-12 hours in US, est. 12-24 hours in SEA; insurtech compressed claims settlement from 120 days to hours but binding constraint is detection, not payout |
| WH5 | Risk and insurance pricing disconnected from journey data | **EVIDENCED** | Telematics-native cargo pricing exists only in US (Nirvana $1.5B, Samsara Marketplace); Lloyd's has only 2 confirmed IoT-linked cargo products (Parsyl, Munich Re concept); zero SEA insurers price cargo on journey data |

All five working hypotheses are evidenced. Two surfaced surprises:

- **NEW: Montgomery v. Caribe Transport II (US Supreme Court, May 14, 2026)** removed federal preemption shield protecting brokers from negligent-hiring suits. Turns carrier vetting from operational practice into legal requirement — single largest structural change in the US carrier-vetting landscape in a decade.
- **NEW: BSI/TT Club April 2026 report** documents 281% YoY surge in Strait of Malacca and Singapore piracy in H1 2025 (21 → 80 incidents in SOMS corridor), corroborated by ReCAAP ISC Annual Report 2025. SEA maritime piracy now at 19-year high — direct relevance to a Tokio Marine SEA cargo venture.

## 3. Patterns in business models across the stack

| Business model | Stages where present | Examples | SEA-translatable? |
|---|---|---|---|
| SaaS per-seat | 1, 2, 4 | Highway, project44, McLeod, MercuryGate | Hard — small SEA carriers can't absorb |
| Hardware + SaaS | 3, 5 | Samsara, Motive, Tive, Roambee, OnAsset | Partial — Cartrack, basic GPS sub-models do |
| Per-shipment | 1 (vetting checks), 3 (Tive Solo), 6 (Loadsure, Parsyl) | Loadsure, Parsyl, Tive | **Yes — best fit for SEA market structure** |
| Commission / take-rate | 2 | Uber Freight, Loadsmart, Convoy (defunct), Kargo, Deliveree | Yes |
| Embedded insurance | 2, 6 | Cover Genius, Bolttech | Yes — Bolttech is SEA-native |
| Mutual / member-paid | 6 | TT Club | Limited — needs broker collective |
| Hardware lease + service | 5 | Apollo Shield, Lojack/Spireon (LATAM) | Possible — security services already exist in SEA |

**Pattern:** per-shipment, embedded, and commission models translate to SEA. Per-seat SaaS does not. A Tokio Marine + Wright venture should default to per-shipment + embedded.

## 4. The four observed market gates that suppress adoption

1. **No SEA carrier data layer** — no FMCSA-equivalent registry with safety scoring, no commercial vendor has built a substitute. Any vetting product hitting SEA will need to build the data layer itself or partner with national regulators.
2. **Fragmented telematics, no ELD mandate in any ASEAN country** — Berg Insight 17.5% penetration; Samsara/Motive absent. Any telematics-native cargo insurance product needs to either bring its own hardware (per-shipment trackers like Tive) or integrate with the basic-GPS layer dominant in SEA (Cartrack, TransTRACK, Jimi IoT).
3. **Subrogation chain breakdown across sub-carrier tier** — when the small SEA carrier causes loss, the insurer's right of subrogation is effectively unenforceable. Solving this requires either (a) data-rich vetting that prevents tendering to high-risk carriers OR (b) a per-shipment pricing model that internalizes the risk into premium.
4. **No SEA recovery network** — CargoNet US, Apollo Shield LATAM; SEA has no analog. Theft losses become total losses. A venture that ships parametric coverage AND deploys per-shipment trackers reduces the recovery-network dependency.

## 5. Field validation priorities (top 12 questions for interview phase)

1. [Interview Tokio Marine SEA cargo head] — what cargo insurance product mix do they currently offer in Indonesia, Malaysia, Thailand, Singapore? What % is per-shipment vs. annual policy?
2. [Interview Tokio Marine Future Fund] — has the Nirvana investment generated any SEA product roadmap or pilot? Is there internal sponsorship for an SEA expansion?
3. [Interview Nirvana product] — has the US telematics-native model been evaluated for SEA? What are the data-layer blockers?
4. [Interview Parsyl] — would they extend ColdCover (parametric cold-chain) into SEA if a local insurance partner provided licensing?
5. [Interview Loadsure / Breeze] — do they have SEA expansion ambitions, or is SEA out of scope due to regulatory friction?
6. [Interview ID&E Tokyo team] — what is the role of ID&E in the proposed venture? Operating partner? Capital? Co-distribution?
7. [Interview top SEA 3PL — DHL Indonesia, K+N SG, DB Schenker MY] — would they integrate a third-party telematics-native cargo product into their TMS at tender? What's the spread they'd accept?
8. [Interview Indonesia ALFI / freight forwarder association] — verification of NLE digital-logistics direction and any pending POD regulation; what is the realistic regulator timeline?
9. [Interview Singapore IRAS / MAS Insurance Sandbox] — is parametric per-shipment cargo coverage permissible under MAS regs? What's the licensing path?
10. [Interview small Indonesian transporter — sub-50 trucks, Jakarta-Surabaya corridor] — what's their current insurance cover? Would they consent to a per-shipment IoT-priced rate?
11. [Interview Bolttech SEA] — would they consider co-distribution of a cargo product on their embedded platform?
12. [Interview Indonesian National Police / Polri freight crime unit] — primary cargo theft data not available publicly; what are real 2024/2025 figures and corridor breakdowns?

## 6. Citation diversity (across the corpus)

Distinct primary publishers cited at least once across all stages:
- **Government / multilateral:** FMCSA (US DOT), Supreme Court of the United States, OFAC, IUMI, World Bank, OECD, ASEAN Secretariat, US Mission to ASEAN, Vietnam MOIT, Singapore LTA, ReCAAP ISC, Singapore MAS
- **Industry associations:** TT Club, BSI Consulting, IUMI, ATA, TIA, Armstrong & Associates, NTC&Logistica (Brazil), ATRI
- **Audited filings:** Descartes (TSE/SEC 6-K + 40-F), E2open (8-K), Tokio Marine Holdings (TSE annual report), Samsara (S-1 + 10-K), Trimble (10-K)
- **Top consultancy firm imprint:** McKinsey (Supply Chain Risk Pulse 2025), Bain SEA reports
- **Vendor primary press releases (PRNewswire/GlobeNewswire/BusinessWire):** Nirvana, Cover Genius, Parsyl, Loadsure, Highway — used as primary for own funding/traction claims (auto-Low per rubric but accurate)
- **Trade press cross-validation:** FreightWaves, JOC, The Loadstar, Transport Topics, Lloyd's Loading List, Insurance Insider, TechCrunch
- **PDF sources (verified via markitdown):** IUMI Stats Report 2025, BSI/TT Club 2024 and 2025 Cargo Theft Reports, ReCAAP ISC Annual Report 2025, Munich Re 2025 Cargo Theft Tactics

Estimated unique URL count across all 6 stages: ~280-320 (target was 40-60; far exceeded). Estimated unique distinct publishers: ~150-180.

## 7. Gate decision

Cross-stage Low % estimate (post-remediation): **~56%** — within the 30-70% ship-with-flag band. The structural narrative spine is built on primary-source High-confidence material (FMCSA, BSI/TT Club PDFs, IUMI Stats Report 2025 PDF, ReCAAP ISC, McKinsey, audited corporate filings, Supreme Court ruling). The Low % is dominated by **irreducible categories**: vendor-marketing for own funding/traction (rubric auto-Low), aggregator market-research firms for SEA market size (no government substitute exists), and ASSUMED tags (15+ across the corpus, all field-validateable).

**Decision: SHIP WITH FLAG.** The corpus is publishable as research feedstock for the downstream Tokio Marine + ID&E venture pitch with explicit caveats on (a) SEA market sizing relying on aggregator estimates, (b) vendor-traction figures as self-reported, (c) 15 ASSUMED claims requiring field validation.
