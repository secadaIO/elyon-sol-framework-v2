#!/usr/bin/env bash

set -euo pipefail

echo "=============================================="
echo "ELYON-SOL :: GOVERNANCE REGRESSION TEST RUNNER"
echo "Mode: NON-EXECUTING / READ-ONLY"
echo "=============================================="
echo

PASS_COUNT=0
FAIL_COUNT=0

run_test () {
  local TEST_FILE="$1"
  local EXPECT_RULE="$2"

  echo "Running test: $TEST_FILE"

  if grep -q "$EXPECT_RULE" "$TEST_FILE"; then
    echo "  ✔ Expected rule present: $EXPECT_RULE"
    PASS_COUNT=$((PASS_COUNT + 1))
  else
    echo "  ✖ Expected rule missing: $EXPECT_RULE"
    FAIL_COUNT=$((FAIL_COUNT + 1))
  fi

  echo
}

# Core governance tests
run_test tests/governance/TC-GOV-001.yaml "AUTHORITY_GAP"
run_test tests/governance/TC-GOV-001-negative.yaml "governance: UNPROVABLE"
run_test tests/governance/REGRESSION_SUITE.yaml "refusal_is_stable"

# Evidence schema validation
echo "Validating governance evidence schema..."
grep -q "governance_evidence" governance/evidence/GOVERNANCE_EVIDENCE_SCHEMA.yaml \
  && echo "  ✔ Evidence schema present" \
  && PASS_COUNT=$((PASS_COUNT + 1)) \
  || { echo "  ✖ Evidence schema missing"; FAIL_COUNT=$((FAIL_COUNT + 1)); }

echo
echo "=============================================="
echo "RESULT SUMMARY"
echo "----------------------------------------------"
echo "PASSED: $PASS_COUNT"
echo "FAILED: $FAIL_COUNT"
echo "=============================================="

if [ "$FAIL_COUNT" -eq 0 ]; then
  echo "OVERALL RESULT: PASS"
  exit 0
else
  echo "OVERALL RESULT: FAIL"
  exit 1
fi
