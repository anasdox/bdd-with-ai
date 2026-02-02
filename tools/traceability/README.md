# Traceability Tool

This tool verifies that all FSIDs in functional specs are referenced by acceptance tests and produces a report.

## Behavior
- If `specs/functional/` does not exist, the script exits OK to reflect template state.
- If specs exist, missing references fail the check.

## Output
- `traceability-report.md` in the repository root

## Usage
Run:
```
sh ./tools/traceability/traceability_check.sh
```
