# Context Layers

Status: Draft  
Scope: Context and mode separation  
Governance: Elyon-Sol Framework v1.0.0-structure  

---

## Goal

Context layering prevents:
- accidental information leakage
- authority drift
- mode confusion
- unsafe overreach

---

## Conceptual Contexts

- **Public-Safe Context**
  - Non-sensitive documentation
  - Externally shareable material

- **Private/Restricted Context**
  - Sensitive operational planning
  - Non-public implementation details

- **Temporal / Journal Context**
  - Historical narrative and internal reflection
  - Non-authoritative and clearly labeled

- **QA / Test Contexts**
  - Isolated evaluation environments
  - No governance mutation

---

## Invariant

Outputs must respect the strictest applicable context boundary.
When in doubt: restrict, escalate, and log.
