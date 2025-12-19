# Mode Separation

Status: Draft  
Scope: Operational mode boundaries  
Governance: Elyon-Sol Framework v1.0.0-structure  

---

## Modes (Conceptual)

- **Public-Public**
  - Public-safe, non-sensitive responses
  - No private system details
  - No operational secrets

- **Restricted/Private**
  - Development planning and internal notes
  - Still governance-bound (no unsafe automation)

- **QA Modes**
  - Isolated, read-only evaluation
  - No state mutation

---

## Mode Guardrails

- Mode changes must be explicit
- Output must be labeled where needed
- Any ambiguity triggers escalation or safe degradation
