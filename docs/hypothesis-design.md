# Designing inputs that produce high-confidence runs

The single biggest driver of corpus quality is **input scope**, not skill tuning. A worldwide scan across 5 hypotheses and 4 geographies will land at ~50% Low confidence even with a perfect pipeline. The same effort applied to a tighter input lands at 20–25% Low.

This is a pre-flight checklist for the `input/<topic>.txt` file.

## The 7 design rules

1. **One unit of analysis, named explicitly.** The skill maps 4–7 *actors* (stages). Tell it which axis to slice on. Bad: "solutions in the logistics industry." Good: "*the journey* from shipper tender to delivery confirmation, sliced into 6 actor stages I list below." If you let the skill pick the slice it will pick something plausible but not necessarily what you want.

2. **Narrow to geographies where primary data exists.** Primary-source coverage by region (informal heuristic):
   - **High:** US, UK, EU-27, Japan, Australia. Government statistics, sector regulators, 10-K filings, top-tier consultancy reports — all in English, all publicly available.
   - **Medium:** Singapore, India, China, Brazil, Mexico, Korea. Government statistics in English (SG/IN) or via WB/ADB English summaries. Consultancy coverage exists.
   - **Low:** Indonesia, Thailand, Malaysia, Vietnam, Philippines, MENA ex-Israel, Africa ex-RSA, LATAM ex-Brazil/Mexico. Statistics often in local language; private market data only available in regional aggregator reports.
   - **Implication:** if SEA is your *target market*, run a worldwide scan but anchor each stage's primary data in High-coverage geos. Don't ask the skill to size SEA-specific markets — that's where ASSUMED tags multiply.

3. **3 hypotheses max in the input, not 5+.** Each working hypothesis becomes a multi-stage test. With 5 hypotheses across 6 stages, you have 30 test points — most run thin. With 3, each test gets real depth.

4. **Per-stage data anchor named in the input.** For each stage, name 1–2 source categories you *expect* to find primary data in. Example:
   - "Stage 4 (RTTVPs): expect SEC 10-K filings (project44 acquired by E2open; check E2open 10-K), Gartner MQ for RTTVPs (cited not quoted), top-tier consultancy reports (McK supply-chain practice publishes annually)."
   - This tells the value-chain-mapper *where to look first* instead of falling into trade press.

5. **Specify the buyer.** "Solutions to manage risk" is too broad. "Solutions a Tokio Marine cargo underwriter would buy / partner with / underwrite around" is sharp — it filters out tools nobody insurance-adjacent would care about (e.g., warehouse-internal WMS).

6. **Define out-of-scope explicitly with reasons.** The skill respects scope tags. The more you tell it what *not* to map, the more depth it puts into what's in scope. Example:
   - "Out of scope: last-mile parcel delivery (different unit economics), maritime port operations (port-side not journey-side), pure spot-pricing marketplaces with no risk dimension."

7. **State the downstream use.** If output goes into a pitch deck, the skill should optimize for "named solutions + pros/cons + business model" not "academic-style market analysis." If output goes into a regulatory submission, the reverse. The skill reads `## Run notes` for this guidance — be explicit.

## Bad vs good — concrete rewrite

### Bad (~50% Low confidence outcome)

```
## Topic
Risk management in logistics in Southeast Asia.

## Hypothesis
There are blind spots in vendor selection, in-transit monitoring, and handoffs.

## Geography
Indonesia, Singapore, Thailand, Malaysia.

## Working hypotheses
1. Fragmented tools cause blind spots
2. Shippers and 3PLs work with subcontractors
3. Insurance pricing is disconnected from real journey data
4. Incident response is slow
5. IoT is point-deployed not journey-deployed
```

Problems: unit of analysis unspecified (solution? actor? region?), 4 Low-data geographies, 5 hypotheses, no per-stage data anchor, no buyer specified, no out-of-scope.

### Good (~25% Low confidence outcome)

```
## Topic
Worldwide scan of risk-management solutions across the freight journey,
mapped against where a Tokio Marine cargo underwriter would buy, partner
with, or underwrite around them.

## Hypothesis
The structural authorization gap at the spot-carrier subcontracting tier
is the largest unaddressed risk-management opportunity for shippers and
3PLs. Existing tools (TMS, RTTVP, cargo IoT, claims platforms) lose
signal at the sub-carrier handoff, leaving cargo insurers unable to
price the subcontracted leg.

## Scope
In: TMS / freight procurement, fleet & driver management, real-time
visibility platforms (RTTVPs), cargo IoT, cargo insurance & claims
platforms. Solutions targeting shippers, 3PLs, or sub-carriers.

Out: Last-mile parcel delivery (different unit economics), maritime
port-side systems (not journey-side), warehouse-internal WMS,
passenger telematics, pure spot-pricing marketplaces without a
risk dimension.

## Geography
Primary-data anchors: US, UK, EU-27 (SEC filings, sector regulators,
top-tier consultancy reports all available). Target deployment market:
SEA (SG, ID, TH, MY) — flag SEA presence per solution but do NOT
size SEA-specific markets in this run.

## Working hypotheses (3, narrow)
1. Sub-carrier authorization gap — RTTVPs lose granular signal once
   3PL subcontracts. Test against: project44/FourKites public coverage
   data, E2open 10-K, top-tier consultancy supply-chain reports.
2. Insurance-telematics disconnect — premiums priced off declared
   values, not real-time data, despite telematics ubiquity. Test against:
   SambaSafety annual telematics report, ATRI operational cost reports,
   Big 4 / consultancy InsurTech reports.
3. Reinsurance verification gap post-Vesttoo — alternative reinsurance
   capital tightening for cargo InsurTech. Test against: AM Best, Artemis,
   Aon / Marsh public disclosures, Munich Re / Swiss Re investor
   presentations.

## Run notes
Output feeds the competitive landscape section of a Tokio Marine + ID&E
venture pitch deck. Each solution profile should fit in ~150 words and
include: what it does, primary user, business model, pros, cons, SEA
presence. Prefer top-tier consultancy reports and audited filings over
trade press. Tag any URL that needs Playwright (paywall / anti-bot) as
[NEEDS-ATTENDED-FETCH] so the consultancy enrichment pass can pick it up.
```

Differences that drive the confidence gain:
- Unit of analysis (solutions, mapped against an insurer's lens)
- 3 hypotheses, each with named primary sources to test against
- Geographies separated into "where data lives" vs "where deployment happens"
- Out-of-scope reasons given (skill respects)
- Buyer specified (Tokio Marine underwriter — a real lens)
- Output use specified (deck → forces concise per-solution profiles)
- Attended-fetch tag mentioned (skill knows to emit it)

## Run-it-through-healthcheck first

```sh
./scripts/healthcheck.sh ./input/<your-topic>.txt
```

The healthcheck verifies the required sections (Topic, Hypothesis, Scope, Geography, Working hypotheses) are present. If any are missing, the orchestrator will write `BLOCKED.md` and stop — you don't want to discover that 5 minutes into a 4-hour run.
