# Pain Points by Stage: SAF from EFB — Indonesia

> **EXAMPLE / SAMPLE OUTPUT — illustrative format only, not field-validated research. Do not cite.**

**Run ID:** 2026-04-30-sample
**Topic:** SAF production from EFB palm waste, Indonesia (HEFA + ATJ pathways)
**Geography:** Indonesia (primary)
**Mode:** Sandbox sample

---

## Working Hypothesis Test Results

| # | Working Hypothesis | Verdict | Notes |
|---|-------------------|---------|-------|
| WH1 | EFB feedstock logistics cost is the binding constraint | **Partially evidenced** | 30-50% logistics share confirmed for biomass generally; EFB-specific share needs field validation |
| WH2 | EFB quality variability blocks SAF refiner adoption | **Evidenced** | Multiple academic + industry sources confirm moisture / contamination challenges |
| WH3 | Indonesian financing gap delays SAF facility investment | **Partially evidenced** | Capex barriers documented; specific financing constraints need stakeholder interviews |

---

## Stage 1: EFB Aggregators

### Pain point 1.1

**Description:** EFB aggregators in Indonesia experience high logistics costs because feedstock is geographically dispersed across hundreds of palm oil mills, often in remote Sumatra and Kalimantan locations, requiring trucking to centralized aggregation hubs before downstream pre-processing. This makes delivered EFB cost 30–50% logistics, eroding margins on what is already a thin-margin commodity.

**Who bears it:** EFB aggregators (PT SUEK, PT Pacific Indomas, mid-scale players); downstream impact felt by SAF refiners receiving EFB-derived feedstock at higher cost.

**Estimated cost:**
- Logistics share of delivered EFB cost: 30–50% (1)
- Mill-gate to aggregation hub trucking: ~USD 8–15/ton over 100–300 km (2)
- Aggregation hub to refiner port: additional USD 5–10/ton (3)
- Total transport burden: ~USD 13–25/ton on a USD 70–150/ton sale price = 9–35% of revenue

**Willingness to pay:** Aggregators would invest in route optimization or shared logistics platforms if savings exceed 10% of transport cost. Specific price point requires interview.

**Frequency:**
- Logistics cost incurred per shipment, monthly to weekly cycles
- Diesel price fluctuations create monthly opex variance of ±5–10% (4)

**Evidenced or assumed:**
(1) Accio market analysis — using PKS as proxy for EFB logistics structure, https://www.accio.com/plp/palm-kernel-shell-price-malaysia
(2) Tridge — Palm Kernel Shell Malaysia Market Overview, https://www.tridge.com/intelligences/palm-kernel-shell/MY
(3) `[ASSUMED-1]`: estimate based on hub-to-port trucking comparables — to validate: interview PT SUEK or PT Pacific Indomas operations lead
(4) Bank Indonesia — diesel price index, https://www.bi.go.id/

**Root Causes**

- **RC1: Geographic dispersion of palm oil mills creates structural logistics inefficiency.** Indonesia has ~700+ palm mills spread across Sumatra and Kalimantan, with average mill capacity of 30–60 tonnes FFB/hour producing ~6–12 tonnes EFB/hour. No single mill produces enough volume to justify dedicated aggregator infrastructure on-site, so aggregators must build hub-and-spoke networks with substantial trucking. (1)(2)
- **RC2: No common-carrier logistics platform exists for biomass aggregation.** Unlike palm CPO (which has well-developed barge + tanker infrastructure leveraged by major plantations), EFB and other biomass byproducts lack a shared logistics network. Each aggregator builds bespoke routing. `[ASSUMED-2]`: to validate by interviewing INA-Mas (Indonesia Materials & Aggregation Association) on platform initiatives
- **RC3: Diesel price exposure creates margin volatility.** Aggregators typically operate on tight 5–15% margins, and diesel-driven trucking costs swing 10–20% intra-year, compressing margins below break-even in spike months. (4)
- **RC4: ISCC EU certification adds logistics chain-of-custody requirements that further cost-load logistics.** Each truck shipment requires documented chain-of-custody for export-grade SAF feedstock, adding administrative cost and slower throughput. (5)

(5) ISCC International — Chain of Custody requirements, https://www.iscc-system.org/process/iscc-eu/

---

### Pain point 1.2

**Description:** EFB aggregators face high operational costs and rejected shipments because EFB has highly variable moisture content (60–67% wet basis at mill gate) and inconsistent ash / lignin content across sources, making it difficult to deliver consistent feedstock to SAF refiners who require <20% moisture and stable composition for ATJ fermentation or HEFA hydrogenation.

