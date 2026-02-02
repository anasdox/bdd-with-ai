# Design Thinking Workshop

This workshop provides a detailed, executable sequence for running a design thinking session with humans and AI agents. It remains technology-neutral and produces outputs aligned with this repository's artifacts.

## Objectives
- Understand real, observable user needs.
- Reframe the problem without solution bias.
- Generate options, select hypotheses to test, and define evaluation criteria.
- Update key artifacts: `PROBLEM_STATEMENT.md`, `UBIQUITOUS_LANGUAGE.md`, `ROADMAP.md`.

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- The User of Record is present or has delegated decision authority.
- Existing information (user feedback, current process, metrics) is accessible.
- For every question below, challenge the answer and ask clarifying questions until it is specific and observable.
- For every question below, present multiple choices and include recommendations.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Roles
- **Facilitator**: enforces the sequence and neutrality.
- **Decider (UoR)**: resolves ambiguities and validates outputs.
- **Participants**: contribute facts, usage patterns, constraints, and risks.
- **Scribe**: captures decisions, terms, and hypotheses.

## Sequence (must be followed)
### 1) Empathize — Understand
**Goal:** Collect observations and needs without interpretation.
**Questions:**
- Who are the users and what is their observable goal?
- What tasks do they perform today, step by step?
- What gaps are observed between expectations and outcomes?

**Outputs:**
- Synthesized observation notes
- List of actors and usage contexts

### 2) Define — Precise problem
**Goal:** Turn observations into a clear, solution-free problem.
**Questions:**
- What is the primary friction and for whom?
- What observable negative effects result?
- What boundaries are required for scope?

**Outputs:**
- Updated `PROBLEM_STATEMENT.md`
- Ambiguities logged in `QUESTIONS_AND_ANSWERS.md`

### 3) Ideate — Options
**Goal:** Produce multiple response options without committing to technology.
**Rules:**
- Quantity before quality.
- No critique during generation.
- No technology or implementation detail.

**Questions:**
- Which options change the user experience?
- Which options reduce the primary risk?
- Which options are reversible?

**Outputs:**
- Option list grouped by intent
- Hypotheses added to `LOGS.md.md`

### 4) Prototype — Lightweight representation
**Goal:** Describe a conceptual prototype that is understandable without tooling.
**Rules:**
- Use text, simple diagrams, or scenarios.
- Describe inputs, outputs, and observable behavior.

**Outputs:**
- Candidate scenarios to add to `specs/functional/` when execution begins
- Terms added to `UBIQUITOUS_LANGUAGE.md`

### 5) Test — Validation
**Goal:** Define how to validate each hypothesis through observation.
**Questions:**
- What observable evidence would invalidate the hypothesis?
- Which success criteria are measurable?
- What is the acceptable cost of failure?

**Outputs:**
- Success criteria integrated into `ROADMAP.md`
- List of experiments or acceptance tests to plan

## Anti-patterns
- Describing a technical solution or specific tool.
- Stating vague goals such as "improve" without measurable criteria.
- Confusing opinions with observable facts.

## Outputs
- Updated `PROBLEM_STATEMENT.md`
- Enriched `UBIQUITOUS_LANGUAGE.md`
- Adjusted `ROADMAP.md`
- Open questions recorded in `QUESTIONS_AND_ANSWERS.md`
- Hypotheses recorded in `LOGS.md.md`
- Decision notes that include options considered and a recommended choice
- UoR approval recorded in `LOGS.md.md`
- Use `templates/PROBLEM_STATEMENT.template.md`, `templates/UBIQUITOUS_LANGUAGE.template.md`, and `templates/ROADMAP.template.md` as starting points for updates.

## Post-workshop actions
- Convert candidate scenarios into functional specs with FSIDs once execution begins.
- Record decisions and outcomes in `LOGS.md.md`.
- Write the workshop summary as a file under `summaries/` using `summaries/template.md`.
- If exceptions are required, record them in `LOGS.md.md`.
- Ensure updated artifacts are derived from their templates in `templates/`.

## Compliance reminders
- The STOP > GUESS rule applies.
- If an exception is required, record it in `LOGS.md.md`.
- Any divergence is arbitrated by the User of Record.
- Next path: `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`.
