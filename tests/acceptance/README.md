# Acceptance Tests

This directory contains acceptance tests that validate functional specifications. These tests are designed to ensure that the application meets the requirements defined in the specifications and behaves as expected from an end-user perspective.

## Rules (from AGENTS.md)

- One test file per feature
- Tests are black-box (for HTTP, use `httptest` + fake downstream servers)
- Gherkin is not executable (no step binding)
- Each acceptance test MUST reference FSID(s)
- Tests MUST be user-validated before implementation
