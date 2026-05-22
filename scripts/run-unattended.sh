#!/usr/bin/env bash
# run-unattended.sh — Fully unattended overnight research with auto-Playwright enrichment.
#
# Combines watchdog-run.sh (auto-resume on usage limit) with a second phase that
# automatically re-fetches every [NEEDS-ATTENDED-FETCH] URL via the Playwright MCP
# in headless mode, then auto-merges any new sources into the canonical raw-claude-*.md
# files and re-renders FINAL-REPORT.html.
#
# Captchas / MFA walls / aggressive anti-bot defeat headless Playwright too — those
# URLs get re-tagged [CONFIRMED-INACCESSIBLE] (truthful) instead of being retried.
#
# Usage:
#   ./scripts/run-unattended.sh <input-file>     # start fresh
#   ./scripts/run-unattended.sh resume           # resume incomplete run (either phase)
#
# Two phases, each with its own auto-resume loop:
#   PHASE 1 — main overnight-research skill run (WebFetch path, fast).
#             Ends when RUN-COMPLETE.txt appears.
#   PHASE 2 — Playwright enrichment of [NEEDS-ATTENDED-FETCH] URLs.
#             Auto-merges into raw-claude-*.md (backup as .bak).
#             Ends when ENRICHMENT-COMPLETE.txt appears (or skipped if no targets).
#
# Each claude --print call inside a phase auto-resumes if usage-limit hits.
# Cap: 36h total (24h phase 1 + 8h phase 2 + 4h buffer). After cap, exits 2.
#
# Survives SSH disconnect & terminal close via tmux self-detach.

set -euo pipefail

