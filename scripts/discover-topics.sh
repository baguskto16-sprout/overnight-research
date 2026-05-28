#!/usr/bin/env bash
# discover-topics.sh — Scan input/ and print unresearched-topic paths, oldest first.
#
# A topic is "unresearched" if no completed run dir under
# output/raw-claude-overnight/*/ references it (checkpoint.json#input_file
# matches by basename) AND has a sibling RUN-COMPLETE.txt.
#
# Optional YAML frontmatter at the top of an input file influences pickup:
#   ---
#   skip: true            # never auto-pick
#   rerun: true           # force re-run even if already researched
#   owner: alice@x.com    # informational; consumed by send-email.sh
#   extra_recipients:
#     - bob@x.com
#   ---
# Frontmatter is OPTIONAL — files without it work as before.
#
# Skipped by convention (templates / smoke tests):
#   - _input-template-blank.*
#   - smoke-test-*
#
# Output: one path per line, ordered by file mtime ASCENDING (oldest first).
# Exit 0 always (empty queue is a valid result).
#
# Compatible with bash 3.2 (macOS default).

set -euo pipefail

# Environment setup matches run-unattended.sh (non-interactive SSH safe).
export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

# ---------------------------------------------------------------------------
# Build the set of researched input-file basenames from completed run dirs.
# ---------------------------------------------------------------------------
RESEARCHED_BASENAMES=""
for cp in "$REPO_DIR"/output/raw-claude-overnight/*/checkpoint.json; do
  [ -f "$cp" ] || continue
  run_dir="$(dirname "$cp")"
  [ -f "$run_dir/RUN-COMPLETE.txt" ] || continue
  input_path="$(jq -r '.input_file // ""' "$cp" 2>/dev/null)"
  [ -n "$input_path" ] || continue
  RESEARCHED_BASENAMES+="$(basename "$input_path")"$'\n'
done

is_researched() {
  local base="$1"
  printf '%s' "$RESEARCHED_BASENAMES" | grep -Fxq "$base"
}

# Match the names we always exclude — templates and smoke fixtures. Implemented
# as a function (not a case-in-subshell) for bash 3.2 compatibility.
is_excluded_name() {
  local base="$1"
  case "$base" in
    _input-template-blank.*) return 0 ;;
    smoke-test-*)            return 0 ;;
  esac
  return 1
}

# ---------------------------------------------------------------------------
# Parse optional YAML frontmatter via Python3 (already a repo dep).
# Emits shell var assignments: FM_SKIP=true|false, FM_RERUN=true|false.
# ---------------------------------------------------------------------------
parse_frontmatter_flags() {
  local f="$1"
  python3 - "$f" <<'PY'
import sys, re
path = sys.argv[1]
try:
    with open(path, 'r', encoding='utf-8', errors='replace') as fh:
        text = fh.read()
except Exception:
    print("FM_SKIP=false"); print("FM_RERUN=false"); sys.exit(0)
m = re.match(r'^---\s*\n(.*?)\n---\s*\n', text, re.DOTALL)
skip = False
rerun = False
if m:
    body = m.group(1)
    for line in body.splitlines():
        line = line.strip()
        if not line or line.startswith('#'):
            continue
        if ':' not in line:
            continue
        k, _, v = line.partition(':')
        k = k.strip().lower()
        v = v.strip().strip('"').strip("'").lower()
        if k == 'skip' and v in ('true', 'yes', '1'):
            skip = True
        elif k == 'rerun' and v in ('true', 'yes', '1'):
            rerun = True
print("FM_SKIP=true" if skip else "FM_SKIP=false")
print("FM_RERUN=true" if rerun else "FM_RERUN=false")
PY
}

# ---------------------------------------------------------------------------
# Build candidate list sorted by mtime ascending. Use a tmp file because
# bash 3.2 lacks `mapfile` and shell arrays don't survive a pipeline.
# ---------------------------------------------------------------------------
CAND_FILE="$(mktemp -t discover-topics.XXXXXX)"
trap 'rm -f "$CAND_FILE"' EXIT

for f in "$REPO_DIR"/input/*.md "$REPO_DIR"/input/*.txt; do
  [ -f "$f" ] || continue
  base="$(basename "$f")"
  if is_excluded_name "$base"; then continue; fi
  mtime="$(stat -f '%m' "$f" 2>/dev/null || echo 0)"
  printf '%s\t%s\n' "$mtime" "$f" >> "$CAND_FILE"
done

# Sort ascending by mtime and emit qualifying paths.
sort -n "$CAND_FILE" | cut -f2- | while IFS= read -r path; do
  [ -n "$path" ] || continue
  base="$(basename "$path")"

  # eval is safe — parse_frontmatter_flags only emits FM_SKIP=true|false /
  # FM_RERUN=true|false literals.
  FM_SKIP=false
  FM_RERUN=false
  eval "$(parse_frontmatter_flags "$path")"

  if [ "${FM_SKIP}" = "true" ]; then
    continue
  fi
  if [ "${FM_RERUN}" = "true" ]; then
    echo "$path"
    continue
  fi
  if is_researched "$base"; then
    continue
  fi
  echo "$path"
done
