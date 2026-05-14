# Attended-mode passes for overnight-research

## Why

Headless `claude --print` runs fail on three categories of sources that matter the most:

- **Anti-bot / captcha walls** — McKinsey, BCG, Bain, Deloitte, PwC, EY, KPMG, Roland Berger, Oliver Wyman, Bloomberg NEF and many other top-tier consultancies serve a Cloudflare or captcha challenge to non-browser user-agents. `WebFetch` returns empty or boilerplate.
- **Paywalled / login-walled content** — Gartner research notes, Forrester briefs, Armstrong & Associates, IBIS World full PDFs, some Lloyd's List articles, Reuters paywall, FT, WSJ, Nikkei Asia, JOC paywall.
- **JS-rendered single-page apps** — some RTTVP product pages (project44.com / fourkites.com flows) render product details only after login or after extensive client-side JS execution. Plain WebFetch reads the empty shell.

Result: headless runs cite vendor marketing or trade press for claims that *should* be evidenced by primary consultancy reports. That's the entire reason a worldwide scan lands at ~50%+ Low confidence. Attended mode fixes this for the specific stages and follow-up passes where it matters most.

## When to use

Three modes, all in `scripts/run-attended.sh`:

| Mode | When | Typical runtime |
|---|---|---|
| `stage-4` | Stage 4 of any run that scored `0 High` or `>60% Low` on first pass. The visibility/IoT category is the most vendor-marketing-poisoned section in logistics-style scans. | 45–90 min |
| `consultancy-enrichment` | After any complete run, before sending output externally. Targets every `[NEEDS-ATTENDED-FETCH]` URL plus a fresh sweep of the 10 top-tier consultancy sites for topic-specific reports. | 60–120 min |
| `weak-claims` | Any Low claim that hit the deep-research resource cap on the headless run. Reads `pass-2-validation/` and processes anything skipped. | 30–60 min |

These are **not** replacements for the unattended overnight run — they're enrichment passes. The base run still produces the canonical corpus; attended passes upgrade weak claims afterwards.

## Setup (one-time per machine)

```sh
# 1. Install Playwright MCP server
claude mcp add playwright npx @modelcontextprotocol/server-playwright

# (or whichever Playwright-MCP package is current — Anthropic publishes
#  reference servers at https://github.com/modelcontextprotocol/servers)

# 2. Pre-pull the Chromium browser
npx playwright install chromium

# 3. Verify
claude mcp list                  # 'playwright' should show as connected
```

You will need to log into paywalled sources interactively the first time. Sessions persist in `~/Library/Application Support/playwright/` so subsequent runs reuse the login state.

## What changes in the skill

- `value-chain-mapper` and `deep-research` now emit `[NEEDS-ATTENDED-FETCH]: <url>` for any URL that returns empty/blocked via `WebFetch`. The headless run carries these tags forward; attended passes consume them.
- `source-validator` does NOT down-score attended-fetched content separately — the source category alone determines confidence. A McKinsey report fetched via Playwright is `primary-consultancy`, same as if WebFetch had reached it.
- The orchestrator does NOT auto-route to attended mode. It writes the canonical artifacts and stops. The human decides which attended pass(es) to run.

## Trade-offs

- **Requires a human.** No unattended execution, no laptop-lid-closed. If you run this on alphabot via VNC, you have to leave VNC open to solve captchas.
- **Slower per-source.** A real browser is 5–20× slower than `WebFetch`. Budget caps in the script keep this bounded.
- **Cost.** Each attended pass spends real Claude tokens. Budget a separate `--max-cost` per pass.
- **Browser state persists.** Cookies, logins, captcha solves are reused across runs. Don't lose your alphabot user session.

## Running an attended pass

```sh
# Stage 4 re-run (most common after a headless run with weak Stage 4)
./scripts/run-attended.sh stage-4 ./input/<topic>.txt <run-id>

# Consultancy enrichment after any complete run
./scripts/run-attended.sh consultancy-enrichment <run-id>

# Pick up weak claims that hit deep-research cap
./scripts/run-attended.sh weak-claims <run-id>
```

The script will print the prompt it's about to send and wait for Enter. Permission prompts WILL appear — approve each one (Claude needs you to authorize Playwright tool calls; this is by design in attended mode, contrasting with `--dangerously-skip-permissions` in the headless run).

## Reading the output

Attended passes write to `output/raw-claude-overnight/<run-id>/enrichment-<mode>.md`. They do NOT overwrite the canonical `raw-claude-value-chain-*.md` or `raw-claude-pain-points-*.md`. Review the enrichment summary, then manually merge the upgraded citations into the canonical files (or ask claude to do the merge in another short interactive turn).
