# BDD-First, Agent-Friendly Repository Template

A stack-neutral template for behavior-driven development (BDD) and agent-friendly collaboration. It standardizes how teams define problems, capture ubiquitous language, write functional and technical specifications, and enforce traceability — without assuming any programming language, test framework, CI provider, or hosting platform.

## Why this template exists

- Create a shared, auditable source of truth across humans and AI agents.
- Reduce ambiguity by separating functional intent from technical design.
- Enable reproducible change by enforcing traceability and governance.

## Quickstart

### 1. Clone and configure the operating mode

```bash
cp .env.example .env   # or create .env manually
```

Set `AGENTS_MODE` in `.env` to match your situation (see [Operating Modes](#operating-modes) below).

### 2. Read the rules

Read `AGENTS.md` — it is the authoritative source for all process rules, specification standards, and workflow gates.

### 3. Follow the path for your mode

| Your situation | Mode to set | What to do first |
|---|---|---|
| Starting a new project from scratch | `standard` | Create the four foundation artifacts (see [Foundation Artifacts](#foundation-artifacts)), then follow the BDD-First delivery flow. |
| Onboarding existing code in `apps/` | `reverse_engineering` | The agent analyzes existing code and generates all missing artifacts, specs, and tests. See Rule 2b in `AGENTS.md`. |
| Modifying templates, tooling, or `AGENTS.md` itself | `ungated` | Process gates are bypassed. Switch back to `standard` when done. |

### 4. Work with TODO.md

`TODO.md` is the operational execution truth. Every active feature, current phase, blocker, and next action lives there. Agents and humans check it before starting any work.

### 5. Validate

```bash
tools/spec-lint/spec_lint.sh
tools/traceability/traceability_check.sh
```

## Operating Modes

The repository operates in one of three mutually exclusive modes, controlled by `AGENTS_MODE` in `.env`.

| Value | Purpose | When to use |
|-------|---------|-------------|
| `standard` | Full BDD-First delivery, all gates enforced | **Default.** Normal feature development. All foundation artifacts are validated and conformant. |
| `reverse_engineering` | Onboarding existing code into conformance | `apps/` contains working source code but foundation artifacts, specs, or tests are missing. |
| `ungated` | Template and process development | Modifying `AGENTS.md`, templates, or tooling. Bypasses process gates. |

**Rules:**
- If `AGENTS_MODE` is absent or empty, the mode is `standard`.
- Only one mode is active at a time.
- Mode changes require UoR (User of Record) approval and MUST be logged in `LOGS.md`.
- When the objective of a non-standard mode is achieved, set `AGENTS_MODE=standard`.

## Foundation Artifacts

These four documents must exist and be validated before any feature work begins (in `standard` mode):

| Artifact | Purpose |
|---|---|
| `PROBLEM_STATEMENT.md` | Immutable project intent — who, what problem, what impact |
| `UBIQUITOUS_LANGUAGE.md` | Shared domain vocabulary for all contributors |
| `GLOBAL_TECHNICAL_ARCHITECTURE.md` | Non-negotiable technical boundaries and architecture |
| `ROADMAP.md` | Strategic direction and planned evolution |

Bootstrap paths when artifacts are missing:
1. **From existing code** (`reverse_engineering` mode) — artifacts are generated from code analysis.
2. **From `SOLUTION.md`** — a single document that maps to all four artifacts. UoR approval required.
3. **From UoR free-text** — the agent converts a free-text description into `SOLUTION.md`, then generates artifacts.
4. **Manual creation** — each artifact is created individually using the validation checklists in `AGENTS.md` Appendix F.

## BDD-First Delivery Flow

All behavior work follows this strict order (no shortcuts):

1. Problem understanding
2. Behavior definition (Gherkin, observable outcomes)
3. Functional specifications (`specs/functional/*.feature`)
4. Technical specifications (`specs/technical/`)
5. Implementation plan (`IMPLEMENTATION_PLAN.md`)
6. Acceptance tests (`tests/acceptance/`)
7. Implementation (`apps/<app-name>/`)
8. Refactoring (no behavior change)
9. Demo and user validation

## Directory Structure

```
.
├── AGENTS.md                          # Invariant operating rules
├── PROBLEM_STATEMENT.md               # Project intent
├── UBIQUITOUS_LANGUAGE.md             # Domain vocabulary
├── GLOBAL_TECHNICAL_ARCHITECTURE.md   # Architecture boundaries
├── ROADMAP.md                         # Strategic direction
├── IMPLEMENTATION_PLAN.md             # Execution-level sequencing
├── TODO.md                            # Operational execution truth
├── QUESTIONS_AND_ANSWERS.md           # Blocking questions and answers
├── LOGS.md                            # Decisions, hypotheses, outcomes
├── SOLUTION.md                        # (optional) Bootstrap source
├── apps/                              # Application source code
│   └── <app-name>/
├── specs/
│   ├── functional/                    # Gherkin feature files (WHAT)
│   └── technical/                     # OpenAPI / AsyncAPI specs (HOW)
├── tests/
│   └── acceptance/                    # Black-box acceptance tests
├── decisions/                         # Decision records (YYYYMMDD-<Title>.md)
├── summaries/                         # Artifact summaries
├── templates/                         # Canonical templates for artifacts
└── tools/                             # Validation and traceability scripts
```

## Traceability

Every change is traceable end-to-end:

```
Roadmap feature → Implementation plan slice → FSID → TSID → Acceptance test
```

- **FSID** (Functional Spec ID): `@fsid:FS-<ScenarioTitleCamelCase>` on every Gherkin scenario.
- **TSID** (Technical Spec ID): `x-tsid: TS-<TitleCamelCase>` + `x-fsid-links` on every technical artifact.

## License

See `LICENSE`.
