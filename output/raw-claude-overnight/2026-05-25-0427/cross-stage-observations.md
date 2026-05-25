# Cross-stage observations — Run 2026-05-25-0427

## Headline cross-stage findings

### Causal chain: documentation poverty → coding errors → claim friction → CDM data loss → no longitudinal trending

The most important cross-stage observation is a causal chain that flows from Stage 1 through Stages 4 and 6:

1. **Stage 1 PP1.1 (documentation burden + poverty of structured notes)** → upstream cause of
2. **Stage 1 PP1.2 (ICD-10 coding errors 33–73% at FKTP)** → drives
3. **Stage 5 PP5.2 (BPJS pending claims spiking to 19.6% in October 2024, Rp575.4B single month)** → which causes
4. **Stage 6 PP6.1 (CDM cohort identification corruption; RPPT 32% Level 4)** → which prevents
5. **Stage 4 PP4.4 (year-on-year longitudinal trending impossible because data are siloed and identity resolution is missing).**

The "single highest-leverage intervention" the corpus implies is therefore not at the most-painful surface layer (claims pending) but at the upstream structured-data-capture layer (PP1.1 + PP1.2 — ambient scribe + LLM coding assist). Resolving the upstream blockage cascades.

### Input-format-gating is the single most-recurring root cause

WH2 is confirmed across all 6 stages. The same root cause — unstructured PDF or free-text input blocking automation — appears explicitly in:
- PP2.1 RC1-3 (lab result PDFs)
- PP3.1 RC1 (multi-lab MCU result PDFs)
- PP4.1 RC1 (MCU report template architecture)
- PP5.1 RC1 (unstructured GL submission PDFs)
- PP6.1 RC1 (CDM trigger logic blocked by PDF lab results — Stage 6 explicitly cross-references PP2.1 + PP3.1)

This is the single most cited root cause class in the corpus and is the most evidentially defensible WH.

## Contradictions catalogued (lieu of formal contradiction-finder run)

### High severity

**C1. Indonesia EMR adoption denominator confusion (Stages 1, 6) — RESOLVED inline**

- **Claim A:** Stage 1, Stage 6 PP6.1: Indonesia FKTP EMR adoption = 8.9%.
- **Claim B:** HealthTechAsia (Jan 2026): SATUSEHAT covers 91% of primary care facilities, 99% of puskesmas.
- **Resolution:** Different denominators. 8.9% is single-vendor (PT MTK / Medeva) PRIVATE klinik pratama market share. 91%/99% is national platform integration including PUSKESMAS. Both true; corpus now reflects both per stage-6 caveat block. **Verdict: WH6 verdict (Malaysia faster) does NOT flip but the data-infrastructure pillar is materially weakened. Dual-track recommendation supersedes "Indonesia second-phase only".**

**C2. Malaysia GP TPA denial rate magnitude (Stage 1 PP1.3, Stage 5 PP5.1) — RESOLVED inline**

- **Claim A (original Stage 1 draft):** 67% of Malaysian specialists report GL revocation post-admission.
- **Claim B (deep-research PP1.3-freq-3):** PMCare disclosed ~1.3% outpatient claim denial rate, ~99% claim approval full-year 2024.
- **Resolution:** Different transactions. 67% is INPATIENT SPECIALIST GL revocation; 1.3% is OUTPATIENT PANEL GP claim denial. Both true; Stage 1 PP1.3 now correctly characterises GP-side pain as cashflow + admin burden, not denial. Stage 5 PP5.1 retains the 67% for the inpatient specialist context.

### Medium severity

**C3. Malaysia private GP EMR adoption — UNRESOLVED**

- **Claim:** ~79.6% Malaysian urban private GP EMR adoption.
- **Source quality:** Hong Kong 2015 study used as geo-proxy.
- **No primary MY source found.** Both sides of WH6 readiness compare should treat this as Low confidence.

**C4. MCU collation labor anchor (Stage 3 PP3.1) — UNRESOLVED**

- **Claim:** 250–500 staff-hours per 1,000-employee MCU campaign.
- **Source quality:** ASSUMED-3 (zero empirical source).
- **Deep-research outcome:** CONFIRMED-SCARCE. No primary or secondary source provides direct benchmark. Closest proxy = Brebes RSUD (Indonesian public hospital): 3 days to 1 week per batch with 20 managing staff. Tagged as known gap.

**C5. PMCare 1.3% denial rate definitional scope — UNRESOLVED**

- 1.3% covers formal denials only. Excludes pre-auth deferrals, partial payments, 10-15% panel deductions, 2-3 month payment delays.
- BNM has not independently audited. Self-disclosed under political pressure post-CodeBlue survey.
- True GP-side total economic friction is unquantified — flagged as caveat in stage-1.md PP1.3.

## Vertical-slice diversity check (post-cross-validator)

**Result: FAIL.** Per cross-stage.json:
- Only 5 primary-gov + 9 primary-ministry sources across the 148-URL corpus (9% of total)
- Markets where BPJS Kesehatan, Kemenkes, MOH Malaysia, OJK, BNM publish directly relevant primary statistics
- All labor cost models share JobStreet/Indeed/Glassdoor wage anchors instead of BPS Sakernas / DOSM Salaries Survey
- 46 explicitly ASSUMED-tagged claims across all 6 stages

This is a known structural finding: SEA private healthcare operational data is sparse in published sources. Confirmed-scarce, not failure to search.

## Top-3 highest-leverage remediation actions (for any pass-4 or attended-mode re-run)

1. **Fetch BPJS Kesehatan Laporan Tahunan 2023 for RPPT corroboration** — upgrades Stage 2 + Stage 6 simultaneously (the 32% Level 4 figure is currently single-source primary-ministry).
2. **Replace JobStreet/Indeed salary anchors with BPS Sakernas and DOSM Survei Pendapatan 2024 primary tables** — upgrades cost model confidence in ALL 6 stages simultaneously.
3. **Fetch BNM Insurance Annual Statistics 2024 + PMCare PDPA-compliant disclosure** — cross-validates PMCare operational figures that dominate Stage 5.

## High-priority data gaps for field validation

| Gap | Stage | Validation route |
|---|---|---|
| ID/MY GP daily patient volume (private) | 1 | 10-clinic survey via MMA / IDI |
| FKTP-level ICD-10 error rate confirmation | 1 | BPJS Kesehatan FKTP audit data |
| SATUSEHAT integration operational depth | 6 | Kemenkes BKPK SATUSEHAT dashboard primary data |
| Post-MCU follow-up compliance ID/MY | 4 | Naluri / Prodia OHI / Pertamedika longitudinal data |
| TPA cashflow / payment delay distribution | 1, 5 | MMA panel-clinic survey |
| Willingness-to-pay for AI modules | All | 20-clinic willingness-to-pay survey (any vendor partner) |
