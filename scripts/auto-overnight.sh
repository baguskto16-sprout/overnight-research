#!/usr/bin/env bash
# auto-overnight.sh — Sequential nightly orchestrator.
#
# Single entry point for the nightly automated overnight-research pipeline.
# Called by launchd at 23:00 SGT (see ~/Library/LaunchAgents).
#
# Steps:
#   1. Acquire file lock at /tmp/auto-overnight.lock (refuse if held).
#   2. git fetch wp + reset main to wp/main, switch back to working branch.
#   3. discover-topics.sh -> queue of input files.
#   4. For each topic SEQUENTIALLY (never parallel):
#        a. healthcheck.sh <input>   (skip on hard-fail with warning email)
#        b. run-unattended.sh <input>  (blocks until ENRICHMENT-COMPLETE
#                                       or RUN-COMPLETE markers appear)
#        c. resolve the new run dir via mtime + checkpoint match
#        d. post-run-commit.sh <run_dir>
#        e. send-email.sh <run_dir>
#        f. break if NIGHTLY_CAP_HOURS exceeded
#   5. send-email.sh --digest <summary>
#   6. Release lock.
#
# Failure isolation: a single topic that hard-fails NEVER brings the night
# down. We log + email + continue.
#
# Env (config/auto-overnight.env):
#   NIGHTLY_CAP_HOURS  Hard cap for the whole night (default 12).
#   REPO_DIR           Optional override; defaults to scripts/../.

set -euo pipefail

# --- environment bootstrap (matches run-unattended.sh) ----------------------
export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.local/bin:$PATH"
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

REPO_DIR_DEFAULT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_DIR="${REPO_DIR:-$REPO_DIR_DEFAULT}"
cd "$REPO_DIR"

ENV_FILE="$REPO_DIR/config/auto-overnight.env"
if [ -f "$ENV_FILE" ]; then
  set -a; . "$ENV_FILE"; set +a
fi

NIGHTLY_CAP_HOURS="${NIGHTLY_CAP_HOURS:-12}"
WORKING_BRANCH="improve-confidence-tier2"
REMOTE="wp"

LOG_DIR="$REPO_DIR/logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/auto-overnight-$(date +%Y%m%d-%H%M).log"

ts() { date "+%F %T %Z"; }
log() { echo "[$(ts)] $*" | tee -a "$LOG_FILE"; }

# --- file lock --------------------------------------------------------------
LOCK_FILE="/tmp/auto-overnight.lock"
if [ -e "$LOCK_FILE" ]; then
  if kill -0 "$(cat "$LOCK_FILE" 2>/dev/null)" 2>/dev/null; then
    log "ERROR: another auto-overnight instance is running (PID $(cat "$LOCK_FILE")) — exiting"
    exit 0
  fi
  log "Stale lock file found; removing"
  rm -f "$LOCK_FILE"
fi
echo $$ > "$LOCK_FILE"
trap 'rm -f "$LOCK_FILE"' EXIT

START_EPOCH=$(date +%s)
NIGHTLY_CAP_SECONDS=$(awk -v h="$NIGHTLY_CAP_HOURS" 'BEGIN { printf "%d", h * 3600 }')
NIGHTLY_CAP_EPOCH=$((START_EPOCH + NIGHTLY_CAP_SECONDS))

log "═══ auto-overnight start (PID $$) ═══"
log "Repo: $REPO_DIR | Branch: $WORKING_BRANCH | Nightly cap: ${NIGHTLY_CAP_HOURS}h"

# --- 1. sync repo -----------------------------------------------------------
sync_repo() {
  log "── sync repo with $REMOTE ──"
  if ! git fetch "$REMOTE" >> "$LOG_FILE" 2>&1; then
    log "WARN: git fetch $REMOTE failed — continuing with local state"
    return 0
  fi
  local current
  current="$(git rev-parse --abbrev-ref HEAD)"
  if git checkout main >> "$LOG_FILE" 2>&1; then
    git reset --hard "$REMOTE/main" >> "$LOG_FILE" 2>&1 || true
  fi
  if [ "$current" != "main" ]; then
    git checkout "$current" >> "$LOG_FILE" 2>&1 || git checkout "$WORKING_BRANCH" >> "$LOG_FILE" 2>&1 || true
  fi
}
sync_repo

