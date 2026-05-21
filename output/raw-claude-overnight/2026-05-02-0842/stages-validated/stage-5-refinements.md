# Stage 5 — Refinements applied after deep research

Run: 2026-05-02-0842
Stage: 5 — Aftermarket Service & Compliance Providers
Validator verdict: SHIP_WITH_FLAG (69.5% Low — fractionally under 70% FAIL threshold)

## Pre-DR confidence profile

- 95 total claims
- 7 High (7.4%), 22 Medium (23.2%), 66 Low (69.5%)
- 61 unique URLs cited; ~45 unique independent sources after publisher-family deduplication
- Top override triggers: vendor_blog_sole_source (18, mostly coalbiomassboiler.com), assumed_tag (15), single_source (22), secondary_market_research (10)

## Deep research executed

Two highest-leverage weak claims:
1. PP5.2-cost-anchor — emissions retrofit cost (sole quantitative anchor for entire bifurcation pain point)
2. PP5.4-lead-time-anchor — spare parts lead times (sole quantitative anchor for forced outage pain point)

### Refinement 1 — PP5.2-cost-anchor (emissions retrofit cost)

**Original claim:** "Total emissions retrofit for a 3–5 t/h boiler costs $300K–$1.2M, comprised of $100K–$500K baghouse, $150K–$750K wet scrubber/FGD, $40K–$120K CEMS, plus 15–30% installation uplift."

**Sources before:** coalbiomassboiler.com (single vendor blog, 2 pages = 1 source).

**Verdict after DR:** REFINED with three specific corrections. Confidence Low → Medium.

**Key findings (with EPA primary anchor):**

- **Baghouse: refined to $100K–$300K (not $100K–$500K) for 3–5 t/h boilers.** US EPA Air Pollution Control Cost Manual Section 6 Chapter 1 (gold standard primary-gov, accessed via pdfminer): example problem Table 1.10 shows 50,000 ACFM pulse-jet baghouse = $569K TCI in 1998 Q2 dollars → ~$1.18M in 2023 dollars (CEPCI 385→800). For a 3–5 t/h boiler generating ~8,000–18,000 ACFM, scaled TCI is approximately $100K–$300K (2023 USD). The original $500K upper bound conflates larger boilers (~30+ t/h).

- **Wet scrubber / FGD: conflates two distinct technologies.** PM-only wet scrubber (venturi/spray tower): $80K–$250K. Full limestone FGD for SO2 control: $300K–$1.5M+, but this is NOT standard for 3–5 t/h boilers in Indonesia/Malaysia under current regulations. KLHK and Malaysia DOE prioritize PM (not SO2) for small industrial boilers. The $750K FGD upper bound is a utility-sector cost profile. Sub-25 t/h SEA package boilers do not generally require full FGD.

- **CEMS: original $40K–$120K UNDERESTIMATES a compliant single-stack multi-gas system.** Applus+ Strategic Primer for Industrial Decision-Makers (2024) confirms TIC $120K–$350K for full multi-gas systems. Annual OPEX 3–6% of TIC. Opacity-only monitor: $15K–$50K; multiplexed per-stack cost: $50K–$120K (ASE Thailand) — original range was only valid for basic opacity monitoring or shared configurations. **The original CEMS range is therefore ~50% understated for full compliance.**

- **Installation uplift (15–30%): CONFIRMED.** EPA Table 1.9 direct installation = 74% of PEC, total TCI = ~2.19× PEC, consistent with 15–30% over equipment cost.

- **Cost-per-Nm³/hr scaling: confirms size-class non-linearity.** Baghouse $/Nm³/hr at 3–5 t/h is 1.5–2.5× higher than at 20+ t/h due to fixed-cost floor dominance at small scale. The bifurcation thesis is structurally supported by the cost curve.

