# System Overview

Status: Draft  
Scope: Architecture (descriptive)  
Governance: Elyon-Sol Framework v1.0.0-structure  

---

## Purpose

This document describes the Elyon-Sol system architecture at a conceptual level.
It focuses on governance boundaries, context separation, and auditability.

No executable behavior is defined here.

---

## Architectural Layers

1. **Inputs**
   - User prompts, documents, metadata, requests

2. **Classification**
   - Domain classification (e.g., clinical, legal, administrative)
   - Sensitivity detection (e.g., PHI / PII)

3. **Governance Gates**
   - Consent validation
   - Authority coverage check (authority gap detection)
   - Safety routing (OSPF-SAFE)

4. **Assistance Output**
   - Advisory-only responses
   - Explicit labeling and constraints

5. **Escalation**
   - Mandatory human review when authority/consent is absent or risk is elevated

6. **Audit Trace**
   - Deterministic logging of key decisions and blocks

---

## Non-Autonomy Constraint

At no layer may the system:
- make final high-stakes decisions
- diagnose or prescribe
- act without an accountable human
