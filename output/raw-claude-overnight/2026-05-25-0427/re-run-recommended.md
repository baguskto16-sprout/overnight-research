# Re-run recommended — Run 2026-05-25-0427

**Trigger:** 84.3% Low confidence across 300 scored claims (>70% threshold).

**This file is the gate marker — it does not block reading the outputs.** The corpus is structurally complete and the major findings (WH1-WH6 verdicts) are defensible. The recommendation is targeted, not "throw away and restart."

## Why the gate triggered

Per cross-stage.json:
- Corpus-level confidence: 4 H (1.3%) / 43 M (14.3%) / 253 L (84.3%)
- Vertical-slice diversity: FAIL (only 9% primary-gov / primary-ministry sources)
- 46 explicit ASSUMED-tagged claims
- All labor cost models share JobStreet/Indeed/Glassdoor anchors
- Stage 5 frequency case anchored on single CodeBlue n=855 survey

## Recommended re-run scope

A FULL re-run is not necessary. Targeted re-research on 3 anchors would cascade confidence upgrades across the corpus:

1. **Replace JobStreet/Indeed salary anchors with BPS Sakernas Indonesia + DOSM Salaries Survey Malaysia** — this upgrades every cost model in every stage simultaneously.
2. **Fetch BPJS Kesehatan Laporan Tahunan 2023 for RPPT corroboration** — upgrades Stages 2 + 6 simultaneously.
3. **Fetch BNM Insurance Annual Statistics 2024 + independently audited PMCare disclosure** — cross-validates Stage 5 frequency anchors that currently rest on the CodeBlue survey alone.

Phase 2 (Playwright enrichment) addresses 5 paywalled / connection-refused URLs identified in `pass-2-validation/stage-1.json` and other stage validations.

## What is defensible as-is

- Structural pain points (WH1, WH2): high confidence regardless of quantification thin.
- Pilot-market verdict (WH6): Malaysia faster; dual-track recommendation per cross-stage-observations.md.
- Causal chain (PP1.1 → PP1.2 → PP5.2 → PP6.1 → PP4.4): high-leverage thesis.

## What needs caveat in any external use

- All cost-per-clinic, cost-per-campaign, cost-per-claim figures are derivative of two layers of weak inputs (salary aggregators + ASSUMED time inputs).
- Willingness-to-pay is completely empty across the corpus.
- Indonesia EMR adoption picture has dual-denominator interpretation (8.9% private vendor vs 91% SATUSEHAT national integration).
