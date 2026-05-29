#!/usr/bin/env bash
# verify-render.sh — Headless Playwright check that a rendered FINAL-REPORT.html
# is visually correct (no cropping, no footer overlap, no JS errors).
#
# Usage:
#   ./scripts/verify-render.sh <path-to-FINAL-REPORT.html> [<screenshot-dir>]
#   ./scripts/verify-render.sh <run-dir>                   # convenience — finds the FINAL-REPORT.html inside
#
# Exit code 0 = clean (no overlap, no JS errors; A4 overflow is a warning only),
#           1 = fail (footer overlap or JS error), 2 = invocation error.

set -euo pipefail

# Make node + playwright discoverable in non-interactive SSH sessions.
export PATH="$HOME/.nvm/versions/node/v24.14.0/bin:/opt/homebrew/bin:$PATH"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
VERIFY_MJS="$REPO_DIR/scripts/verify-render/verify-report-html.mjs"

if [ ! -f "$VERIFY_MJS" ]; then
  echo "ERROR: verify script not found at $VERIFY_MJS" >&2
  exit 2
fi

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <FINAL-REPORT.html | run-dir> [<screenshot-dir>]" >&2
  exit 2
fi

TARGET="$1"
if [ -d "$TARGET" ]; then
  TARGET="$TARGET/FINAL-REPORT.html"
fi
if [ ! -f "$TARGET" ]; then
  echo "ERROR: not a file: $TARGET" >&2
  exit 2
fi

SHOT_DIR="${2:-$(dirname "$TARGET")/render-verify}"
mkdir -p "$SHOT_DIR"

node "$VERIFY_MJS" "$TARGET" "$SHOT_DIR"
