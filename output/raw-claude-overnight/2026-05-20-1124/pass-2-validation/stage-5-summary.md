# Stage 5 Validation Summary — Pass 2
**Run:** 2026-05-20-1124
**Validated:** 2026-05-20
**Files:** `pass-1-drafts/stage-5-value-chain.md` + `pass-1-drafts/stage-5-pain-points.md`
**Validator:** Source Validator (per-stage context)

---

## Scoring Distribution

| Score | Count | Percent |
|---|---|---|
| High | 11 | 24% |
| Medium | 6 | 13% |
| Low | 29 | 63% |
| **Total claims scored** | **46** | |

**QUALITY-BAR.md target:** ≤30% Low, ≥25% High.
**Result:** 63% Low — materially below target. Re-run recommended.

---

## URL Sample Verification (5 URLs)

| # | URL | Claim | Result |
|---|---|---|---|
| S1 | truckingresearch.org/2025/10/... | ATRI $520K/carrier annual loss | CONFIRMED — figures verified across multiple independent pickups. Primary-association. |
| S2 | prnewswire.com (Overhaul H1 2024) | Facility theft 4%→19% H1 2023→H1 2024 | REACHABLE — but classified as vendor press release, not primary. Figures confirmed in trade press only; no independent primary cross-validation found. |
| S3 | sambasafety.com/blog/... | 70% fleets don't share telematics | PARTIAL CONFIRM — figures consistent (30% share = 70% do not). But single vendor-sponsored survey; n-count, methodology undisclosed. |
| S4 | blog.cfglobal.co/air-sea-and-tech-... | Indonesia ePOD mandatory Q3 2026, IDR 2.1T | CRITICAL FAIL — zero government corroboration found. No Kemenhub regulation, decree, or BPS source found. Single industry blog. Highest-priority deep-research target. |
| S5 | securitas.com/globalassets/...ar2024_eng.pdf | Securitas Ibero-America 9% of group sales | CONFIRMED — audited listed-company annual report. Solid primary-filing. |

---

## Override Triggers

| Override | Claims Affected | Claim IDs |
|---|---|---|
| Vendor-marketing override | 12 | VC13, VC19, VC21, VC24, PP1e, PP2a, PP2b, PP4a, PP4e, PP5a, PP5b (Lytx), VC8 |
| Aggregator market research auto-downgrade | 5 | VC1a, VC1b, VC7, VC9, VC25 |
| Trade-press-only override | 9 | VC4b, PP1d, PP1f, PP3a, PP3b, PP3c, PP4a, PP4c, PP5d |
| Single vendor data dependency | 4 | PP1c, PP1h, PP3e, PP3f |
| Chain-of-citations same originator | 4 | VC2, VC4a, PP3d, PP4c |
| Press-release-only | 5 | VC17, VC18, VC19, VC24, PP2a |
| Single-domain | 3 | PP4b, PP1h, PP3f |
| Outdated source (>3 years) | 2 | VC17 (2021), PP2f (2020-21) |
| APAC-as-proxy / Geography mismatch | 2 | VC25, PP5c |
| Draft over-scored | 3 | VC2 (High→Medium), VC3b (High→Low), VC4a (Medium→Low) |

---

## High-Confidence Anchors (score: High)

These claims are well-sourced and form the credible structural skeleton:

- **ATRI 2025** — $520K/carrier, $1.84M/LSP, $6.6B industry-wide annual theft costs (PP1a)
- **Verisk CargoNet 2024** — $202,364 average loss per incident; 3,625 incidents +27% YoY (PP1b, PP1i)
- **BSI/TT Club 2024 Cargo Theft Report** — facility theft 16% global; hijacking 21%; Brazil 68% of South America (VC3a, VC5, VC6, PP1g)
- **TIA State of Fraud April 2025** — 25% of brokers lost $200K+ in six months (PP2d)
- **Samsara Form 10-K FY2026** — $1.62B revenue, 98% SaaS (VC12)
- **Securitas AB Annual Report 2024** — Ibero-America segment 9% of group sales, MSEK 11,138 (VC16)
- **PowerFleet FY2025 IR results** — $362.5M revenue, 26% YoY, 75% SaaS (VC23)
- **Motorola Solutions investor relations** — $6.2B+ FY2024 revenue (VC22)

