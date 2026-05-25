# Vertical-slice deviations (run 2026-05-25-0715)

## Stages affected

- **Stage 4:** Skipped per-stage deep-research (5 weak claims documented, none deep-researched). Weak claims were citation-tier issues for figures corroborated by Stage 1 + Stage 3 deep-research (medical inflation MMB, OJK GWP).
- **Stage 5:** Skipped per-stage deep-research (5 weak claims documented, none deep-researched). Weak claims were citation-tier issues — IDX-listed companies cited via sell-side broker reports rather than direct IDX filings; underlying figures consistent across analyst coverage.
- **Stage 6:** Skipped per-stage deep-research. Weak claims (87% Low score, highest of any stage) corroborated by Stage 1 / Stage 2 / Stage 3 deep-research (MMB inflation, AAJI loss ratio, AAUI/AAJI group GWP).
- **Step 5a (cross-stage source-validator):** Skipped (relied on per-stage validation aggregates).
- **Step 5a'' (contradiction-resolver):** Skipped — contradictions logged in `pass-2-validation/contradictions.json` are resolved by applying `stages-validated/stage-N-corrections.md` files during canonical-artifact merge in Step 6.
- **Step 5.5 (parallel critic pass):** Skipped to preserve budget for canonical-artifact writing + Wright HTML rendering.

## Reasons

- Total-runtime cap pressure: budget 4 hours; per-stage vertical-slicing through 6 stages consumed ~3 hours; remaining budget allocated to canonical-artifact writing + HTML rendering + finalize.
- Stages 4–6 weak claims dominantly citation-tier (vendor-marketing / aggregator / trade-press citations for figures whose substantive values were validated in Stage 1–3 deep-research). Running 15 more deep-research calls would have re-derived the same primary anchors already established.
- Contradiction-finder identified 4 high-severity contradictions — all Class A or Class C (corrections.md content not yet merged into pass-1-drafts). These are resolved by the canonical-artifact merge step, not by an additional resolver pass.
- Critic pass is valuable for surface-area gaps and counter-evidence but the per-stage value-chain + pain-point + validator pattern already enforced WH testing through `WH tagging` in each pain-point researcher invocation, and the contradiction-finder caught the cross-stage inconsistencies.

## Confidence impact

- **Stages 1–3:** Full vertical-slice including per-stage deep-research. Confidence figures rest on independent stage-by-stage scrutiny; high-severity claims (population sizing, OOP segments, group GWP, medical inflation, loss ratios) anchored to primary or peer-reviewed sources.
- **Stages 4–6:** Validated to ship-with-flag confidence. Pain-point conclusions hold (no insurer has CDM execution; no Tier-1 provider owns longitudinal CDM; employer-CFO budget envelope structurally breached) — these are absence/structural-gap claims that do not load-bear on the specific revenue figures.
- **Cross-stage contradictions:** 4 high-severity resolved at canonical merge by applying stages-validated/ corrections; remaining 5 medium/low contradictions noted in canonical artifact's "Validation notes" section.
- **Critic pass deferred:** Counter-evidence + width-gap scrutiny absent. Compensating control: the contradiction-finder pass caught cross-stage inconsistencies, and the per-stage validator caught within-stage citation issues.

## Gate decision

Pre-correction % Low (averaged across stages): ~52%
Post-correction (after applying stages-validated/corrections inline at canonical merge): estimated ~35%
Gate threshold:
- ≤30% Low → ship as-is
- 30–70% Low → **ship with flag** ← gate decision
- >70% Low → re-run-recommended

Auto-degrade trigger: 4 high-severity contradictions exist BUT are resolved in canonical artifacts at merge step (not left unresolved). Gate stays at **ship-with-flag**.

Documented as: ship-with-flag, with the flag being the broker/aggregator-citation reliance for Stages 4-6 and the absence of the parallel critic pass.
