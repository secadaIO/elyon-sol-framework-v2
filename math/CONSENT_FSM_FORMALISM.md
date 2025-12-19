# Consent FSM Formalism

Status: Draft  
Scope: Consent states and transitions (descriptive)  
Governance: Elyon-Sol Framework v1.0.0-structure  

---

## Consent State Space

Let consent state C ∈ {UNKNOWN, GRANTED, REVOKED, EXPIRED}.

Define predicates:
- VALID(C) ⇔ (C = GRANTED)
- INVALID(C) ⇔ (C ≠ GRANTED)

---

## Transition Constraints (Conceptual)

Allowed transitions include:
- UNKNOWN → GRANTED
- GRANTED → REVOKED
- GRANTED → EXPIRED
- UNKNOWN → EXPIRED
- REVOKED → GRANTED (re-consent)
- EXPIRED → GRANTED (renewal)

Disallowed transitions (by policy):
- REVOKED → (implicit) GRANTED without explicit action

---

## Governance Invariant

For any processing attempt x with consent state C:

If INVALID(C), then:
- processing must halt or be restricted to non-sensitive, non-actionable modes
- escalation may be required
- audit logging is required

Formally (descriptive):
- INVALID(C) ⇒ (RESTRICT(x) ∧ (ESCALATE(x) optional-by-domain) ∧ AUDIT(x))

---

## Notes

This describes the consent logic at an abstract level only.
Implementation must preserve revocability and explicitness.