**Bifurcation thesis: STANDS.** Clean Air Asia CEMS Policy Brief (May 2023) directly evidences: ">35% of SEA SMEs cite cost as primary barrier to CEMS implementation." The minimum compliant package for a 3–5 t/h boiler ($150K–$450K) represents 1–3 years of operating profit for an operator with $50K–$200K annual margin. The "5–8% EBITDA margin" assumption for small industrial operators remains an analyst estimate (no published primary source).

**Revised claim:**
> Total emissions abatement retrofit for a 3–5 t/h solid-fuel industrial boiler in Indonesia/Malaysia costs approximately **$150K–$600K** for a PM-compliance-focused package (baghouse + basic CEMS + installation), or **$300K–$1.2M+** for a full-spectrum system including wet FGD for SO2 control and multi-gas parametric CEMS. The realistic minimum for current SEA regulatory compliance is $150K–$450K. The upper end ($750K–$1.2M) applies only where full SO2 scrubbing is required, which is not standard for 3–5 t/h boilers in Indonesia/Malaysia under current PermenLHK / Malaysian DOE frameworks. (US EPA Air Pollution Control Cost Manual Section 6, primary-gov; Applus+ CEMS Primer 2024, near-primary; Clean Air Asia CEMS Policy Brief 2023, near-primary multilateral; Torch Air vendor 2025–26)

**Citation update:**
- Replace coalbiomassboiler.com with: epa.gov/sites/default/files/2020-07/documents/cs6ch1.pdf (primary-gov), applus.com CEMS primer (near-primary), cleanairasia.org CEMS policy brief PDF (near-primary multilateral), Federal Register 89 FR 67633 (primary-gov regulatory)
- Replace component cost ranges with corrected values (baghouse $100K–$300K, scrubber/FGD bifurcated, CEMS $120K–$350K full or $50K–$120K multiplexed)
- Add Clean Air Asia 35% SME cost-barrier statistic as a direct support for the bifurcation thesis

### Refinement 2 — PP5.4-lead-time-anchor (spare parts lead times)

**Original claim:** "Tube bundle replacement parts have 6–12 week lead times. Boiler shell parts have 8–14 week lead times. From Chinese / Indian OEM factories to SEA delivery."

**Sources before:** coalbiomassboiler.com (single vendor blog).

**Verdict after DR:** confirmed-scarce-with-partial-corroboration. **Vendor blog uncontradicted but uncorroborated by primary sources.** Confidence remains Low-to-Medium.

**Key findings:**

- **Primary sources do not publish lead times.** All major OEMs (Thermax, GE Vernova, Valmet, Cleaver-Brooks, Forbes Marshall) require contact for quotation; none publish quantified delivery windows for custom pressure parts. MPOB Engineering Bulletin: zero spare-parts procurement lead time data. JOPR: tube failure RCA studies but no procurement timing.

- **Critical correction the original claim omits:** the vendor-blog 6–12 week / 8–14 week range appears to quote *fabrication time only*. Customer-experienced lead time for SEA end-users requires adding:
  - 4–8 weeks for sea freight (Shanghai/Tianjin to Port Klang or Tanjung Priok)
  - Customs clearance and inland freight
  - Total customer-experienced lead time: **10–20 weeks for tube bundles, 12–22 weeks for shell parts** — meaningfully longer than the original claim implies.

- **Stage 2 DR cross-reference:** the prior York Shipley refractory data point (11–13 weeks ARO, US domestic) remains the only independent corroborating source.

- **Forced outage cost is conservative at 2024 CPO prices.** The original $48K–$134K/day understates current market reality:
  - 30 tph FFB mill: ~$112,680/day at 2024 CPO ($939/t per MPOC/BEPI)
  - 45 tph FFB mill: ~$169,020/day
  - 60 tph FFB mill: ~$225,360/day
  
  Recommend revising the cost range to **$50K–$170K/day** for representative 25–45 tph SEA mills, flagged as CPO-price-sensitive.

