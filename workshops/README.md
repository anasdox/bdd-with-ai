# Workshops

This directory contains facilitation prompts used to produce and update core artifacts. Run them in strict order because each workshop depends on outputs from the previous one.

## Recommended path
1. `workshops/PROBLEM_STATEMENT_WORKSHOP.md`
2. `workshops/DESIGN_THINKING_WORKSHOP.md`
3. `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md`
4. `workshops/ROADMAP_WORKSHOP.md`

## Dependency chain (hard gates)
- `PROBLEM_STATEMENT_WORKSHOP` has no upstream workshop dependency.
- `DESIGN_THINKING_WORKSHOP` requires `PROBLEM_STATEMENT.md`; it creates or updates `UBIQUITOUS_LANGUAGE.md`.
- `GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP` requires outputs from both Problem Statement and Design Thinking workshops.
- `ROADMAP_WORKSHOP` requires outputs from Problem Statement, Design Thinking, and Global Technical Architecture workshops.
- If a required upstream output is missing, stop and run the missing upstream workshop first.

## Operating rules
- Follow the STOP > GUESS rule from `AGENTS.md`.
- Challenge every answer and ask clarifying questions until it is specific and observable.
- Provide multiple options and a recommendation for each decision point.
- Record summaries as files under `summaries/` using `templates/SUMMARY.template.md`.
- Record decisions, outcomes, hypotheses, and exceptions in `LOGS.md`.
- Record architectural/policy decisions in `decisions/YYYYMMDD-<CamelCaseName>.md` when applicable (use `templates/DECISION.template.md`).