---

## Top 5 Weak Claims — Deep Research Priority

### Priority 1 (HIGH): PP2e — Indonesia ePOD mandate
**Claim:** Indonesia mandatory ePOD effective Q3 2026, IDR 2.1 trillion ($130M) annual fraud losses
**Source:** blog.cfglobal.co (single industry blog)
**Issue:** Zero government corroboration found. No Kemenhub regulation, ministerial decree, or BPS publication located in any search. The IDR 2.1 trillion figure and Q3 2026 deadline are unverified against any official Indonesian government source.
**Action:** Search kemenhub.go.id for Peraturan Menteri related to electronic delivery confirmation in road freight. Search in Indonesian: "bukti pengiriman elektronik peraturan kemenhub 2026". Check ASEAN Trade Repository and Indonesia Logistics Association (ALI / Asosiasi Logistik Indonesia).

### Priority 2 (HIGH): PP1h — Overhaul facility-theft trend (4%→19%→37%)
**Claim:** The trend sequence: facility theft = 4% of H1 2023 incidents → 19% of H1 2024 incidents → 37% of Q2 2025 incidents (most targeted location)
**Source:** Overhaul H1 2024 press release (prnewswire.com) + Overhaul Q2 2025 report (gated, over-haul.com)
**Issue:** The entire PP5.1 headline trend rests on a single vendor's proprietary data series. No CargoNet, NICB, or government source independently confirms the 4%→19%→37% US trajectory. Overhaul is a cargo security vendor with commercial interest in elevating facility-theft risk perception.
**Action:** Search Verisk CargoNet Q1/Q2 2025 location breakdown. Search NICB 2024/2025 cargo theft location data (nicb.org). Search ATRI 2025 research for location-specific breakdown. Any independent confirmation upgrades to Medium.

### Priority 3 (HIGH): VC4a / PP3e — Mexico cargo theft 24,000 incidents (Overhaul-only)
**Claim:** Mexico: ~24,000 cargo theft incidents in 2024, +16% YoY; 83.8% involved violence; Mexico State = 32% of incidents
**Source:** TT News citing Overhaul + Overhaul Mexico Annual Report 2024 (gated) — all trace to Overhaul as sole originator
**Issue:** User concern flagged "Mexico SCT figures" but no SCT (Secretaria de Comunicaciones y Transportes) source was found or cited. All Mexico frequency claims are Overhaul-proprietary with no Mexican government cross-validation. Violence percentage (83.8%) and state breakdown are also Overhaul-only.
**Action:** Search SSPC (Secretaria de Seguridad y Proteccion Ciudadana) for "robo de carga 2024 estadisticas". Search Guardia Nacional informe anual. Search CANACAR (national truck carrier chamber). Search INEGI transport crime statistics.

### Priority 4 (HIGH): VC3b — Brazil 81% hijacking (Overhaul-only)
**Claim:** 81% of Brazil cargo theft events in 2024 are armed hijackings
**Source:** Overhaul Brazil Annual Report 2024 (TAPA PDF) — single vendor source. Draft incorrectly marked High.
**Issue:** NTC&Logistica, the Brazilian industry association whose data anchors the Brazil incident count, publishes its own security reports. SENASP (Secretaria Nacional de Seguranca Publica) publishes national crime statistics by modality. Neither is cited for the hijacking-type breakdown.
**Action:** Search NTC&Logistica (ntclogistica.org.br) for "Anuario de Seguranca de Cargas 2024" or "roubo de carga modalidade". Search SENASP/Ministerio da Justica for cargo theft type statistics. Search ABRALOG for member survey data.

