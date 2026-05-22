#!/usr/bin/env bash
# lint-common.sh — Shared lint check functions for overnight-research outputs.
#
# Sourced by both scripts/lint-output.sh (gate inside the unattended pipeline)
# and scripts/verify.sh (post-hoc quality benchmark). Each check writes one
# line to ${LINT_REPORT_LINES[@]} and increments LINT_PASS/LINT_WARN/LINT_FAIL.
#
# Conventions:
#   - Functions take explicit file paths as arguments (no globals).
#   - Functions return 0 always; severity is recorded via the counters.
#   - Output is markdown-table-row friendly so reports can be aggregated.
#
# Counters and report buffer are managed by lint_init before any check runs.

# shellcheck shell=bash

LINT_PASS=0
LINT_WARN=0
LINT_FAIL=0
LINT_REPORT_LINES=()

lint_init() {
  LINT_PASS=0
  LINT_WARN=0
  LINT_FAIL=0
  LINT_REPORT_LINES=()
}

_lint_record() {
  local level="$1" label="$2" detail="${3:-}"
  LINT_REPORT_LINES+=("$level|$label|$detail")
  case "$level" in
    PASS) LINT_PASS=$((LINT_PASS+1)) ;;
    WARN) LINT_WARN=$((LINT_WARN+1)) ;;
    FAIL) LINT_FAIL=$((LINT_FAIL+1)) ;;
  esac
}

# ---------------------------------------------------------------------------
# Check 1 — Footnote bijection
# Every (n) reference in the artifacts has a matching [n]: <URL> entry, and
# every source-list entry is referenced. Both files (VC and PP) checked.
# ---------------------------------------------------------------------------
lint_check_footnote_bijection() {
  local vc="$1" pp="$2"
  for f in "$vc" "$pp"; do
    [ -f "$f" ] || { _lint_record FAIL "footnote-bijection: file missing" "$f"; continue; }

    # Numbered refs in body: matches (1), (12), etc. — exclude "(\d{4})" year-like patterns by
    # only counting parenthesised numbers ≤ 3 digits (1-999).
    local refs srcs unused orphan
    refs=$(grep -oE '\(([0-9]{1,3})\)' "$f" | tr -d '()' | sort -u | sort -n)

    # Source-list entries: "(1) ..." at start of a line, typical IMI/WP convention.
    # Also accept "[1]: ..." footnote-style.
    srcs=$(grep -oE '^\(([0-9]{1,3})\)|^\[([0-9]{1,3})\]:' "$f" | grep -oE '[0-9]{1,3}' | sort -u | sort -n)

    if [ -z "$refs" ] && [ -z "$srcs" ]; then
      _lint_record WARN "footnote-bijection ($(basename "$f"))" "no numbered citations found"
      continue
    fi

    orphan=$(comm -23 <(echo "$refs") <(echo "$srcs") | head -5 | paste -sd, -)
    unused=$(comm -13 <(echo "$refs") <(echo "$srcs") | head -5 | paste -sd, -)

    if [ -n "$orphan" ] || [ -n "$unused" ]; then
      local msg=""
      [ -n "$orphan" ] && msg="orphan refs: $orphan"
      [ -n "$unused" ] && msg="$msg${msg:+; }unused entries: $unused"
      _lint_record WARN "footnote-bijection ($(basename "$f"))" "$msg"
    else
      _lint_record PASS "footnote-bijection ($(basename "$f"))" "all numbered refs match source entries"
    fi
  done
}

# ---------------------------------------------------------------------------
# Check 2 — Citation density per pain point
# WP target: 8–15 per pain point. Warn at <5, pass at ≥8.
# ---------------------------------------------------------------------------
lint_check_citation_density() {
  local pp="$1"
  [ -f "$pp" ] || { _lint_record FAIL "citation-density" "PP file missing"; return; }

  local total_refs pain_points avg
  total_refs=$(grep -oE '\(([0-9]{1,3})\)' "$pp" | wc -l | tr -d ' ')
  pain_points=$(grep -c "^### Pain point\|^## Pain point" "$pp" 2>/dev/null || echo 0)

  if [ "$pain_points" -eq 0 ]; then
    _lint_record WARN "citation-density" "no pain points detected (heading pattern '### Pain point' missing)"
    return
  fi

  avg=$(awk "BEGIN {printf \"%.1f\", $total_refs / $pain_points}")
  if awk "BEGIN {exit !($avg >= 8)}"; then
    _lint_record PASS "citation-density" "$avg per PP (target 8–15; $total_refs refs / $pain_points PPs)"
  elif awk "BEGIN {exit !($avg >= 5)}"; then
    _lint_record WARN "citation-density" "$avg per PP (below IMI target 8–15)"
  else
    _lint_record WARN "citation-density" "$avg per PP (well below IMI; $total_refs refs / $pain_points PPs)"
  fi
}