**Who bears it:** EFB aggregators (rejection cost, drying capex); SAF refiners (process upset cost when accepted batch fails downstream specs).

**Estimated cost:**
- Drying infrastructure capex: USD 150–500K per aggregation hub (6)
- Drying opex (energy): USD 5–10/ton EFB if biomass-fueled, USD 15–25/ton if diesel-fueled (7)
- Rejected shipment cost: ~USD 30–80/ton effective loss (return trucking + lost revenue) (8)
- `[ASSUMED-3]`: ~5–15% of shipments rejected for spec violations — to validate: interview SAF refiner QA leads

**Willingness to pay:** Aggregators would invest USD 100K+ in inline moisture sensing if it cuts rejection rate to <5%. Specific economics requires interview.

**Frequency:**
- Quality variation per shipment (high frequency)
- Major rejection events: weekly to monthly per aggregator (9)
- Seasonal compounding: rainy season elevates moisture intake by 5–10 percentage points

**Evidenced or assumed:**
(6) IDPUBLICATIONS — Utilization of PEFB as Solid Fuel for Steam Boiler, https://www.idpublications.org/wp-content/uploads/2014/08/UTILIZATION-OF-PALM-EMPTY-FRUIT-BUNCH-PEFB-AS-SOLID-FUEL-FOR-STEAM-BOILER-Full-paper.pdf
(7) Wiley — Palm oil biomass for power generation decarbonization in Malaysia, https://wires.onlinelibrary.wiley.com/doi/full/10.1002/wene.437
(8) `[ASSUMED-3]`: estimate based on industry conversation
(9) `[ASSUMED-4]`: rejection frequency — to validate: interview 2-3 aggregator operations leads

**Root Causes**

- **RC1: EFB intrinsic moisture is structurally high.** Empty Fruit Bunches contain 60–67% moisture immediately after sterilization at the palm mill (a process step that requires steam injection). This is a feedstock property, not a handling failure. Reducing to <20% moisture requires dedicated drying infrastructure that small aggregators lack capital to install. (6)(7)
- **RC2: No standardized EFB grading system exists in SEA.** Unlike coal (with established GAR/NAR benchmark grading) or even wood pellets (with EN ISO 17225 standard), EFB is traded without consistent quality specifications. Buyers cannot reliably specify or verify quality before delivery, leading to spec disputes. `[ASSUMED-5]`: to validate by checking with MPOB and Indonesian palm oil board on emerging standards
- **RC3: Fragmented supply chain limits quality control investment.** EFB is collected from hundreds of small sources by small aggregators with limited quality testing capability. There is no equivalent of the coal industry's washery / sizing infrastructure for biomass, and the volume per source is too small to justify per-mill investment. (7)
- **RC4: Lignin and ash content vary by palm species and mill processing parameters.** Different palm cultivars and mill steam treatments produce EFB with varying lignin (driving SAF refining yield) and silica/potassium ash content (driving boiler/refiner fouling rates). Aggregators rarely characterize beyond moisture. `[ASSUMED-6]`: to validate by reviewing 5+ academic papers on EFB compositional variability

---

## Stage 2: SAF Refiners

### Pain point 2.1

**Description:** SAF refiners considering Indonesian feedstock face a capex / scale mismatch: facility minimum economic scale is typically 200K–500K tonnes/year SAF output (requiring ~1M+ tonnes/year feedstock), but Indonesian EFB aggregators rarely commit volumes above 100K tonnes/year, requiring multi-source feedstock pooling that adds counterparty risk and price volatility.

**Who bears it:** SAF refiners (Pertamina, prospective international JVs); downstream impact on airline buyers facing potential supply interruptions.

**Estimated cost:**
- Minimum economic facility scale: 200K–500K tonnes SAF/year (10)
- Capex per facility at this scale: USD 500M–2B (11)
- Counterparty risk from multi-source feedstock: estimated 5–15% of feedstock cost as risk premium (12)
- Annual feedstock requirement at 200K SAF tonnes: ~1.2M–1.5M tonnes EFB equivalent (yield-dependent)

**Willingness to pay:** Refiners would invest in long-term offtake guarantees or pay premium for feedstock-backed financing structures. Specific WTP needs Pertamina interview.

**Frequency:**
- Capex commitment: one-time per facility, decade-long horizon
- Feedstock procurement: continuous, monthly volume management
- Supply disruption events: ~2-5% of months experience material shortfalls (estimated)

