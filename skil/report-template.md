# Deliverable Templates

Load this once discovery is converging (per the SKILL.md completion
checklist) or when the user's request maps to a non-default mode. Every
template below is a **specification**, never an implementation — no
workflows, code, JSON, or architecture diagrams belong in any of them.

## Discovery Report (default mode output)

Use this structure. Omit a section only if it's genuinely not applicable
(state that explicitly rather than leaving it blank) — never pad a
section with filler to look thorough.

1. **Executive Summary** — project overview, business goal, expected outcome.
2. **Problem Statement** — current situation, pain points, business
   challenges, opportunity.
3. **Objectives** — primary and secondary objectives, success definition, KPIs.
4. **Stakeholders** — owner, end users, decision makers, technical teams,
   external systems/parties affected.
5. **Current Workflow** — the process as it exists today, with bottlenecks
   and manual steps called out explicitly.
6. **Desired Workflow** — the future-state process, described in business
   terms only, with zero implementation detail.
7. **Business Rules** — approval logic, validation logic, permissions,
   named exceptions, ownership of decisions.
8. **Integrations** — every existing system, third-party platform, data
   source, comms channel, storage system, and AI service involved, named.
9. **Data Requirements** — inputs, outputs, required vs. optional fields,
   ownership, retention, privacy considerations.
10. **Edge Cases** — expected failure modes, unexpected user behavior,
    duplicate events, timeouts, missing data, approval failures, and what
    recovery should look like for each.
11. **Security & Compliance** — authentication, authorization, sensitive
    data handling, access control, applicable regulatory requirements,
    audit expectations.
12. **Operational Considerations** — monitoring, logging, notifications,
    who owns ongoing maintenance, how the system's knowledge stays current.
13. **Risks** — business, technical, operational, adoption, and compliance
    risks, each with a one-line mitigation note if known.
14. **Open Questions** — anything still unresolved that would block
    implementation. If genuinely none remain, state: *"No critical open
    questions remain."*
15. **Discovery Confidence** — rate business, technical, process, and risk
    understanding, plus overall implementation readiness (Low / Medium /
    High, with a one-line justification each — not just a bare label).
16. **Final Recommendation** — state whether the project is *Incomplete*,
    *Mostly Complete*, or *Implementation Ready*. Never recommend a
    specific technology, platform, or workflow shape here — that decision
    belongs to whoever implements it.

## Review Mode output — Gap & Contradiction Analysis

When the input is an existing document (README, PRD, SOW, meeting notes,
architecture doc, prior discovery report):

- **Completeness scan** — which of the 15 discovery dimensions
  (`discovery-methodology.md`) are covered, partially covered, or absent.
- **Contradictions** — any statements that conflict with each other,
  quoted or paraphrased with a pointer to both locations.
- **Assumptions surfaced** — claims stated as fact that are actually
  unverified assumptions.
- **Risks identified** — same risk lens as the Discovery Report.
- **Implementation readiness estimate** — Low / Medium / High, with reasoning.
- **Suggested next questions** — the highest-value unknowns to resolve next.

Never rewrite the source document unless explicitly asked to.

## Requirements Engineering Mode output

Transforms completed discovery into a formal spec: Executive Summary,
Business Requirements, Functional Requirements, Non-Functional
Requirements, Business Rules, User Stories (with acceptance criteria),
Dependencies, Risks, Constraints, Open Questions, Implementation
Readiness. Still zero implementation detail — this is *what*, not *how*.

## Validation Mode output — Validation Report

Stress-tests a project before build sign-off. Validate: business logic,
workflow logic, business rules, edge cases, security, compliance,
dependencies, ownership, approval chains, success metrics. Output:
narrative Validation Report + a numeric Confidence Score + a Readiness
Assessment + a Risk Matrix (likelihood × impact per identified risk).

## Scope Definition Mode output

Prevents scope creep by splitting the discovered requirements into: MVP,
Phase 2, Phase 3, Future Enhancements, and explicit Out of Scope. Note
trade-offs, dependencies between phases, and rough budget/timeline
implications of each phase — without prescribing implementation.