# ---------------------------------------------------------------------------
# Environment setup (matches watchdog-run.sh: non-interactive SSH safe).
# ---------------------------------------------------------------------------
export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh" >/dev/null 2>&1 || true
  NODE_BIN=$(ls -d "$NVM_DIR"/versions/node/*/bin 2>/dev/null | sort -V | tail -1)
  [ -n "$NODE_BIN" ] && export PATH="$NODE_BIN:$PATH"
fi
for n in /opt/homebrew/Cellar/node@22/*/bin /opt/homebrew/Cellar/node/*/bin; do
  [ -x "$n/node" ] && export PATH="$n:$PATH" && break
done

_unlock_keychain() {
  local kc="$HOME/Library/Keychains/login.keychain-db"
  local pass="${KEYCHAIN_PASSWORD:-}"
  [ -z "$pass" ] && [ -r "$HOME/.keychain-pass" ] && pass="$(cat "$HOME/.keychain-pass")"
  if [ -n "$pass" ]; then
    security unlock-keychain -p "$pass" "$kc" 2>/dev/null \
      || echo "⚠ keychain unlock failed — claude OAuth read may fail" >&2
  fi
}
_unlock_keychain

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
TMUX_SESSION="overnight-unattended"
TOTAL_CAP_HOURS=36
PHASE1_CAP_HOURS=24
PHASE2_CAP_HOURS=8
POLL_SECONDS=60
RESET_BUFFER_SECONDS=300
PLAYWRIGHT_BUDGET_MIN=120        # max wall-clock for phase 2

# ---------------------------------------------------------------------------
# Arg parsing
# ---------------------------------------------------------------------------
MODE="${1:-}"
if [ -z "$MODE" ]; then
  cat <<EOF
Usage: $0 <input-file>     # start fresh fully-unattended run
       $0 resume           # resume incomplete unattended run

Two phases, both auto-resume on usage limit:
  Phase 1: Main overnight-research run (no Playwright)
  Phase 2: Playwright enrichment of [NEEDS-ATTENDED-FETCH] URLs, auto-merge

Output: detached tmux session "$TMUX_SESSION". Survives SSH/terminal close.
Cap: ${TOTAL_CAP_HOURS}h total.
EOF
  exit 1
fi

# ---------------------------------------------------------------------------
# Auto-detach into tmux on first invocation
# ---------------------------------------------------------------------------
if [[ -z "${UNATTENDED_INSIDE_TMUX:-}" ]]; then
  # Pre-flight checks (only before detach, so failures surface to user)
  command -v claude    >/dev/null || { echo "ERROR: claude CLI missing"; exit 1; }
  command -v jq        >/dev/null || { echo "ERROR: jq missing (brew install jq)"; exit 1; }
  command -v markitdown>/dev/null || { echo "ERROR: markitdown missing (pip install markitdown --user)"; exit 1; }
  command -v tmux      >/dev/null || { echo "ERROR: tmux missing (brew install tmux)"; exit 1; }

  [ -f "$REPO_DIR/.claude/refs/imi-pain-points-template.md" ] || {
    echo "ERROR: References not loaded — run ./scripts/setup.sh first"; exit 1; }

  if [ "$MODE" != "resume" ]; then
    [ -f "$MODE" ] || { echo "ERROR: Input file not found: $MODE"; exit 1; }
  fi

  # Playwright MCP connected? (warning only, phase 2 will skip if missing)
  if ! claude mcp list 2>&1 | grep -i playwright | grep -qi "connected"; then
    echo "WARNING: Playwright MCP not connected. Phase 2 (enrichment) will be skipped."
    echo "  Register: claude mcp add playwright npx @playwright/mcp@latest --browser chrome"
    echo "  Continuing — Phase 1 main run will still produce ship-with-flag artifacts."
    sleep 3
  fi

  # Kill any prior unattended session
  tmux kill-session -t "$TMUX_SESSION" 2>/dev/null || true
  rm -f "$REPO_DIR/.unattended.pid"

  echo "→ Launching unattended run inside detached tmux session '$TMUX_SESSION'"
  echo "  Watch live:    tmux attach -t $TMUX_SESSION    (Ctrl-b then d to detach)"
  echo "  Watchdog log:  $REPO_DIR/unattended-<timestamp>.log"
  echo ""

  # Pass UNATTENDED_INSIDE_TMUX so the re-entered script knows to actually run.
  # Use bash -c to set env var inside tmux session (tmux strips most env).
  tmux new-session -d -s "$TMUX_SESSION" \
    "UNATTENDED_INSIDE_TMUX=1 bash $REPO_DIR/scripts/run-unattended.sh $MODE"

  sleep 3
  if tmux has-session -t "$TMUX_SESSION" 2>/dev/null; then
    echo "  ✓ Session launched."
    echo "  Stop:          tmux kill-session -t $TMUX_SESSION"
    echo ""
    echo "Quick health one-liner:"
    echo "  ps -p \$(cat $REPO_DIR/.unattended.pid 2>/dev/null) -o pid,etime,stat,command 2>&1 | tail -2"
    exit 0
  else
    echo "  ✗ Session failed to start. Check tmux output."
    exit 1
  fi
fi

# ===========================================================================
# Below this line runs INSIDE the detached tmux session.
# ===========================================================================

WATCHDOG_LOG="$REPO_DIR/unattended-$(date +%Y%m%d-%H%M).log"
PID_FILE="$REPO_DIR/.unattended.pid"
echo $$ > "$PID_FILE"

ts() { date "+%F %T %Z"; }
log() { echo "[$(ts)] $*" | tee -a "$WATCHDOG_LOG"; }

cleanup() { rm -f "$PID_FILE"; }
trap cleanup EXIT

START_EPOCH=$(date +%s)
TOTAL_CAP_EPOCH=$((START_EPOCH + TOTAL_CAP_HOURS * 3600))

log "═══ Unattended run start (PID $$) ═══"
log "Mode: $MODE"
log "Cap: ${TOTAL_CAP_HOURS}h total | Phase 1: ${PHASE1_CAP_HOURS}h | Phase 2: ${PHASE2_CAP_HOURS}h"
log "Poll: ${POLL_SECONDS}s | Reset buffer: ${RESET_BUFFER_SECONDS}s"

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

latest_run_dir() {
  ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | head -1 | sed 's:/$::'
}

# Delete obviously-empty orphan dirs from killed prior launches BEFORE we
# snapshot. An orphan is a dir under output/raw-claude-overnight/ that has no
# checkpoint.json, no RUN-COMPLETE.txt, no pass-0-plan.md, and contains only
# empty subdirs / zero-byte files. Claude can otherwise REUSE these scaffolds
# on a fresh run, and we'd lose the new run's identity.
cleanup_empty_orphans() {
  local d
  for d in "$REPO_DIR"/output/raw-claude-overnight/*/; do
    d="${d%/}"
    [ -d "$d" ] || continue
    [ -f "$d/checkpoint.json" ] && continue
    [ -f "$d/RUN-COMPLETE.txt" ] && continue
    [ -f "$d/pass-0-plan.md" ] && continue
    # Has any non-empty file anywhere in subtree?
    if find "$d" -type f ! -empty 2>/dev/null | head -1 | grep -q .; then
      continue
    fi
    log "Cleaning up empty orphan dir: $d"
    rm -rf "$d"
  done
}

