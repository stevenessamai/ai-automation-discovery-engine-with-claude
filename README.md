# AI Automation Discovery Engine

**A Claude Skill that turns vague automation ideas into implementation-ready specifications — without ever writing a workflow, a line of code, or a JSON blob.**

Most automation projects fail not because of bad tooling, but because nobody asked enough questions before building started. This Skill exists to run that conversation properly: a structured, adaptive discovery process that surfaces business goals, edge cases, risks, and requirements before a single node is ever placed.

It deliberately stops at the spec. Implementation happens elsewhere, by design.

---

## Overview

The AI Automation Discovery Engine equips Claude to act as a senior automation discovery consultant. Point it at a raw idea, an existing PRD, or a "are we ready to build?" question, and it will:

- Interview you like a thoughtful consultant, not a survey form
- Classify the domain, automation type, and technical/business maturity automatically
- Ask only questions that actually change the outcome — never filler
- Surface risks, edge cases, and business rules before they become expensive surprises
- Produce a clean, structured deliverable an engineer can build from directly

It **never** generates workflows, node graphs, JSON/YAML configs, application code, database schemas, or infrastructure — regardless of how the request is framed. That boundary is the core design decision behind this Skill, not a limitation of it.

## Features

- **Five operating modes**, auto-selected from context: Discovery, Review, Requirements Engineering, Validation, and Scope Definition
- **Adaptive question engine** that ranks unknowns by how much they'd actually change the spec, instead of working through a fixed checklist
- **Domain intelligence layer** that classifies business domain, automation type, and maturity before asking a single detailed question
- **15-dimension completeness model** covering goals, process, data, integrations, business rules, edge cases, security, scale, and more
- **Structured deliverables** — a Discovery Report, Gap & Contradiction Analysis, formal Requirements spec, Validation Report with risk matrix, or Scope/MVP breakdown
- **Guardrails that hold under pressure** — explicit handling for "just show me the JSON" and similar build requests, without ever caving
- **Progressive-disclosure architecture** — a lean core skill file plus reference docs loaded only when relevant, keeping context usage efficient

## Installation

### Claude.ai / Claude apps
1. Download [`skill/ai-automation-discovery-engine.skill`](skill/ai-automation-discovery-engine.skill) from this repo.
2. In Claude, go to **Settings → Capabilities → Skills** (or your organization's Skills catalog).
3. Upload the `.skill` file, or add it from the skill catalog if your org has published it there.
4. Enable it for the conversations or projects where you want it available.

### Manual / self-hosted
Copy the contents of [`skill/`](skill/) into your Skills directory, preserving the folder structure (`SKILL.md` at the top level, `references/` alongside it). Claude loads `SKILL.md` when the Skill triggers and pulls in files from `references/` only as needed.

No API keys, external services, or configuration are required — the Skill is fully self-contained.

## Usage

Just describe an automation idea, upload a PRD/README for review, or ask a scoping question — the Skill triggers automatically and picks the right mode:

| You say | Mode | You get |
|---|---|---|
| "I want a bot that follows up with leads" | Discovery | A Discovery Report |
| *[upload a PRD]* "Is this ready to build?" | Review / Validation | Gap analysis + confidence score |
| "Turn this into formal requirements" | Requirements Engineering | A structured requirements spec |
| "Help me define the MVP" | Scope Definition | MVP / phase-2 / out-of-scope breakdown |

The conversation ends with a named deliverable — never with generated workflow code. From there, implementation is a separate step, handled by an engineer, an automation platform, or a coding assistant.

## Repository structure

```
/
├── README.md                          This file
├── LICENSE                            MIT License
├── .gitignore
└── skill/
    ├── ai-automation-discovery-engine.skill   Packaged, installable Skill
    ├── SKILL.md                               Core skill instructions (always loaded on trigger)
    └── references/                            Loaded on demand, not upfront
        ├── discovery-methodology.md           9-phase workflow, domain detection, 15 dimensions
        ├── question-engine.md                 Question selection algorithm, pacing, memory rules
        ├── report-template.md                 Deliverable templates for every mode
        ├── guardrails.md                      Operating rules, mode definitions, boundary handling
        └── examples.md                        Calibration examples and anti-patterns
```

## Philosophy

> Build nothing. Understand everything.

The quality of an automation is decided before the first workflow is ever built — during discovery, when business rules, edge cases, and success criteria either get surfaced or get silently assumed. This Skill exists to make that conversation as good as a senior consultant would run it: curious, respectful of the user's time, and relentless about turning ambiguity into a specification someone else can actually build from.

It holds one line without exception: **discovery, never delivery.** Even when asked directly, even under pressure, even when the automation looks trivial. That boundary is what keeps the output implementation-agnostic and genuinely useful to whoever builds it next.

## License

Released under the [MIT License](LICENSE).
