# Global Technical Architecture Workshop (Dynamic Prompt Flow)

This workshop is a facilitation prompt for humans and AI agents. Questions are generated on the fly from participant answers to produce a traceable macro architecture without locking into vendor choices.

## Objectives
- Translate functional intent into macro architecture decisions and technology categories.
- Define system boundaries, responsibilities, and interfaces.
- Identify non-functional constraints that affect technical design.
- Produce architecture artifacts that link TSIDs to FSIDs.

## Inputs
- `PROBLEM_STATEMENT.md` (required; output of `workshops/PROBLEM_STATEMENT_WORKSHOP.md`)
- `UBIQUITOUS_LANGUAGE.md` (required; refined by prior workshops)
- `GLOBAL_TECHNICAL_ARCHITECTURE.md` (create or update in this workshop)
- Design workshop outcomes from `workshops/DESIGN_THINKING_WORKSHOP.md`:
  - hypotheses and decisions in `LOGS.md`
  - open questions in `QUESTIONS_AND_ANSWERS.md` (if any)

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- `PROBLEM_STATEMENT.md` exists and is non-empty.
- `UBIQUITOUS_LANGUAGE.md` exists and is non-empty.
- Functional specs exist for behaviors in scope or are planned for execution.
- The User of Record is present or has delegated decision authority.
- Ask one question at a time.
- For each question, challenge the answer and ask clarifying questions until it is specific and observable.
- For each question, present multiple choices, include one recommended option, and explain why.
- For each question, collect free-text details (examples, evidence, context).
- If `PROBLEM_STATEMENT.md` is missing or empty, stop and run `workshops/PROBLEM_STATEMENT_WORKSHOP.md` first.
- If design workshop outputs are missing, stop and run `workshops/DESIGN_THINKING_WORKSHOP.md` first.
- If `GLOBAL_TECHNICAL_ARCHITECTURE.md` is missing, initialize it from `templates/GLOBAL_TECHNICAL_ARCHITECTURE.template.md` before continuing.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Roles
- **Facilitator**: enforces sequence, neutrality, and one-question-at-a-time flow.
- **Decider (UoR)**: resolves ambiguities and validates outputs.
- **Participants**: provide domain, operational, and constraint knowledge.
- **Scribe**: captures decisions, assumptions, and traceability links.

## Interaction Format (mandatory)
For every question in sequence steps 1 to 6:
1. Generate one multiple-choice question based on the latest answers.
2. Provide 2-3 options (Multi-select is allowed). Mark one as recommended and explain why.
3. Ask one free-text follow-up to capture context and evidence.
4. If the answer is vague, ask one clarifying question.
5. Keep answers observable and specific. Avoid implementation details.

Important: do not use a fixed questionnaire. Generate the next question dynamically to move toward the goal of the current step.

## Sequence (must be followed)
### 0) One-sentence architecture intent (mandatory start)
**Goal:** Capture architecture intent in plain language.
**Prompt:** Describe architecture intent in one sentence using this shape:
`The system must support [outcomes] for [actors] within [key constraints].`
**Output:** Architecture intent draft v0.

### 1) Scope and intent
**Goal:** Define which behaviors and outcomes the architecture must support.
**Generate questions until this step is complete:**
- in-scope FSIDs are explicit
- user-observable outcomes are explicit
- out-of-scope items are explicit

### 2) System boundaries
**Goal:** Define what the system is and is not responsible for.
**Generate questions until this step is complete:**
- external actors and systems are listed
- boundary-crossing inputs and outputs are explicit
- ownership of data/events inside vs outside is explicit

### 3) Responsibilities and components
**Goal:** Identify major responsibilities and design decisions without implementation detail.
**Generate questions until this step is complete:**
- key responsibilities are mapped to outcomes
- critical isolation boundaries are explicit
- cross-cutting responsibilities are explicit
- architecture style and technology categories are justified at macro level

### 4) Interfaces and contracts
**Goal:** Define observable interfaces and constraints.
**Generate questions until this step is complete:**
- required inputs/outputs between responsibilities are explicit
- invariants or ordering constraints are explicit
- observable and recoverable errors are explicit
- TSIDs and FSID links are prepared for each major interface

### 5) Non-functional constraints
**Goal:** Capture constraints that influence architecture decisions.
**Generate questions until this step is complete:**
- reliability/availability/scalability expectations are explicit
- security/compliance boundaries are explicit
- observability signals are explicit

### 6) Risks and trade-offs
**Goal:** Record risks and explicit trade-offs without tool assumptions.
**Generate questions until this step is complete:**
- top risks are explicit
- accepted trade-offs and rationale are explicit
- revision triggers are explicit

## Anti-patterns
- Selecting a specific vendor, platform, or framework.
- Writing design details that belong in implementation docs.
- Describing internal behavior that is not observable.
- Reusing the same static questions without adapting to answers.

## Outputs
- Created or updated `GLOBAL_TECHNICAL_ARCHITECTURE.md` (from `templates/GLOBAL_TECHNICAL_ARCHITECTURE.template.md`)
- At least one technical spec in `specs/technical/` once execution begins
- A documented set of macro technical decisions
- Updated `UBIQUITOUS_LANGUAGE.md` if new terms are introduced
- Open questions recorded in `QUESTIONS_AND_ANSWERS.md`
- Decision notes with options considered and a recommended option
- UoR approval recorded in `LOGS.md`
- Architectural/policy decisions recorded in `decisions/YYYYMMDD-<CamelCaseName>.md` (use `templates/DECISION.template.md`)
- `apps/` directory created with one README per app
  - Each app README must include: app name, purpose, scope (in/out), owned behavior (FSIDs), interfaces, dependencies, operational notes, owner, and a code guide section.
  - App README code guide section template:
    ```
    ## Code Guide
    ### Structure
    -
    ### Naming
    -
    ### Error handling
    -
    ### Observability
    -
    ### Security hygiene
    -
    ### Documentation
    -
    ```
- `Makefile` created in the repository root to expose standard project commands.
- Use `templates/UBIQUITOUS_LANGUAGE.template.md` as the starting point for updates.

## Downstream handoff
- Required input for `workshops/ROADMAP_WORKSHOP.md`:
  - macro architecture decisions
  - constraints, risks, and trade-offs
  - unresolved conflicts and questions

## Compliance reminders
- The STOP > GUESS rule applies.
- If an exception is required, record it in `LOGS.md`.
- Any divergence is arbitrated by the User of Record.
- Next path: `workshops/ROADMAP_WORKSHOP.md`.

## Post-workshop actions
- Translate macro decisions into technical specs with TSIDs and FSID links once execution begins.
- Record decisions and outcomes in `LOGS.md`.
- Record architectural/policy decisions in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`).
- Write the workshop summary under `summaries/` using `templates/SUMMARY.template.md`.
- If exceptions are required, record them in `LOGS.md`.
- Choose domain-specific app names and update `apps/*/README.md` accordingly.
- Ensure each app README includes the required fields (name, purpose, scope, FSIDs, interfaces, dependencies, operational notes, owner).
- Update the `Makefile` to include relevant commands (validation, checks, and workflow shortcuts).
- Ensure updated artifacts are derived from templates in `templates/`.
