#!/usr/bin/env bash
# setup.sh — One-time setup for overnight-research repo on this Mac.
# Verifies dependencies, pulls reference templates from sister WP repos.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_DIR"

echo "→ Checking dependencies..."
which claude &> /dev/null || { echo "  ✗ claude CLI missing. Install: brew install --cask claude-code"; exit 1; }
which jq &> /dev/null || { echo "  ✗ jq missing. Install: brew install jq"; exit 1; }
which curl &> /dev/null || { echo "  ✗ curl missing"; exit 1; }
which markitdown &> /dev/null || { echo "  ⚠ markitdown missing — installing..."; pip3 install markitdown --user --quiet --break-system-packages; }
echo "  ✓ All dependencies present"

echo ""

echo ""
echo "→ Pulling Wright-Partners reference templates..."

CLONE_DIR="$HOME/wp-clones-tmp"
mkdir -p "$CLONE_DIR"
cd "$CLONE_DIR"

[ ! -d "26-idea-imicc-datacenters" ] && git clone --depth=1 https://github.com/Wright-Partners/26-idea-imicc-datacenters.git
[ ! -d "zz-design-template-2026" ] && git clone --depth=1 https://github.com/Wright-Partners/zz-design-template-2026.git
[ ! -d "zz-skills" ] && git clone --depth=1 https://github.com/Wright-Partners/zz-skills.git

REFS="$REPO_DIR/.claude/refs"

cp "26-idea-imicc-datacenters/21-value-chain/value-chain-data-center.md" "$REFS/imi-value-chain-template.md"
cp "26-idea-imicc-datacenters/22-pain-points/by-stage.md" "$REFS/imi-pain-points-template.md"
cp "zz-design-template-2026/.claude/memory/conventions.md" "$REFS/wp-conventions.md"
cp "zz-skills/shared-skills/value-chain-mapping/SKILL.md" "$REFS/wp-value-chain-mapping-skill.md"
cp "zz-skills/shared-skills/pain-point-analysis/SKILL.md" "$REFS/wp-pain-point-analysis-skill.md"

echo "  ✓ References loaded into $REFS"
ls -lh "$REFS"

echo ""
echo "→ Setup complete. Next:"
echo ""
echo "  Smoke test (20-30 min, ~\$5-15):"
echo "    ./scripts/smoke-test.sh interactive"
echo ""
echo "  Verify smoke test output:"
echo "    ./scripts/verify.sh"
echo ""
echo "  Full overnight run (2-4 hours, ~\$30-80):"
echo "    ./scripts/run-headless.sh ./input/package-boilers.txt"
