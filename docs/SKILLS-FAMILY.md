# Skills family roadmap

This document describes the planned family of overnight-research skills at Wright Partners. Only the first skill (`overnight-research`) is currently built. The other three are planned but unbuilt.

## The four-skill pipeline

```
Hypothesis input
    │
    ▼
┌──────────────────────────────┐
│  overnight-research (v3)     │  ✅ this repo
│  Run 1 — value chain         │
│         + pain points        │
└──────────────────────────────┘
    │
    ▼ (raw-claude-* artifacts in stage folders)
┌──────────────────────────────┐
│  overnight-buyer-validation  │  🔮 future repo
│  Run 2 — named companies     │
│         + buyer ICPs         │
│         + Playwright LinkedIn│
└──────────────────────────────┘
    │
    ▼ (named buyers + value chain players)
┌──────────────────────────────┐
│  overnight-financial-model   │  🔮 future repo
│  Auto-draft financial model  │
│  (TAM/SAM, unit economics,   │
│   revenue scenarios)         │
└──────────────────────────────┘
    │
    ▼ (financial model + research)
┌──────────────────────────────┐
│  overnight-pitch-prep        │  🔮 future repo
│  Research → deck content     │
│  (calls slides-md + pptx)    │
└──────────────────────────────┘
```

Each skill consumes the previous skill's output. Each is independently runnable if the upstream output exists in the engagement repo.

---

## Skill 1 — overnight-research (this repo, built)

**Status:** v3 shipped.

**Input:** Hypothesis input file (topic, scope, geography, working hypotheses).

**Output:** Two artifacts in stage folders + summary in scratchpad:
- `[engagement]/11-value-chain/raw-claude-value-chain-[topic].md`
- `[engagement]/12-pain-points/raw-claude-pain-points-[topic].md`
- `[engagement]/90-scratchpad/raw-claude-overnight/[run-id]/raw-claude-summary-[topic].md`

**Agents used:** value-chain-mapper, pain-point-researcher, source-validator, deep-research.

**Quality target:** structurally matches IMI's `26-idea-imicc-datacenters/22-pain-points/by-stage.md`.

**Sub-agents that get reused by future skills:** value-chain-mapper, source-validator, deep-research.

---

## Skill 2 — overnight-buyer-validation (planned)

**Status:** Not built. Future repo `Wright-Partners/overnight-buyer-validation`.

**Input:** Output from overnight-research (must exist in engagement stage folders) + buyer-validation specific config.

**Output:**
- `[engagement]/21-outreach-and-interviews/raw-claude-named-companies-[topic].md` (or `24-` in ideation template)
- `[engagement]/21-outreach-and-interviews/raw-claude-buyer-icps-[topic].md`
- `[engagement]/21-outreach-and-interviews/raw-claude-named-contacts-[topic].md` (50+ contacts via Playwright)

**What it does (Run 2 — extension from Run 1):**

1. Read overnight-research outputs as context
2. For each value chain stage, identify named companies operating in that stage in target geography (public web research — industry directories, company websites, news, gov filings, conference attendee lists)
3. Map value chain extension actors (OEMs, fuel suppliers, maintenance providers) by company name
4. Profile buyer ICPs (job titles, company size, decision authority, signals of intent)
5. Drive Playwright-based LinkedIn automation: login session, ICP-matched search, navigate result pages, capture named contacts, CSV export

**Agents needed (some new, some reused):**

- `value-chain-mapper` (reused) — extend value chain output into named players
- `buyer-icp-profiler` (NEW) — identify decision-makers and buying personas
- `linkedin-fetcher` (NEW) — Playwright orchestration: login, search filters, paginated result extraction, CSV emit
- `source-validator` (reused) — independent confidence scoring
- `deep-research` (reused) — for weak claims

**LinkedIn handling — Playwright automation:**

This skill drives a Playwright-based browser session to retrieve LinkedIn search results matching ICP profiles. The skill spec will document:

- Session and credential management (LinkedIn auth handled via local credential store; never logged or committed)
- Search filter construction from ICP profiles (job title, industry, company size, geography, tenure)
- Result page navigation, pagination, and structured contact extraction
- CSV-style output with name, title, company, profile URL, geography, source query

Operational notes for the skill spec when built:
- Run during overnight window with conservative pacing between actions
- Use a dedicated LinkedIn session, not a partner's primary account
- Persist captured raw HTML pages to scratchpad for audit / re-extraction without re-fetching
- Surface any session interruptions (captcha, restriction prompts) as a halt-and-report condition rather than a silent failure

The skill will treat the captured contact list as research feedstock — `raw-claude-` prefix, requires human review before any outreach activity.

---

## Skill 3 — overnight-financial-model (planned)

**Status:** Not built. Future repo `Wright-Partners/overnight-financial-model`.

**Input:** Outputs from overnight-research + overnight-buyer-validation in engagement repo.

**Output:**
- `[engagement]/31-business-model/raw-claude-tam-sam-[topic].md`
- `[engagement]/31-business-model/raw-claude-unit-economics-[topic].md`
- `[engagement]/31-business-model/raw-claude-revenue-scenarios-[topic].md`
- `[engagement]/31-business-model/raw-claude-financial-model-[topic].xlsx` (generated via openpyxl)

**What it does:**

