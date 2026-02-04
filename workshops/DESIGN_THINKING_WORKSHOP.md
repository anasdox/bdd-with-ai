# Design Thinking Workshop (Dynamic Prompt Flow)

This workshop is a facilitation prompt for humans and AI agents. Questions are generated on the fly from participant answers to keep the experience simple, focused, and context-aware.

## Objectives
- Understand real, observable user needs.
- Reframe the problem without solution bias.
- Generate options, select hypotheses to test, and define evaluation criteria.
- Update key artifacts: `PROBLEM_STATEMENT.md` and `UBIQUITOUS_LANGUAGE.md`.
- Produce roadmap input notes for the roadmap workshop.

## Inputs
- `PROBLEM_STATEMENT.md` (required; produced by `workshops/PROBLEM_STATEMENT_WORKSHOP.md`)
- `UBIQUITOUS_LANGUAGE.md` (optional baseline; create if missing, then update during this workshop)
- Existing evidence (user feedback, current process, metrics)

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- The User of Record is present or has delegated decision authority.
- `PROBLEM_STATEMENT.md` exists and is non-empty.
- Existing information (user feedback, current process, metrics) is accessible.
- Ask one question at a time.
- For each question, challenge the answer and ask clarifying questions until it is specific and observable.
- For each question, present multiple choices, include one recommended option, and explain why.
- For each question, collect free-text details (examples, evidence, context).
- If `PROBLEM_STATEMENT.md` is missing or empty, stop and run `workshops/PROBLEM_STATEMENT_WORKSHOP.md` first.
- If `UBIQUITOUS_LANGUAGE.md` is missing, initialize it from `templates/UBIQUITOUS_LANGUAGE.template.md` before continuing.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Roles
- **Facilitator**: enforces sequence, neutrality, and one-question-at-a-time flow.
- **Decider (UoR)**: resolves ambiguities and validates outputs.
- **Participants**: contribute facts, usage patterns, constraints, and risks.
- **Scribe**: captures decisions, terms, and hypotheses.

## Interaction Format (mandatory)
For every question in sequence steps 1 to 5:
1. Generate one multiple-choice question based on the latest answers.
2. Provide 2-3 options (Multi-select is allowed). Mark one as recommended and explain why.
3. Ask one free-text follow-up to capture context and evidence.
4. If the answer is vague, ask one clarifying question.
5. Keep answers observable and specific. Avoid solution design.

Important: do not use a fixed questionnaire. Generate the next question dynamically to move toward the goal of the current step.

## Sequence (must be followed)
### 0) One-sentence challenge (mandatory start)
**Goal:** Capture the design challenge in plain language.
**Prompt:** Describe the challenge in one sentence using this shape:
`[Actor] needs [outcome] but faces [observable friction].`
**Output:** Design challenge draft v0.

### 1) Empathize — Understand
**Goal:** Collect observations and needs without interpretation.
**Generate questions until this step is complete:**
- primary actors and contexts are explicit
- current tasks are described as observable steps
- at least two recurring pain points are identified
- available evidence sources are listed

### 2) Define — Precise problem
**Goal:** Turn observations into a clear, solution-free problem.
**Generate questions until this step is complete:**
- primary friction is explicit and observable
- negative effects are explicit and observable
- scope boundaries are explicit (in scope and out of scope)

### 3) Ideate — Options
**Goal:** Produce multiple response options without committing to technology.
**Rules:**
- Quantity before quality.
- No critique during generation.
- No technology or implementation detail.
**Generate questions until this step is complete:**
- at least three distinct options are listed
- options are grouped by intended user outcome
- at least one hypothesis exists per option

### 4) Prototype — Lightweight representation
**Goal:** Describe conceptual prototypes understandable without tooling.
**Rules:**
- Use text, simple diagrams, or scenarios.
- Describe inputs, outputs, and observable behavior.
**Generate questions until this step is complete:**
- each leading option has a lightweight prototype description
- prototype behavior is observable
- candidate scenarios are ready for functional specification

### 5) Test — Validation
**Goal:** Define how to validate hypotheses through observation.
**Generate questions until this step is complete:**
- each key hypothesis has invalidation evidence
- measurable success criteria are explicit
- acceptable cost of failure is explicit

## Anti-patterns
- Describing a technical solution or specific tool.
- Stating vague goals such as "improve" without measurable criteria.
- Confusing opinions with observable facts.
- Reusing the same static questions without adapting to answers.

## Outputs
- Updated `PROBLEM_STATEMENT.md` (if refined by validated observations)
- Created or enriched `UBIQUITOUS_LANGUAGE.md`
- Design hypotheses and candidate validation criteria for roadmap planning
- Open questions recorded in `QUESTIONS_AND_ANSWERS.md`
- Hypotheses recorded in `LOGS.md`
- Decision notes with options considered and a recommended option
- UoR approval recorded in `LOGS.md`
- Policy decisions recorded in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`)
- Use `templates/PROBLEM_STATEMENT.template.md`, `templates/UBIQUITOUS_LANGUAGE.template.md`, and `templates/ROADMAP.template.md` as starting points.

## Downstream handoff
- Required input for `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`:
  - updated `PROBLEM_STATEMENT.md`
  - updated `UBIQUITOUS_LANGUAGE.md`
  - hypotheses/decisions recorded in `LOGS.md`

## Post-workshop actions
- Convert candidate scenarios into functional specs with FSIDs once execution begins.
- Record decisions and outcomes in `LOGS.md`.
- Record policy decisions in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`).
- Write the workshop summary under `summaries/` using `templates/SUMMARY.template.md`.
- If exceptions are required, record them in `LOGS.md`.
- Ensure updated artifacts are derived from templates in `templates/`.

## Compliance reminders
- The STOP > GUESS rule applies.
- If an exception is required, record it in `LOGS.md`.
- Any divergence is arbitrated by the User of Record.
- Next path: `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`.
