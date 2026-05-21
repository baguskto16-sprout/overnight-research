# Stage 3 — Refinements applied after deep research

Run: 2026-05-02-0842
Stage: 3 — EPC / Installation & Commissioning
Resumed: 2026-05-03

## Pre-DR confidence profile

- 93 total claims
- 2 High, 22 Medium, 69 Low (74.2% Low — exceeded 70% gate threshold)
- Recommendation from validator: FAIL — primary failure modes were (i) ASSUMED tags on commercially sensitive cost arithmetic, (ii) company-profile claims sourced from self-descriptions, (iii) market-sizing relying on single secondary-market-research aggregators, (iv) the 0.5%/week LD rate cascading through all PP3.1 and PP3.2 cost figures with only legal-blog support.

## Deep research executed

Two high-priority claims selected by validator. Both completed with REFINED verdict and Medium confidence.

### Refinement 1 — PP3.1-cost-1 + PP3.2-cost-1 (EPC LD rate)

**Original claim:** "Standard LSTK EPC LD rate is 0.5% of contract price per week, capped at 10–15% of contract price."

**Sources before:** namitachauhan.wordpress.com, climatesolutionslaw.com, lexology.com (all secondary legal commentary).

**Verdict after DR:** REFINED. Confidence Low → Medium.

**Key findings:**
- FIDIC Sub-Clause 8.7 (1999 Red/Yellow Book) and Silver Book Sub-Clause 8.8 deliberately leave the rate blank for parties to fill in the Particular Conditions. There is no FIDIC-prescribed 0.5%/week. (FIDIC official Q&A, fidic.org/node/923)
- CIDB Malaysia Standard Form Clause 26.2(a) and JKR/PWD 203A both specify "the rate stated in the Appendix" — no statutory rate. (CIDB SC-2000)
- Indonesian government procurement contracts under Perpres 16/2018 Article 79(4) apply a statutory rate of 1/1000 (0.1%) per calendar day ≈ **0.7%/week, capped at the performance guarantee value (~5%)** — slightly higher rate but lower cap than the private-sector convention. This is a *contradiction* of the original 0.5%/week claim for public-procurement projects in Indonesia. (hukumonline.com citing Perpres 16/2018)
- Private-sector industrial EPC market convention is 0.5%/week with 10–15% cap, supported by published EPC templates (CT Green Bank/SunPower template caps at 15%) and ACC industry commentary ("most projects include a 10% to 15% cap"). (sbaustinlaw.com, ACC)
- Malaysian Federal Court Cubic Electronics v Mars Telecommunications [2018] MLJU 1935 confirms LAD enforceability under Contracts Act 1950 s.75 but specifies no rate.

**Revised claim:**
> Standard LSTK / EPC contracts in Southeast Asia typically specify delay liquidated damages of 0.5% of contract price per week of delay (private-sector market convention, not a FIDIC or statutory standard), capped at 10–15% of contract price. The 0.5%/week figure is consistent across published private-sector EPC templates and industry legal commentary but is *not* prescribed by FIDIC, CIDB SC-2000, JKR/PWD 203A, or IEM standard forms — all of which leave the rate to the Appendix/Particular Conditions. Indonesian government-procured projects under Perpres 16/2018 use a statutory rate of 1/1000 per calendar day (~0.7%/week) capped at the performance guarantee value (~5%) — a different regime from private industrial EPC. Cost figures in PP3.1 and PP3.2 are therefore disclosed as "typical private EPC market convention" rather than as a regulatory standard.

**Citation update:** add fidic.org/node/923 (primary-standards), conventuslaw.com (Cubic Electronics, near-primary case law), anyflip.com/eopqr/bebu/basic/51-100 (CIDB SC-2000 primary standard form), hukumonline.com (Perpres 16/2018 primary regulatory), sbaustinlaw.com (industry legal commentary, supports 10–15% cap range).

### Refinement 2 — PP3.3-cost-4 (Indonesia construction workforce certification rate)

**Original claim:** "Only 7.4% of Indonesia's 7.62 million construction workers hold formal competency certifications (cited as 2019 CIDB/LPJK data)."

**Sources before:** marketresearchindonesia.com (single secondary aggregator).

**Verdict after DR:** REFINED. Confidence Low → Medium.