# --- 2. discover queue ------------------------------------------------------
# bash 3.2 has no mapfile, so we materialise the queue to a temp file and
# stream over it later via `while read`.
log "── discover topics ──"
QUEUE_FILE="$(mktemp -t auto-overnight-queue.XXXXXX)"
"$REPO_DIR/scripts/discover-topics.sh" 2>>"$LOG_FILE" > "$QUEUE_FILE" || true
# grep -c returns 1 (and "0") on no-match under errexit; wc -l keeps us numeric.
QUEUE_COUNT="$(awk 'NF' "$QUEUE_FILE" | wc -l | tr -d ' ')"
log "Queue size: $QUEUE_COUNT"
while IFS= read -r q; do [ -n "$q" ] && log "  • $q"; done < "$QUEUE_FILE"

# Where we collect per-topic outcomes for the digest.
DIGEST_FILE="$LOG_DIR/auto-overnight-digest-$(date +%Y%m%d).txt"
: > "$DIGEST_FILE"
{
  echo "Nightly digest — $(date '+%F')"
  echo "Queue size: $QUEUE_COUNT"
  echo
} >> "$DIGEST_FILE"

send_digest() {
  log "── send nightly digest ──"
  if ! "$REPO_DIR/scripts/send-email.sh" --digest "$DIGEST_FILE" >> "$LOG_FILE" 2>&1; then
    log "WARN: digest send failed (continuing)"
  fi
}

# --- 3. empty queue exit ----------------------------------------------------
if [ "$QUEUE_COUNT" -eq 0 ]; then
  echo "No unresearched topics tonight." >> "$DIGEST_FILE"
  log "Nothing to research tonight."
  send_digest
  rm -f "$QUEUE_FILE"
  log "═══ auto-overnight done (no topics) ═══"
  exit 0
fi

# --- 4. helpers for per-topic loop -----------------------------------------
snapshot_run_dirs() {
  ls -d "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | sed 's:/$::' | sort | tr '\n' '|'
}

# Find a run dir that (a) is not in the snapshot AND (b) has a checkpoint.json
# whose input_file basename matches our input. Newest by mtime wins.
find_new_run_dir_for_input() {
  local snapshot="$1" input="$2"
  local input_base
  input_base="$(basename "$input")"
  local d cp ifile
  for d in $(ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | sed 's:/$::'); do
    if echo "|$snapshot" | grep -qF "|$d|"; then continue; fi
    cp="$d/checkpoint.json"
    [ -f "$cp" ] || continue
    ifile="$(jq -r '.input_file // ""' "$cp" 2>/dev/null)"
    [ "$(basename "$ifile")" = "$input_base" ] || continue
    [ -f "$d/RUN-COMPLETE.txt" ] || continue
    echo "$d"; return 0
  done
  return 1
}

wait_for_completion() {
  # Poll until either ENRICHMENT-COMPLETE or RUN-COMPLETE is present in a new
  # run dir matched to this input, OR the tmux session dies without producing
  # one, OR the nightly cap is reached. run-unattended.sh detaches into tmux
  # immediately; we observe disk markers as the source of truth.
  local snapshot="$1" input="$2"
  local input_base="$(basename "$input")"
  local d cp ifile
  while true; do
    local now; now=$(date +%s)
    if [ "$now" -ge "$NIGHTLY_CAP_EPOCH" ]; then
      log "  Nightly cap reached while waiting on $input_base"
      return 2
    fi
    for d in $(ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | sed 's:/$::'); do
      if echo "|$snapshot" | grep -qF "|$d|"; then continue; fi
      cp="$d/checkpoint.json"
      [ -f "$cp" ] || continue
      ifile="$(jq -r '.input_file // ""' "$cp" 2>/dev/null)"
      [ "$(basename "$ifile")" = "$input_base" ] || continue
      if [ -f "$d/ENRICHMENT-COMPLETE.txt" ] || [ -f "$d/ENRICHMENT-SKIPPED.md" ]; then
        echo "$d"; return 0
      fi
      if [ -f "$d/ABORTED.md" ] || [ -f "$d/BLOCKED.md" ]; then
        echo "$d"; return 3
      fi
    done
    if ! tmux has-session -t overnight-unattended 2>/dev/null; then
      sleep 5
      if d="$(find_new_run_dir_for_input "$snapshot" "$input")"; then
        echo "$d"; return 0
      fi
      log "  tmux session ended with no completion marker for $input_base"
      return 3
    fi
    sleep 60
  done
}

email_warning() {
  # Append a warning line to the nightly digest body — we keep email count low
  # by folding warnings into the single end-of-night summary rather than
  # firing a separate alert per failure.
  local label="$1" body="$2"
  {
    echo
    echo "⚠ $label"
    printf '  %s\n' "$body"
  } >> "$DIGEST_FILE"
}

