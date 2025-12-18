# HSP Command Suite v1.1
# Elyon-Sol Framework — Hallucination Safety Protocol (HSP)
# Updated for T²⁶ (Truth–Safety–Consent to the 26th Power)

## Overview
HSP governs hallucination detection, routing, transparency, and consent
across Elyon-Sol. It operates between OSPF (intent routing) and the
Consent FSM (human permission enforcement). All uncertainty auto-routes
through the T²⁶ verification cycle.

## Core HSP Commands
- ./jive hsp.scan
- ./jive hsp.classify
- ./jive hsp.verify
- ./jive hsp.route
- ./jive hsp.quarantine
- ./jive hsp.status
- ./jive hsp.reset

## Uncertainty Handling
- ./jive hsp.flag.uncertain
- ./jive hsp.check.uncertainty
- ./jive hsp.on.uncertain
- ./jive hsp.escalate

## Triadic Governance
- ./jive hsp.triad
- ./jive hsp.triad.force
- ./jive hsp.triad.resolve

## T²⁶ Verification Loop
(Note: CLI namespace `t26` preserved for backward compatibility.)
- ./jive t26.run
- ./jive t26.verify
- ./jive t26.force
- ./jive t26.inspect
- ./jive t26.status
- ./jive t26.exit

## Consent FSM Interfaces
- ./jive consent.check
- ./jive consent.require
- ./jive consent.synthetic.check
- ./jive consent.synthetic.compare
- ./jive consent.gate
- ./jive consent.finalize

## HSP QA Forking
- ./jive hsp.qa.enter
- ./jive hsp.qa.register <fork-id>
- ./jive hsp.qa.check.refs <fork-id>
- ./jive hsp.qa.run <fork-id>
- ./jive hsp.qa.inject --scenario="<scenario>"
- ./jive hsp.qa.triad <fork-id>
- ./jive hsp.qa.status <fork-id>
- ./jive hsp.qa.exit

## Manual Overrides (Human-Consent Locked)
- ./jive hsp.override.enable
- ./jive hsp.override.t26
- ./jive hsp.override.route <path>
- ./jive hsp.override.commit
- ./jive hsp.override.disable

## Audit
- ./jive audit.hsp
- ./jive audit.t26
- ./jive audit.triad
- ./jive audit.consents
- ./jive audit.full

## Safety Pipeline (Uncertainty → T²⁶ → Human Consent)
1. ./jive hsp.flag.uncertain
2. ./jive hsp.escalate
3. ./jive t26.force
4. ./jive consent.synthetic.check
5. ./jive consent.require
6. ./jive hsp.route
