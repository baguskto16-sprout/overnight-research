# Stage 3 — Factual-error corrections (apply during canonical artifact build)

Source: `pass-2-validation/stage-3.json` flags.

## Correction 1 — Indonesia COB regulation designation

- **Original draft:** "POJK 36/2025" effective Dec 2026
- **Verified designation:** **POJK 36/2024** with implementing **Circular Letter 7/SEOJK.05/2025**, **effective 1 January 2026** (not December 2026)
- **Source:** OJK regulatory database (ojk.go.id)
- **Apply:** replace all instances of "POJK 36/2025" with "POJK 36/2024" and "Dec 2026" with "1 Jan 2026"

## Correction 2 — Malaysia claims ratio framing

- **Original draft:** "111% claims ratio for Malaysia 2023"
- **Verified figures:**
  - LIAM incurred claims ratio (ICR) for 2023 single year: **65.9%**
  - The 111% figure conflates a multi-year BNM band (2018–2023, excluding pandemic years) with a single-year figure
- **Source:** LIAM 2023 Annual Report (incurred claims ratio); BNM Financial Stability Review
- **Apply:** clarify "MHIT cumulative incurred claims ratio 2018–2023 ex-pandemic 111%; 2023 single-year LIAM ICR 65.9%" — both figures matter but the framing changes the urgency narrative.

## Correction 3 — BPJS VEDIKA citation context

- **Original draft:** VEDIKA staff reduction from 1,345 → 961 and settlement time from 45 → 15 days, framed as system-wide BPJS impact
- **Verified context:** These figures are from a 2019 **single-hospital study at RSUD Sidoarjo**, NOT current BPJS system-wide statistics
- **Apply:** reframe as "RSUD Sidoarjo 2019 VEDIKA implementation case study showed FTE reduction 1,345 → 961 and settlement time 45 → 15 days" — and add an `[ASSUMED-N]` tag for system-wide BPJS-Kesehatan post-VEDIKA performance with a question for primary BPJS-Kesehatan annual report source.

## Correction 4 — Malaysia NCD cost data vintage

- **Original draft:** "RM 9.65 billion NCD cost (Malaysia)"
- **Verified vintage:** Figure based on 2017 data, released August 2022 — outdated-source override applies
- **Apply:** retain figure with explicit "(MOH 2017 data, released August 2022)" attribution; flag as a "directional anchor — recent figure would likely be larger given NHMS 2023 prevalence increases".

## Correction 5 — InterPixels claims-cost benchmark

- **Original draft:** Stage 3 PP3.2 manual claims processing cost cited as "USD 43–57 per claim" from InterPixels AI
- **Override applied:** InterPixels is a vendor marketing its own automation product → vendor-marketing override → auto-Low
- **Apply:** demote citation to Low; cross-reference with the US benchmark explicitly tagged "US-data-applied-as-proxy" — and add a deep-research candidate for KPMG/Deloitte/EY SEA insurance automation reports as the primary upgrade path.

## Net effect on Stage 3

Of the 5 corrections, only Correction 2 (claims ratio framing) materially shifts the urgency narrative. Corrections 1, 3, 4, and 5 are framing/citation upgrades — the underlying PPs remain valid but require precise attribution. PP3.5 (CDM administration) and PP3.4 (fraud detection) carry the most Low/ASSUMED claims; both should ship with `Low confidence — field validation required` flag in the canonical artifact.
