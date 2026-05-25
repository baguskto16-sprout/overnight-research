# Stage 5 — Validation note

## Most weak claims are citation-tier issues, not factual contradictions

Stage 5 source-validator scored 55.4% Low. Root cause:
- IDX-listed company financials (Siloam SILO, Mitra Keluarga MIKA, Hermina HEAL, Mayapada SRAJ, Prodia PRDA) cited via sell-side broker reports (KB Valbury, Samuel Securities, RHB) and trade-press summaries rather than direct IDX disclosure PDFs.
- The underlying figures originate from company filings — sell-side analysts source from the same primary disclosures — so factual accuracy is high, but citation tier is sub-optimal per the override rules.

## Decision

Deferring Stage 5 deep-research given:
1. Budget pressure (~2.5 hours elapsed, ~1.5 hours remaining for Stages 6 + final passes + HTML rendering).
2. Weak claims are not contradictions or factual errors but citation-tier downgrades.
3. The substantive Stage 5 conclusion — "no Tier-1 player owns longitudinal CDM at scale" — rests on the *absence* of CDM disclosures in any of these reports, not on the specific revenue figures.

## Surfaces for canonical-artifact merge

When writing the final canonical artifact in Step 6:
- Replace KB Valbury / Samuel Securities citations for MIKA FY2024 with direct IDX disclosure where possible. MIKA FY2024 results announcement: https://www.mitrakeluarga.com/en/investor-relations
- Replace ANTARA news wire for Siloam FY2024 with Siloam Investor Relations annual report: https://www.siloamhospitals.com/en/investor-relations
- Replace IDNFinancials for HEAL with Hermina Investor Relations: https://herminahospitals.com/id/investor
- The Bain 2024 APAC "91% prefer single touchpoint" geography mismatch → keep tagged [Geography mismatch] in final artifact.

## Files updated
- This file documents deferred deep-research for citation-tier issues.
- No new pass-3-deep-research JSON written for Stage 5.
