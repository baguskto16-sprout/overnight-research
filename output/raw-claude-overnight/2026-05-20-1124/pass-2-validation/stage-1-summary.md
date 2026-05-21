# Stage 1 Validation Summary
**Date:** 2026-05-20  
**Files:** stage-1-value-chain.md, stage-1-pain-points.md  
**Validator:** Source Validator (per-stage context)

---

## Top-line numbers

| Metric | Value |
|--------|-------|
| Total claims scored | 59 |
| High confidence | 10 (16.9%) |
| Medium confidence | 9 (15.3%) |
| Low confidence | 40 (67.8%) |
| Abort threshold | >50% Low |
| Status | **Above threshold — remediate before Stage 2** |

---

## What is holding up

The structural narrative is sound. A solid spine of primary sources underpins the core story:

- **FMCSA 2024 Pocket Guide** (primary-gov): 787,000 carriers, 91.5% operating ≤10 trucks — confirmed.
- **Montgomery v. Caribe Transport II** (primary-legal, SCOTUS): May 14, 2026 unanimous ruling on freight broker negligent-hiring liability — confirmed via supremecourt.gov.
- **BSI/TT Club 2024 Cargo Theft Report** (primary-association): 18% strategic theft share confirmed; PDF real.
- **Verisk CargoNet 2024 press release** (primary data owner): 3,625 incidents, $454.9M losses — confirmed.
- **Singapore LTA DataMall** (primary-gov): No carrier safety scoring confirmed.
- **Descartes SEC 6-K** (primary-filing): Acquisition confirmed — with a factual error in the draft (see below).

---

## What is dragging the score down

### Systemic pattern 1 — Highway self-reported fraud metrics (6 Low claims)
Highway's own Freight Fraud Index press releases (distributed via GlobeNewswire) are cited six times across both files as the primary evidence for escalating fraud frequency. These are auto-low-vendor: a vendor's own operational metrics, unaudited, distributed through their own PR channel. The claims are directionally plausible but have no third-party validation.

**Claims affected:** VC-5, VC-6, PP1.1-10, PP1.2-6, PP1.2-7, PP1.2-8

### Systemic pattern 2 — Market-sizing aggregators (5 Low claims)
Every ASEAN/SEA market size figure uses Mordor Intelligence or Verified Market Research — both auto-downgrade aggregators. The draft correctly notes these as medium-confidence but the rubric applies auto-Low regardless of caveat.

**Claims affected:** VC-19, VC-20, VC-21, PP1.4-1, VC-16 (AppsRunTheWorld)

### Systemic pattern 3 — Vendor-marketing as operating benchmarks (7 Low claims)
Carrier onboarding time benchmarks (DAT), abandonment rates (DAT), COI compliance rates (Certificial), fraud reduction claims (CarrierCheck, Truckstop), and TBML survey data (ComplyAdvantage) are all sourced from the vendors who sell solutions to the stated problem.

**Claims affected:** PP1.1-2, PP1.1-3, PP1.1-4, PP1.1-9, PP1.3-1, PP1.3-3, PP1.5-8

---

## Top 5 weak claims requiring deep research

**1. PP1.2-2 — "1,500% organized theft increase since 2021" (High priority)**  
Not confirmed via search. Verisk CargoNet 2025 data shows 60% increase in dollar losses year-over-year. The 1,500% figure may be misattributed or refer to a different metric (e.g., organized ring identification, not incidents). Risk: presenting an inflated headline statistic that fails fact-check.  
*Action:* Pull Verisk CargoNet annual reports 2021–2025 and compute year-on-year incident/loss trajectory directly.

**2. PP1.2-9 — "Double brokering soared 400% in certain regions" (High priority)**  
Attributed to FreightWaves/BSI data. BSI/TT Club 2024 report PDF is real, but the 400% regional figure was not confirmed from available search results. Requires direct PDF read of the BSI/TT Club report.  
*Action:* Read the BSI/TT Club 2024 Cargo Theft Report PDF and locate the specific double-brokering growth figure and regional context.

**3. PP1.5-1 — "$265M OFAC enforcement across 14 cases in 2025" (High priority)**  
Sourced solely from gamasuite.com — a compliance SaaS vendor blog with no disclosed methodology. OFAC publishes all enforcement actions publicly.  
*Action:* Aggregate all 2025 enforcement actions directly from ofac.treasury.gov/recent-actions.

**4. PP1.1-9 — "72% fewer fraud incidents with 3+ verification tools" (High priority)**  
Appears on CarrierCheck's own marketing blog. No independent study or sample size disclosed. This figure anchors a key "solution value" argument for multi-tool adoption.  
*Action:* Search TIA member surveys, ATA research, and academic freight logistics literature for independent data on fraud-rate correlation with vetting tool count.

**5. PP1.5-2 — "8-15% false-negative rate in manual compliance screening" (Medium priority)**  
Attributed to "studies" but the only citation is gamasuite.com. No primary study, FATF report, or regulatory guidance is identified.  
*Action:* Search FinCEN guidance, FATF typologies reports, and Journal of Financial Crime for empirical false-negative rates in manual sanctions screening.

---

## Factual error found

**VC-7 — Descartes MCP acquisition price:** Draft states "$22.5M net cash." SEC Form 6-K (the cited source) states ~$24M upfront consideration. The draft figure is incorrect; the cited source says otherwise. Correct before proceeding.

---

## Top 3 recommendations

1. **Replace Highway Freight Fraud Index citations with independent data.** TIA Watchdog data (available on TIA's own page, which is primary-association) already provides incident-count figures independently. FMCSA enforcement statistics and law enforcement reports can corroborate the fraud-escalation narrative without relying on the vendor being profiled. Highway's metrics can remain as supporting color if labeled "company-reported, unaudited" — but they should not be the primary evidence.

2. **Verify then replace or drop the 1,500% and 400% growth figures.** Both appear in high-visibility positions (Pain Point 1.2 frequency section). If the BSI/TT Club PDF does not support the 400% figure, drop it and use what the report does say. If Verisk CargoNet annual data does not support 1,500%, replace with the confirmed trajectory. Inflated figures in a research document undermine the credibility of the entire corpus.

3. **Source ASEAN market sizing from ADB, World Bank, or ASEAN Secretariat.** The ASEAN transport and logistics sector is covered by ADB infrastructure reports, World Bank freight corridor studies, and ASEAN Secretariat publications — all primary-multilateral sources that would lift the ASEAN market-context claims from Low to High with a single source substitution. Mordor and Verified Market Research can be retained as secondary context but should not be the primary citation for a $119B market figure.

---

## Gate decision

**Recommendation: remediate-before-stage-2**

Do not abort. The structural pain-point logic is solid and primary sources confirm the core story. Do not ship as-is — 67.8% Low is above the 50% abort threshold and would produce a corpus where the majority of cited evidence does not survive scrutiny. Run targeted deep research on the eight weak claims above before advancing to Stage 2. Expected re-score after remediation: ~40-45% Low (driven by the irreducible vendor-marketing and aggregator-market-research claims that cannot be sourced elsewhere).
