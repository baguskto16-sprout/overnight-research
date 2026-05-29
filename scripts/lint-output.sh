#!/usr/bin/env bash
# lint-output.sh — Structural lint of an overnight-research run.
#
# Usage:
#   ./scripts/lint-output.sh                 # lints the latest run in output/raw-claude-overnight/
#   ./scripts/lint-output.sh <run-id>        # lints a specific run
#   ./scripts/lint-output.sh /abs/path/dir   # lints an arbitrary absolute path
#
# Behaviour:
#   - Writes LINT-REPORT.md to the run directory.
#   - Prints a summary to stdout.
#   - Always exits 0 (warn-and-continue convention).
#
# Invoked by scripts/run-unattended.sh after each phase. Also callable standalone.

set -uo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

# shellcheck source=scripts/lint-common.sh
source "$SCRIPT_DIR/lint-common.sh"

# Resolve target run directory
ARG="${1:-}"
if [ -z "$ARG" ]; then
  RUN_DIR=$(ls -td "$REPO_DIR"/output/raw-claude-overnight/*/ 2>/dev/null | head -1 | sed 's:/$::')
  [ -z "$RUN_DIR" ] && { echo "ERROR: no runs found in $REPO_DIR/output/raw-claude-overnight/"; exit 1; }
elif [ -d "$ARG" ]; then
  RUN_DIR="$ARG"
else
  RUN_DIR="$REPO_DIR/output/raw-claude-overnight/$ARG"
  [ -d "$RUN_DIR" ] || { echo "ERROR: run dir not found: $RUN_DIR"; exit 1; }
fi

RUN_ID=$(basename "$RUN_DIR")
VC_FILE=$(ls "$RUN_DIR"/raw-claude-value-chain-*.md 2>/dev/null | head -1)
PP_FILE=$(ls "$RUN_DIR"/raw-claude-pain-points-*.md 2>/dev/null | head -1)
HTML_FILE="$RUN_DIR/FINAL-REPORT.html"

echo "── overnight-research lint ──"
echo "Run: $RUN_ID"
echo "Dir: $RUN_DIR"
echo ""

lint_init

lint_check_footnote_bijection         "$VC_FILE" "$PP_FILE"
lint_check_citation_density           "$PP_FILE"
lint_check_source_diversity           "$VC_FILE" "$PP_FILE"
lint_check_assumed_sequence           "$PP_FILE" "$VC_FILE"
lint_check_wordmark                   "$HTML_FILE"
lint_check_render_quality             "$HTML_FILE" "$RUN_DIR"
lint_check_attended_fetch_tags        "$VC_FILE" "$PP_FILE"
lint_check_backup_invariant           "$RUN_DIR"
lint_check_primary_source_floor       "$PP_FILE"
lint_check_vertical_slice_compliance  "$RUN_DIR"

lint_render_console

REPORT="$RUN_DIR/LINT-REPORT.md"
lint_render_markdown "$REPORT" "$RUN_ID"

echo ""
echo "Result: $LINT_PASS pass · $LINT_WARN warn · $LINT_FAIL fail"
echo "Wrote: $REPORT"

# Warn-and-continue: always exit 0 (failures are recorded in the report, not blocking).
exit 0