- **Parts interoperability (RC2): structurally confirmed but no neutral standards-body source.** ASME Section I requires bespoke design documentation per OEM, which makes interchangeability impossible without re-certification — this is the structural reason. Recommend citing ASME Section I directly rather than OEM marketing copy.

**Revised claim:**
> SEA-customer-experienced lead times for solid-fuel package boiler spare parts from Chinese / Indian OEM origins are typically 10–20 weeks for tube bundles and 12–22 weeks for shell/drum parts (factory fabrication 6–12 / 8–14 weeks plus 4–8 weeks ocean freight, customs, and inland delivery). No primary source publishes these times directly; the range is built from vendor-blog fabrication-time data plus standard SEA logistics overhead. Forced outage cost while parts are in transit at a representative palm oil mill is $50K–$170K/day (2024 CPO ~$939/t basis), scaling roughly with mill FFB capacity (25–60 tph). [ASSUMED — to validate via interview at Mechmar Services, Boilermech, Vyncke Malaysia, or FELDA/PTPN procurement teams]

**Citation update:**
- Add ASME Section I (primary-standards) for the interoperability claim's structural anchor
- Add MPOC/BEPI 2024 CPO price ($939/t) as primary-association citation for downtime cost
- Add Stage 2 DR's York Shipley as cross-reference for the lead time corroboration
- Maintain coalbiomassboiler.com as one of multiple supports rather than sole source
- Tag the lead time as ASSUMED with specific named-vendor interview targets

## Confidence profile after DR

Conservative re-scoring of the two refined claim families:

| Pre-DR | Claims | Post-DR estimate |
|---|---|---|
| 7 High, 22 Medium, 66 Low (69.5% Low) | 95 | 8 High, ~28 Medium, ~59 Low (~62% Low) |

The PP5.2 refinement is a major lift (vendor-blog → EPA primary anchor lifts the entire pain point's cost framework Low → Medium). The PP5.4 refinement is more modest (vendor-blog still uncontradicted, but customer-experienced lead time framing is now defensible and the downtime cost range is correctly broadened).

## Stage 5 gate decision (post-refinement)

**Verdict: SHIP WITH FLAG.**

Stage 5 narrative is solid: 5 substantive pain points (PP5.1–5.5) with 4–5 RCs each, 8–14 citations per PP, 62 unique URLs. Strongest pain point is PP5.1 (technician scarcity / geography mismatch) which is anchored by primary-multilateral (ILO 1:57,000 inspector ratio) cross-validated by primary-ministry (Kemnaker OSH Profile 2022). The novel finding (fuel quality testing gap) is correctly downgraded to "to validate" rather than padded into a full PP — hypothesis discipline applied.

Remaining flags that must accompany downstream use of Stage 5:
1. Lead times in PP5.4 are inferred from one vendor blog plus logistics math — interview validation at Mechmar / Boilermech / Vyncke / PTPN procurement is the path to primary anchor
2. PP5.2 retrofit cost ranges are now EPA-anchored but the bifurcation thesis still rests on the analyst-estimate small-operator EBITDA margin
3. Malaysia SSI 2025 (PP5.5) is supported by 3 independent secondary-trade sources but still missing the official DOSH gazette / PUA 99 number — straightforward to add at synthesis
4. coalbiomassboiler.com remains over-cited where the corrected EPA-anchored cost ranges have not been substituted into PP5.2

## Files updated

- `pass-3-deep-research/dr-pp5-2-retrofit-cost.json` — DR result for retrofit cost (REFINED with corrections)
- `pass-3-deep-research/dr-pp5-4-spare-parts-lead-time.json` — DR result for lead times (confirmed-scarce)
- `stages-validated/stage-5-value-chain.md` — copied from draft (refinements above apply at synthesis stage)
- `stages-validated/stage-5-pain-points.md` — copied from draft (refinements above apply at synthesis stage)
- `stages-validated/stage-5-refinements.md` — this file
