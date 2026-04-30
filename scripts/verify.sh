#!/usr/bin/env bash
# verify.sh — Post-run quality benchmark for overnight-research output.
# Usage: ./verify.sh [run-id]
#
# Defaults to latest run in ~/Downloads/Work/overnight/output/raw-claude-overnight/
# Outputs: structured benchmark report with status pass/fail per check.

set -euo pipefail

TARGET="${TARGET:-$HOME/Downloads/Work/overnight}"
RUN_ID="${1:-}"

# Detect mode: engagement (artifacts in stage folders + scratchpad) or sandbox (./output/)
detect_mode() {
  if [ -d "$TARGET/11-value-chain" ] && [ -d "$TARGET/12-pain-points" ]; then
    echo "engagement-design"
  elif [ -d "$TARGET/21-value-chain" ] && [ -d "$TARGET/22-pain-points" ]; then
    echo "engagement-ideation"
  else
    echo "sandbox"
  fi
}

MODE=$(detect_mode)
echo "→ Detected mode: $MODE"

# Resolve paths based on mode
if [ "$MODE" = "engagement-design" ]; then
  VC_DIR="$TARGET/11-value-chain"
  PP_DIR="$TARGET/12-pain-points"
  SCRATCH_DIR="$TARGET/90-scratchpad/raw-claude-overnight"
elif [ "$MODE" = "engagement-ideation" ]; then
  VC_DIR="$TARGET/21-value-chain"
  PP_DIR="$TARGET/22-pain-points"
  SCRATCH_DIR="$TARGET/90-scratchpad/raw-claude-overnight"
else
  VC_DIR=""  # set per run-dir below
  PP_DIR=""
  SCRATCH_DIR="$TARGET/output/raw-claude-overnight"
fi

# Find run dir (always in scratchpad for engagement, or output for sandbox)
if [ -z "$RUN_ID" ]; then
  RUN_DIR=$(ls -td "$SCRATCH_DIR/"*/ 2>/dev/null | head -1 | sed 's:/$::')
  if [ -z "$RUN_DIR" ]; then
    echo "ERROR: No runs found in $SCRATCH_DIR/"
    exit 1
  fi
else
  RUN_DIR="$SCRATCH_DIR/$RUN_ID"
  if [ ! -d "$RUN_DIR" ]; then
    echo "ERROR: Run dir not found: $RUN_DIR"
    exit 1
  fi
fi

# In sandbox mode, artifacts are in run dir. In engagement mode, in stage folders.
if [ "$MODE" = "sandbox" ]; then
  VC_DIR="$RUN_DIR"
  PP_DIR="$RUN_DIR"
fi

echo ""
echo "═══════════════════════════════════════════════════════════════"
echo "  overnight-research run verification"
echo "═══════════════════════════════════════════════════════════════"
echo "Run dir: $RUN_DIR"
echo ""

PASS=0
FAIL=0
WARN=0

check() {
  local label="$1"
  local status="$2"
  local detail="${3:-}"
  case "$status" in
    pass) printf "  ✓ %-50s %s\n" "$label" "$detail"; PASS=$((PASS+1)) ;;
    fail) printf "  ✗ %-50s %s\n" "$label" "$detail"; FAIL=$((FAIL+1)) ;;
    warn) printf "  ⚠ %-50s %s\n" "$label" "$detail"; WARN=$((WARN+1)) ;;
  esac
}

echo "── 1. Output files ───────────────────────────────────────────"

VC_FILE=$(ls "$VC_DIR"/raw-claude-value-chain-*.md 2>/dev/null | head -1 || echo "")
PP_FILE=$(ls "$PP_DIR"/raw-claude-pain-points-*.md 2>/dev/null | head -1 || echo "")
SUM_FILE=$(ls "$RUN_DIR"/raw-claude-summary-*.md 2>/dev/null | head -1 || echo "")
COMPLETE=$(ls "$RUN_DIR"/RUN-COMPLETE.txt 2>/dev/null || echo "")
BLOCKED=$(ls "$RUN_DIR"/BLOCKED.md 2>/dev/null || echo "")
ABORTED=$(ls "$RUN_DIR"/ABORTED.md 2>/dev/null || echo "")
RERUN=$(ls "$RUN_DIR"/re-run-recommended.md 2>/dev/null || echo "")
STAGE_DROP=$(ls "$RUN_DIR"/STAGE-DROP-SUMMARY.md 2>/dev/null || echo "")