# ---------------------------------------------------------------------------
# Check 3 — Unique-domain source diversity
# WP target: 40–60 unique domains across the corpus.
# ---------------------------------------------------------------------------
lint_check_source_diversity() {
  local vc="$1" pp="$2"
  [ -f "$vc" ] && [ -f "$pp" ] || { _lint_record FAIL "source-diversity" "VC/PP file missing"; return; }

  local urls domains
  urls=$(grep -ohE 'https?://[^[:space:])"<>]+' "$vc" "$pp" | sort -u)
  domains=$(echo "$urls" | sed -E 's|^https?://([^/]+).*|\1|' | sed 's/^www\.//' | sort -u | wc -l | tr -d ' ')

  if [ "$domains" -ge 40 ]; then
    _lint_record PASS "source-diversity" "$domains unique domains (target ≥40)"
  elif [ "$domains" -ge 25 ]; then
    _lint_record WARN "source-diversity" "$domains unique domains (below IMI target 40–60)"
  else
    _lint_record WARN "source-diversity" "$domains unique domains (well below IMI)"
  fi
}

# ---------------------------------------------------------------------------
# Check 4 — [ASSUMED-N] tag sequence + "to validate" follow-up
# N values should be dense (no gaps). Every [ASSUMED-N] should be followed by
# a "to validate:" or "to validate via:" phrase within the same paragraph.
# ---------------------------------------------------------------------------
lint_check_assumed_sequence() {
  local pp="$1" vc="${2:-}"
  local files=("$pp")
  [ -n "$vc" ] && [ -f "$vc" ] && files+=("$vc")

  local nums total_tags missing_validate
  nums=$(grep -hoE '\[ASSUMED-[0-9]+\]' "${files[@]}" 2>/dev/null \
          | grep -oE '[0-9]+' | sort -u -n)
  total_tags=$(grep -hoE '\[ASSUMED-[0-9]+\]' "${files[@]}" 2>/dev/null | wc -l | tr -d ' ')

  if [ -z "$nums" ]; then
    _lint_record PASS "assumed-sequence" "no [ASSUMED-N] tags (acceptable if all claims primary-sourced)"
    return
  fi

  # Detect gaps: count vs max
  local max_n count_n
  max_n=$(echo "$nums" | tail -1)
  count_n=$(echo "$nums" | wc -l | tr -d ' ')

  local gap_detail=""
  if [ "$max_n" != "$count_n" ]; then
    gap_detail="sequence has gaps (max=$max_n, distinct=$count_n)"
  fi

  # Check follow-up phrase coverage by ratio (tags can span paragraphs, so
  # line-local matching produces false positives). Count global "to validate"
  # phrases vs total ASSUMED tags; warn if ratio < 0.7.
  local validate_count ratio
  validate_count=$(grep -hoiE 'to validate' "${files[@]}" 2>/dev/null | wc -l | tr -d ' ')
  if [ "$total_tags" -gt 0 ]; then
    ratio=$(awk "BEGIN {printf \"%.2f\", $validate_count / $total_tags}")
  else
    ratio="1.00"
  fi

  local validate_warn=""
  if awk "BEGIN {exit !($ratio < 0.7)}"; then
    validate_warn="validate-ratio=$ratio ($validate_count 'to validate' / $total_tags tags; target ≥0.7)"
  fi

  if [ -n "$gap_detail" ] && [ -n "$validate_warn" ]; then
    _lint_record WARN "assumed-sequence" "$gap_detail; $validate_warn"
  elif [ -n "$gap_detail" ]; then
    _lint_record WARN "assumed-sequence" "$gap_detail ($total_tags total)"
  elif [ -n "$validate_warn" ]; then
    _lint_record WARN "assumed-sequence" "$validate_warn"
  else
    _lint_record PASS "assumed-sequence" "$count_n distinct tags, $validate_count 'to validate' follow-ups (ratio $ratio)"
  fi
}

# ---------------------------------------------------------------------------
# Check 5 — FINAL-REPORT.html has Wright wordmark
# Either base64-embedded image or text-fallback "WRIGHT PARTNERS".
# ---------------------------------------------------------------------------
lint_check_wordmark() {
  local html="$1"
  [ -f "$html" ] || { _lint_record WARN "wordmark" "FINAL-REPORT.html missing (render skipped?)"; return; }

  if grep -qE 'data:image/png;base64,[A-Za-z0-9+/]+' "$html" \
     || grep -qiE 'wright[- ]partners|wright.*wordmark' "$html"; then
    _lint_record PASS "wordmark" "Wright Partners wordmark present in FINAL-REPORT.html"
  else
    _lint_record WARN "wordmark" "no wordmark detected in FINAL-REPORT.html"
  fi
}