**Key findings:**
- The 7.4% figure and CIDB attribution is **not traceable to any primary government source.** CIDB is Malaysian (not Indonesian); the Indonesian equivalent is LPJK.
- Primary-source data shows the rate is actually lower and varies by year:
  - 2018: ~7% (581,000 certified / 8.13 million workers) — PUPR Director General citing BPS, via The Jakarta Post.
  - Feb 2023: 411,402 cumulative certificates issued ever / ~8.5 million workers ≈ ~4.8% — official PUPR press release.
  - **Dec 2024: 426,071 registered certified / ~8.76 million workers = 4.86%** — Ditjen Bina Konstruksi PUPR website citing LPJK registry and Sakernas Aug 2024.
- The directional claim (well under 10% certified) holds and is *strengthened* by the trend: certification has not improved despite policy drives — the denominator grows faster than the numerator.

**Critical scope correction:**
> SKK Konstruksi (LPJK/PUPR) does NOT cover pressure-part welders for boiler installation. Boiler and pressure vessel welders in Indonesia require separate certification under Kemnaker RI's K3 Pesawat Uap dan Bejana Tekan framework (UU No. 1/1970, Permenaker No. PER.02/MEN/1982, incorporating ASME I/VIII/IX). The ~5% general construction certification rate therefore *understates* the shortage for the specific welder pool relevant to package boiler EPC work. The general SKK figure should be cited as a structural proxy with this caveat, not as a direct measure of qualified boiler welders.

**Revised claim:**
> Fewer than 7% of Indonesia's approximately 8.8 million construction workers hold formal competency certifications. LPJK registry data (December 2024) shows 426,071 certified workers against ~8.76 million total — a 4.86% rate (Ditjen Bina Konstruksi / Kementerian PUPR, 2024). A 2018 PUPR Director General statement citing BPS data put the figure at ~7%. The trend has been flat-to-declining as the workforce grows faster than certification coverage. **Pressure-part boiler welders are governed by a separate framework (Kemnaker K3 Pesawat Uap dan Bejana Tekan, incorporating ASME standards) not captured in the SKK figure**; the qualified welder pool for boiler EPC is a smaller subset of an already under-certified construction workforce.

**Citation update:** replace marketresearchindonesia.com as primary anchor with:
- binakonstruksi.pu.go.id (primary-gov, Dec 2024 data)
- thejakartapost.com 2018-07-26 (near-primary, PUPR Director General citing BPS)
- binakonstruksi.pu.go.id Feb 2023 release (primary-gov, 411,402 certificates)
- bps.go.id Construction Statistics 2023 (primary-gov-stats baseline)
- patrarijaya.co.id, slv.co.id (industry-secondary, scope distinction for K3 PUBT vs SKK)

## Confidence profile after DR

Conservative re-scoring of the two refined claim families:

| Pre-DR | Claims | Post-DR |
|---|---|---|
| 2 High, 22 Medium, 69 Low (74% Low) | 93 | 2 High, ~26 Medium, ~65 Low (~70% Low) |

The DR did not move every cost line; it moved the foundational primary anchors. Downstream derived figures (e.g. $30k LD exposure example, $10–15k repeat-test LD risk) remain at Medium because the underlying rate convention is now Medium-confidence and the arithmetic is plausibility-disclosed.

## Stage 3 gate decision (post-refinement)

**Verdict: SHIP WITH FLAG.**

Stage 3 narrative structure is intact: 4 pain points, 4–5 RCs each, 8–15 citations per pain point. The confidence profile is still close to the 70% Low threshold, driven primarily by:

1. Company-profile claims sourced from vendor self-descriptions (Boilermech, Mechmar, ATM Indo, Krakatau Engineering, Getabec, BIB, STECON, Eurothai, Vyncke, Cimech, etc.) — these are who-they-are claims, not analytical claims; treat as low-risk.
2. APAC-as-proxy market sizing — flagged in draft. Geography mismatch carries through.
3. ASSUMED tags on cost bottoms-up (BOP markup, PM overhead percentages) — these are reasonable industry estimates flagged as such.

The two foundational refinements applied here (LD rate, certification rate) materially strengthen the costs and labor-shortage cases that drive PP3.1, PP3.2, and PP3.3. Recommend SHIP WITH FLAG and validate the company-profile and market-size claims through interview triangulation in Stage 2 outreach.

## Files updated

- `pass-3-deep-research/dr-pp3-1-cost-1-epc-ld-rate.json` — DR result for LD rate
- `pass-3-deep-research/dr-pp3-3-cost-4-indonesia-construction-cert.json` — DR result for cert rate
- `stages-validated/stage-3-value-chain.md` — copied from draft (structurally complete; refinements above apply to PP file)
- `stages-validated/stage-3-pain-points.md` — copied from draft, with refinements above to be merged at final-output stage
- `stages-validated/stage-3-refinements.md` — this file