[ -f "$VC_FILE" ] && check "value-chain artifact present" pass "$(du -h "$VC_FILE" | cut -f1)" || check "value-chain artifact missing" fail
[ -f "$PP_FILE" ] && check "pain-points artifact present" pass "$(du -h "$PP_FILE" | cut -f1)" || check "pain-points artifact missing" fail
[ -f "$SUM_FILE" ] && check "summary artifact present" pass "$(du -h "$SUM_FILE" | cut -f1)" || check "summary artifact missing" fail
[ -f "$COMPLETE" ] && check "RUN-COMPLETE marker present" pass || check "RUN-COMPLETE marker missing" warn

[ -f "$BLOCKED" ] && check "BLOCKED.md present (skill aborted at validation)" warn "$BLOCKED"
[ -f "$ABORTED" ] && check "ABORTED.md present (Stage 1 tracer failed)" warn "$ABORTED"
[ -f "$RERUN" ] && check "re-run-recommended.md present (gate triggered)" warn "$RERUN"

echo ""
echo "── 2. Citation density ──────────────────────────────────────"

if [ -f "$PP_FILE" ]; then
  TOTAL_FOOTNOTES=$(grep -oE '\([0-9]+\)' "$PP_FILE" 2>/dev/null | sort -u | wc -l | xargs)
  PAIN_POINTS=$(grep -c "^### Pain point" "$PP_FILE" 2>/dev/null || echo 0)
  AVG_CITATIONS=0
  if [ "$PAIN_POINTS" -gt 0 ]; then
    AVG_CITATIONS=$(echo "scale=1; $TOTAL_FOOTNOTES / $PAIN_POINTS" | bc)
  fi
  TARGET_DENSITY="8-15 (IMI reference)"

  check "Total pain points" pass "$PAIN_POINTS"
  check "Total numbered citations" pass "$TOTAL_FOOTNOTES"

  if (( $(echo "$AVG_CITATIONS >= 8" | bc -l) )); then
    check "Avg citations per pain point" pass "$AVG_CITATIONS (target: $TARGET_DENSITY)"
  elif (( $(echo "$AVG_CITATIONS >= 5" | bc -l) )); then
    check "Avg citations per pain point" warn "$AVG_CITATIONS (target: $TARGET_DENSITY) — below IMI density"
  else
    check "Avg citations per pain point" fail "$AVG_CITATIONS (target: $TARGET_DENSITY) — well below"
  fi
fi

echo ""
echo "── 3. Source diversity ──────────────────────────────────────"

if [ -f "$PP_FILE" ] && [ -f "$VC_FILE" ]; then
  UNIQUE_URLS=$(cat "$PP_FILE" "$VC_FILE" 2>/dev/null | grep -oE 'https?://[^\s)]+' | sort -u | wc -l | xargs)
  check "Total unique URLs cited" pass "$UNIQUE_URLS"

  if [ "$UNIQUE_URLS" -ge 40 ]; then
    check "Source diversity vs IMI target (40-60)" pass "$UNIQUE_URLS"
  elif [ "$UNIQUE_URLS" -ge 25 ]; then
    check "Source diversity vs IMI target (40-60)" warn "$UNIQUE_URLS (below IMI but acceptable for smoke test)"
  else
    check "Source diversity vs IMI target (40-60)" fail "$UNIQUE_URLS (well below)"
  fi

  # Check for primary source domains
  GOV_URLS=$(cat "$PP_FILE" "$VC_FILE" | grep -ciE '(bps\.go\.id|mida\.gov\.my|nso\.go\.th|aseanenergy\.org|iea\.org|worldbank\.org|oecd\.org)' || echo 0)
  ACADEMIC=$(cat "$PP_FILE" "$VC_FILE" | grep -ciE '(scholar\.google|sciencedirect|springer|tandfonline|wiley|ieee|researchgate)' || echo 0)
  PDF_PROCESSED=$(cat "$PP_FILE" "$VC_FILE" | grep -c "PDF, processed via markitdown" || echo 0)

  check "Government source citations" pass "$GOV_URLS"
  check "Academic source citations" pass "$ACADEMIC"

  if [ "$PDF_PROCESSED" -ge 1 ]; then
    check "PDF sources processed via markitdown" pass "$PDF_PROCESSED"
  else
    check "PDF sources processed via markitdown" warn "0 (markitdown integration unused — check installation)"
  fi
