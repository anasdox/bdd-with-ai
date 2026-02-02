# Problem Statement Workshop

This workshop is an executable facilitation playbook for humans and AI agents. It produces the initial problem statement, vocabulary, and roadmap while confirming that `AGENTS.md` applies.

## Preconditions
- Participants have read `AGENTS.md` and agree to follow it.
- The User of Record is present or has delegated decision authority.
- For every question below, challenge the answer and ask clarifying questions until it is specific and observable.
- For every question below, present multiple choices and include recommendations.
- If any precondition is not met, stop and record the blocker in `QUESTIONS_AND_ANSWERS.md`.

## Sequence (must be followed)
### 1) Reality
**Goal:** Establish a factual, observable description of the current state.
**Questions:**
- What happens today, step by step, when a request is made?
- Where do handoffs, delays, or misunderstandings occur?
- What information is missing or inconsistent?

### 2) Ideally
**Goal:** Describe the desired outcomes without proposing solutions.
**Questions:**
- What outcomes would prove this is working?
- What would users or stakeholders observe if the problem were solved?
- What should never happen in the ideal state?

### 3) Consequences
**Goal:** Make impact visible and measurable.
**Questions:**
- What is the cost of the current gaps?
- Which risks are created by ambiguity or rework?
- Who is affected and how?

### 4) Ambiguities
**Goal:** Surface unresolved terms or decisions.
**Questions:**
- Which terms are used inconsistently?
- What assumptions are currently undocumented?
- What decisions are blocked by missing information?

### 5) Problem framing
**Goal:** Produce a single-sentence problem statement and scope.
**Questions:**
- What is the smallest, precise statement of the problem?
- What is explicitly in scope and out of scope?
- What evidence will confirm the problem is addressed?

## Anti-patterns
- Proposing solutions, tools, or architectures.
- Using vague language such as “fast”, “easy”, or “robust”.
- Capturing requirements as implementation details.
- Providing a single option without alternatives or a recommendation.

## Outputs
- Updated `PROBLEM_STATEMENT.md`
- Initial `UBIQUITOUS_LANGUAGE.md`
- `ROADMAP.md` v0
- Explicit confirmation that `AGENTS.md` applies
- Decision notes that include options considered and a recommended choice
- UoR approval recorded in `LOGS.md.md`
- Use `templates/PROBLEM_STATEMENT.template.md` and `templates/UBIQUITOUS_LANGUAGE.template.md` as the starting point.

## Post-workshop actions
- Record open questions in `QUESTIONS_AND_ANSWERS.md`.
- Record decisions and outcomes in `LOGS.md.md`.
- Write the workshop summary as a file under `summaries/` using `summaries/template.md`.
- If exceptions are required, record them in `LOGS.md.md`.
- Ensure the produced artifacts are derived from their templates in `templates/`.
- Next path: `workshops/DESIGN_THINKING_WORKSHOP.md`.
