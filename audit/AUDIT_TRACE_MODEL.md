# Audit Trace Model

Status: Draft  
Scope: Event-level traceability  
Governance: Elyon-Sol Framework v1.0.0-structure  

---

## Trace Elements

Each auditable event may include:
- Timestamp
- Context identifier
- Authority presence or absence
- Consent status
- Action attempted
- Outcome (allowed, blocked, escalated)

---

## Properties

Audit traces are:
- Append-only
- Context-preserving
- Human-interpretable

---

## Design Constraint

Audit traces describe **what happened and why**,
not how to reproduce or automate behavior.
