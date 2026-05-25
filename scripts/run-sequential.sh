#!/usr/bin/env bash
# run-sequential.sh — Run multiple inputs through run-unattended.sh sequentially.
#
# Usage:
#   ./scripts/run-sequential.sh input/a.md input/b.md input/c.md
#
# Behaviour:
#   1. For each input, snapshot existing run dirs, launch run-unattended.sh
#      (which detaches into tmux session "overnight-unattended").
#   2. Poll every 60s for ENRICHMENT-COMPLETE.txt in a NEW run dir.
#   3. When detected, wait for tmux session to die fully, then move to next input.
#   4. Per-cycle cap: 6h. Total cap: 24h.
#   5. Writes to chain-<timestamp>.log; exits 0 on full success, 2 on cap,
#      3 on hard error.
#
# Survives SSH disconnect when run via `nohup ... &` or itself in tmux.

set -uo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

CYCLE_CAP_HOURS=6
TOTAL_CAP_HOURS=24
POLL_SECONDS=60

CHAIN_LOG="$REPO_DIR/chain-$(date +%Y%m%d-%H%M).log"
CHAIN_PID_FILE="$REPO_DIR/.chain.pid"
echo $$ > "$CHAIN_PID_FILE"
trap 'rm -f "$CHAIN_PID_FILE"' EXIT

INPUTS=("$@")
[ "${#INPUTS[@]}" -eq 0 ] && { echo "Usage: $0 <input1.md> [input2.md ...]"; exit 1; }

ts() { date "+%F %T %Z"; }
log() { echo "[$(ts)] $*" | tee -a "$CHAIN_LOG"; }

START_EPOCH=$(date +%s)
TOTAL_CAP_EPOCH=$((START_EPOCH + TOTAL_CAP_HOURS * 3600))

log "═══ run-sequential.sh start (PID $$) ═══"
log "Inputs (${#INPUTS[@]}): ${INPUTS[*]}"
log "Per-cycle cap: ${CYCLE_CAP_HOURS}h | Total cap: ${TOTAL_CAP_HOURS}h | Poll: ${POLL_SECONDS}s"

cycle=0
total=${#INPUTS[@]}
for input in "${INPUTS[@]}"; do
  cycle=$((cycle+1))

  if [ ! -f "$input" ]; then
    log "✗ Cycle ${cycle}/${total} — input not found: $input"
    exit 3
  fi

  now=$(date +%s)
  if [ "$now" -ge "$TOTAL_CAP_EPOCH" ]; then
    log "✗ Total cap (${TOTAL_CAP_HOURS}h) reached before cycle ${cycle}"
    exit 2
  fi

  log "── Cycle ${cycle}/${total}: $input ──"

  # Snapshot pre-existing run dirs so we can detect the NEW one
  snapshot=$(ls -d "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | sort | tr '\n' '|')
  snap_count=$(echo "$snapshot" | tr '|' '\n' | grep -c .)
  log "  Pre-cycle snapshot: ${snap_count} dirs"

  # Launch run-unattended.sh (which detaches into tmux)
  log "  Launching ./scripts/run-unattended.sh $input"
  bash "$REPO_DIR/scripts/run-unattended.sh" "$input" >> "$CHAIN_LOG" 2>&1 || {
    log "  ✗ run-unattended.sh exited non-zero (likely failed pre-flight)"
    exit 3
  }

  # Wait for tmux session to actually be up
  sleep 5

  CYCLE_START=$(date +%s)
  CYCLE_CAP=$((CYCLE_START + CYCLE_CAP_HOURS * 3600))
  new_dir=""

  while true; do
    now=$(date +%s)
    if [ "$now" -ge "$TOTAL_CAP_EPOCH" ]; then
      log "  ✗ Total cap reached during cycle ${cycle}"
      exit 2
    fi
    if [ "$now" -ge "$CYCLE_CAP" ]; then
      log "  ✗ Cycle cap (${CYCLE_CAP_HOURS}h) reached on $input"
      tmux kill-session -t overnight-unattended 2>/dev/null || true
      exit 2
    fi

    # Look for a new run dir with ENRICHMENT-COMPLETE.txt OR RUN-COMPLETE.txt
    for d in $(ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null); do
      d="${d%/}"
      # Skip if this dir was in the snapshot
      if echo "|$snapshot" | grep -qF "|$d/|"; then
        continue
      fi
      # New dir — check completion markers
      if [ -f "$d/ENRICHMENT-COMPLETE.txt" ]; then
        new_dir="$d"
        log "  ✓ Cycle ${cycle} complete (ENRICHMENT-COMPLETE.txt at $(basename "$d"))"
        break 2
      fi
      if [ -f "$d/ENRICHMENT-SKIPPED.md" ]; then
        new_dir="$d"
        log "  ⚠ Cycle ${cycle} ended with ENRICHMENT-SKIPPED.md at $(basename "$d") — treating as cycle-done"
        break 2
      fi
      if [ -f "$d/ABORTED.md" ] || [ -f "$d/BLOCKED.md" ]; then
        log "  ✗ Cycle ${cycle} aborted/blocked at $(basename "$d")"
        exit 3
      fi
    done

    sleep "$POLL_SECONDS"
  done

  # Wait for tmux session to die before next launch (run-unattended.sh
  # otherwise kills its predecessor when re-invoked).
  while tmux has-session -t overnight-unattended 2>/dev/null; do
    log "  Waiting for tmux session to exit before next cycle..."
    sleep 10
  done

  log "  Cycle ${cycle} finalized. Run dir: $new_dir"
done

log "═══ Sequential chain complete (${cycle}/${total} cycles done) ═══"
log "Run dirs:"
for d in "$@"; do
  : # placeholder; the orchestrator can derive from chain log
done

# Summarise outputs from the log
grep '✓ Cycle.*complete' "$CHAIN_LOG" | tee -a "$CHAIN_LOG"
exit 0
