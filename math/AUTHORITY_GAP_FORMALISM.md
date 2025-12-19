# Authority Gap Formalism

Status: Draft  
Scope: Authority coverage and blocking rules  
Governance: Elyon-Sol Framework v1.0.0-structure  

---

## Sets and Relations

Let:
- D be a set of domains (clinical, legal, finance, etc.)
- A be a set of authorities (named accountable humans)
- covers ⊆ A × D be a relation where (a, d) ∈ covers means authority a covers domain d

For a given domain d ∈ D, define the coverage set:
- Cov(d) = { a ∈ A | (a, d) ∈ covers }

---

## Authority Gap

Define the authority gap predicate:
- AUTHORITY_GAP(d) ⇔ (Cov(d) = ∅)

Interpretation:
If no authority covers the domain, then the system must not accept outcomes
as final or self-authorizing.

---

## Governance Invariant (Blocking)

For any decision attempt x operating in domain d:

If AUTHORITY_GAP(d) is true, then:
- ACCEPT(x) is prohibited
- ESCALATE_TO_HUMAN(x) is required
- AUDIT_LOG(x) is required

Formally:
- AUTHORITY_GAP(d) ⇒ (¬ACCEPT(x) ∧ ESCALATE(x) ∧ AUDIT(x))

This holds irrespective of confidence scores produced by any model.

---

## Notes

- This formalism is descriptive and non-executable.
- Authority registries may be implemented in many ways, but the invariant must hold.