# Snapshot which run dirs existed BEFORE we launched. The fresh Phase 1 run will
# create a new dir; we only treat anything outside this snapshot as "ours".
# Resume mode skips this — it explicitly targets the pre-existing latest dir.
PRE_EXISTING_RUN_DIRS=""
snapshot_pre_existing_runs() {
  PRE_EXISTING_RUN_DIRS=$(ls -d "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null \
                          | sed 's:/$::' | sort | tr '\n' '|')
}

# Returns the run dir for THIS unattended invocation:
#   - resume mode: the pre-existing latest (we're continuing it)
#   - fresh mode:  the newest dir that's either (a) brand new (not in snapshot),
#                  OR (b) in snapshot BUT a key marker file was written after
#                  we launched (claude reused a pre-existing orphan).
active_run_dir() {
  if [ "${MODE}" = "resume" ]; then
    latest_run_dir
    return
  fi
  local d marker mtime
  for d in $(ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | sed 's:/$::'); do
    # Case A: dir didn't exist before our launch.
    if ! echo "|$PRE_EXISTING_RUN_DIRS" | grep -qF "|$d|"; then
      echo "$d"
      return
    fi
    # Case B: pre-existing dir, but claude wrote a marker into it after we launched.
    for marker in checkpoint.json RUN-COMPLETE.txt pass-0-plan.md; do
      if [ -f "$d/$marker" ]; then
        mtime=$(stat -f '%m' "$d/$marker" 2>/dev/null || echo 0)
        if [ "$mtime" -ge "$START_EPOCH" ]; then
          echo "$d"
          return
        fi
      fi
    done
  done
  # No active dir yet — claude is still in setup phase.
  echo ""
}

latest_run_log() {
  ls -t "$REPO_DIR"/run-*.log "$REPO_DIR"/resume-*.log "$REPO_DIR"/enrichment-*.log 2>/dev/null | head -1
}

claude_proc_alive() {
  pgrep -f 'claude --print --dangerously-skip-permissions' >/dev/null
}

# Parse Claude limit message — supports "6am", "12pm", "6:30am" formats.
# Returns epoch seconds for next reset time, or empty if unparseable.
parse_reset_epoch() {
  local line="$1"
  local clock
  clock=$(echo "$line" | grep -oE 'resets [0-9]{1,2}(:[0-9]{2})?(am|pm)' \
           | head -1 | sed 's/^resets //')
  [ -z "$clock" ] && { echo ""; return 1; }

  local hh mm ampm target_h target_m target_epoch now_epoch
  hh=$(echo "$clock" | grep -oE '^[0-9]{1,2}')
  mm=$(echo "$clock" | grep -oE ':[0-9]{2}' | tr -d ':')
  ampm=$(echo "$clock" | grep -oE '(am|pm)$')
  [ -z "$mm" ] && mm=0
  target_h=$hh
  [ "$ampm" = "pm" ] && [ "$hh" != "12" ] && target_h=$((hh+12))
  [ "$ampm" = "am" ] && [ "$hh" = "12" ]   && target_h=0
  target_m=$mm

  target_epoch=$(date -j -f "%Y-%m-%d %H:%M" \
    "$(date +%F) $(printf '%02d:%02d' "$target_h" "$target_m")" +%s)
  now_epoch=$(date +%s)
  if [ "$target_epoch" -le "$now_epoch" ]; then
    target_epoch=$((target_epoch + 86400))
  fi
  echo "$target_epoch"
}

# Sleep until reset time + buffer (called when claude proc died on limit-hit).
sleep_until_reset() {
  local log_file="$1"
  local limit_line reset_epoch wake_epoch sleep_seconds
  limit_line=$(grep -E "hit your (limit|usage limit)|usage limit reached" "$log_file" | tail -1 || true)
  if [ -z "$limit_line" ]; then
    log "Limit-hit signal not found in log; defaulting to 5h sleep"
    sleep 18000
    return
  fi
  reset_epoch=$(parse_reset_epoch "$limit_line" || echo "")
  if [ -z "$reset_epoch" ]; then
    log "Couldn't parse reset time from: $limit_line; defaulting to 5h sleep"
    sleep 18000
    return
  fi
  wake_epoch=$((reset_epoch + RESET_BUFFER_SECONDS))
  sleep_seconds=$((wake_epoch - $(date +%s)))
  [ "$sleep_seconds" -lt 60 ] && sleep_seconds=60
  log "Limit hit — sleeping ${sleep_seconds}s until $(date -r "$wake_epoch" '+%F %T %Z')"
  sleep "$sleep_seconds"
}

# Run a claude --print prompt and wait until either:
#   - completion marker file appears in run_dir
#   - claude proc dies with limit-hit message (caller handles resume)
#   - phase-cap exceeded
# Returns: 0=done, 1=limit-hit (caller should resume), 2=phase-cap, 3=hard-error
run_claude_phase() {
  local prompt="$1"
  local log_prefix="$2"
  local completion_file="$3"
  local phase_cap_epoch="$4"

  local phase_log="$REPO_DIR/${log_prefix}-$(date +%Y%m%d-%H%M).log"
  log "Launching claude --print → $phase_log"
  log "Prompt (first 120 chars): ${prompt:0:120}…"

  # Phase 2 (enrichment) is tool-locked: Write and NotebookEdit are denied so
  # claude cannot regenerate canonical raw-claude-*.md files. Auto-merge must
  # happen via Edit only. Phase 1 keeps the default tool set.
  # Branch on phase to avoid bash-3.2 empty-array-under-set-u unbound-variable error.
  local claude_pid
  if [ "$log_prefix" = "enrichment" ]; then
    log "Phase 2 tool-lock: --disallowed-tools \"Write NotebookEdit\""
    caffeinate -i claude --print --dangerously-skip-permissions \
      --disallowed-tools "Write NotebookEdit" "$prompt" \
      > "$phase_log" 2>&1 </dev/null &
    claude_pid=$!
  else
    caffeinate -i claude --print --dangerously-skip-permissions "$prompt" \
      > "$phase_log" 2>&1 </dev/null &
    claude_pid=$!
  fi
  log "claude PID $claude_pid"

  while true; do
    local now_epoch
    now_epoch=$(date +%s)
    if [ "$now_epoch" -ge "$TOTAL_CAP_EPOCH" ]; then
      log "Total cap (${TOTAL_CAP_HOURS}h) reached during phase"
      kill "$claude_pid" 2>/dev/null || true
      return 2
    fi
    if [ "$now_epoch" -ge "$phase_cap_epoch" ]; then
      log "Phase cap reached"
      kill "$claude_pid" 2>/dev/null || true
      return 2
    fi

    # Check if completion marker appeared in OUR run dir (not a stale prior run).
    local run_dir
    run_dir=$(active_run_dir)
    if [ -n "$run_dir" ] && [ -f "$run_dir/$completion_file" ]; then
      log "$completion_file detected at $run_dir"
      wait "$claude_pid" 2>/dev/null || true
      return 0
    fi
    if [ -n "$run_dir" ] && { [ -f "$run_dir/ABORTED.md" ] || [ -f "$run_dir/BLOCKED.md" ]; }; then
      log "ABORTED.md or BLOCKED.md detected — stopping phase"
      kill "$claude_pid" 2>/dev/null || true
      return 3
    fi

    # Check if claude died
    if ! kill -0 "$claude_pid" 2>/dev/null; then
      # Process finished. Determine why.
      if grep -qE "hit your (limit|usage)" "$phase_log" 2>/dev/null; then
        log "claude died with usage-limit signal"
        sleep_until_reset "$phase_log"
        return 1
      fi
      # Re-check completion marker (race: claude may have written file just before exit)
      sleep 3
      run_dir=$(active_run_dir)
      if [ -n "$run_dir" ] && [ -f "$run_dir/$completion_file" ]; then
        log "$completion_file appeared just as claude exited"
        return 0
      fi
      log "claude exited without completion marker and without limit-hit. Tail of log:"
      tail -20 "$phase_log" | sed 's/^/    /' | tee -a "$WATCHDOG_LOG"
      return 3
    fi

    sleep "$POLL_SECONDS"
  done
}

# ---------------------------------------------------------------------------
# Prompts
# ---------------------------------------------------------------------------

phase1_fresh_prompt() {
  local input="$1"
  echo "Run the overnight-research skill on $input. This is unattended-Playwright mode — after the main run produces RUN-COMPLETE.txt, STOP and exit. A separate Phase 2 orchestrator pass will handle Playwright enrichment."
}

phase1_resume_prompt() {
  local checkpoint="$1" input="$2"
  echo "Resume the overnight-research run from checkpoint at $checkpoint. Read it, skip stages already in stages_completed, continue from stages_in_progress[0]. Original input file is at $input. After RUN-COMPLETE.txt is written, STOP and exit."
}

phase2_prompt() {
  local run_dir="$1"
  cat <<EOF
PHASE 2 — Playwright auto-enrichment for unattended run at $run_dir.

Goal: lift [NEEDS-ATTENDED-FETCH] URLs from the prior run by retrying with the Playwright MCP toolchain. Auto-merge results into the canonical raw-claude-*.md files.

Procedure (do NOT skip steps):

1. Read raw-claude-value-chain-*.md and raw-claude-pain-points-*.md in $run_dir. Extract every distinct URL tagged [NEEDS-ATTENDED-FETCH]. Also extract Low-confidence claims whose only weakness was the source's unreachability (vendor-marketing-overrides etc. stay Low; those are not Playwright-fixable).

2. Backup originals before any modification:
   cp $run_dir/raw-claude-value-chain-*.md $run_dir/raw-claude-value-chain.md.bak
   cp $run_dir/raw-claude-pain-points-*.md $run_dir/raw-claude-pain-points.md.bak

3. For each [NEEDS-ATTENDED-FETCH] URL (max 30 total, max 60 minutes wall-clock):
   a. mcp__playwright__browser_navigate → URL
   b. mcp__playwright__browser_snapshot to read the rendered DOM
   c. Detect captcha / login walls. Indicators: presence of "Verify you are human" / "Cloudflare" / Turnstile widgets / hCaptcha / reCAPTCHA / SSO redirects / "Subscribe to read".
      → If detected: re-tag this URL as [CONFIRMED-INACCESSIBLE]: <url> in the canonical raw-claude-*.md files (replacing [NEEDS-ATTENDED-FETCH]). Continue.
   d. If page rendered: extract content via browser_evaluate for specific selectors or use the snapshot accessibility tree.
   e. For PDF URLs that downloaded: process via markitdown.
   f. Identify which Low/Medium claim this URL was supporting. Validate the new content actually substantiates the claim.

4. For each successful Playwright fetch:
   - ADD the source to the claim's citation list. Never remove existing sources.
   - Update the claim's confidence tier UPWARD only (Low→Medium, Medium→High). NEVER downgrade.
   - Replace the [NEEDS-ATTENDED-FETCH] tag inline with the resolved primary citation.

5. For each unsuccessful fetch (captcha, navigation timeout, content empty):
   - Replace [NEEDS-ATTENDED-FETCH] with [CONFIRMED-INACCESSIBLE] in the canonical files.

6. Update $run_dir/checkpoint.json with an "auto_enrichment" object:
   {
     "started_at": "<iso>",
     "completed_at": "<iso>",
     "urls_attempted": N,
     "urls_succeeded": M,
     "urls_confirmed_inaccessible": K,
     "claims_upgraded": [{"id": "...", "from": "low", "to": "medium", "new_source": "<url>"}, ...]
   }

7. Append "## Auto-enrichment (Phase 2, Playwright pass)" section to raw-claude-summary-*.md:
   - List every URL attempted with outcome (succeeded / inaccessible)
   - List every claim upgraded with before/after confidence
   - Recompute and report the new % Low confidence and any updated gate decision

8. Re-render FINAL-REPORT.html using the wright-brand skill (since claim confidence may have changed and the gate may have shifted). Write to $run_dir/FINAL-REPORT.html (overwriting). If wright-brand skill unavailable, write RENDER-SKIPPED-PHASE2.md instead.

9. Write $run_dir/ENRICHMENT-COMPLETE.txt with the summary:
   Unattended Phase 2 complete.
   URLs attempted: N · Succeeded: M · Confirmed inaccessible: K
   Claims upgraded: J
   New % Low (post-enrichment): X% · Gate: ship | ship-with-flag

Hard rules:
- NEVER modify a claim downward in confidence.
- NEVER remove an existing source — only ADD.
- NEVER fabricate content if Playwright fetch is empty — use [CONFIRMED-INACCESSIBLE].
- Honor the 30-fetch / 60-minute cap; if reached, write what was done and exit cleanly.
- If captcha is detected, do NOT attempt to solve it. Skip immediately, mark [CONFIRMED-INACCESSIBLE].
EOF
}

# ---------------------------------------------------------------------------
# Phase 1 — main overnight-research run with auto-resume
# ---------------------------------------------------------------------------

PHASE1_CAP_EPOCH=$((START_EPOCH + PHASE1_CAP_HOURS * 3600))

# Sweep empty orphan dirs (left by killed prior launches) before snapshotting.
# If we don't, claude can reuse the orphan scaffold and we'd lose its identity.
cleanup_empty_orphans

# Snapshot existing run dirs so the polling loop doesn't pick up a stale prior
# run's RUN-COMPLETE.txt as if it were ours.
snapshot_pre_existing_runs
log "Pre-existing run dirs at launch: $(echo "$PRE_EXISTING_RUN_DIRS" | tr '|' '\n' | grep -c .) dir(s)"

if [ "$MODE" = "resume" ]; then
  log "── Phase 1: RESUME existing run ──"
  PRIOR_RUN_DIR=$(latest_run_dir)
  if [ -z "$PRIOR_RUN_DIR" ]; then
    log "FATAL: no existing run found to resume"
    exit 1
  fi
  if [ -f "$PRIOR_RUN_DIR/RUN-COMPLETE.txt" ]; then
    log "Phase 1 already complete for $PRIOR_RUN_DIR — skipping to Phase 2"
  else
    INPUT_FILE=$(jq -r '.input_file // ""' "$PRIOR_RUN_DIR/checkpoint.json" 2>/dev/null)
    [ -z "$INPUT_FILE" ] && { log "FATAL: cannot find input_file in checkpoint"; exit 1; }
    [ ! -f "$INPUT_FILE" ] && { log "FATAL: input file not found: $INPUT_FILE"; exit 1; }

    PHASE1_PROMPT=$(phase1_resume_prompt "$PRIOR_RUN_DIR/checkpoint.json" "$INPUT_FILE")
    PHASE1_NEED_RUN=1
  fi
else
  log "── Phase 1: FRESH run ──"
  INPUT_FILE="$MODE"
  PHASE1_PROMPT=$(phase1_fresh_prompt "$INPUT_FILE")
  PHASE1_NEED_RUN=1
fi

# Phase 1 auto-resume loop
PHASE1_ATTEMPTS=0
PHASE1_MAX_ATTEMPTS=10
if [ "${PHASE1_NEED_RUN:-0}" = "1" ]; then
  while [ "$PHASE1_ATTEMPTS" -lt "$PHASE1_MAX_ATTEMPTS" ]; do
    PHASE1_ATTEMPTS=$((PHASE1_ATTEMPTS+1))
    log "Phase 1 attempt $PHASE1_ATTEMPTS / $PHASE1_MAX_ATTEMPTS"

    set +e
    run_claude_phase "$PHASE1_PROMPT" "phase1" "RUN-COMPLETE.txt" "$PHASE1_CAP_EPOCH"
    PHASE1_RC=$?
    set -e

    case "$PHASE1_RC" in
      0) log "Phase 1 complete (RUN-COMPLETE.txt present)"; break ;;
      1)
        log "Phase 1 hit usage limit — auto-resuming after sleep"
        RUN_DIR=$(active_run_dir)
        if [ -n "$RUN_DIR" ] && [ -f "$RUN_DIR/checkpoint.json" ]; then
          INPUT_FILE_RESUME=$(jq -r '.input_file // ""' "$RUN_DIR/checkpoint.json")
          PHASE1_PROMPT=$(phase1_resume_prompt "$RUN_DIR/checkpoint.json" "$INPUT_FILE_RESUME")
        fi
        continue
        ;;
      2) log "Phase 1 hit cap"; exit 2 ;;
      3) log "Phase 1 hard error or BLOCKED.md/ABORTED.md"; exit 3 ;;
    esac
  done

  if [ "$PHASE1_ATTEMPTS" -ge "$PHASE1_MAX_ATTEMPTS" ]; then
    log "Phase 1 exhausted $PHASE1_MAX_ATTEMPTS attempts — exiting"
    exit 3
  fi
