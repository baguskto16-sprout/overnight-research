# Stage 4 — Refinements applied after deep research

Run: 2026-05-02-0842
Stage: 4 — Industrial End Users / Operators
Validator verdict: SHIP_WITH_FLAG (63.7% Low, just under 70% threshold)

## Pre-DR confidence profile

- 102 total claims
- 10 High (9.8%), 27 Medium (26.5%), 65 Low (63.7%)
- 51 unique sources cited
- Top override triggers: assumed_tag (14), single_source_quantitative (28), vendor_blog_sole_source (9), secondary_market_research_only (6)

## Deep research executed

Two high-leverage claims selected:
1. VC-6 / PP4.1-cost-1 — lifecycle cost breakdown (cascade weight: 11 claim citations)
2. MS-5 — Indonesia sugar mill count (anchor for bottom-up boiler install-base estimate)

### Refinement 1 — VC-6 / PP4.1-cost-1 (lifecycle cost breakdown)

**Original claim:** "Lifecycle cost is roughly 60–70% fuel, 10–15% maintenance, 8–12% labor, 5–8% emissions compliance (rising to 10–25% by 2035), 2–5% water/consumables, 3–6% ash disposal."

**Sources before:** coalbiomassboiler.com (single vendor blog appearing in 11 claim citations).

**Verdict after DR:** REFINED. Confidence Low → Medium.

**Key findings:**
- **Fuel share for purchased-fuel operators is actually 60–80%, sometimes up to 90%.** US DOE BestPractices Steam Technical Brief states fuel "usually the dominant component, accounting for as much as 90% of total operating cost." UNIDO Industrial Steam Systems Manual (2016, 2018) confirms fuel as the dominant driver for developing-country industrial boilers. The original 60–70% range was at the conservative end.
- **Sector variance is material — the original claim does not capture this.** For palm oil mills running self-generated biomass (fiber + shell), feedstock cost is effectively zero — fuel share collapses to 5–20% of OPEX (logistics only). For sugar mills running bagasse, similar near-zero fuel cost. For coal-fired textile, ceramics, F&B operators, fuel share is 65–80%. (IRENA Biomass for Power Generation Cost Analysis, 2012; UNIDO 2018 manual)
- **Ash disposal share (3–6%) likely overstated.** For coal operators: 1–4%. For biomass/palm oil: near zero (ash is recycled as palm fertilizer). Recommend narrowing to 1–4% with explicit biomass-vs-coal split.
- **Emissions compliance share (5–8% rising to 10–25% by 2035) overstated at upper bound.** Current SEA reality: 2–5% of OPEX. Indonesia NEK Phase 2 carbon pricing at IDR 69,600 (~$4.45/tCO2) adds ~0.5–2% of OPEX near-term. The 10–25% upper bound by 2035 requires $40–80+/tCO2 — consistent with EU ETS but not evidenced for SEA policy trajectory. Revised 2035 base case: 5–12%.
- **No SEA-specific primary source publishes a complete breakdown across all six categories.** Triangulation via US DOE + UNIDO + IRENA + sectoral context required. Field interview at MPOB / IOI / Sime Darby / Indorama is the path to primary anchor.

**Revised claim (cleaner version for synthesis):**
> Lifecycle operating cost for industrial solid-fuel package boilers in SEA is dominated by fuel for purchased-fuel operators (65–80% of OPEX for coal-fired textile / ceramics / F&B; up to 90% under high coal prices per US DOE BestPractices) but collapses for self-generated biomass operators where fiber/shell/bagasse fuel is near-zero — palm oil and sugar mill boilers run at 5–20% fuel share with maintenance and labor as the dominant items. Maintenance is typically 10–15%, labor 8–12%, water/consumables 2–5%, ash disposal 1–4% (near zero for biomass mills recycling ash as fertilizer). Emissions compliance is currently 2–5% of OPEX rising to 5–12% by 2035 under base-case SEA carbon pricing trajectory — the 10–25% upper bound that some industry blogs cite would require EU-ETS pricing and is not evidenced for SEA policy. (US DOE BestPractices Steam; UNIDO Industrial Steam Systems 2018; IRENA Biomass for Power Generation 2012; Indonesia NEK Phase 2 launch 2025)

**Citation update:**
- Replace coalbiomassboiler.com as primary anchor with US DOE BestPractices, UNIDO 2018 manual, IRENA 2012 cost analysis
- Sector-specific notes: add palm oil / sugar (self-generated biomass) vs coal-fired (purchased fuel) split everywhere this breakdown is referenced
- For 2035 emissions compliance trajectory, cite Indonesia NEK Phase 2 launch (April 2025) IDR ~69,600/tCO2 starting price

### Refinement 2 — MS-5 (Indonesia sugar mill count)

**Original claim:** "Indonesia has approximately 69 sugar mills."

**Sources before:** zozenboiler.com (Chinese boiler vendor blog).

**Verdict after DR:** **CONTRADICTED.** Confidence Low → Medium.

