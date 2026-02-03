# Contributing

Thank you for improving this template. Contributions must preserve the repository's neutrality, portability, and BDD-first intent.

## Contribution principles
- Keep the repository programming-language, CI, and platform agnostic.
- Do not add vendor- or tool-specific instructions.
- Maintain traceability between functional specs, technical specs, and tests once execution begins.
- Prefer clarity and declarative rules over narrative descriptions.

## How to contribute
1. Read `AGENTS.md`.
2. Propose changes via `LOGS.md` for anything that changes core behavior or governance.
3. Update or add workshops to keep the template self-verifying.
4. Run `tools/spec-lint/spec_lint.sh` and `tools/traceability/traceability_check.sh` once specs exist.

## Required checks before review
- All validation rules in `AGENTS.md` pass.
- Functional specs include FSIDs once specs exist.
- Technical specs include TSIDs and FSID links once specs exist.
- Acceptance tests reference FSIDs once tests exist.
- Documentation reflects any changes to rules.

## Review expectations
- Changes must be internally consistent and immediately usable.
- If a rule is relaxed or tightened, update `LOGS.md`.
- Keep examples stack-neutral and black-box focused.
