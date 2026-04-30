#!/usr/bin/env bash
# resume.sh — Resume an interrupted overnight-research run from its last checkpoint.
# Usage: ./resume.sh [run-id]
#
# Finds the most recent incomplete run (or specified run-id) and re-invokes claude
# with explicit "resume from checkpoint" instruction. Skill detects checkpoint and
# skips already-completed stages.
#
# Common reasons to use this:
# - Token / rate / usage limit hit mid-run
# - Mac slept despite caffeinate
# - Manual kill mid-run
# - Network interruption
#
# This script does NOT decide whether resume is safe — it just invokes the skill
# with the resume instruction. The skill's Step 0.6 (Resume detection) handles
# the actual checkpoint reading and stage-skipping.

set -euo pipefail

# Auto-detect repo root unless overridden
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_TARGET="$(cd "$SCRIPT_DIR/.." && pwd)"
TARGET="${TARGET:-$DEFAULT_TARGET}"
RUN_ID="${1:-}"

cd "$TARGET"

# Detect mode and scratchpad dir
if [ -d "$TARGET/12-pain-points" ]; then
  SCRATCH_DIR="$TARGET/90-scratchpad/raw-claude-overnight"
elif [ -d "$TARGET/22-pain-points" ]; then
  SCRATCH_DIR="$TARGET/90-scratchpad/raw-claude-overnight"
else
  SCRATCH_DIR="$TARGET/output/raw-claude-overnight"
fi

# Find most recent incomplete run
if [ -z "$RUN_ID" ]; then
  for run in $(ls -td "$SCRATCH_DIR/"*/ 2>/dev/null); do
    run_dir="${run%/}"
    if [ -f "$run_dir/checkpoint.json" ] && [ ! -f "$run_dir/RUN-COMPLETE.txt" ]; then
      RUN_ID=$(basename "$run_dir")
      break
    fi
  done
fi

if [ -z "$RUN_ID" ]; then
  echo "ERROR: No incomplete runs found in $SCRATCH_DIR"
  echo "All runs appear complete (RUN-COMPLETE.txt present), or no runs exist."
  echo ""
  echo "If you want to start a fresh run instead:"
  echo "  ./scripts/run-headless.sh ./input/your-topic.txt"
  exit 1
fi

CHECKPOINT="$SCRATCH_DIR/$RUN_ID/checkpoint.json"

if [ ! -f "$CHECKPOINT" ]; then
  echo "ERROR: Checkpoint not found at $CHECKPOINT"
  exit 1
fi

# Read checkpoint state
INPUT_FILE=$(jq -r '.input_file // ""' "$CHECKPOINT")
CURRENT_PASS=$(jq -r '.current_pass // 0' "$CHECKPOINT")
STAGES_DONE=$(jq -r '.stages_completed // [] | length' "$CHECKPOINT")
INTERRUPTION_CAUSE=$(jq -r '.interruption.likely_cause // "unknown"' "$CHECKPOINT")

echo "═══════════════════════════════════════════════════════════════"
echo "  Resume incomplete run"
echo "═══════════════════════════════════════════════════════════════"
echo ""
echo "Run ID:        $RUN_ID"
echo "Input file:    $INPUT_FILE"
echo "Last pass:     $CURRENT_PASS"
echo "Stages done:   $STAGES_DONE"
echo "Likely cause:  $INTERRUPTION_CAUSE"
echo "Checkpoint:    $CHECKPOINT"
echo ""

# Pre-flight checks
which claude &> /dev/null || { echo "ERROR: claude CLI missing"; exit 1; }
[ -f "$INPUT_FILE" ] || { echo "ERROR: Original input file not found at $INPUT_FILE"; exit 1; }

# Confirm before resuming
read -p "Resume this run? (y/N) " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Cancelled."
  exit 0
fi

LOG="$TARGET/resume-$(date +%Y%m%d-%H%M).log"

echo ""
echo "→ Resuming via headless: caffeinate + nohup + --dangerously-skip-permissions"
echo "  Log: $LOG"
echo ""
echo "  WARNING: --dangerously-skip-permissions disables confirmation prompts."
echo ""

# Resume command — explicit instruction to skill to read checkpoint and skip done stages
caffeinate -i nohup claude --print --dangerously-skip-permissions \
  "Resume the overnight-research run from checkpoint at $CHECKPOINT. Read it, skip stages already in stages_completed, continue from stages_in_progress[0]. The original input file is at $INPUT_FILE." \
  > "$LOG" 2>&1 &

PID=$!
echo $PID > "$TARGET/.resume.pid"
echo "  PID: $PID"
echo "  Tail log:  tail -f $LOG"
echo "  Stop:      kill \$(cat $TARGET/.resume.pid)"
echo "  Verify:    ./scripts/verify.sh $RUN_ID"
echo ""
echo "  Skill will detect Step 0.6 checkpoint and resume from last completed stage."
