# Stage 2 — Factual-error corrections (apply during canonical artifact build)

Source: `pass-2-validation/stage-2.json` flags + `pass-3-deep-research/stage-2/factual-error-fixes.json` outcomes.

## Correction 1 — IHC (Pertamedika / PT Indonesia Healthcare Corporation) hospital count

- **Original draft (Stage 2 VC):** "IHC operates 75 hospitals"
- **Verdict:** CONTRADICTED
- **Verified figure (Pertamedika Annual Report 2023, markitdown-extracted):** 36 Rumah Sakit (hospitals) + 68 Klinik (clinics) at FY2023; 37 hospitals + 73 clinics by FY2024
- **Primary source:** Pertamedika Annual Report 2023 PDF (cite as: PT Pertamedika IHC, *Annual Report 2023*)
- **Origin of "75" error:** appears to be a TOC page number in the AR PDF — not any facility metric
- **Apply:** replace "75 hospitals" with "37 hospitals + 73 clinics (FY2024)" in canonical artifact

## Correction 2 — Indonesia specialist doctor deficit

- **Original draft (Stage 2 PP2.1 root cause):** "Indonesia has a 65,000 specialist deficit"
- **Verdict:** CONTRADICTED
- **Verified figures:**
  - Kemenkes Director Oos Fatimah press conference (26 June 2023): 31,481 specialist deficit; 46,200 active specialists
  - Health Minister statement (May 2024): ~29,000 specialist shortfall
  - The draft's 65,000 likely conflated total *need* (~78,000) with above-current-supply deficit (~31,481)
- **Primary source:** sehatnegeriku.kemkes.go.id press release 26 June 2023; Kemenkes 2024 statement
- **Apply:** replace "65,000 specialist deficit" with "~31,000 specialist deficit (Kemenkes 2023; reconfirmed ~29,000 May 2024)"

## Correction 3 — Peka B40 NCD identification rate

- **Original draft (Stage 2 PP2.3-i):** "41% NCD rate at Peka B40 screening"
- **Verdict:** CONTRADICTED
- **Verified figure:** Nearly 70% of 301,650 Peka B40 participants screened in 2024 had at least one NCD (ProtectHealth Corporation/MOH subsidiary; reported FMT 2 Sep 2025, The Star 3 Sep 2025, independently corroborated)
- **Primary source:** ProtectHealth Corporation Peka B40 2024 results; KKMNOW dashboard `data.moh.gov.my/dashboard/peka-b40` (live dashboard returned HTTP 402 — tagged `[NEEDS-ATTENDED-FETCH]`)
- **Apply:** replace "41%" with "~70%" with the FMT/The Star and ProtectHealth attribution; the KKMNOW dashboard is the primary target for the Phase 2 Playwright pass to confirm the underlying number directly from MOH.

## Net effect on Stage 2

All three corrections strengthen the case for the stage's PPs (specialist deficit and NCD prevalence both make the MCU bottleneck and post-MCU CDM gap LARGER, not smaller). IHC hospital count was a context figure; correcting it does not alter any pain-point conclusion.
