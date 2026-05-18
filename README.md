# OpsMate KnowledgeVault

![Local First](https://img.shields.io/badge/model-local--first-blue)
![Stability First](https://img.shields.io/badge/focus-stability--first-green)
![RAG Ready Later](https://img.shields.io/badge/design-rag--ready--later-orange)

## Overview

OpsMate KnowledgeVault is a local-first operational intelligence and troubleshooting knowledge system. It captures reusable enterprise failure knowledge in a format that is human-readable now and retrieval-ready later.

## Core Identity

This is not a generic notes dump, chatbot memory store, vector database platform, or runtime automation service. It is a documentation-first operational knowledge base for support engineering, observability reasoning, incident investigation, and RCA practice.

## Key Capabilities

- Structured troubleshooting knowledge records
- Failure pattern catalog
- Operational runbook templates
- RCA methodology and report templates
- Telemetry interpretation guidance
- Decision-tree troubleshooting workflows
- Search-friendly taxonomy and metadata conventions

## Architecture Philosophy

- Local-first and lightweight by default
- Stability-first evolution with minimal, reversible change
- Operational realism over theoretical abstraction
- Governance-aware automation boundaries
- Observability mindset with evidence-led reasoning
- Human-supervised workflows with no autonomous remediation

## Safety Model

- No credentials, secrets, customer PII, or private production identifiers
- Sanitized evidence patterns and placeholders required
- No hidden indexing daemons or runtime automation
- No cloud dependency assumptions
- Knowledge entries can describe remediation but must mark high-risk actions clearly

## Repository Structure

```text
knowledge/        Curated troubleshooting knowledge and failure pattern catalog.
runbooks/         Actionable investigation, validation, and recovery procedures.
rca/              RCA methodology, templates, and sanitized RCA examples.
observability/    Telemetry interpretation and investigation patterns.
troubleshooting/  Decision trees and diagnostic workflow models.
incidents/        Incident communication and escalation templates.
governance/       Safety rules, contribution standards, review guidance.
templates/        Reusable Markdown templates for new entries.
references/       Severity model, tags, search, cross-linking, roadmap.
scripts/          Optional local validation helpers.
```

## Quick Start

1. Read [references/architecture-overview.md](references/architecture-overview.md).
2. Read [knowledge/taxonomy.md](knowledge/taxonomy.md).
3. Use [templates/knowledge-entry.md](templates/knowledge-entry.md) for new entries.
4. Use [templates/failure-pattern.md](templates/failure-pattern.md), [templates/runbook.md](templates/runbook.md), and [templates/rca-report.md](templates/rca-report.md) for structured artifacts.

## Validation

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\validate-vault.ps1
```

## Governance

- [AGENTS.md](AGENTS.md)
- [CONTRIBUTING.md](CONTRIBUTING.md)
- [LICENSE](LICENSE)
- [governance/safety.md](governance/safety.md)
- [governance/contribution-standard.md](governance/contribution-standard.md)

## Future Direction

Grow coverage across enterprise troubleshooting domains while preserving documentation-first operation. Keep the vault source-of-truth in Markdown and add local retrieval capabilities only as explicit, lightweight, and source-cited future steps.

## Ecosystem References

- `../AI-OPS-Toolkit` for workstation diagnostics and operator reliability workflows
- `../OpsMate-Incident-Lab` for deterministic incident simulation and RCA generation practice
- `../GitHub/OpsSight-Observability-Lab` for broader observability maturity and incident rehearsal patterns