# --- 5. per-topic sequential loop -------------------------------------------
while IFS= read -r input; do
  [ -n "$input" ] || continue
  now=$(date +%s)
  if [ "$now" -ge "$NIGHTLY_CAP_EPOCH" ]; then
    log "Nightly cap (${NIGHTLY_CAP_HOURS}h) reached — deferring remaining topics"
    echo "DEFERRED (cap): $input" >> "$DIGEST_FILE"
    continue
  fi

  log "── topic: $input ──"

  # 5a. healthcheck — capture rc explicitly; `if ! cmd` resets $? in bash 3.2.
  set +e
  bash "$REPO_DIR/scripts/healthcheck.sh" "$input" >> "$LOG_FILE" 2>&1
  hc_rc=$?
  set -e
  if [ "$hc_rc" -eq 1 ]; then
    log "  ✗ healthcheck hard-fail (rc=$hc_rc) — skipping $input"
    echo "SKIPPED (healthcheck): $input" >> "$DIGEST_FILE"
    email_warning "healthcheck failed: $(basename "$input")" \
      "Healthcheck hard-failed for $input. See $LOG_FILE."
    continue
  elif [ "$hc_rc" -ne 0 ]; then
    log "  ⚠ healthcheck rc=$hc_rc (warnings only — proceeding)"
  fi

  # 5b. snapshot + launch run-unattended.sh
  snap="$(snapshot_run_dirs)"
  log "  Launching run-unattended.sh"
  if ! bash "$REPO_DIR/scripts/run-unattended.sh" "$input" >> "$LOG_FILE" 2>&1; then
    log "  ✗ run-unattended.sh failed to launch — skipping $input"
    echo "SKIPPED (launch-failed): $input" >> "$DIGEST_FILE"
    email_warning "run launch failed: $(basename "$input")" \
      "run-unattended.sh failed to launch for $input. See $LOG_FILE."
    continue
  fi
  sleep 10  # let tmux + claude come up

  # 5c. wait for completion
  set +e
  RUN_DIR="$(wait_for_completion "$snap" "$input")"
  WAIT_RC=$?
  set -e
  if [ "$WAIT_RC" -ne 0 ]; then
    log "  ✗ wait_for_completion rc=$WAIT_RC for $input"
    echo "FAILED ($WAIT_RC): $input  ${RUN_DIR:-<no run dir>}" >> "$DIGEST_FILE"
    email_warning "topic failed: $(basename "$input")" \
      "Topic $input failed with rc=$WAIT_RC. Run dir: ${RUN_DIR:-<none>}. See $LOG_FILE."
    # never abort the night
    continue
  fi
  log "  ✓ completion detected at $RUN_DIR"

  # 5d. commit + push
  if ! bash "$REPO_DIR/scripts/post-run-commit.sh" "$RUN_DIR" >> "$LOG_FILE" 2>&1; then
    log "  ⚠ post-run-commit failed — artifacts safe on disk, continuing"
    email_warning "commit failed: $(basename "$input")" \
      "post-run-commit failed for $RUN_DIR. Manual push needed. See $LOG_FILE."
  fi

  # 5e. per-topic completion email
  if ! bash "$REPO_DIR/scripts/send-email.sh" "$RUN_DIR" >> "$LOG_FILE" 2>&1; then
    log "  ⚠ completion email send failed (non-fatal)"
  fi

  # Record outcome for the nightly digest.
  GATE="$(jq -r '.final_gate_decision // "unknown"' "$RUN_DIR/checkpoint.json" 2>/dev/null || echo "unknown")"
  SLUG="$(jq -r '.topic_slug // ""' "$RUN_DIR/checkpoint.json" 2>/dev/null || echo "")"
  printf 'DONE: %s  gate=%s  run=%s\n' "${SLUG:-$input}" "$GATE" "$(basename "$RUN_DIR")" >> "$DIGEST_FILE"

  # Wait for tmux to die before next topic launch (run-unattended.sh kills its
  # predecessor on re-invoke; we want clean handoff).
  while tmux has-session -t overnight-unattended 2>/dev/null; do
    sleep 10
  done
done < "$QUEUE_FILE"

rm -f "$QUEUE_FILE"

# --- 6. nightly digest ------------------------------------------------------
{
  echo
  echo "Finished at: $(date '+%F %T %Z')"
  echo "Log: $LOG_FILE"
} >> "$DIGEST_FILE"
send_digest

log "═══ auto-overnight done ═══"
exit 0
