#!/usr/bin/env bash
# run-attended.sh — Foreground (TUI) Claude run with Playwright MCP enabled.
#
# Purpose: handle stages or follow-up passes that need a real browser to bypass
# captchas, paywalls, or anti-bot walls (consultancy sites, RTTVP vendors that
# refuse WebFetch, etc.). Unlike run-headless.sh, this REQUIRES a human at the
# keyboard to (a) watch the run, (b) solve captchas when prompted, (c) accept
# permission prompts.
#
# Usage:
#   ./scripts/run-attended.sh stage-4 ./input/<topic>.txt [run-id]
#   ./scripts/run-attended.sh consultancy-enrichment [run-id]
#   ./scripts/run-attended.sh weak-claims [run-id]
#
# Modes:
#   stage-4                 — re-run only Stage 4 (in-transit visibility / RTTVPs)
#                             in attended mode, replacing its prior validated output.
#   consultancy-enrichment  — cross-stage pass that re-fetches every URL tagged
#                             [NEEDS-ATTENDED-FETCH] in the prior run's drafts,
#                             plus a broad sweep of mckinsey/bcg/bain/deloitte/
#                             pwc/ey/kpmg/rolandberger/oliverwyman for the topic.
#                             Outputs to enrichment/ and is merged manually.
#   weak-claims             — re-run deep-research on every Low-confidence claim
#                             flagged by source-validator that hit the resource
#                             cap on the prior run.
#
# Prerequisite (one-time on this machine):
#   1. Install Playwright MCP: `claude mcp add playwright npx @modelcontextprotocol/server-playwright`
#      (or whichever Playwright MCP server is current — see docs/attended-mode.md)
#   2. First Playwright browser pull: `npx playwright install chromium`
#   3. The MCP must show as 'connected' in `claude mcp list` before running this script.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

MODE="${1:-}"
case "$MODE" in
  stage-4|consultancy-enrichment|weak-claims) ;;
  *)
    echo "Usage: $0 {stage-4|consultancy-enrichment|weak-claims} [args...]"
    exit 1
    ;;
esac

# Sanity checks
command -v claude >/dev/null || { echo "ERROR: claude CLI missing"; exit 1; }
if ! claude mcp list 2>/dev/null | grep -qi 'playwright'; then
  echo "WARNING: 'playwright' MCP not registered. Run:"
  echo "   claude mcp add playwright npx @modelcontextprotocol/server-playwright"
  echo "and try again. (Continuing — Claude will tell you if it can't use Playwright.)"
fi

case "$MODE" in
  stage-4)
    INPUT="${2:-}"
    RUN_ID="${3:-$(ls -td output/raw-claude-overnight/*/ 2>/dev/null | head -1 | xargs basename)}"
    [ -z "$INPUT" ] && { echo "ERROR: input file required for stage-4 mode"; exit 1; }
    [ ! -f "$INPUT" ] && { echo "ERROR: input file not found: $INPUT"; exit 1; }
    [ -z "$RUN_ID" ] && { echo "ERROR: no prior run found to attach Stage 4 re-run to"; exit 1; }
    PROMPT="Re-run Stage 4 (in-transit visibility & cargo IoT) of the overnight-research skill in ATTENDED mode for run $RUN_ID, using the Playwright MCP for any URL that returns empty via WebFetch (paywall, anti-bot, captcha). The input is at $INPUT. Read the existing pass-1-drafts/stage-4-*.md and pass-2-validation/stage-4.json from output/raw-claude-overnight/$RUN_ID/, then for every [NEEDS-ATTENDED-FETCH] URL and every Low-confidence claim, re-fetch the source via Playwright. Update the consolidated raw-claude-value-chain and raw-claude-pain-points artifacts in-place. Append a stage-4-attended-rerun.md note to stages-validated/ summarizing what changed."
    ;;
  consultancy-enrichment)
    RUN_ID="${2:-$(ls -td output/raw-claude-overnight/*/ 2>/dev/null | head -1 | xargs basename)}"
    [ -z "$RUN_ID" ] && { echo "ERROR: no prior run found"; exit 1; }
    PROMPT="Run a CONSULTANCY ENRICHMENT pass for overnight-research run $RUN_ID. Open output/raw-claude-overnight/$RUN_ID/raw-claude-value-chain-*.md and raw-claude-pain-points-*.md. Identify every claim currently scored Low or Medium that could plausibly be evidenced by a top-tier consultancy report (McKinsey, BCG, Bain, Deloitte Insights, PwC Strategy&, EY-Parthenon, KPMG, Roland Berger, Oliver Wyman, Bloomberg NEF) or an audited corporate filing. Use Playwright MCP to navigate and read paywalled / anti-bot consultancy pages, fetch PDFs, run them through markitdown. Re-cite affected claims with new primary sources and propose updated confidence scores. Write an enrichment-consultancy.md summary to output/raw-claude-overnight/$RUN_ID/ listing every claim touched, the new source(s) added, and the score delta. Do NOT modify the canonical raw-claude-*.md files until I review the enrichment summary."
    ;;
  weak-claims)
    RUN_ID="${2:-$(ls -td output/raw-claude-overnight/*/ 2>/dev/null | head -1 | xargs basename)}"
    [ -z "$RUN_ID" ] && { echo "ERROR: no prior run found"; exit 1; }
    PROMPT="Run an ATTENDED WEAK-CLAIMS pass for overnight-research run $RUN_ID. Open output/raw-claude-overnight/$RUN_ID/pass-2-validation/. For every Low-confidence claim that was NOT processed in pass-3-deep-research/ on the original run, invoke the deep-research sub-agent in attended mode with Playwright MCP available — so paywalled and anti-bot sources are actually reachable. Limit total Playwright fetches to 50. Write an enrichment-weak-claims.md summary to output/raw-claude-overnight/$RUN_ID/. Do not modify canonical files."
    ;;
esac

LOG="$REPO_DIR/attended-$MODE-$(date +%Y%m%d-%H%M).log"
echo "→ Running attended ($MODE), foreground — keep this terminal open."
echo "  Log: $LOG"
echo "  Permission prompts WILL appear. Approve each (or ESC to deny)."
echo "  Captchas WILL pop up in a Playwright browser window — solve them yourself."
echo ""
echo "Press Enter to launch claude, or Ctrl-C to abort."
read -r

# Foreground (no --print, no nohup, no dangerously-skip-permissions).
# Output tee'd to log so you can review later, but stays interactive.
claude "$PROMPT" 2>&1 | tee "$LOG"
