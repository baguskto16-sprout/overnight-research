#!/usr/bin/env bash
# send-email.sh — Send overnight-research notifications via Resend.
#
# Modes:
#   --self-test                 Send a fixed test email to the primary recipient.
#   <run_dir>                   Send a per-topic completion email summarising
#                               gate, % Low confidence, and key artifacts.
#   --digest <summary-file>     Send a nightly digest email from a summary
#                               file produced by auto-overnight.sh.
#
# Env (config/auto-overnight.env):
#   RESEND_API_KEY    Resend API key (REQUIRED).
#   RESEND_FROM       Sender email (e.g. onboarding@resend.dev).
#   RESEND_FROM_NAME  Display name for sender (optional).
#   RECIPIENTS_FILE   Path to recipients list (default config/recipients.txt).
#
# Recipients are the union of:
#   - config/recipients.txt (one per line, # comments allowed)
#   - input frontmatter `owner` (per-topic only)
#   - input frontmatter `extra_recipients` (per-topic only)

set -euo pipefail

export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

ENV_FILE="$REPO_DIR/config/auto-overnight.env"
[ -f "$ENV_FILE" ] || { echo "ERROR: $ENV_FILE not found"; exit 1; }
# shellcheck disable=SC1090
set -a; . "$ENV_FILE"; set +a

: "${RESEND_API_KEY:?RESEND_API_KEY not set in $ENV_FILE}"
: "${RESEND_FROM:?RESEND_FROM not set in $ENV_FILE}"
RESEND_FROM_NAME="${RESEND_FROM_NAME:-Sprout Overnight Research}"
RECIPIENTS_FILE="${RECIPIENTS_FILE:-$REPO_DIR/config/recipients.txt}"

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------
read_recipients_file() {
  [ -f "$RECIPIENTS_FILE" ] || return 0
  awk 'NF && $1 !~ /^#/ { print $1 }' "$RECIPIENTS_FILE"
}

read_frontmatter_recipients() {
  # Emit owner + extra_recipients addresses from an input file, one per line.
  local f="$1"
  [ -f "$f" ] || return 0
  python3 - "$f" <<'PY'
import sys, re
path = sys.argv[1]
try:
    text = open(path, 'r', encoding='utf-8', errors='replace').read()
except Exception:
    sys.exit(0)
m = re.match(r'^---\s*\n(.*?)\n---\s*\n', text, re.DOTALL)
if not m: sys.exit(0)
body = m.group(1)
in_extra = False
for raw in body.splitlines():
    line = raw.rstrip()
    stripped = line.strip()
    if not stripped or stripped.startswith('#'):
        continue
    if in_extra and (line.startswith(' ') or line.startswith('\t')) and stripped.startswith('-'):
        addr = stripped.lstrip('-').strip().strip('"').strip("'")
        if '@' in addr: print(addr)
        continue
    in_extra = False
    if ':' in stripped:
        k, _, v = stripped.partition(':')
        k = k.strip().lower(); v = v.strip().strip('"').strip("'")
        if k == 'owner' and '@' in v:
            print(v)
        elif k == 'extra_recipients':
            in_extra = True
PY
}

dedupe_recipients() {
  awk 'NF && !seen[$0]++'
}

# Build JSON array string from one-per-line addresses on stdin. We use
# python3 -c (not a heredoc) so the function's pipeline stdin reaches python.
json_string_array() {
  python3 -c 'import sys,json;print(json.dumps([l.strip() for l in sys.stdin if l.strip()]))'
}

