# Problem Statement Workshop (Dynamic Prompt Flow)

This workshop is a facilitation prompt for humans and AI agents. Questions are generated on the fly from participant answers. The flow starts with one sentence, then iteratively refines it.

## Inputs
- No upstream workshop dependency. This is the entry workshop.
- `AGENTS.md`
- User of Record (UoR) availability

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- The User of Record is present or has delegated decision authority.
- Ask one question at a time.
- For each question, challenge the answer and ask clarifying questions until it is specific and observable.
- For each question in steps 1 to 5, present multiple choices, include one recommended option, and explain why.
- For each question, collect free-text details (examples, evidence, context).
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Interaction Format (mandatory)
Step 0 exception:
- Ask a single free-text prompt only (no multiple-choice options).

For every question in sequence steps 1 to 5:
1. Generate one multiple-choice question based on the latest answers.
2. Provide 2-3 options (Multi-select is allowed). Mark one as recommended and explain why.
3. Ask one free-text follow-up to capture context and evidence.
4. If the answer is vague, ask one clarifying question.
5. Keep answers observable and specific. Avoid solution design.

Important: do not use a fixed questionnaire. Generate the next question dynamically to move toward the goal of the current step.

## Sequence (must be followed)
### 0) One-sentence draft (mandatory start)
**Goal:** Capture a first version of the problem in plain language.
**Prompt:** Describe the problem to solve in one sentence using this shape:
`[Actor] experiences [problem], which causes [observable impact].`
**Output:** Problem statement draft v0.

### 1) Reality
**Goal:** Establish a factual, observable view of the current problem.
**Generate questions until this step is complete:**
- current step-by-step flow is explicit
- at least two concrete failure points are identified
- missing or inconsistent information is listed

### 2) Desired outcomes
**Goal:** Define observable success without proposing a solution.
**Generate questions until this step is complete:**
- success outcomes are observable
- at least one explicit non-desired outcome is stated
- evidence signals for success are named

### 3) Consequences
**Goal:** Make impact measurable.
**Generate questions until this step is complete:**
- key cost of current state is identified
- affected roles are explicit
- at least one measurable impact indicator is captured

### 4) Ambiguities
**Goal:** Surface unclear terms and blocked decisions.
**Generate questions until this step is complete:**
- ambiguous terms are listed
- undocumented assumptions are surfaced
- blocked decisions and missing inputs are explicit

### 5) Refine and lock the statement
**Goal:** Produce a precise, scoped, testable one-sentence statement.
**Generate questions until this step is complete:**
- final one-sentence problem statement is precise
- in-scope and out-of-scope are explicit
- validation evidence is agreed

## Anti-patterns
- Jumping to solutions, tools, or architecture.
- Using vague language such as “fast”, “easy”, or “robust”.
- Capturing implementation details instead of behavior.
- Asking compound questions instead of one clear question at a time.
- Reusing the same static questions without adapting to answers.

## Outputs
- Create or update `PROBLEM_STATEMENT.md` (from `templates/PROBLEM_STATEMENT.template.md`)
- Initial `UBIQUITOUS_LANGUAGE.md` (from `templates/UBIQUITOUS_LANGUAGE.template.md`)
- Explicit confirmation that `AGENTS.md` applies
- Decision notes with options considered and a recommended option
- UoR approval recorded in `LOGS.md`
- Policy decisions recorded in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`)

## Downstream handoff
- Required input for `workshops/DESIGN_THINKING_WORKSHOP.md`: `PROBLEM_STATEMENT.md`
- Required input for `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`: `PROBLEM_STATEMENT.md` and `UBIQUITOUS_LANGUAGE.md`

## Post-workshop actions
- Record open questions in `QUESTIONS_AND_ANSWERS.md`.
- Record decisions and outcomes in `LOGS.md`.
- Record policy decisions in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`).
- Write the workshop summary under `summaries/` using `templates/SUMMARY.template.md`.
- If exceptions are required, record them in `LOGS.md`.
- Ensure produced artifacts are derived from templates in `templates/`.
- Next path: `workshops/DESIGN_THINKING_WORKSHOP.md`.