fi

# Lint Phase 1 output (warn-and-continue; LINT-REPORT.md written to run dir)
RUN_DIR_FOR_LINT=$(active_run_dir)
if [ -n "$RUN_DIR_FOR_LINT" ]; then
  log "Running post-Phase-1 lint on $RUN_DIR_FOR_LINT"
  bash "$REPO_DIR/scripts/lint-output.sh" "$RUN_DIR_FOR_LINT" >> "$WATCHDOG_LOG" 2>&1 || true
fi

# ---------------------------------------------------------------------------
# Phase 2 — Playwright enrichment (only if Phase 1 produced RUN-COMPLETE.txt)
# ---------------------------------------------------------------------------

RUN_DIR=$(active_run_dir)
[ -z "$RUN_DIR" ] && { log "No run dir after Phase 1 — nothing to enrich"; exit 0; }

if [ -f "$RUN_DIR/ENRICHMENT-COMPLETE.txt" ]; then
  log "ENRICHMENT-COMPLETE.txt already present — nothing to do"
  log "═══ Unattended run finished (already-enriched) ═══"
  exit 0
fi

log "── Phase 2: enrichment scan ──"

# Verify Playwright still connected
if ! claude mcp list 2>&1 | grep -i playwright | grep -qi "connected"; then
  log "Playwright MCP NOT connected — skipping Phase 2"
  log "Writing ENRICHMENT-SKIPPED.md to $RUN_DIR/"
  cat > "$RUN_DIR/ENRICHMENT-SKIPPED.md" <<EOF
