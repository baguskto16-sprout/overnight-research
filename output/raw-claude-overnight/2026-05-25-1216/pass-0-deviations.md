# Vertical-slice deviations (run 2026-05-25-1216)

## Stages affected

- **Stage 1** — full vertical slice applied (mapper → researcher → per-stage source-validator → 5x deep-research → patches applied → promoted to stages-validated). Tracer bullet fired successfully.
- **Stages 2–6** — partial vertical slice. Mapper + researcher run per stage in parallel within each wave. Per-stage source-validator deferred to a consolidated cross-stage source-validator pass at Step 5a. Deep-research applied only to claims explicitly flagged by the consolidating validator as catastrophically Low (not the standard per-stage weak-claim sweep).

## Reasons

- Total-runtime cap (4 h Phase 1) requires aggressive batching after the Stage 1 tracer bullet has confirmed pipeline quality.
- Stage 1 source-validator established the baseline quality profile (47% Low, ship-with-flag). Sub-agents have been briefed on Stage 1's weak-claim patterns and are applying override rules pre-emptively in drafts (consultancy firm-imprint vs. trade press paraphrase, geography-mismatch, vendor-on-own-product, aggregator auto-downgrade).
- Stages 2–6 are topically independent enough that cross-stage claim consistency can be checked once at Step 5a (contradiction-finder catches anything we miss).

## Confidence impact

- Stage 1 retains highest individual claim-level confidence (full DR sweep applied).
- Stages 2–6 confidence rests on the consolidated cross-stage validator output. Individual claims in those stages have less independent scrutiny than per-stage runs would provide — treat per-claim confidence as a step softer than Stage 1's profile.
- The cross-stage source-validator pass at Step 5a is configured to run on the FULL compiled corpus and to surface stage-level Low concentrations; contradiction-finder catches cross-stage inconsistency that a consolidated validator might smooth over.
- Net expected gate impact: 1-tier softer than a full per-stage build (e.g. if a full per-stage run would have produced "ship as-is", this run may produce "ship with flag"). This is the explicit trade against runtime.

## Mitigations applied within the deviation

- Pre-emptive override application by sub-agents (vendor-on-own-product auto-Low; geography-mismatch tagging; aggregator auto-downgrade) — sub-agent prompts state these explicitly.
- Each sub-agent reports `[ASSUMED-N]` and `[NEEDS-ATTENDED-FETCH]` tags so a Phase 2 attended pass and field validation can pick them up.
- Cross-stage source-validator at Step 5a runs on the FULL compiled corpus so cross-stage diversity (40–60 unique URL target) and global % Low can be measured.
- Contradiction-finder at Step 5a' catches same-metric / same-actor / geography contradictions across stages.
- Contradiction-resolver at Step 5a'' applies primary-source resolution to high-severity contradictions and triggers gate auto-degrade if any remain unresolved.
- Adversarial critic pass at Step 5.5 (depth, dialectic, width, instruction) catches thin-evidence spots that per-stage validation would normally surface.

## Lint-gate expectations

`scripts/lint-output.sh` improvement R checks for this file's presence whenever per-stage validation JSONs are unevenly sized. Stage 1 produces a full `pass-2-validation/stage-1.json`; Stages 2–6 produce the consolidated `pass-2-validation/cross-stage.json` at Step 5a. The lint gate should pass given this deviations file is present and explicit.
