# Spec Lint Tool

This tool validates baseline documents and, when execution begins, verifies spec structure.

## What it checks
- Baseline files exist and are non-empty.
- `LOGS.md.md` includes a Decisions log section with at least one dated entry.
- If `specs/functional/` exists, each `.feature` scenario includes `@fsid:FS-...`.
- If `specs/technical/` exists, technical specs exist and OpenAPI operations include `x-tsid` and `x-fsid-links`.
- If `tests/acceptance/` exists, at least one acceptance test file exists.

## Usage
Run:
```
sh ./tools/spec-lint/spec_lint.sh
```