Phase 2 enrichment was skipped: Playwright MCP not connected.
Re-register with: claude mcp add playwright npx @playwright/mcp@latest --browser chrome
Then: ./scripts/run-unattended.sh resume
EOF
  log "═══ Unattended run finished (enrichment skipped) ═══"
  exit 0
fi

# Count NEEDS-ATTENDED-FETCH URLs in canonical files
N_ATTENDED=$(grep -h -c "\[NEEDS-ATTENDED-FETCH\]" \
  "$RUN_DIR"/raw-claude-value-chain-*.md \
  "$RUN_DIR"/raw-claude-pain-points-*.md 2>/dev/null | paste -sd+ - | bc 2>/dev/null || echo 0)

log "Found $N_ATTENDED [NEEDS-ATTENDED-FETCH] tags across canonical files"

if [ "${N_ATTENDED:-0}" -eq 0 ]; then
  log "Nothing to enrich. Writing ENRICHMENT-COMPLETE.txt with no-op summary."
  cat > "$RUN_DIR/ENRICHMENT-COMPLETE.txt" <<EOF
Unattended Phase 2 complete (no-op).
URLs attempted: 0 · Succeeded: 0 · Confirmed inaccessible: 0
Reason: no [NEEDS-ATTENDED-FETCH] URLs found in canonical raw-claude-*.md files.
EOF
  log "═══ Unattended run finished ═══"
  exit 0