# POST to Resend. Reads body text from stdin, writes JSON response to stdout.
resend_post() {
  local subject="$1" to_json="$2"
  local body
  body="$(cat)"
  local payload
  payload="$(BODY="$body" python3 - "$subject" "$to_json" "$RESEND_FROM" "$RESEND_FROM_NAME" <<'PY'
import sys, json, os
subject, to_json, sender, sender_name = sys.argv[1:5]
body = os.environ.get('BODY', '')
to = json.loads(to_json)
from_field = f'{sender_name} <{sender}>' if sender_name else sender
print(json.dumps({"from": from_field, "to": to, "subject": subject, "text": body}))
PY
)"

  # Capture HTTP status + body in one shot. We always print the body so the
  # caller (and the orchestrator log) can see Resend's error message; rc is
  # set non-zero on HTTP >= 400 so `if !` checks behave naturally.
  local http_status
  http_status="$(curl -sS -o /tmp/.resend-resp.$$ -w '%{http_code}' \
    -X POST https://api.resend.com/emails \
    -H "Authorization: Bearer ${RESEND_API_KEY}" \
    -H "Content-Type: application/json" \
    -d "$payload" || echo "000")"
  cat /tmp/.resend-resp.$$
  rm -f /tmp/.resend-resp.$$
  echo
  echo "HTTP $http_status"
  case "$http_status" in
    2*) return 0 ;;
    *)  return 1 ;;
  esac
}

# ---------------------------------------------------------------------------
# Body builders
# ---------------------------------------------------------------------------
build_self_test_body() {
  cat <<EOF
Delivery test from the Sprout overnight research pipeline.

If this lands in your inbox, the nightly scheduler is reaching its
recipients correctly. No action needed.

Sent: $(date '+%A, %d %B %Y · %H:%M %Z')
Host: $(hostname -s)
Repo: $(basename "$REPO_DIR")

— Sprout overnight research
EOF
}

build_run_body() {
  local run_dir="$1"
  local checkpoint="$run_dir/checkpoint.json"
  local slug gate pct_low input_file
  slug="$(jq -r '.topic_slug // ""' "$checkpoint" 2>/dev/null || echo "")"
  gate="$(jq -r '.final_gate_decision // "unknown"' "$checkpoint" 2>/dev/null || echo "unknown")"
  input_file="$(jq -r '.input_file // ""' "$checkpoint" 2>/dev/null || echo "")"
  pct_low="?"
  local s
  for s in "$run_dir"/raw-claude-summary-*.md; do
    [ -f "$s" ] || continue
    pct_low="$(grep -oE '[0-9]+(\.[0-9]+)?%[[:space:]]*Low' "$s" 2>/dev/null \
                | head -1 | grep -oE '[0-9]+(\.[0-9]+)?' || true)"
    [ -n "$pct_low" ] && break
  done
  [ -z "$pct_low" ] && pct_low="?"

  local run_basename
  run_basename="$(basename "$run_dir")"
  local blob_base="https://github.com/Wright-Partners/overnight-research/blob/main"
  local tree_base="https://github.com/Wright-Partners/overnight-research/tree/main"
  local rel_run="output/raw-claude-overnight/$run_basename"

  {
    echo "Overnight research run complete for ${slug:-$run_basename}."
    echo
    echo "  Gate:   ${gate}"
    echo "  % Low:  ${pct_low}%"
    echo "  Input:  ${input_file}"
    echo "  Run:    ${rel_run}"
    echo
    echo "Headline findings:"
    local summary_file=""
    for s in "$run_dir"/raw-claude-summary-*.md; do
      [ -f "$s" ] && { summary_file="$s"; break; }
    done
    if [ -n "$summary_file" ]; then
      grep -E '^[0-9]+\.|^- ' "$summary_file" 2>/dev/null | head -3 | sed 's/^/  /'
    else
      echo "  (raw-claude-summary not found — see run dir)"
    fi
    echo
    echo "Links:"
    [ -n "$input_file" ] && echo "  input  : $blob_base/${input_file#./}"
    echo "  output : $tree_base/$rel_run"
    if [ -f "$run_dir/FINAL-REPORT.html" ]; then
      echo "  report : $blob_base/$rel_run/FINAL-REPORT.html"
      echo "  preview: https://htmlpreview.github.io/?$blob_base/$rel_run/FINAL-REPORT.html"
    fi
    echo
    echo "— Sprout overnight research"
  }
}

