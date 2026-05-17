#!/usr/bin/env bash
# watchdog-run.sh — Wraps run-headless.sh / resume.sh in an auto-resume loop.
#
# Usage:
#   ./scripts/watchdog-run.sh <input-file>
#   ./scripts/watchdog-run.sh resume                 # resume the most recent incomplete run
#
# Behavior:
#   1. Kick off the run (headless, caffeinate, nohup).
#   2. Poll the latest run-*.log every 60s.
#   3. When the log contains "You've hit your limit · resets <H>(am|pm) (Asia/Singapore)",
#      parse the reset clock, sleep until reset + 5 min buffer, then call resume.sh.
#   4. Loop until either:
#        - RUN-COMPLETE.txt appears in the latest run dir → success, exit 0
#        - 24h watchdog cap exceeded → exit 2 with reason logged
#        - BLOCKED.md or ABORTED.md appears → exit 3
#   5. Survives SSH disconnect (nohup + </dev/null).
#
# The watchdog itself is the only "scheduler" — it does not depend on cron, at,
# or launchd. Restart the watchdog manually if the alphabot reboots.

set -euo pipefail

# Ensure tools are on PATH when invoked from non-interactive SSH (must include node).
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

# Unlock login keychain — claude stores OAuth in "Claude Code-credentials".
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

MODE="${1:-}"
if [ -z "$MODE" ]; then
  echo "Usage: $0 <input-file>  OR  $0 resume"
  echo "  $0 ./input/topic.txt   - start fresh and watchdog"
  echo "  $0 resume              - resume most recent incomplete run and watchdog"
  exit 1
fi

WATCHDOG_LOG="$REPO_DIR/watchdog-$(date +%Y%m%d-%H%M).log"
WATCHDOG_PID_FILE="$REPO_DIR/.watchdog.pid"
WATCHDOG_CAP_HOURS=24
WATCHDOG_POLL_SECONDS=60
RESET_BUFFER_SECONDS=300   # 5 min after stated reset before retry

# --- helpers ----------------------------------------------------------------

ts() { date "+%F %T %Z"; }

log() {
  echo "[$(ts)] $*" | tee -a "$WATCHDOG_LOG"
}

latest_run_log() {
  ls -t "$REPO_DIR"/run-*.log "$REPO_DIR"/resume-*.log 2>/dev/null | head -1
}

latest_run_dir() {
  ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | head -1 | sed 's:/$::'
}

claude_proc_alive() {
  pgrep -f 'claude --print --dangerously-skip-permissions' >/dev/null
}

# Parse Claude limit message: "You've hit your limit · resets 6am (Asia/Singapore)"
# Returns epoch seconds for the next reset time on alphabot's clock.
# Supports "6am", "12pm", "6:30am" formats.
parse_reset_epoch() {
  local line="$1"
  local clock
  clock=$(echo "$line" | grep -oE 'resets [0-9]{1,2}(:[0-9]{2})?(am|pm)' \
           | head -1 | sed 's/^resets //')
  [ -z "$clock" ] && { echo ""; return 1; }

  local now_h now_m target_h target_m target_epoch now_epoch
  now_h=$(date +%H); now_m=$(date +%M)
  local hh mm ampm
  hh=$(echo "$clock" | grep -oE '^[0-9]{1,2}')
  mm=$(echo "$clock" | grep -oE ':[0-9]{2}' | tr -d ':')
  ampm=$(echo "$clock" | grep -oE '(am|pm)$')
  [ -z "$mm" ] && mm=0
  target_h=$hh
  if [ "$ampm" = "pm" ] && [ "$hh" != "12" ]; then target_h=$((hh+12)); fi
  if [ "$ampm" = "am" ] && [ "$hh" = "12" ]; then target_h=0; fi
  target_m=$mm

  # Try today at target_h:target_m. If already past, push to tomorrow.
  target_epoch=$(date -j -f "%Y-%m-%d %H:%M" \
    "$(date +%F) $(printf '%02d:%02d' "$target_h" "$target_m")" +%s)
  now_epoch=$(date +%s)
  if [ "$target_epoch" -le "$now_epoch" ]; then
    target_epoch=$((target_epoch + 86400))
  fi
  echo "$target_epoch"
}

