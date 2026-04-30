#!/usr/bin/env bash
# fetch-with-cache.sh — Filesystem-based source caching wrapper.
# Usage: fetch-with-cache.sh <url>
#
# Behavior:
#   - Hash URL → check .claude/cache/sources/index.json for cache entry
#   - If cached AND fetched_at < TTL: print cached content
#   - If miss OR stale: fetch via curl, store to cache, print content
#   - PDF URLs: process via markitdown if available, fall back to raw curl
#
# Returns content to stdout. Errors to stderr.
#
# Cache TTL: 30 days (configurable via CACHE_TTL_DAYS env var)
# Cache root: auto-detected via find_cache_root (walks up from CWD looking for .claude/cache/sources/)

set -euo pipefail

URL="${1:-}"
if [ -z "$URL" ]; then
  echo "Usage: $0 <url>" >&2
  exit 1
fi

# Find cache root by walking up from current directory
find_cache_root() {
  local dir
  dir="$(pwd)"
  while [ "$dir" != "/" ]; do
    if [ -d "$dir/.claude/cache/sources" ]; then
      echo "$dir/.claude/cache/sources"
      return 0
    fi
    dir="$(dirname "$dir")"
  done
  return 1
}

CACHE_DIR="${CACHE_DIR:-$(find_cache_root || echo "")}"
if [ -z "$CACHE_DIR" ]; then
  # No cache configured. Fall back to direct fetch with no caching.
  curl -sL "$URL"
  exit 0
fi

INDEX="$CACHE_DIR/index.json"
TTL_DAYS="${CACHE_TTL_DAYS:-30}"
TTL_SECONDS=$(( TTL_DAYS * 86400 ))
NOW=$(date +%s)

# Initialize index if missing
if [ ! -f "$INDEX" ]; then
  mkdir -p "$CACHE_DIR"
  echo "{}" > "$INDEX"
fi

# Hash URL for filename
HASH=$(echo -n "$URL" | shasum -a 256 | cut -d' ' -f1 | head -c 16)

# Detect content type to choose extension
EXT="html"
if [[ "$URL" == *.pdf ]] || [[ "$URL" == *.PDF ]]; then
  EXT="md"  # PDF will be markitdown-converted to markdown
fi

CACHED_FILE="$CACHE_DIR/$HASH.$EXT"

# Check cache hit
if [ -f "$CACHED_FILE" ]; then
  # Get fetched_at from index
  FETCHED_AT_ISO=$(jq -r --arg url "$URL" '.[$url].fetched_at // empty' "$INDEX" 2>/dev/null || echo "")

  if [ -n "$FETCHED_AT_ISO" ]; then
    # Convert ISO to epoch (works on macOS and Linux)
    FETCHED_AT_EPOCH=$(date -j -f "%Y-%m-%dT%H:%M:%SZ" "$FETCHED_AT_ISO" "+%s" 2>/dev/null || \
                       date -d "$FETCHED_AT_ISO" "+%s" 2>/dev/null || \
                       echo "0")

    AGE=$(( NOW - FETCHED_AT_EPOCH ))

    if [ "$AGE" -lt "$TTL_SECONDS" ]; then
      # Cache hit and fresh
      cat "$CACHED_FILE"
      echo "[cache hit, age $((AGE / 86400)) days]" >&2
      exit 0
    fi
  fi
fi

# Cache miss or stale — fetch
echo "[cache miss, fetching $URL]" >&2

if [[ "$URL" == *.pdf ]] || [[ "$URL" == *.PDF ]]; then
  # PDF: try markitdown
  if command -v markitdown &> /dev/null; then
    if markitdown "$URL" > "$CACHED_FILE.tmp" 2>/dev/null; then
      mv "$CACHED_FILE.tmp" "$CACHED_FILE"
      echo "[PDF processed via markitdown]" >&2
    else
      # markitdown failed, fall back to raw download (may be unusable)
      curl -sL "$URL" > "$CACHED_FILE.tmp" && mv "$CACHED_FILE.tmp" "$CACHED_FILE"
      echo "[PDF markitdown failed, raw download — likely unusable]" >&2
    fi
  else
    # No markitdown available
    curl -sL "$URL" > "$CACHED_FILE.tmp" && mv "$CACHED_FILE.tmp" "$CACHED_FILE"
    echo "[no markitdown, raw PDF download — likely unusable; pip install markitdown to fix]" >&2
  fi
else
  # HTML / other text
  curl -sL "$URL" > "$CACHED_FILE.tmp" && mv "$CACHED_FILE.tmp" "$CACHED_FILE"
fi

# Update index with new entry
NOW_ISO=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
jq --arg url "$URL" \
   --arg filename "$HASH.$EXT" \
   --arg fetched_at "$NOW_ISO" \
   --arg ext "$EXT" \
   '.[$url] = {filename: $filename, fetched_at: $fetched_at, ext: $ext}' \
   "$INDEX" > "$INDEX.tmp" && mv "$INDEX.tmp" "$INDEX"

# Output content
cat "$CACHED_FILE"
