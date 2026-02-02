# Roadmap Workshop

This workshop builds a detailed, non-solution roadmap based on the problem statement, vocabulary, and global architecture. It must produce both strategic features and tactical features.

## Inputs
- `PROBLEM_STATEMENT.md`
- `UBIQUITOUS_LANGUAGE.md`
- `workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md` outputs, if available
- Participants have read `AGENTS.md` and agree to follow it.
- For every question below, challenge the answer and ask clarifying questions until it is specific and observable.
- For every question below, present multiple choices and include recommendations.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Roles
- **Facilitator**: enforces the sequence and neutrality.
- **Decider (UoR)**: resolves ambiguities and validates outputs.
- **Participants**: contribute facts, usage patterns, constraints, and risks.
- **Scribe**: captures decisions, terms, and hypotheses.

## Steps
1. **Confirm scope and intent**: Restate the problem and vocabulary in one paragraph and confirm what is in and out of scope.
2. **Define strategic features**: Identify the major outcomes that must be achieved. Each strategic feature must be stated as a desired capability, not a solution.
3. **Define tactical features**: Identify the concrete, near-term features that enable the strategic features. Tactical features must be observable and measurable and must map to FSIDs once execution begins.
4. **Enumerate risks**: Capture risks that could prevent success and link them to the strategic or tactical features they threaten.
5. **List dependencies**: Identify required decisions, roles, or inputs needed to deliver the features.
6. **Set non-goals**: Document what is explicitly out of scope.
7. **Agree on success criteria**: Define observable evidence of success for each strategic feature and for the overall roadmap.
8. **Align with global architecture**: If a global technical architecture exists, confirm consistency or record conflicts.

## Outputs
- Updated `ROADMAP.md` with sections for Strategic Features and Tactical Features
- Risks, dependencies, non-goals, and success criteria aligned to those features
- If a global technical architecture exists, confirm alignment with it or record a decision
- Decision notes that include options considered and a recommended choice
- UoR approval recorded in `LOGS.md.md`
- Use `templates/ROADMAP.template.md` as the starting point for updates.

## Prompts
- Which strategic features express outcomes that matter to users or stakeholders?
- Which tactical features are required to unlock the strategic features?
- What evidence will show each strategic feature is achieved?
- Which dependencies are outside the team's control?
- Which risks can be mitigated early through clarification or testing?

## Post-workshop actions
- Update acceptance test plans to match the roadmap priorities once execution begins.
- Ensure every tactical feature is backed by at least one FSID once execution begins.
- Record decisions and outcomes in `LOGS.md.md`.
- Write the workshop summary as a file under `summaries/` using `summaries/template.md`.
- If exceptions are required, record them in `LOGS.md.md`.
- If the roadmap is validated, the agent must start the BDD loop feature by feature, in roadmap priority order.
- Ensure `ROADMAP.md` is derived from `templates/ROADMAP.template.md`.
