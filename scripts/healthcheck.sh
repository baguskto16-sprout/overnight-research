#!/usr/bin/env bash
# healthcheck.sh — Pre-flight check before launching overnight-research.
# Usage: ./scripts/healthcheck.sh [input-file]
#
# Exit codes:
#   0 — all checks passed
#   1 — at least one hard-fail (missing dep, missing refs, claude not logged in)
#   2 — warnings only (worth knowing; run can proceed)
#
# Designed for <5s execution. No network calls beyond `claude --print "ok"`.

set -uo pipefail

# Ensure tools are on PATH when invoked from non-interactive SSH (where ~/.zshrc
# and login profile are not sourced). Match run-headless.sh.
export PATH="$HOME/Library/Python/3.13/bin:/opt/homebrew/opt/python@3.13/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
[ -x /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" >/dev/null 2>&1 || true

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

INPUT="${1:-}"

PASS=0
WARN=0
FAIL=0

ok()    { echo "  ✓ $*"; PASS=$((PASS+1)); }
warn()  { echo "  ⚠ $*"; WARN=$((WARN+1)); }
fail()  { echo "  ✗ $*"; FAIL=$((FAIL+1)); }

echo "═══ overnight-research healthcheck — $(date '+%F %T %Z') ═══"
echo ""

# --- 1. Claude CLI -----------------------------------------------------------
echo "[1] Claude CLI"
if command -v claude >/dev/null 2>&1; then
  VER=$(claude --version 2>&1 | head -1)
  ok "claude on PATH: $VER"
else
  fail "claude CLI not on PATH (install: curl -fsSL https://claude.ai/install.sh | bash)"
fi

# --- 2. Claude auth ----------------------------------------------------------
echo "[2] Claude auth (login test)"
if command -v claude >/dev/null 2>&1; then
  AUTH_OUT=$(claude --print "Reply with the single word OK" 2>&1 || true)
  if echo "$AUTH_OUT" | grep -qiE '\bOK\b'; then
    ok "claude --print responded — logged in"
  elif echo "$AUTH_OUT" | grep -qiE 'login|sign in|auth'; then
    fail "claude is NOT logged in. Run \`claude\` then \`/login\` on this machine."
  elif echo "$AUTH_OUT" | grep -qiE "hit your (limit|usage)"; then
    warn "claude is logged in but currently rate-limited: $AUTH_OUT"
  else
    warn "claude --print returned unexpected output (treat as suspect):"
    echo "$AUTH_OUT" | head -5 | sed 's/^/        /'
  fi
else
  fail "skipped — claude CLI missing"
fi

# --- 3. Reference templates --------------------------------------------------
echo "[3] Reference templates (.claude/refs/)"
REFS=(imi-pain-points-template.md imi-value-chain-template.md wp-conventions.md wp-value-chain-mapping-skill.md wp-pain-point-analysis-skill.md)
for r in "${REFS[@]}"; do
  if [ -s ".claude/refs/$r" ]; then
    ok "$r ($(wc -c < ".claude/refs/$r" | tr -d ' ') bytes)"
  else
    fail "missing or empty: .claude/refs/$r"
  fi
done

# --- 4. Skill + agents -------------------------------------------------------
echo "[4] Skill + sub-agents"
if [ -s ".claude/skills/overnight-research/SKILL.md" ]; then ok "SKILL.md present"; else fail "SKILL.md missing"; fi
for a in value-chain-mapper pain-point-researcher source-validator deep-research; do
  if [ -s ".claude/agents/$a.md" ]; then ok "agents/$a.md"; else fail "agents/$a.md missing"; fi
done

# --- 5. Dependencies on PATH -------------------------------------------------
echo "[5] Dependencies"
for d in jq markitdown curl git; do
  if command -v "$d" >/dev/null 2>&1; then ok "$d"; else
    if [ "$d" = "markitdown" ]; then warn "$d missing (auto-installed on first run, slow)"
    else fail "$d missing"
    fi
  fi
done

# --- 6. No stuck claude process from prior run -------------------------------
echo "[6] No stuck prior run"
STUCK=$(pgrep -af 'claude --print --dangerously-skip-permissions' || true)
if [ -z "$STUCK" ]; then
  ok "no prior claude --print process running"
else
  warn "claude --print already running (PID & cmd):"
  echo "$STUCK" | sed 's/^/        /'
fi

# --- 7. Output dir writable + disk space -------------------------------------
echo "[7] Output dir + disk"
OUT_DIR="$REPO_DIR/output/raw-claude-overnight"
mkdir -p "$OUT_DIR" 2>/dev/null
if touch "$OUT_DIR/.write-test" 2>/dev/null; then
  rm -f "$OUT_DIR/.write-test"
  ok "output dir writable: $OUT_DIR"
else
  fail "output dir NOT writable: $OUT_DIR"
fi
FREE_KB=$(df -k "$REPO_DIR" | awk 'NR==2 {print $4}')
FREE_GB=$((FREE_KB / 1024 / 1024))
if [ "$FREE_GB" -lt 5 ]; then
  fail "free disk: ${FREE_GB}GB (need ≥5GB)"
else
  ok "free disk: ${FREE_GB}GB"
fi

# --- 8. Input file shape (optional, only if path given) ----------------------
if [ -n "$INPUT" ]; then
  echo "[8] Input file shape ($INPUT)"
  if [ ! -f "$INPUT" ]; then
    fail "input file not found: $INPUT"
  else
    REQUIRED=("Topic" "Hypothesis" "Scope" "Geography" "Working hypotheses")
    for sec in "${REQUIRED[@]}"; do
      if grep -qE "^## *$sec|^### *$sec" "$INPUT"; then
        ok "section present: $sec"
      else
        fail "section missing or non-standard: '$sec' (orchestrator will write BLOCKED.md)"
      fi
    done
    WC=$(wc -l < "$INPUT" | tr -d ' ')
    if [ "$WC" -lt 20 ]; then warn "input is short (${WC} lines) — likely too thin to scope"; fi
  fi
fi

# --- summary ----------------------------------------------------------------
echo ""
echo "═══ Summary: $PASS pass | $WARN warn | $FAIL fail ═══"
if [ "$FAIL" -gt 0 ]; then
  echo "→ Hard-fail. Resolve issues above before launching."
  exit 1
elif [ "$WARN" -gt 0 ]; then
  echo "→ Warnings present. Safe to launch, but review above."
  exit 2
else
  echo "→ All green. Cleared for launch."
  exit 0
fi
