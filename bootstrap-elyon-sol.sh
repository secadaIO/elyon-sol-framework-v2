#!/usr/bin/env bash
set -e

ROOT="elyon-sol-framework"
echo "Creating Elyon-Sol scaffold in ./$ROOT"

mkdir -p "$ROOT"
cd "$ROOT"

# ---------- helper ----------
create_file () {
  local file="$1"
  mkdir -p "$(dirname "$file")"
  if [ ! -f "$file" ]; then
    cat <<EOF > "$file"
# $(basename "$file")

Status: Draft  
Scope: Public-Safe  
Governance: Elyon-Sol MASTER CONTEXT v1.0 compliant  

This document is descriptive only.
It contains no executable logic, no autonomous decision-making,
and no diagnostic or clinical assertions.

---
Purpose:
- TODO

Scope:
- TODO

Notes:
- TODO
EOF
  fi
}

# ---------- root ----------
for f in README.md LICENSE CODE_OF_CONDUCT.md SECURITY.md CONTRIBUTING.md GOVERNANCE.md; do
  create_file "$f"
done

# ---------- docs ----------
DOCS=(
  index.md OVERVIEW.md GLOSSARY.md PROPRIETARY_TERMS.md
  SAFETY_FIRST_PRINCIPLE.md CONSENT_MODEL.md
  AUTHORITY_GAP_MODEL.md T26_OVERVIEW.md
  T26_AUTHORITY_GAP.md OSPF_SAFE.md
  HYDE_OVERVIEW.md CONSENT_FSM.md
  P_MODE_CONTEXTS.md PUBLIC_PUBLIC_BOUNDARIES.md
  FAQ.md REFERENCES.md
)

for f in "${DOCS[@]}"; do
  create_file "docs/$f"
done

# ---------- governance ----------
GOV=(
  GOVERNANCE_CHARTER.md AUTHORITY_REGISTRY.md
  AUTHORITY_GAP_INVARIANT.md CONSENT_INVARIANTS.md
  DECISION_CLASSIFICATION.md ESCALATION_RULES.md
  HUMAN_IN_THE_LOOP.md AUDITABILITY_MODEL.md
  PACE_EFFECT.md GOVERNANCE_FAILURE_MODES.md
)

for f in "${GOV[@]}"; do
  create_file "governance/$f"
done

# ---------- hospital POC ----------
HOSP=(
  README.md HOSPITAL_POC_INDEX.md
  HOSPITAL_POC_INDEX.html HOSPITAL_POC_INDEX.pdf
  CLINICAL_WORKFLOW_MAPPING.md HIPAA_ALIGNMENT.md
  ESCALATION_FLOW.md DISCLAIMERS.md
)

for f in "${HOSP[@]}"; do
  create_file "hospital_poc/$f"
done

mkdir -p hospital_poc/VISUALS
touch hospital_poc/VISUALS/.gitkeep

# ---------- audit ----------
AUDIT=(
  FAST_AUDIT_OVERVIEW.md AUDIT_TRACE_MODEL.md
  CARDANO_ANCHORS.md TX_REFERENCES.md
  IMMUTABILITY_MODEL.md VERIFICATION_STEPS.md
)

for f in "${AUDIT[@]}"; do
  create_file "audit/$f"
done

# ---------- architecture ----------
ARCH=(
  SYSTEM_OVERVIEW.md MULTI_TENANT_STRUCTURE.md
  CONTEXT_LAYERS.md MODE_SEPARATION.md
  DATA_FLOW.md SECURITY_BOUNDARIES.md
  DEPLOYMENT_MODES.md
)

for f in "${ARCH[@]}"; do
  create_file "architecture/$f"
done

mkdir -p architecture/DIAGRAMS
touch architecture/DIAGRAMS/.gitkeep

# ---------- math ----------
MATH=(
  FORMAL_OVERVIEW.md T26_FORMALISM.md
  AUTHORITY_GAP_FORMALISM.md CONSENT_FSM_FORMALISM.md
  OSPF_SAFE_FORMALISM.md LIMITATIONS.md
)

for f in "${MATH[@]}"; do
  create_file "math/$f"
done

# ---------- publications ----------
PUB=(
  EXEC_SUMMARY.md EXEC_SUMMARY.pdf
  TECHNICAL_ABSTRACT.md WHITEPAPER.md WHITEPAPER.pdf
)

for f in "${PUB[@]}"; do
  create_file "publications/$f"
done

mkdir -p publications/SLIDES
touch publications/SLIDES/.gitkeep

# ---------- examples ----------
EX=(
  READ_ONLY_SIMULATION.md
  ESCALATION_SCENARIOS.md
  AUTHORITY_GAP_EXAMPLES.md
  NON_AUTONOMOUS_USE.md
)

for f in "${EX[@]}"; do
  create_file "examples/$f"
done

# ---------- legal ----------
LEGAL=(
  DISCLAIMER.md NON_MEDICAL_NOTICE.md
  NON_AUTONOMOUS_NOTICE.md IP_NOTICE.md
  TRADEMARK_NOTICE.md
)

for f in "${LEGAL[@]}"; do
  create_file "legal/$f"
done

# ---------- meta ----------
META=(
  VERSIONING.md CHANGELOG.md
  ROADMAP.md CONTRIBUTOR_ROLES.md
  ACKNOWLEDGMENTS.md
)

for f in "${META[@]}"; do
  create_file "meta/$f"
done

echo "✅ Elyon-Sol scaffold complete."
