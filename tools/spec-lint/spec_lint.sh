#!/bin/sh
set -eu

fail=0

required_files="
PROBLEM_STATEMENT.md
UBIQUITOUS_LANGUAGE.md
GLOBAL_TECHNICAL_ARCHITECTURE.md
ROADMAP.md
AGENTS.md
LOGS.md
QUESTIONS_AND_ANSWERS.md
workshops/README.md
workshops/PROBLEM_STATEMENT_WORKSHOP.md
workshops/DESIGN_THINKING_WORKSHOP.md
workshops/GLOBAL_TECHNICAL_ARCHITECTURE_WORKSHOP.md
workshops/ROADMAP_WORKSHOP.md
templates/GLOBAL_TECHNICAL_ARCHITECTURE.template.md
templates/DECISION.template.md
templates/SUMMARY.template.md
"

for file in $required_files; do
  if [ ! -s "$file" ]; then
    echo "ERROR: Required baseline file missing or empty: $file" >&2
    fail=1
  fi
done

if [ -s LOGS.md ]; then
  if ! grep -q "^## Decisions log" LOGS.md; then
    echo "ERROR: LOGS.md must include a '## Decisions log' section." >&2
    fail=1
  fi

  if ! awk 'BEGIN{in_decisions=0;found=0} /^## Decisions log/{in_decisions=1} in_decisions && /^- \*\*Date\*\*:/ {found=1} END{exit found?0:1}' LOGS.md; then
    echo "ERROR: LOGS.md must include at least one decision entry with a Date." >&2
    fail=1
  fi
fi

if [ -d specs/functional ]; then
  feature_files=$(find specs/functional -type f -name "*.feature" 2>/dev/null || true)
  if [ -z "$feature_files" ]; then
    echo "ERROR: specs/functional exists but contains no .feature files." >&2
    fail=1
  else
    for file in $feature_files; do
      if ! grep -q "@fsid:FS-" "$file"; then
        echo "ERROR: Missing FSID tag in $file. Each scenario must include @fsid:FS-..." >&2
        fail=1
      fi
    done
  fi
fi

if [ -d specs/technical ]; then
  technical_specs=$(find specs/technical -type f \( -name "*.md" -o -name "*.markdown" -o -name "*.yaml" -o -name "*.yml" \) ! -name "README.md" 2>/dev/null || true)
  if [ -z "$technical_specs" ]; then
    echo "ERROR: specs/technical exists but contains no technical specs (excluding README.md)." >&2
    fail=1
  fi

  openapi_files=$(find specs/technical -type f -name "*.yaml" -o -name "*.yml" 2>/dev/null || true)
  if [ -n "$openapi_files" ]; then
    for file in $openapi_files; do
      case "$file" in
        *openapi*.yaml|*openapi*.yml)
          if ! grep -q "x-tsid:" "$file"; then
            echo "ERROR: Missing x-tsid in $file. Each OpenAPI operation must include x-tsid." >&2
            fail=1
          fi
          if ! grep -q "x-fsid-links:" "$file"; then
            echo "ERROR: Missing x-fsid-links in $file. Each OpenAPI operation must include x-fsid-links." >&2
            fail=1
          fi
          ;;
      esac
    done
  fi
fi

if [ -d tests/acceptance ]; then
  acceptance_tests=$(find tests/acceptance -type f -name "*.md" ! -name "README.md" 2>/dev/null || true)
  if [ -z "$acceptance_tests" ]; then
    echo "ERROR: tests/acceptance exists but contains no acceptance tests (excluding README.md)." >&2
    fail=1
  fi
fi

if [ "$fail" -ne 0 ]; then
  exit 1
fi

echo "spec_lint: OK"
