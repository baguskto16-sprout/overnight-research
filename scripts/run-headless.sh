#!/bin/bash
set -euo pipefail

# Load environment
export PATH="/Users/alphabot/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
eval "$(/opt/homebrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

INPUT="${1:-}"
[ -z "$INPUT" ] && { echo "Usage: $0 <input-file>"; exit 1; }

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../" && pwd)"
cd "$REPO_DIR"

[ ! -f "$INPUT" ] && { echo "ERROR: Input file not found: $INPUT"; exit 1; }
[ ! -f "$REPO_DIR/.claude/refs/imi-pain-points-template.md" ] && { echo "ERROR: References not loaded."; exit 1; }

SCRATCH_DIR="$REPO_DIR/output/raw-claude-overnight"
MAX_RETRIES=10
ATTEMPT=0

run_claude() {
    local prompt="$1"
    local log="$2"
    echo "[$(date)] Starting claude: $prompt" >> "$log"
    claude --print --dangerously-skip-permissions "$prompt" >> "$log" 2>&1
    return $?
}

find_incomplete_run() {
    for run in $(ls -td "$SCRATCH_DIR/"*/ 2>/dev/null); do
        local run_dir="${run%/}"
        if [ -f "$run_dir/checkpoint.json" ] && [ ! -f "$run_dir/RUN-COMPLETE.txt" ]; then
            echo "$run_dir"
            return 0
        fi
    done
    return 1
}

parse_wait_time() {
    # Parse "resets 1:30pm" or similar from log, return seconds to wait
    local log="$1"
    local reset_line=$(grep -o 'resets [0-9:]\+[ap]m' "$log" | tail -1)
    if [ -n "$reset_line" ]; then
        # Extract time, add 5 min buffer
        local reset_time=$(echo "$reset_line" | grep -o '[0-9:]\+[ap]m')
        local target_epoch=$(date -j -f '%I:%M%p' "$reset_time" '+%s' 2>/dev/null || echo 0)
        local now_epoch=$(date '+%s')
        if [ "$target_epoch" -gt "$now_epoch" ]; then
            echo $(( target_epoch - now_epoch + 300 ))  # +5 min buffer
            return 0
        fi
    fi
    # Default: wait 30 minutes
    echo 1800
}

# Main loop
LOG="$REPO_DIR/run-$(date +%Y%m%d-%H%M).log"
echo "→ Starting headless run with auto-resume"
echo "  Log: $LOG"
echo "  Max retries: $MAX_RETRIES"
echo $$ > "$REPO_DIR/.last-run.pid"

while [ $ATTEMPT -lt $MAX_RETRIES ]; do
    ATTEMPT=$((ATTEMPT + 1))
    echo "" >> "$LOG"
    echo "========== ATTEMPT $ATTEMPT/$MAX_RETRIES [$(date)] ==========" >> "$LOG"

    if [ $ATTEMPT -eq 1 ]; then
        # First run
        run_claude "Run the overnight-research skill on $INPUT" "$LOG"
    else
        # Resume from checkpoint
        INCOMPLETE=$(find_incomplete_run || echo "")
        if [ -z "$INCOMPLETE" ]; then
            echo "[$(date)] No incomplete run found — either all done or no checkpoint." >> "$LOG"
            break
        fi
        CHECKPOINT="$INCOMPLETE/checkpoint.json"
        echo "[$(date)] Resuming from checkpoint: $CHECKPOINT" >> "$LOG"
        run_claude "Resume the overnight-research run from checkpoint at $CHECKPOINT. Read it, skip stages already in stages_completed, continue from stages_in_progress[0]. The original input file is at $INPUT." "$LOG"
    fi

    # Check if completed
    INCOMPLETE=$(find_incomplete_run || echo "")
    if [ -z "$INCOMPLETE" ]; then
        echo "[$(date)] Run complete!" >> "$LOG"
        break
    fi

    # Check if hit rate limit
    if grep -q 'hit your limit\|rate limit\|usage limit\|resets [0-9]' "$LOG"; then
        WAIT_SECS=$(parse_wait_time "$LOG")
        echo "[$(date)] Rate limit hit. Waiting $((WAIT_SECS / 60)) minutes before retry..." >> "$LOG"
        sleep "$WAIT_SECS"
    else
        # Unknown failure, wait 5 minutes
        echo "[$(date)] Claude exited unexpectedly. Waiting 5 minutes before retry..." >> "$LOG"
        sleep 300
    fi
done

echo "[$(date)] Headless run finished after $ATTEMPT attempts." >> "$LOG"