**Evidenced or assumed:**
(10) IEA — Aviation tracking report on SAF facility economics, https://www.iea.org/energy-system/transport/aviation
(11) ICAO — Industry consultation on SAF facility costs, https://www.icao.int/environmental-protection/Pages/SAF.aspx
(12) `[ASSUMED-7]`: counterparty risk premium estimate — to validate: interview SAF facility CFO at Neste, World Energy, or PETRONAS

**Root Causes**

- **RC1: Capital-intensity of SAF refining drives minimum scale economics.** HEFA hydrogenation reactors and ATJ fermenter+oligomerization trains have steep learning curves below ~200K tonnes/year output. Smaller facilities have unit economics 30-50% worse than at-scale plants, putting them below SAF mandate-driven price floors. (10)
- **RC2: Aggregator capacity ceiling without M&A is structural.** Indonesian EFB aggregators are private, family-owned or mid-scale companies typically capping at 100–150K tonnes/year. Scaling beyond requires either organic capacity expansion (5+ year horizon for permitting in remote palm regions) or M&A consolidation that's not yet happening. `[ASSUMED-8]`: to validate by reviewing aggregator capacity disclosures + M&A activity in 2024-25
- **RC3: ICAO CORSIA + EU sustainability rules create palm-specific constraints.** Palm oil and palm-derived feedstocks face heightened scrutiny under EU Renewable Energy Directive (RED III) and ICAO CORSIA over deforestation and biodiversity concerns. SAF refiners using EFB must navigate documentation chains that are more complex than for soybean or rapeseed-derived feedstocks. (13)
- **RC4: Indonesian green finance market is nascent.** USD 500M–2B facility investments require long-tenor green debt that Indonesian capital markets are still developing. International project finance is available but adds 200–400 bps risk premium. `[ASSUMED-9]`: to validate: interview Indonesia Sovereign Wealth Fund (INA) on SAF investment thesis

(13) European Commission — RED III Implementation, https://energy.ec.europa.eu/topics/renewable-energy/renewable-energy-directive_en

---

## Cross-stage observations

- **Feedstock-to-refiner scale mismatch is the structural friction.** Aggregators (~100K t/y) and refiners (~1M+ t/y) operate at fundamentally different scales. Bridging requires either aggregator consolidation, multi-source pooling intermediaries, or cooperative-style aggregation models common in agricultural commodities but underdeveloped for biomass.
- **Certification chain adds cost at every transfer.** ISCC EU + CORSIA + RED III chain-of-custody requirements compound across Stage 1 → Stage 2, creating a 6-12 month documentation lead time per facility commissioning. A "certification-as-a-service" intermediary may be a venture opportunity.
- **Carbon credit revenue is a swing factor.** Aggregators and refiners both potentially earn voluntary carbon credit revenue, but pricing is volatile (USD 5–80/ton CO2 range across markets). Stable revenue requires compliance market participation, which is still maturing.

---

## New pain points (not in original hypothesis)

`[ASSUMED-10]`: Pain point — chain-of-custody documentation overhead may be a venture opportunity in itself. Not in original input hypothesis. Worth exploring as separate research thread.
- to validate: interview 2 Indonesian palm sustainability consultants (e.g. Daemeter, PT Pelangi) on documentation cost as % of total SAF feedstock cost.

---

## Source Index (consolidated, deduplicated)

(1) Accio — Palm Kernel Shell Price Malaysia 2025
(2) Tridge — Palm Kernel Shell Malaysia Market Overview
(3) `[ASSUMED-1]` — flagged
(4) Bank Indonesia — diesel price index
(5) ISCC International — Chain of Custody requirements
(6) IDPUBLICATIONS — EFB as solid fuel academic paper
(7) Wiley — Palm oil biomass for power generation
(8-9) `[ASSUMED-3,4]` — flagged
(10) IEA — Aviation tracking report
(11) ICAO — SAF facility cost guidance
(12) `[ASSUMED-7]` — flagged
(13) European Commission — RED III Implementation

## Validation priority for field interviews

1. PT SUEK operations lead — RC1, RC2 of Pain point 1.1
2. SAF refiner QA lead (Pertamina or Neste) — RC1, RC2 of Pain point 1.2
3. Pertamina SAF facility CFO — Pain point 2.1 RC4 (financing)
4. ICAO CORSIA secretariat — Pain point 2.1 RC3 (palm-specific rules)
5. Indonesian Sustainability Consultants (Daemeter, Pelangi) — New pain point on documentation overhead

These interviews would validate or refute 8 of the 10 `[ASSUMED-N]` tags. After completing 5 interviews, expect % High confidence to climb from sample's ~25% to 50%+.
