# BDD-First, Agent-Friendly Repository Template

This repository is a stack-neutral template for behavior-driven development (BDD) and agent-friendly collaboration. It standardizes how teams define problems, capture ubiquitous language, write functional and technical specifications, and enforce traceability without assuming any programming language, test framework, CI provider, or hosting platform.

## Why this template exists
- Create a shared, auditable source of truth across humans and AI agents.
- Reduce ambiguity by separating functional intent from technical design.
- Enable reproducible change by enforcing traceability and governance.

## How to use this repository
1. Read `AGENTS.md` to understand invariant rules and logging expectations.
2. Run the workshops in `workshops/` to produce the core artifacts in order.
3. Use templates in `templates/` as the starting point for new artifacts.
4. Run `tools/spec-lint/spec_lint.sh` and `tools/traceability/traceability_check.sh` once specs exist.

## Core artifacts
- `PROBLEM_STATEMENT.md`: Defines the immutable problem this project exists to solve.
- `UBIQUITOUS_LANGUAGE.md`: Captures shared domain terms and meanings used by all contributors.
- `GLOBAL_TECHNICAL_ARCHITECTURE.md`: Sets non-negotiable technical boundaries and architecture constraints.
- `ROADMAP.md`: Describes strategic direction and planned evolution.
- `TODO.md`: Tracks current operational reality (active feature, phase, blockers, next actions).
- `QUESTIONS_AND_ANSWERS.md`: Records blocking questions, assumptions, and validated answers.
- `LOGS.md`: Stores decisions, exceptions, hypotheses, and governance outcomes.

## Key directories
- `workshops/`: facilitation playbooks (see `workshops/README.md`)
- `templates/`: canonical templates for core artifacts
- `summaries/`: workshop summaries using `summaries/template.md`
- `tools/`: validation and traceability scripts

## Validation
- Spec lint: `tools/spec-lint/spec_lint.sh`
- Traceability: `tools/traceability/traceability_check.sh`

## License
See `LICENSE`.
