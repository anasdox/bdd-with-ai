# Global Technical Architecture Workshop

This workshop defines a system-wide, macro technical architecture that is traceable to functional intent. It is designed for humans and AI agents and must follow the repository rules. It allows high-level technology choices expressed as categories (not specific vendors).

## Objectives
- Translate functional intent into macro architecture decisions and technology categories.
- Define system boundaries, responsibilities, and interfaces.
- Identify non-functional constraints that affect technical design.
- Produce architecture artifacts that link to TSIDs and FSIDs.

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- Functional specs exist for the behaviors in scope or are planned for execution.
- The User of Record is present or has delegated decision authority.
- For every question below, challenge the answer and ask clarifying questions until it is specific and observable.
- For every question below, present multiple choices and include recommendations.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Roles
- **Facilitator**: enforces the sequence and neutrality.
- **Decider (UoR)**: resolves ambiguities and validates outputs.
- **Participants**: provide domain, operational, and constraint knowledge.
- **Scribe**: captures decisions, assumptions, and traceability links.

## Sequence (must be followed)
### 1) Scope and intent
**Goal:** Define which behaviors and outcomes the architecture must support.
**Questions:**
- Which FSIDs are in scope for this architecture definition?
- What user-observable outcomes must the architecture preserve?
- What is explicitly out of scope?

**Outputs:**
- Scope statement with FSID list
- Out-of-scope list

### 2) System boundaries
**Goal:** Define what the system is and is not responsible for.
**Questions:**
- What are the external actors and systems?
- What inputs and outputs cross the boundary?
- What data or events are owned inside versus outside?

**Outputs:**
- Boundary description added to a technical spec
- Ubiquitous Language updates if new terms appear

### 3) Responsibilities and components
**Goal:** Identify major responsibilities and design decisions without prescribing implementation details.
**Questions:**
- What responsibilities are required to fulfill the FSIDs?
- Which responsibilities must be isolated for safety or governance?
- What responsibilities are shared or cross-cutting?
- What architectural styles are appropriate (e.g., event-driven, request/response, batch)?
- What technology categories are required (e.g., data store type, messaging, API style)?

**Outputs:**
- Component responsibility list in a technical spec
- Macro architecture decisions recorded with TSIDs and FSID links

### 4) Interfaces and contracts
**Goal:** Define observable interfaces and constraints.
**Questions:**
- What inputs/outputs are required between responsibilities?
- What invariants or ordering constraints must hold?
- What errors must be observable and recoverable?

**Outputs:**
- Interface descriptions in Markdown or OpenAPI-style YAML
- TSIDs with FSID links for each interface
- Explicit technical design decisions at the macro level (e.g., synchronous vs asynchronous)

### 5) Non-functional constraints
**Goal:** Capture constraints that influence architecture decisions.
**Questions:**
- What reliability, availability, or scalability outcomes are required?
- What security or compliance boundaries exist?
- What observability signals must be exposed?

**Outputs:**
- Constraints section in a technical spec
- Any new vocabulary in `UBIQUITOUS_LANGUAGE.md`

### 6) Risks and trade-offs
**Goal:** Record risks and explicit trade-offs without tool assumptions.
**Questions:**
- What risks could invalidate the architecture?
- What trade-offs are accepted and why?
- What evidence would trigger a revision?

**Outputs:**
- Risks and trade-offs section in a technical spec
- Open questions logged in `QUESTIONS_AND_ANSWERS.md`

## Anti-patterns
- Selecting a specific vendor, platform, or framework.
- Writing design details that belong in implementation docs.
- Describing internal behavior that is not observable.

## Outputs
- At least one technical spec in `specs/technical/` once execution begins
- A documented set of macro technical decisions
- Updated `UBIQUITOUS_LANGUAGE.md` if new terms are introduced
- Open questions recorded in `QUESTIONS_AND_ANSWERS.md`
- Decision notes that include options considered and a recommended choice
- UoR approval recorded in `LOGS.md.md`
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

## Compliance reminders
- The STOP > GUESS rule applies.
- If an exception is required, record it in `LOGS.md.md`.
- Any divergence is arbitrated by the User of Record.
- Next path: `workshops/ROADMAP_WORKSHOP.md`.

## Post-workshop actions
- Translate macro decisions into technical specs with TSIDs and FSID links once execution begins.
- Record decisions and outcomes in `LOGS.md.md`.
- Write the workshop summary as a file under `summaries/` using `summaries/template.md`.
- If exceptions are required, record them in `LOGS.md.md`.
- Choose domain-specific app names and update `apps/*/README.md` accordingly.
- Ensure each app README includes the required fields (name, purpose, scope, FSIDs, interfaces, dependencies, operational notes, owner).
- Update the `Makefile` to include all relevant commands (validation, checks, and workflow shortcuts).
- Ensure updated artifacts are derived from their templates in `templates/`.
