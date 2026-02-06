# Technical Specifications

This directory contains technical specifications that describe HOW functional requirements are implemented.

## Rules (from AGENTS.md)

- HTTP contracts MUST be specified in OpenAPI
- Async contracts MUST be specified in AsyncAPI
- Every technical artifact MUST include:
  - `x-tsid: TS-<TitleCamelCase>`
  - `x-fsid-links: [FS-...]`
- TSIDs MUST be unique and map to at least one FSID
- Technical specs MUST be user-validated before moving to tests
- Technical spec MAY need `<TitleCamelCase>.md` files for sequence diagrams, flowcharts, DMN, SLO