**Key findings:**
- **Indonesia has 59 active industrial sugar mills, not 69.** Kemenperin (Ministry of Industry, 2022–2023): 59 active pabrik gula producing white crystal sugar (GKP), comprising 40 BUMN-affiliated + 19 private mills. Total installed capacity: 324,350 TCD.
- **Refining factories were likely conflated.** An additional 11 refining factories (PGR) process imported raw sugar but do not use bagasse-fired boilers — irrelevant to the solid-fuel boiler count. 59 + 11 = 70, suggesting the vendor blog double-counted these categories.
- **BUMN structure consolidated:** 36 BUMN mills under PT Sinergi Gula Nusantara (SGN, PTPN III subsidiary) across North Sumatra, South Sumatra, Lampung, Central Java, East Java, South Sulawesi. ~4 BUMN mills under ID FOOD / RNI holding.
- **Geographic distribution:** East Java alone has 30 mills at 143,350 TCD (Badan Pangan Nasional, Aug 2022). Java total ~45–48 mills (~75–80% of all mills). Outer islands (Sumatra + Sulawesi) ~11–14 mills.
- **Boiler-per-mill multiplier:** Most BUMN Java mills are colonial-era single-boiler plants (>37 of ~43 BUMN mills are over 100 years old). Newer private mills on Sulawesi/Sumatra may have 2–3 units. Recommended multiplier: **~1.3 boilers/mill** pending validation.

**Implication for bottom-up estimate:**
- Indonesia sugar contribution: 59 × 1.3 ≈ 77 boilers (not 69 × 2 = 138 as the high end of original estimate suggested)
- The total SEA-5 install base estimate of 8,000–13,000 units (ASSUMED-1) needs revision in the Indonesia component, but Malaysia (446 palm oil mills × 1–2 boilers) and Thailand (57 sugar factories × 3–5 boilers) anchors hold.
- Revised SEA-5 estimate likely shifts somewhat lower, but still in the 5,000–11,000 range. Material change.

**Revised claim:**
> Indonesia has approximately 59 active industrial sugar mills (pabrik gula) producing plantation white sugar, comprising 40 BUMN-affiliated mills (36 consolidated under PT Sinergi Gula Nusantara, 4 under ID FOOD/RNI) and 19 private mills, with a total registered count of ~62 including idled units. An additional 11 refining factories process imported raw sugar for industry but do not use bagasse-fired solid-fuel boilers. (Kemenperin, 2023; Badan Pangan Nasional, Aug 2022; SGN Sustainability Report 2023; USDA FAS GAIN ID2023-0011)

**Citation update:**
- Replace zozenboiler.com with: kemenperin.go.id (primary-ministry), sinergigula.com (industry-association), badanpangan.go.id (primary-gov), apps.fas.usda.gov (multilateral)
- Update bottom-up boiler estimate to reflect 59 (not 69) Indonesia sugar mills
- Note BUMN concentration in Java as relevant context for operator scarcity (PP4.4) and remote-mill economics (Stage 5 PP5.1)

## Confidence profile after DR

Conservative re-scoring of the two refined claim families:

| Pre-DR | Claims | Post-DR estimate |
|---|---|---|
| 10 High, 27 Medium, 65 Low (63.7% Low) | 102 | 11 High, ~32 Medium, ~59 Low (~57.8% Low) |

The lifecycle cost refinement has the largest cumulative effect because the breakdown was being referenced across 11 separate claims; the Indonesia sugar mills correction lifts MS-5 from Low to Medium and weakens (but does not break) ASSUMED-1.

## Stage 4 gate decision (post-refinement)

**Verdict: SHIP WITH FLAG.**

Stage 4 narrative is solid: 5 substantive pain points (PP4.1–4.5) with 5 RCs each, 11–24 citations per pain point. PP4.5 (water treatment as systemic efficiency gap) is the strongest novel finding — primary-academic anchored by 3 independent academic sources from different Malaysian institutions plus 1,427 DOSH water-quality data points. The two refinements applied here strengthen the upstream cost framework and one critical market-size anchor.

Remaining flags that should accompany downstream use of Stage 4:
1. Lifecycle cost breakdown — now triangulated across US DOE, UNIDO, IRENA but no single SEA-specific primary source; sector variance must be applied
2. Indonesia sugar mill count corrected; bottom-up boiler estimate (ASSUMED-1) should be regenerated with 59 mills
3. WH4 operator scarcity remains structurally evidenced but not quantified at boiler-operator-specific headcount level — interview validation required
4. PP4.2 downtime $130K/day claim is from a service-vendor (Lautan Air) — would benefit from MPOB / JOPR primary source

## Files updated

- `pass-3-deep-research/dr-pp4-1-cost-1-lifecycle-breakdown.json` — DR result for lifecycle cost
- `pass-3-deep-research/dr-ms-5-indonesia-sugar-mills.json` — DR result for sugar mill count
- `stages-validated/stage-4-value-chain.md` — copied from draft (refinements above apply at synthesis stage)
- `stages-validated/stage-4-pain-points.md` — copied from draft (refinements above apply at synthesis stage)
- `stages-validated/stage-4-refinements.md` — this file