build_digest_body() {
  local summary_file="$1"
  cat "$summary_file"
}

# ---------------------------------------------------------------------------
# Dispatch
# ---------------------------------------------------------------------------
MODE="${1:-}"

case "$MODE" in
  --self-test)
    SUBJECT="Sprout overnight research — delivery test ($(date '+%d %b %Y, %H:%M'))"
    TO_LIST="$(printf '%s\n' "bagus.kurnianto@sprout.co.id" | json_string_array)"
    echo "→ Sending self-test to bagus.kurnianto@sprout.co.id …"
    set +e
    RESP="$(build_self_test_body | resend_post "$SUBJECT" "$TO_LIST")"
    SEND_RC=$?
    set -e
    echo "$RESP"
    ID="$(echo "$RESP" | jq -r '.id // empty' 2>/dev/null || true)"
    [ -n "$ID" ] && echo "→ Resend id: $ID"
    exit "$SEND_RC"
    ;;

  --digest)
    SUMMARY_FILE="${2:-}"
    [ -n "$SUMMARY_FILE" ] && [ -f "$SUMMARY_FILE" ] || {
      echo "ERROR: --digest needs a readable summary file path"; exit 1; }
    SUBJECT="Sprout overnight research — digest, $(date '+%A %d %b %Y')"
    TO_LIST="$(read_recipients_file | dedupe_recipients | json_string_array)"
    [ "$TO_LIST" = "[]" ] && { echo "WARN: no recipients — skipping digest send"; exit 0; }
    echo "→ Sending digest …"
    set +e
    RESP="$(build_digest_body "$SUMMARY_FILE" | resend_post "$SUBJECT" "$TO_LIST")"
    SEND_RC=$?
    set -e
    echo "$RESP"
    exit "$SEND_RC"
    ;;

  -h|--help|"")
    cat <<EOF
Usage:
  $0 --self-test
  $0 <run_dir>
  $0 --digest <summary-file>
EOF
    exit 0
    ;;

  *)
    RUN_DIR="$MODE"
    [ -d "$RUN_DIR" ] || { echo "ERROR: run_dir not found: $RUN_DIR"; exit 1; }
    INPUT_FILE="$(jq -r '.input_file // ""' "$RUN_DIR/checkpoint.json" 2>/dev/null || echo "")"
    SLUG="$(jq -r '.topic_slug // ""' "$RUN_DIR/checkpoint.json" 2>/dev/null || echo "")"
    [ -z "$SLUG" ] && SLUG="$(basename "$RUN_DIR")"
    GATE="$(jq -r '.final_gate_decision // "unknown"' "$RUN_DIR/checkpoint.json" 2>/dev/null || echo "unknown")"
    PCT_LOW="?"
    for s in "$RUN_DIR"/raw-claude-summary-*.md; do
      [ -f "$s" ] || continue
      PCT_LOW="$(grep -oE '[0-9]+(\.[0-9]+)?%[[:space:]]*Low' "$s" 2>/dev/null \
                  | head -1 | grep -oE '[0-9]+(\.[0-9]+)?' || true)"
      [ -n "$PCT_LOW" ] && break
    done
    [ -z "$PCT_LOW" ] && PCT_LOW="?"

    SUBJECT="Overnight research — ${SLUG} (gate: ${GATE}, ${PCT_LOW}% Low)"
    TO_LIST="$( { read_recipients_file
                  [ -n "$INPUT_FILE" ] && [ -f "$INPUT_FILE" ] && read_frontmatter_recipients "$INPUT_FILE"
                } | dedupe_recipients | json_string_array )"
    [ "$TO_LIST" = "[]" ] && { echo "WARN: no recipients — skipping send"; exit 0; }
    echo "→ Sending completion email for $SLUG …"
    set +e
    RESP="$(build_run_body "$RUN_DIR" | resend_post "$SUBJECT" "$TO_LIST")"
    SEND_RC=$?
    set -e
    echo "$RESP"
    exit "$SEND_RC"
    ;;
esac
