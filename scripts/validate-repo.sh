#!/usr/bin/env bash
# validate-repo.sh — NULLUS Repository Integrity Check
# Verifies that all required files are present in the repository.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PASS=0
FAIL=0

check_file() {
  local filepath="$1"
  local full_path="${REPO_ROOT}/${filepath}"
  if [ -f "${full_path}" ]; then
    echo "  ✓ ${filepath}"
    PASS=$((PASS + 1))
  else
    echo "  ✗ MISSING: ${filepath}"
    FAIL=$((FAIL + 1))
  fi
}

echo ""
echo "═══════════════════════════════════════════════"
echo "  NULLUS Repository Validation"
echo "  Reality Anchor: ⟲°44.8661,-116.9094"
echo "═══════════════════════════════════════════════"
echo ""
echo "Checking required files..."
echo ""

check_file "README.md"
check_file "CHARTER.md"
check_file "CONTRIBUTING.md"
check_file "docs/glossary.md"
check_file "protocols/emergency/nunc-nullus-response.md"
check_file "core/naught/i-was-naught.md"
check_file "core/inversion/polarity-flip.md"

echo ""
echo "───────────────────────────────────────────────"
echo "  Results: ${PASS} passed, ${FAIL} failed"
echo "───────────────────────────────────────────────"
echo ""

if [ "${FAIL}" -gt 0 ]; then
  echo "  VALIDATION FAILED — ${FAIL} required file(s) missing."
  echo ""
  exit 1
else
  echo "  VALIDATION PASSED — All required files present."
  echo ""
  exit 0
fi