1. From value chain market sizing: aggregate TAM
2. From buyer ICP and pain point WTP: estimate SAM
3. From comparable industry benchmarks: estimate unit economics
4. Generate 3 scenarios (base, downside, upside) with sensitivity analysis
5. Output Excel financial model with assumptions tab

**Agents needed:**

- `tam-sam-builder` (NEW)
- `unit-economics-modeler` (NEW)
- `scenario-builder` (NEW)
- `source-validator` (reused)
- `deep-research` (reused)

**Quality target:** structurally matches Cremer's `26-design-cremer-biomass/22-solution-concepts/2026-04-20-biogas-financial-model.md`.

---

## Skill 4 — overnight-pitch-prep (planned)

**Status:** Not built. Future repo `Wright-Partners/overnight-pitch-prep`.

**Input:** All previous skill outputs in engagement repo.

**Output:**
- `[engagement]/80-client-deliverables/[date]-pitch-md.md`
- `[engagement]/80-client-deliverables/[date]-pitch.pptx` (via slides-md + slides-pptx skills from zz-skills)

**What it does:**

1. Read all `raw-claude-*.md` artifacts in stage folders
2. Compile into structured pitch narrative following WP pitch format
3. Generate slide-ready markdown via `slides-md` skill
4. Render to .pptx via `slides-pptx` skill
5. Output deck-ready artifacts in 80-client-deliverables/

**Agents needed:**

- `pitch-narrative-writer` (NEW)
- `slide-mapper` (NEW — converts research findings to slide structure)
- Existing zz-skills: `pitch-writing`, `slides-md`, `slides-pptx`

**Quality target:** structurally matches Tokio Marine pitch decks and Cremer Venture Board decks from the WP reference set.

---

## Why this family architecture

### Each skill owns one quality target

- overnight-research: matches IMI `22-pain-points/by-stage.md`
- overnight-buyer-validation: matches Cremer `companies-spoken-to-matrix.md` + Playwright-driven LinkedIn contact list
- overnight-financial-model: matches Cremer `biogas-financial-model.md`
- overnight-pitch-prep: matches Tokio Marine pitch decks + Cremer SteerCo decks

Single quality target per skill = clearer development, clearer regression testing, clearer "is it good enough" decisions.

### Composability

A team could:
- Run only `overnight-research` for a quick exploration
- Run `overnight-research` + `overnight-buyer-validation` for BD-ready ideation
- Run all four for a complete venture-design pre-pitch package
- Mix and match based on engagement stage

### Independent iteration

Each skill ships on its own cadence. Bug fixes in `overnight-financial-model` don't gate fixes in `overnight-research`. New features (e.g. better cost benchmarking) can land in one skill without forcing all-skills releases.

### Shared agent library (eventually)

When 2+ skills exist, common agents (value-chain-mapper, source-validator, deep-research) move to:
- `Wright-Partners/overnight-shared-agents` — git submodule pulled by each skill repo

Until then, agents live in each skill's `.claude/agents/` (slight duplication but acceptable for early iteration).

---

## Roadmap (post overnight-research v3 ship)

### Q3 2026 — Build `overnight-buyer-validation`

Triggered by: positive partner feedback on overnight-research output, plus a real engagement that needs Run 2 (named companies + buyer ICPs).

Effort estimate: ~2 weeks of skill+agent design + 1 week dry-run iteration.

### Q4 2026 — Build `overnight-financial-model`

Triggered by: WP team requests financial modeling automation in active engagements (Cremer, Lippo, IMI all hit this stage).

Effort estimate: ~3 weeks (more complex — needs Excel generation via openpyxl, scenario logic, sensitivity analysis discipline).

### 2027 — Build `overnight-pitch-prep`

Triggered by: deck production load from existing engagements becomes a bottleneck.

Effort estimate: ~2 weeks (heavy reuse of `slides-md` + `slides-pptx` from zz-skills).

### 2027+ — Consolidation

If all 4 skills are mature and stable:
- Move common agents to `Wright-Partners/overnight-shared-agents` submodule
- Consider folding into `Wright-Partners/zz-skills` if the planned "zz-skills as sub-repo of zz-template-design" migration goes through
- Each skill's repo becomes a thin layer over the shared agent library

---

## Non-goals

The following are explicitly NOT planned for the overnight-* family:

- **Real-time LinkedIn search during business hours** — LinkedIn automation runs during the overnight window via `overnight-buyer-validation`'s Playwright agent, not as live interactive search.
- **Real-time research** during business hours — these are batch overnight skills. Real-time research is a different skill family.
- **Client-facing autonomous agent** — outputs are research feedstock for human review, never delivered directly to clients without partner curation.
- **Replacement for field interviews** — every skill outputs `[ASSUMED-N]: to validate <specific question>` tags that explicitly require human-conducted research to resolve.
- **Multi-language output** — all skills output American English. WP convention.

---

## How to propose a new skill in this family

If you want to propose `overnight-X` as a fifth skill:

1. Identify a specific stage of the venture-design lifecycle that's currently manual but pattern-able (per WP existing engagement work).
2. Identify the quality target (which existing engagement file does it look like?).
3. Identify reusable agents vs new ones needed.
4. Pitch in WP team channel. If approved, follow the same template as overnight-research:
   - Multi-agent architecture
   - Vertical slicing
   - Reference templates loaded
   - Source priority enforcement
   - `[ASSUMED-N]` discipline
   - Self-validation gate
   - Engagement-repo-aware output

The pattern is the product. The topic is the variable.
