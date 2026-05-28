#!/usr/bin/env bash
# post-run-commit.sh — Commit a completed overnight run dir and fast-forward main.
#
# Usage:
#   ./scripts/post-run-commit.sh <run_dir> [--dry-run]
#
# Mirrors the manual flow we have been using on improve-confidence-tier2:
#   1. git add output/raw-claude-overnight/<run-dir>/
#   2. git commit -m "Overnight: <slug> · <gate> · <%Low>% Low"
#   3. git push wp improve-confidence-tier2
#   4. git checkout main && git merge --ff-only improve-confidence-tier2
#   5. git push wp main
#   6. git checkout improve-confidence-tier2
#
# Skips cleanly if there is nothing to commit. On --dry-run, prints the
# commands it WOULD issue and exits 0 without touching git.

set -euo pipefail

# Environment setup matches run-unattended.sh.
export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

DRY_RUN=0
RUN_DIR=""
for arg in "$@"; do
  case "$arg" in
    --dry-run) DRY_RUN=1 ;;
    -h|--help)
      echo "Usage: $0 <run_dir> [--dry-run]"; exit 0 ;;
    *) RUN_DIR="$arg" ;;
  esac
done

[ -n "$RUN_DIR" ] || { echo "ERROR: run_dir required"; exit 1; }
[ -d "$RUN_DIR" ] || { echo "ERROR: run_dir not found: $RUN_DIR"; exit 1; }

# Normalise to repo-relative path (git add prefers that).
case "$RUN_DIR" in
  /*) RUN_DIR_REL="${RUN_DIR#$REPO_DIR/}" ;;
  *)  RUN_DIR_REL="$RUN_DIR" ;;
esac
RUN_DIR_REL="${RUN_DIR_REL%/}"

WORKING_BRANCH="improve-confidence-tier2"
REMOTE="wp"

# ---------------------------------------------------------------------------
# Build commit message from run-dir artifacts (slug + gate + %Low).
# Falls back to neutral text if any field is missing.
# ---------------------------------------------------------------------------
SLUG="$(jq -r '.topic_slug // ""' "$RUN_DIR_REL/checkpoint.json" 2>/dev/null || echo "")"
[ -z "$SLUG" ] && SLUG="$(basename "$RUN_DIR_REL")"
GATE="$(jq -r '.final_gate_decision // ""' "$RUN_DIR_REL/checkpoint.json" 2>/dev/null || echo "")"
[ -z "$GATE" ] && GATE="unknown"

PCT_LOW=""
for s in "$RUN_DIR_REL"/raw-claude-summary-*.md; do
  [ -f "$s" ] || continue
  PCT_LOW="$(grep -oE '[0-9]+(\.[0-9]+)?%[[:space:]]*Low' "$s" 2>/dev/null \
              | head -1 | grep -oE '[0-9]+(\.[0-9]+)?' || true)"
  [ -n "$PCT_LOW" ] && break
done
[ -z "$PCT_LOW" ] && PCT_LOW="?"

COMMIT_MSG="Overnight: ${SLUG} · ${GATE} · ${PCT_LOW}% Low"

# ---------------------------------------------------------------------------
# Command runner — echoes in dry-run, executes otherwise.
# ---------------------------------------------------------------------------
run() {
  if [ "$DRY_RUN" = "1" ]; then
    printf '  $ %s\n' "$*"
  else
    echo "  \$ $*"
    eval "$@"
  fi
}

echo "── post-run-commit ──"
echo "  run dir: $RUN_DIR_REL"
echo "  message: $COMMIT_MSG"
[ "$DRY_RUN" = "1" ] && echo "  (DRY RUN — no git state will change)"

# Ensure we're on the working branch first (matches manual flow).
CURRENT_BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [ "$CURRENT_BRANCH" != "$WORKING_BRANCH" ]; then
  run "git checkout $WORKING_BRANCH"
fi

# Stage the run dir.
run "git add $RUN_DIR_REL/"

# Bail cleanly if nothing changed (idempotent re-run safe).
if [ "$DRY_RUN" = "0" ]; then
  if git diff --cached --quiet; then
    echo "  (nothing to commit — already clean)"
    exit 0
  fi
fi

run "git commit -m \"$COMMIT_MSG\""
run "git push $REMOTE $WORKING_BRANCH"
run "git checkout main"
run "git merge --ff-only $WORKING_BRANCH"
run "git push $REMOTE main"
run "git checkout $WORKING_BRANCH"

echo "✓ post-run-commit done"
