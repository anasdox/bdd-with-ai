# Roadmap Workshop (Dynamic Prompt Flow)

This workshop is a facilitation prompt for humans and AI agents. Questions are generated on the fly from participant answers to build a non-solution roadmap with both strategic and tactical features.

## Inputs
- `PROBLEM_STATEMENT.md` (required)
- `UBIQUITOUS_LANGUAGE.md` (required)
- Outputs from `workshops/DESIGN_THINKING_WORKSHOP.md` (required: hypotheses and validation criteria)
- Outputs from `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md` (required: macro decisions, constraints, risks, and trade-offs)

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- The User of Record is present or has delegated decision authority.
- `PROBLEM_STATEMENT.md` exists and is non-empty.
- `UBIQUITOUS_LANGUAGE.md` exists and is non-empty.
- Ask one question at a time.
- For each question, challenge the answer and ask clarifying questions until it is specific and observable.
- For each question, present multiple choices, include one recommended option, and explain why.
- For each question, collect free-text details (examples, evidence, context).
- If `PROBLEM_STATEMENT.md` is missing or empty, stop and run `workshops/PROBLEM_STATEMENT_WORKSHOP.md` first.
- If design workshop outputs are missing, stop and run `workshops/DESIGN_THINKING_WORKSHOP.md` first.
- If global architecture outputs are missing, stop and run `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md` first.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Roles
- **Facilitator**: enforces sequence, neutrality, and one-question-at-a-time flow.
- **Decider (UoR)**: resolves ambiguities and validates outputs.
- **Participants**: contribute facts, usage patterns, constraints, and risks.
- **Scribe**: captures decisions, terms, and hypotheses.

## Interaction Format (mandatory)
For every question in sequence steps 1 to 8:
1. Generate one multiple-choice question based on the latest answers.
2. Provide 2-3 mutually exclusive options. Mark one as recommended and explain why.
3. Ask one free-text follow-up to capture context and evidence.
4. If the answer is vague, ask one clarifying question.
5. Keep answers observable and specific. Avoid solution design.

Important: do not use a fixed questionnaire. Generate the next question dynamically to move toward the goal of the current step.

## Sequence (must be followed)
### 0) One-sentence roadmap intent (mandatory start)
**Goal:** Capture roadmap intent in plain language.
**Prompt:** Describe roadmap intent in one sentence using this shape:
`We need to move from [current observable state] to [target observable state] by addressing [core problem].`
**Output:** Roadmap intent draft v0.

### 1) Confirm scope and intent
**Goal:** Confirm scope boundaries from problem and vocabulary artifacts.
**Generate questions until this step is complete:**
- current intent is restated in a clear paragraph
- in-scope and out-of-scope boundaries are explicit
- key terms are aligned with `UBIQUITOUS_LANGUAGE.md`

### 2) Define strategic features
**Goal:** Identify major outcomes to achieve (capabilities, not solutions).
**Generate questions until this step is complete:**
- strategic features are explicit and outcome-oriented
- each strategic feature has an observable value statement
- feature boundaries avoid implementation detail

### 3) Define tactical features
**Goal:** Identify near-term features enabling strategic features.
**Generate questions until this step is complete:**
- each tactical feature maps to at least one strategic feature
- each tactical feature is observable and measurable
- candidate FSID mapping is identified for execution phase

### 4) Enumerate risks
**Goal:** Capture risks that could prevent roadmap success.
**Generate questions until this step is complete:**
- top risks are explicit
- each risk is linked to threatened strategic/tactical features
- at least one mitigation direction exists per major risk

### 5) List dependencies
**Goal:** Identify decisions, roles, and inputs required for delivery.
**Generate questions until this step is complete:**
- internal and external dependencies are explicit
- dependency ownership is explicit
- blocking dependencies are prioritized

### 6) Set non-goals
**Goal:** Make explicit what the roadmap will not address.
**Generate questions until this step is complete:**
- non-goals are explicit and observable
- non-goals do not conflict with strategic outcomes
- deferrals are documented with rationale

### 7) Agree on success criteria
**Goal:** Define observable evidence of roadmap success.
**Generate questions until this step is complete:**
- each strategic feature has measurable success evidence
- overall roadmap has measurable success evidence
- failure signals are explicit

### 8) Align with global architecture
**Goal:** Verify consistency with macro architecture direction.
**Generate questions until this step is complete:**
- alignment points with global architecture are explicit
- conflicts are explicit
- conflict resolution decisions or open questions are logged

## Anti-patterns
- Jumping to solutions, tools, or architecture details.
- Defining features as implementation tasks.
- Keeping success criteria vague or non-observable.
- Reusing the same static questions without adapting to answers.

## Outputs
- Updated `ROADMAP.md` with strategic features and tactical features
- Risks, dependencies, non-goals, and success criteria aligned to features
- Alignment confirmation with global technical architecture or recorded conflicts
- Decision notes with options considered and a recommended option
- UoR approval recorded in `LOGS.md`
- Policy decisions recorded in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`)
- Use `templates/ROADMAP.template.md` as the starting point for updates

## Post-workshop actions
- Update acceptance test plans to match roadmap priorities once execution begins.
- Ensure every tactical feature is backed by at least one FSID once execution begins.
- Record decisions and outcomes in `LOGS.md`.
- Record policy decisions in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`).
- Write the workshop summary under `summaries/` using `templates/SUMMARY.template.md`.
- If exceptions are required, record them in `LOGS.md`.
- If the roadmap is validated, start the BDD loop feature by feature in roadmap priority order.
- Ensure `ROADMAP.md` is derived from `templates/ROADMAP.template.md`.
