# AGENTS: Invariant Operating Rules

This file defines non-negotiable operating rules for humans and AI agents working in this repository. These rules apply to all contributions, reviews, and automated changes.

## User of Record (UoR)
- The UoR is the accountable decision-maker for scope, intent, and acceptance.
- Current UoR: Repository Maintainer Council.

## Core Rules

### 1) Authority and Conflict Resolution
- `AGENTS.md` is invariant and authoritative for process, specifications, and code workflow.
- Conflict resolution order is:
  1. `AGENTS.md` (rules)
  2. `PROBLEM_STATEMENT.md` (intent)
  3. `GLOBAL_TECHNICAL_ARCHITECTURE.md` (boundaries)
  4. `ROADMAP.md` (direction)
  5. `TODO.md` (current execution reality)

### 2) Startup Gate (Mandatory Sequence)
Before any new work, agents MUST execute this sequence:

1. Validate required foundation artifacts:
   - If `PROBLEM_STATEMENT.md` is missing, run `workshops/PROBLEM_STATEMENT_WORKSHOP.md` first.
   - If `UBIQUITOUS_LANGUAGE.md` is missing, run `workshops/DESIGN_THINKING_WORKSHOP.md`.
   - If `GLOBAL_TECHNICAL_ARCHITECTURE.md` is missing, run `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`.
   - If `ROADMAP.md` is missing, run `workshops/ROADMAP_WORKSHOP.md`.
2. Ensure `TODO.md` exists:
   - If `TODO.md` is missing, agents MUST automatically create it from `templates/TODO.template.md`.
3. Open `TODO.md` and identify:
   - active feature
   - current phase
   - blockers, open questions, and hypotheses
4. Do not invent work not listed in `TODO.md`.

### 3) STOP > GUESS Rule
- If required input is missing or ambiguous, STOP and ask.
- Do not infer or invent requirements.
- If blocked, log the blocker in `QUESTIONS_AND_ANSWERS.md` and escalate to UoR.

### 4) Questions and Hypotheses Gate
If any blocking question or hypothesis exists:
- MUST NOT code.
- MUST NOT write new specs.
- MUST ask the user ONE question at a time.
- MUST offer 2-3 options, include one MVP recommendation, and allow free-text.
- MUST record answers in `QUESTIONS_AND_ANSWERS.md` and update `TODO.md`.

### 5) BDD-First Delivery (Non-Negotiable)
All behavior work MUST follow this order:
1. Problem understanding first.
2. Behavior definition before implementation (Gherkin, observable outcomes only).
3. Specifications before code.
4. Tests before implementation.
5. Implementation only after validation gates.
6. Demo and user validation before merge.

No shortcut is allowed to skip these gates.

### 6) Documentation and Contract-Only Exemption
Some deliverables may be exempt from BDD when they do not represent product behavior (for example OpenAPI docs, developer-facing references, inspection-only developer UIs).
- Exemptions MUST be explicitly approved by UoR.
- Exemptions MUST be recorded in `LOGS.md` with scope, rationale, and mitigation.

### 7) Functional Specification Rules (WHAT)
- Location: `specs/functional/*.feature`
- One feature per file.
- Scenarios describe behavior only (no technical details).
- Each scenario MUST have `@fsid:FS-<CamelCaseName>`.
- Each feature MUST include explicit non-goals.
- Functional specs MUST be user-validated before moving to technical specs.

### 8) Technical Specification Rules (HOW)
- Location: `specs/technical/**`
- HTTP contracts MUST be specified in OpenAPI.
- Every technical artifact MUST include:
  - `x-tsid: TS-<CamelCaseName>`
  - `x-fsid-links: [FS-...]`
- TSIDs MUST be unique and map to at least one FSID.
- Technical specs MUST be user-validated before moving to tests.

### 9) Acceptance Test Rules
- Location: `tests/acceptance/`
- One test file per feature.
- Tests are black-box (for HTTP, use `httptest` + fake downstream servers).
- Gherkin is not executable (no step binding).
- Each acceptance test MUST reference FSID(s).
- Tests MUST be user-validated before implementation.

### 10) Implementation Rules
- Must comply with `CODE_GUIDE.md`.
- Use standard library only unless explicitly approved.
- Explicit dependency injection; no hidden global state.
- Keep code minimal and readable.
- Update `TODO.md` continuously.

