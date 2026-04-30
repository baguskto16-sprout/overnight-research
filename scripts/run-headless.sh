#!/usr/bin/env bash
# run-headless.sh — Run overnight-research headless on a given input file.
# Usage: ./run-headless.sh <input-file>

set -euo pipefail

INPUT="${1:-}"
if [ -z "$INPUT" ]; then
  echo "Usage: $0 <input-file>"
  echo "Example: $0 ./input/package-boilers.txt"
  exit 1
fi

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

[ ! -f "$INPUT" ] && { echo "ERROR: Input file not found: $INPUT"; exit 1; }
[ ! -f "$REPO_DIR/.claude/refs/imi-pain-points-template.md" ] && \
  { echo "ERROR: References not loaded. Run scripts/setup.sh first."; exit 1; }

LOG="$REPO_DIR/run-$(date +%Y%m%d-%H%M).log"

echo "→ Running headless overnight: caffeinate + nohup + --dangerously-skip-permissions"
echo "  Log: $LOG"
echo ""
echo "  WARNING: --dangerously-skip-permissions disables confirmation prompts."
echo "  This is required for unattended runs. Skill is sandboxed to ./output/"
echo "  See docs/TROUBLESHOOTING.md if concerned."
echo ""

# caffeinate -i prevents Mac idle sleep while claude runs
# nohup makes process survive terminal close
# --print enables non-interactive mode
# --dangerously-skip-permissions auto-approves all tool calls (required for unattended)
caffeinate -i nohup claude --print --dangerously-skip-permissions \
  "Run the overnight-research skill on $INPUT" > "$LOG" 2>&1 &

PID=$!
echo $PID > "$REPO_DIR/.last-run.pid"
echo "  PID: $PID"
echo "  Mac stays awake (caffeinate) for duration of claude process"
echo ""
echo "  Tail log:  tail -f $LOG"
echo "  Stop:      kill \$(cat $REPO_DIR/.last-run.pid)"
echo "  Verify:    ./scripts/verify.sh"
echo ""
echo "  Safe to close this terminal — process will survive (nohup)."
