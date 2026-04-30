#!/usr/bin/env bash
# cache-stats.sh — Show source cache statistics.
# Usage: cache-stats.sh

set -euo pipefail

# Find cache root
find_cache_root() {
  local dir="$(pwd)"
  while [ "$dir" != "/" ]; do
    if [ -d "$dir/.claude/cache/sources" ]; then
      echo "$dir/.claude/cache/sources"
      return 0
    fi
    dir="$(dirname "$dir")"
  done
  return 1
}

CACHE_DIR=$(find_cache_root)
if [ -z "$CACHE_DIR" ]; then
  echo "No cache directory found. Cache not initialized."
  exit 1
fi

INDEX="$CACHE_DIR/index.json"

if [ ! -f "$INDEX" ]; then
  echo "Cache directory exists but index missing — cache empty."
  exit 0
fi

TOTAL=$(jq 'length' "$INDEX")
TOTAL_FILES=$(find "$CACHE_DIR" -type f -name "*.md" -o -name "*.html" 2>/dev/null | wc -l | xargs)
CACHE_SIZE=$(du -sh "$CACHE_DIR" 2>/dev/null | cut -f1)

echo "Source cache statistics"
echo "======================="
echo "Cache dir:       $CACHE_DIR"
echo "Indexed URLs:    $TOTAL"
echo "Cached files:    $TOTAL_FILES"
echo "Total size:      $CACHE_SIZE"
echo ""
echo "Sources by age:"
NOW=$(date +%s)
jq -r 'to_entries | .[] | .value.fetched_at' "$INDEX" 2>/dev/null | while read -r ISO; do
  EPOCH=$(date -j -f "%Y-%m-%dT%H:%M:%SZ" "$ISO" "+%s" 2>/dev/null || \
          date -d "$ISO" "+%s" 2>/dev/null || \
          echo "0")
  AGE_DAYS=$(( (NOW - EPOCH) / 86400 ))
  echo "$AGE_DAYS"
done | sort -n | awk '
  { count[$1]++ }
  END {
    for (age in count) {
      bucket = (age < 1) ? "<1d" : (age < 7) ? "1-7d" : (age < 30) ? "7-30d" : ">30d (stale)"
      buckets[bucket] += count[age]
    }
    for (b in buckets) printf "  %-15s %d\n", b ":", buckets[b]
  }
'

echo ""
echo "To clear cache: rm -rf $CACHE_DIR"
