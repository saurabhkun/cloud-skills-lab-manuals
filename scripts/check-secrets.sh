#!/usr/bin/env bash
# ==============================================================================
# check-secrets.sh - Pre-commit secret scanning utility
#
# Scans the repository for sensitive data including API keys, student credentials,
# and lab-specific identifiers.
# ==============================================================================

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

echo "=========================================================="
echo " Running Secrets & Credential Leak Check"
echo " Target Directory: $REPO_ROOT"
echo "=========================================================="

# Define search patterns (split to avoid self-detection)
P_AIZA="AIza""Sy"
P_QWIK_PROJ="qwiklabs""-gcp-"
P_QWIK_MAIL="@qwiklabs"".net"
P_PASSWORD="pass""word"
P_PASS_12='Password[:=[:space:]]+[A-Za-z0-9]{12}'

EXIT_CODE=0
MATCH_COUNT=0

# Helper to scan for a specific pattern
scan_pattern() {
  local pattern="$1"
  local description="$2"
  local is_regex="${3:-false}"

  echo "Scanning for $description..."

  local matches=""
  if [ "$is_regex" = true ]; then
    matches=$(grep -rEnI --exclude-dir=".git" --exclude="check-secrets.sh" -E "$pattern" . 2>/dev/null || true)
  else
    matches=$(grep -rnI --exclude-dir=".git" --exclude="check-secrets.sh" -i "$pattern" . 2>/dev/null || true)
  fi

  if [ -n "$matches" ]; then
    echo "  [!] Potential secret detected for $description:"
    while IFS= read -r line; do
      echo "      $line"
      MATCH_COUNT=$((MATCH_COUNT + 1))
    done <<< "$matches"
    EXIT_CODE=1
  else
    echo "  [OK] Clean"
  fi
}

# Run individual checks
scan_pattern "$P_AIZA" "Google API Key prefix ($P_AIZA)" false
scan_pattern "$P_QWIK_PROJ" "Qwiklabs project ID ($P_QWIK_PROJ)" false
scan_pattern "$P_QWIK_MAIL" "Qwiklabs email domain ($P_QWIK_MAIL)" false
scan_pattern "$P_PASSWORD" "Hardcoded credentials keyword ($P_PASSWORD)" false
scan_pattern "$P_PASS_12" "12-character token following Password keyword" true

echo "----------------------------------------------------------"
if [ "$EXIT_CODE" -ne 0 ]; then
  echo "FAILED: $MATCH_COUNT match(es) found! Please sanitize files before committing."
  exit 1
else
  echo "PASSED: All scanned files are free of secrets and credentials."
  exit 0
fi