### Priority 5 (MEDIUM): PP4b — SambaSafety 70% telematics non-sharing
**Claim:** 70% of commercial fleets do not share telematics data with insurers; 79% report no one asked; 65% get better rates when they do share
**Source:** SambaSafety blog — single vendor-sponsored survey, n-count and methodology undisclosed
**Issue:** SambaSafety is a telematics risk vendor with commercial interest in promoting telematics data sharing with insurers. The survey is their own product. Sample frame, n, and methodology not disclosed in the citation.
**Action:** Search NAIC for commercial auto telematics data-sharing statistics. Search J.D. Power commercial fleet insurance study 2024/2025. Search Insurance Information Institute (iii.org) for telematics adoption. Search AM Best "telematics commercial auto" for any actuarial reference to the 70%/30% split.

---

## Draft Scoring Errors (corrections applied)

Three claims were scored higher in the draft than the rubric allows:

| Claim | Draft Score | Correct Score | Reason |
|---|---|---|---|
| VC2: Brazil 10,478 incidents/$221M | High | Medium | WLRN + Overhaul both cite NTC&Logistica secondhand — chain-of-citations, not direct primary access |
| VC3b: 81% Brazil hijacking | High | Low | Single Overhaul vendor report; no NTC&Logistica or SENASP corroboration |
| VC4a: Mexico 24,000 incidents | Medium | Low | TT News cites Overhaul; both trace to Overhaul as sole originator — single vendor source |

---

## Particular Concern Verdicts (per user request)

| Claim | Verdict |
|---|---|
| Brazil NTC&Logistica 10,478 incidents / $221M 2024 | Medium — NTC&Logistica is the originating primary-association source, but cited only via WLRN news and Overhaul/TAPA (both secondary intermediaries). Chain-of-citations reduces from High to Medium. Direct NTC&Logistica URL needed. |
| Mexico SCT figures (~24,000 / $368M) | Low — No SCT source cited; 24,000 figure is Overhaul-only via trade press; $368M is Circulo Logistico via Mexico Business News (single trade source). Draft misleadingly implies SCT government data. |
| Overhaul facility-theft trend 4%→19%→37% | Low — Entire trend is single-vendor (Overhaul) proprietary data. No independent validation from CargoNet, NICB, ATRI, or any government source. Highest structural risk in Stage 5. |
| ATRI $520K/carrier annual losses | High — Confirmed. ATRI is primary-association; October 2025 publication; figures confirmed across multiple independent trade coverage. |
| Indonesia ePOD mandate Q3 2026, IDR 2.1T | Low — CRITICAL. Single industry blog source. Zero government corroboration found. Highest-priority deep-research target. |
| SambaSafety 70% telematics non-sharing | Low — Single vendor-sponsored survey; n-count and methodology undisclosed; SambaSafety has commercial interest in finding. Figures are internally consistent (70% don't share = 30% do share) but unvalidated by independent source. |

---

## Gate Decision

**Recommendation: re-run-recommended**

Stage 5 scores 63% Low — more than double the QUALITY-BAR.md ceiling of 30%. The document has a credible skeleton of High-quality sources (ATRI, CargoNet, BSI/TT Club, Securitas AR, Samsara 10-K, TIA, PowerFleet IR), but the three core pain point cost/frequency claims are structurally underbuilt. The most urgent issues are: (1) the Indonesia ePOD regulatory claim which may be unverifiable or fabricated by a blog source, requiring a Kemenhub search; (2) the facility-theft trend which rests entirely on Overhaul's proprietary data series; and (3) Mexico cargo crime data for which Mexican government primary sources (SSPC, Guardia Nacional, CANACAR) were available but not located. A targeted deep-research pass on these five priorities, if successful, would raise the score distribution to approximately 30-35% High, 20-25% Medium, and 40-45% Low — approaching shippable with flags.