fi

# Run Phase 2 with auto-resume
PHASE2_CAP_EPOCH=$(( $(date +%s) + PHASE2_CAP_HOURS * 3600 ))
PHASE2_PROMPT=$(phase2_prompt "$RUN_DIR")
PHASE2_ATTEMPTS=0
PHASE2_MAX_ATTEMPTS=5

while [ "$PHASE2_ATTEMPTS" -lt "$PHASE2_MAX_ATTEMPTS" ]; do
  PHASE2_ATTEMPTS=$((PHASE2_ATTEMPTS+1))
  log "Phase 2 attempt $PHASE2_ATTEMPTS / $PHASE2_MAX_ATTEMPTS"

  set +e
  run_claude_phase "$PHASE2_PROMPT" "enrichment" "ENRICHMENT-COMPLETE.txt" "$PHASE2_CAP_EPOCH"
  PHASE2_RC=$?
  set -e

  case "$PHASE2_RC" in
    0) log "Phase 2 complete (ENRICHMENT-COMPLETE.txt present)"; break ;;
    1) log "Phase 2 hit usage limit — auto-resuming after sleep"; continue ;;
    2) log "Phase 2 hit cap — partial enrichment may have been applied"; exit 2 ;;
    3) log "Phase 2 hard error — backup files preserved as .bak"; exit 3 ;;
  esac