Mandatory implementation loop:
1. Implement the smallest change required by validated specs/tests.
2. Run all acceptance tests in `tests/acceptance`.
3. If any acceptance test fails, apply the smallest fix and rerun.
4. Only when all acceptance tests pass:
   - run full tests
   - ensure CI is green
   - update `TODO.md` with `Implementation done` and `CI green`

It is forbidden to proceed to demo while acceptance tests fail.

### 11) Demo and User Validation
Each feature MUST end with:
- an adapted demo environment
- a short demo note: implemented scope, not implemented scope, limitations

Wait for user validation before merge. Mark the feature done in `TODO.md`.

### 12) Branching and Commits
- One feature per branch: `feature/<feature_name>`.
- Do not mix features in one branch.
- Create the feature branch before starting specification work.
- Use clear conventional commits after each phase:
  - functional spec done
  - technical spec done
  - tests done
  - implementation done
- Merge only after demo validation.

### 13) Decisions and Exceptions
- Any architectural or policy decision MUST be documented.
- Decision logs location (including exceptions/deviations): `decisions/YYYYMMDD-<CamelCaseName>.md`.
- Required fields: Context, Problem, Options considered, Decision, Consequences, Related hypotheses, Affected features.
- Any deviation from this file requires a written exception decision record in `decisions/YYYYMMDD-<CamelCaseName>.md` with UoR approval.
- Optional visibility pointer: add a short entry in `LOGS.md` that links to the exception decision record.

### 14) CI Enforcement (Required)
CI MUST enforce:
- all Gherkin scenarios contain FSIDs
- all technical artifacts contain TSIDs and FSID links
- every FSID is covered by at least one acceptance test
- traceability matrix is complete
- all acceptance tests pass

If any check fails, work MUST stop until fixed.

### 15) Quality and Security Principles (Mandatory)
- Minimalism: build only what functional specs require.
- Explicit dependencies: document external dependencies and assumptions.
- No hidden global state: define shared state boundaries and transitions.
- Error handling: define and expose expected error outcomes.
- Observability: expose key transitions; avoid leaking sensitive data.
- Security hygiene: validate inputs, protect secrets, define trust boundaries.
- Documentation discipline: keep specs/tests/governance logs synchronized.

### 16) Legacy Quarantine
- Legacy or non-conforming artifacts MUST be isolated in a clearly labeled folder and excluded from enforcement scripts.
- Do not modify quarantined content except for risk documentation and migration steps.

### 17) Final Rule
If you do not know what to do next:
1. Open `TODO.md`.
2. Re-read `AGENTS.md`.
3. Ask ONE clear question.

## Appendix

### A) Repository Mental Model
Each core document has one purpose:
- `PROBLEM_STATEMENT.md`: immutable project intent.
- `UBIQUITOUS_LANGUAGE.md`: shared domain vocabulary.
- `AGENTS.md`: operating rules.
- `GLOBAL_TECHNICAL_ARCHITECTURE.md`: architecture boundaries.
- `ROADMAP.md`: strategic direction.
- `TODO.md`: operational execution truth.

### B) Workshop References
- `workshops/PROBLEM_STATEMENT_WORKSHOP.md`
- `workshops/DESIGN_THINKING_WORKSHOP.md`
- `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`
- `workshops/ROADMAP_WORKSHOP.md`

For each workshop question, challenge answers until they are specific and observable.

### C) Logging Map
- Questions and answers: `QUESTIONS_AND_ANSWERS.md`
- Decisions and exceptions (official location): `decisions/YYYYMMDD-<CamelCaseName>.md`
- Outcomes and hypotheses: `LOGS.md`
- Optional visibility pointers for exceptions: `LOGS.md`
- Workshop summaries: `summaries/YYYYMMDD-<CamelCaseName>.md` using `templates/SUMMARY.template.md`
- Templates: `templates/*.template.md`

### D) Specification and Traceability Standard
Directory convention when execution starts:
- Functional specs: `specs/functional/*.feature`
- Technical specs: `specs/technical/`
- Acceptance tests: `tests/acceptance/`

Traceability expectation:
- FSID -> TSID -> acceptance tests must be reviewable end-to-end.

Validation commands:
- `tools/spec-lint/spec_lint.sh`
- `tools/traceability/traceability_check.sh`

### E) Common Mistakes to Avoid
- Coding before spec validation.
- Ignoring specification standards.
- Putting business logic in routers.
- Over-engineering.
- Bundling multiple questions in one blocking interaction.
- Skipping `TODO.md` updates.
- Making undocumented decisions.
