# Discovery Methodology

Read this before asking the first substantive question in a new session.
It defines *what to figure out* — pair it with `question-engine.md`, which
defines *how to ask*.

## The nine phases

Discovery moves through these phases in order, but phases can loop (e.g.
Clarify → Validate → Clarify again) — it is a spiral, not a checklist to
race through once.

| # | Phase | What happens |
|---|---|---|
| 1 | **Understand** | Read the full request and all available context before responding. Identify the business goal, the problem, the expected outcome, who's involved, and the likely automation category — silently. |
| 2 | **Interpret** | Translate vague user language into an engineering problem statement, internally. ("I want a bot" → "customer support automation: inbound handling, escalation, CRM logging.") Never expose this unless asked. |
| 3 | **Infer** | List what you already know or can safely assume from context, files, or prior turns. Anything on this list must never be asked about again. |
| 4 | **Challenge assumptions** | If the user has already picked a solution ("I need an AI Agent"), politely test whether it's the right shape before accepting it. Your job is solving the problem, not rubber-stamping the user's first idea. |
| 5 | **Clarify** | Ask only the single highest-impact remaining question. See `question-engine.md`. |
| 6 | **Validate** | Periodically summarize what's been established and confirm accuracy. Catches drift before it compounds. |
| 7 | **Risk discovery** | Surface risks proactively even if the user hasn't asked: API downtime, duplicate records, auth failures, rate limits, data privacy, compliance, unexpected user behavior. |
| 8 | **Gap discovery** | Ask: could an engineer start building today from what's been said? If not, that gap is the next thing to resolve. |
| 9 | **Readiness check** | Confirm every item in the SKILL.md completion checklist is satisfied before declaring Discovery Complete. |

## Domain intelligence: classify before you question

Generic discovery wastes the user's time. Before asking detailed questions,
form a working classification — update it as you learn more, and ask a
clarifying question only if genuinely uncertain (never guess silently on
something that would change the whole line of questioning):

- **Business domain** — e.g. Sales, Marketing, Support, Ops, Finance, HR,
  Legal, Healthcare, Real Estate, E-commerce, Manufacturing, Logistics, IT,
  Content, Knowledge Management. Domain shapes which risks and rules matter.
- **Automation type** — e.g. notification, approval workflow, data sync, AI
  assistant/agent, lead qualification, document processing, RAG, voice,
  reporting, incident management, multi-agent orchestration. A request can
  span more than one type — track all that apply.
- **Business maturity** — idea / startup / growing / scaling / enterprise.
  An early-stage startup rarely needs governance questions; an enterprise
  usually does. Match depth to maturity.
- **Technical maturity** — no-code beginner through enterprise IT/AI team.
  Adjust vocabulary accordingly: never bury a beginner in integration
  jargon, never over-explain basics to a seasoned engineer.
- **Existing systems** — CRM, ERP, HRMS, ticketing, communication tools,
  databases, automation platforms already in use. Discover these before
  proposing anything touches them; never assume a stack.

## The fifteen discovery dimensions

Every automation has these dimensions. Not every dimension needs deep
questioning on every project — proportion your depth to what's actually
uncertain and material to the automation. Use this as a completeness check,
not a script to read aloud.

| Dimension | Resolve |
|---|---|
| Business goals | Why does this automation need to exist? What does success look like in business terms (revenue, cost, time, quality, error rate)? |
| Current process | Who starts it today? What's manual vs. already automated? Where are the delays and frustrations? Never redesign a process you don't understand. |
| Desired process | What should happen automatically vs. stay manual? Where do humans need to stay in the loop? |
| Stakeholders | Every role touched — owner, employees, managers, customers, IT, finance, legal. Each may have different needs or veto power. |
| Data | Origin, ownership, storage, required vs. optional fields, possible duplication/lateness/incompleteness. |
| Integrations | Every connected system by name — CRM, comms tools, storage, internal/external APIs, legacy systems. Never assume; confirm. |
| Business rules | Concrete conditional logic: who approves what, thresholds, exceptions ("orders over $1,000 need approval"). |
| Exceptions & failure modes | Missing data, duplicates, API failures, invalid input, permission errors, timeouts, retries, human overrides. |
| Security & compliance | Auth, authorization, sensitive data handling, access control, applicable regulations, audit needs. |
| Scale | Expected volume today and at growth — this changes what's "acceptable" for latency, cost, and reliability. |
| Reliability | What happens on failure? Is downtime tolerable? Is there a fallback? |
| AI-specific (if applicable) | Which models, knowledge sources, memory needs, prompting approach, guardrails, confidence thresholds, human-approval points, cost limits, evaluation/monitoring plan. Only probe this if AI is actually part of the design. |
| Monitoring & ops | Logging, alerting, ownership of maintenance, how the system gets updated over time. |
| Constraints | Budget, timeline, team bandwidth, existing technical debt, organizational politics that shape what's realistic. |
| Success criteria | The measurable definition of "this worked" — without it, Discovery cannot close. |

## Automation boundaries — always resolve explicitly

Every automation needs an explicit answer to: what should *never* be
automated, what always needs a human, what needs approval, what needs
verification before acting. This is as important as what the automation
*does* — silence here is itself a gap, not a non-issue.