done

if [ "$PHASE2_ATTEMPTS" -ge "$PHASE2_MAX_ATTEMPTS" ] && [ "$PHASE2_RC" != "0" ]; then
  log "Phase 2 exhausted $PHASE2_MAX_ATTEMPTS attempts"
  exit 3
fi

# Lint Phase 2 output (post-merge integrity check; warn-and-continue)
log "Running post-Phase-2 lint on $RUN_DIR"
bash "$REPO_DIR/scripts/lint-output.sh" "$RUN_DIR" >> "$WATCHDOG_LOG" 2>&1 || true

# ---------------------------------------------------------------------------
# Final summary
# ---------------------------------------------------------------------------

log "═══ Unattended run complete ═══"
log "Run dir: $RUN_DIR"
[ -f "$RUN_DIR/RUN-COMPLETE.txt" ] && log "  RUN-COMPLETE.txt        ✓"
[ -f "$RUN_DIR/ENRICHMENT-COMPLETE.txt" ] && log "  ENRICHMENT-COMPLETE.txt ✓"
[ -f "$RUN_DIR/FINAL-REPORT.html" ] && log "  FINAL-REPORT.html       ✓ ($(stat -f '%z bytes' "$RUN_DIR/FINAL-REPORT.html"))"
[ -f "$RUN_DIR/LINT-REPORT.md" ] && log "  LINT-REPORT.md          ✓"

exit 0