# ---------------------------------------------------------------------------
# Check 6 — Attended-fetch tags well-formed
# Every [NEEDS-ATTENDED-FETCH] and [CONFIRMED-INACCESSIBLE] tag must include
# a full URL (http/https) — no truncation, no placeholder.
# ---------------------------------------------------------------------------
lint_check_attended_fetch_tags() {
  local vc="$1" pp="$2"
  local files=()
  [ -f "$vc" ] && files+=("$vc")
  [ -f "$pp" ] && files+=("$pp")
  [ ${#files[@]} -eq 0 ] && { _lint_record FAIL "attended-fetch-tags" "no input files"; return; }

  local bad_tags
  # A well-formed tag looks like:  [NEEDS-ATTENDED-FETCH]: https://… OR [NEEDS-ATTENDED-FETCH: https://…]
  # A bad tag has the keyword but no http(s):// nearby in the same line.
  bad_tags=$(grep -hE '\[(NEEDS-ATTENDED-FETCH|CONFIRMED-INACCESSIBLE)' "${files[@]}" 2>/dev/null \
              | grep -vE 'https?://' | head -3)

  if [ -n "$bad_tags" ]; then
    local sample
    sample=$(echo "$bad_tags" | head -1 | cut -c1-80)
    _lint_record WARN "attended-fetch-tags" "tags missing URL — sample: $sample…"
  else
    local n_needs n_inacc
    n_needs=$(grep -hoE '\[NEEDS-ATTENDED-FETCH' "${files[@]}" 2>/dev/null | wc -l | tr -d ' ')
    n_inacc=$(grep -hoE '\[CONFIRMED-INACCESSIBLE' "${files[@]}" 2>/dev/null | wc -l | tr -d ' ')
    _lint_record PASS "attended-fetch-tags" "$n_needs NEEDS / $n_inacc CONFIRMED-INACCESSIBLE, all well-formed"
  fi
}

# ---------------------------------------------------------------------------
# Check 7 — Backup-pair invariant (post-Phase-2 only)
# If .bak files exist, their byte size differs from canonical by < 20% — a
# sanity check that Phase 2 patched (small Edit hunks) rather than rewriting.
# ---------------------------------------------------------------------------
lint_check_backup_invariant() {
  local run_dir="$1"
  local found_any=0
  for canonical in "$run_dir"/raw-claude-value-chain-*.md "$run_dir"/raw-claude-pain-points-*.md; do
    [ -f "$canonical" ] || continue
    local stem bak
    stem=$(basename "$canonical" | sed -E 's/^(raw-claude-(value-chain|pain-points)).*/\1/')
    bak="$run_dir/$stem.md.bak"
    [ -f "$bak" ] || continue
    found_any=1

    local size_c size_b delta_abs delta_pct
    size_c=$(stat -f '%z' "$canonical")
    size_b=$(stat -f '%z' "$bak")
    delta_abs=$(( size_c > size_b ? size_c - size_b : size_b - size_c ))
    delta_pct=$(awk "BEGIN {printf \"%.1f\", ($delta_abs / $size_b) * 100}")

    if awk "BEGIN {exit !($delta_pct < 20)}"; then
      _lint_record PASS "backup-invariant ($(basename "$canonical"))" "Δ ${delta_pct}% (canonical=${size_c}, bak=${size_b})"
    else
      _lint_record WARN "backup-invariant ($(basename "$canonical"))" "Δ ${delta_pct}% (>20%; Phase 2 may have rewritten rather than patched)"
    fi
  done
  if [ "$found_any" -eq 0 ]; then
    _lint_record PASS "backup-invariant" "no .bak files (Phase 2 not yet run; check skipped)"
  fi
}

# ---------------------------------------------------------------------------
# Render the buffered report
# ---------------------------------------------------------------------------
lint_render_markdown() {
  local out_file="$1" run_id="${2:-unknown}"
  {
    echo "# Lint report — $run_id"
    echo "Generated: $(date '+%F %T %Z')"
    echo "Result: $LINT_PASS pass · $LINT_WARN warn · $LINT_FAIL fail"
    echo ""

    if [ "$LINT_FAIL" -gt 0 ]; then
      echo "## Errors"
      echo ""
      for line in "${LINT_REPORT_LINES[@]}"; do
        case "$line" in
          FAIL\|*) IFS='|' read -r _ lbl det <<<"$line"; echo "- **$lbl** — $det" ;;
        esac
      done
      echo ""
    fi

    if [ "$LINT_WARN" -gt 0 ]; then
      echo "## Warnings"
      echo ""
      for line in "${LINT_REPORT_LINES[@]}"; do
        case "$line" in
          WARN\|*) IFS='|' read -r _ lbl det <<<"$line"; echo "- **$lbl** — $det" ;;
        esac
      done
      echo ""
    fi

    echo "## Passed"
    echo ""
    for line in "${LINT_REPORT_LINES[@]}"; do
      case "$line" in
        PASS\|*) IFS='|' read -r _ lbl det <<<"$line"; echo "- $lbl — $det" ;;
      esac
    done
  } > "$out_file"
}

lint_render_console() {
  for line in "${LINT_REPORT_LINES[@]}"; do
    IFS='|' read -r level lbl det <<<"$line"
    case "$level" in
      PASS) printf "  ✓ %-40s %s\n" "$lbl" "$det" ;;
      WARN) printf "  ⚠ %-40s %s\n" "$lbl" "$det" ;;
      FAIL) printf "  ✗ %-40s %s\n" "$lbl" "$det" ;;
    esac
  done
}