start_run() {
  local input="$1"
  log "Starting fresh run on $input"
  bash "$REPO_DIR/scripts/run-headless.sh" "$input" >> "$WATCHDOG_LOG" 2>&1 || true
}

start_resume() {
  log "Auto-resuming most recent incomplete run"
  yes | bash "$REPO_DIR/scripts/resume.sh" >> "$WATCHDOG_LOG" 2>&1 || true
}

# --- main loop --------------------------------------------------------------

echo $$ > "$WATCHDOG_PID_FILE"
log "Watchdog started, PID $$"
log "Cap: ${WATCHDOG_CAP_HOURS}h | Poll: ${WATCHDOG_POLL_SECONDS}s | Buffer after reset: ${RESET_BUFFER_SECONDS}s"

START_EPOCH=$(date +%s)
CAP_EPOCH=$((START_EPOCH + WATCHDOG_CAP_HOURS * 3600))

if [ "$MODE" = "resume" ]; then
  start_resume
else
  if [ ! -f "$MODE" ]; then
    log "FATAL: input file not found: $MODE"
    rm -f "$WATCHDOG_PID_FILE"
    exit 1
  fi
  start_run "$MODE"
fi

# Give the run a head start to write files
sleep 10

while true; do
  NOW_EPOCH=$(date +%s)
  if [ "$NOW_EPOCH" -ge "$CAP_EPOCH" ]; then
    log "Watchdog cap reached (${WATCHDOG_CAP_HOURS}h). Exiting."
    rm -f "$WATCHDOG_PID_FILE"
    exit 2
  fi

  RUN_DIR=$(latest_run_dir)

  if [ -n "$RUN_DIR" ] && [ -f "$RUN_DIR/RUN-COMPLETE.txt" ]; then
    log "RUN-COMPLETE.txt detected at $RUN_DIR — watchdog success."
    rm -f "$WATCHDOG_PID_FILE"
    exit 0
  fi

  if [ -n "$RUN_DIR" ] && [ -f "$RUN_DIR/ABORTED.md" ]; then
    log "ABORTED.md detected at $RUN_DIR — watchdog stopping."
    rm -f "$WATCHDOG_PID_FILE"
    exit 3
  fi
  if [ -n "$RUN_DIR" ] && [ -f "$RUN_DIR/BLOCKED.md" ]; then
    log "BLOCKED.md detected at $RUN_DIR — watchdog stopping."
    rm -f "$WATCHDOG_PID_FILE"
    exit 3
  fi

  RUN_LOG=$(latest_run_log)
  if [ -z "$RUN_LOG" ] || [ ! -s "$RUN_LOG" ]; then
    sleep "$WATCHDOG_POLL_SECONDS"
    continue
  fi

  # Check for limit-hit signal
  LIMIT_LINE=$(grep -E "hit your (limit|usage limit)|usage limit reached" "$RUN_LOG" | tail -1 || true)

  if [ -n "$LIMIT_LINE" ] && ! claude_proc_alive; then
    log "Limit hit detected: $LIMIT_LINE"
    RESET_EPOCH=$(parse_reset_epoch "$LIMIT_LINE" || echo "")
    if [ -z "$RESET_EPOCH" ]; then
      log "Could not parse reset time; defaulting to +5h"
      RESET_EPOCH=$(( $(date +%s) + 18000 ))
    fi
    WAKE_EPOCH=$((RESET_EPOCH + RESET_BUFFER_SECONDS))
    NOW_EPOCH=$(date +%s)
    SLEEP_SECONDS=$((WAKE_EPOCH - NOW_EPOCH))
    if [ "$SLEEP_SECONDS" -lt 60 ]; then SLEEP_SECONDS=60; fi
    log "Sleeping ${SLEEP_SECONDS}s until $(date -r "$WAKE_EPOCH" '+%F %T %Z') then resuming"
    sleep "$SLEEP_SECONDS"
    start_resume
    sleep 10
    continue
  fi

  # Process alive, log present, no limit yet — keep polling
  sleep "$WATCHDOG_POLL_SECONDS"
done
