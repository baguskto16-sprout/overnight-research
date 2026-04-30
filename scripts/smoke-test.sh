#!/usr/bin/env bash
# smoke-test.sh — Run overnight-research on narrow scope input for benchmarking.
# Usage: ./smoke-test.sh [interactive|headless]
#
# Default: interactive (you watch it run in real-time)
# Headless: backgrounds the run with logging
#
# Smoke test uses ./input/smoke-test-package-boilers.txt — narrow scope (1 sector, 1 country, 1 hypothesis).
# Expected runtime: 20-30 minutes. Expected cost: $5-15.
#
# After completion, run ./scripts/verify.sh to get benchmark stats.

set -euo pipefail

MODE="${1:-interactive}"
TARGET="${TARGET:-$HOME/Downloads/Work/overnight}"
INPUT="$TARGET/input/smoke-test-package-boilers.txt"

if [ ! -f "$INPUT" ]; then
  echo "ERROR: Smoke test input not found at $INPUT"
  echo "Run deploy.sh first to populate the test folder."
  exit 1
fi

if [ ! -f "$TARGET/.claude/skills/overnight-research/SKILL.md" ]; then
  echo "ERROR: Skill not deployed at $TARGET/.claude/skills/overnight-research/SKILL.md"
  echo "Run deploy.sh first."
  exit 1
fi

if [ ! -f "$TARGET/.claude/refs/imi-pain-points-template.md" ]; then
  echo "ERROR: IMI reference templates not loaded."
  echo "Run setup-refs.sh first to pull WP reference files."
  exit 1
fi

# Check optional deps
which markitdown &> /dev/null || echo "WARN: markitdown not installed. PDF sources will be inaccessible. pip install markitdown --user"
which jq &> /dev/null || echo "WARN: jq not installed. Cache layer disabled. brew install jq"
which claude &> /dev/null || { echo "ERROR: claude CLI not installed. brew install --cask claude-code"; exit 1; }

cd "$TARGET"

START_TIME=$(date +%s)
START_ISO=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

echo ""
echo "Smoke test starting:"
echo "  Input:  $INPUT"
echo "  Target: $TARGET"
echo "  Mode:   $MODE"
echo "  Started: $START_ISO"
echo ""
echo "Expected: Stage 1 vertical slice only (~20-30 min, ~\$5-15 in tokens)."
echo "After completion: run scripts/verify.sh for benchmark stats."
echo ""

if [ "$MODE" = "interactive" ]; then
  echo "→ Launching Claude Code interactively. When prompt appears, paste:"
  echo ""
  echo "  Run the overnight-research skill on ./input/smoke-test-package-boilers.txt"
  echo ""
  echo "Watch the first 5-10 minutes — you should see:"
  echo "  1. Step 0: load .claude/refs/ files"
  echo "  2. Step 1: validate input (no BLOCKED.md)"
  echo "  3. Stage 1 vertical slice begins (value-chain-mapper invoked)"
  echo "  4. WebSearch fires, sources found"
  echo "  5. (After Stage 1 complete) skill stops naturally for narrow scope"
  echo ""
  echo "If skill stalls, asks for confirmation, or proceeds past Stage 1 inappropriately, abort and report."
  echo ""
  read -p "Press Enter to launch claude... "
  claude

elif [ "$MODE" = "headless" ]; then
  LOG_FILE="$TARGET/smoke-test-$(date +%Y%m%d-%H%M).log"
  echo "→ Running headless with caffeinate + nohup + --dangerously-skip-permissions"
  echo "  Log: $LOG_FILE"
  echo ""
  echo "  WARNING: --dangerously-skip-permissions disables all confirmation prompts."
  echo "  This is required for true unattended runs. Skill is sandboxed to ./output/"
  echo ""

  caffeinate -i nohup claude --print --dangerously-skip-permissions \
    "Run the overnight-research skill on ./input/smoke-test-package-boilers.txt" \
    > "$LOG_FILE" 2>&1 &

  PID=$!
  echo $PID > "$TARGET/.smoke-test.pid"
  echo "→ PID $PID. Mac will stay awake (caffeinate) while claude runs."
  echo "  Tail log:  tail -f $LOG_FILE"
  echo "  Stop:      kill \$(cat $TARGET/.smoke-test.pid)"
  echo "  Verify:    ./scripts/verify.sh"

else
  echo "ERROR: Unknown mode '$MODE'. Use 'interactive' or 'headless'."
  exit 1
fi