fi

echo ""
echo "── 4. Hypothesis discipline ─────────────────────────────────"

if [ -f "$PP_FILE" ]; then
  ASSUMED_TAGS=$(grep -oE '\[ASSUMED-[0-9]+\]' "$PP_FILE" 2>/dev/null | sort -u | wc -l | xargs)
  GEO_MISMATCH=$(grep -c "Geography mismatch" "$PP_FILE" "$VC_FILE" 2>/dev/null | awk -F: '{sum+=$2} END {print sum}' || echo 0)
  DATA_GAP=$(grep -c "Data gap" "$PP_FILE" "$VC_FILE" 2>/dev/null | awk -F: '{sum+=$2} END {print sum}' || echo 0)

  check "[ASSUMED-N] tagged claims" pass "$ASSUMED_TAGS"
  check "Geography mismatch flags" pass "$GEO_MISMATCH"
  check "Data gap flags" pass "$DATA_GAP"
fi

echo ""
echo "── 5. Self-validation result ────────────────────────────────"

if [ -f "$SUM_FILE" ]; then
  HIGH_PCT=$(grep -oE 'High confidence: [0-9]+ \([0-9.]+%\)' "$SUM_FILE" | grep -oE '[0-9.]+%' | tail -1 || echo "?")
  MED_PCT=$(grep -oE 'Medium confidence: [0-9]+ \([0-9.]+%\)' "$SUM_FILE" | grep -oE '[0-9.]+%' | tail -1 || echo "?")
  LOW_PCT=$(grep -oE 'Low confidence: [0-9]+ \([0-9.]+%\)' "$SUM_FILE" | grep -oE '[0-9.]+%' | tail -1 || echo "?")
  GATE=$(grep -oE 'Gate decision:[^\n]*' "$SUM_FILE" | head -1 || echo "?")

  check "% High confidence" pass "$HIGH_PCT"
  check "% Medium confidence" pass "$MED_PCT"
  check "% Low confidence" pass "$LOW_PCT"
  check "Gate decision" pass "${GATE:-not found}"
fi

echo ""
echo "── 6. Cache layer status ────────────────────────────────────"

CACHE_DIR="$TARGET/.claude/cache/sources"
if [ -d "$CACHE_DIR" ] && [ -f "$CACHE_DIR/index.json" ]; then
  CACHE_ENTRIES=$(jq 'length' "$CACHE_DIR/index.json" 2>/dev/null || echo 0)
  CACHE_SIZE=$(du -sh "$CACHE_DIR" 2>/dev/null | cut -f1)
  check "Source cache populated" pass "$CACHE_ENTRIES entries, $CACHE_SIZE"
else
  check "Source cache" warn "not initialized (zero benefit on this run, but normal)"
fi

echo ""
echo "═══════════════════════════════════════════════════════════════"
echo "  Summary: $PASS passed, $FAIL failed, $WARN warnings"
echo "═══════════════════════════════════════════════════════════════"
echo ""

if [ "$FAIL" -gt 0 ]; then
  echo "→ Status: FAIL — fix issues before running full overnight"
  exit 1
elif [ "$WARN" -gt 3 ]; then
  echo "→ Status: PASS WITH WARNINGS — review before sending to Toi"
  exit 0
else
  echo "→ Status: PASS — output is benchmark-grade, ready to compare with IMI references"
fi

echo ""
echo "Side-by-side compare with IMI:"
echo "  Reference: $TARGET/.claude/refs/imi-pain-points-template.md"
echo "  Output:    $PP_FILE"
echo ""
echo "Open both in editor + diff structurally."
