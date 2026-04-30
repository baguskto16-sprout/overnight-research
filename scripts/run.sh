#!/usr/bin/env bash
# run.sh — Run overnight-research interactively on a given input file.
# Usage: ./run.sh <input-file>

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

echo "→ Running overnight-research interactively on $INPUT"
echo "  When claude prompts, paste:"
echo "    Run the overnight-research skill on $INPUT"
echo ""
read -p "Press Enter to launch claude..."
claude
