# Architecture Overview

OpsMate KnowledgeVault is a local, Markdown-first operational knowledge system.

It separates durable operational knowledge from runtime tools, incident labs, dashboards, and future AI retrieval systems.

## System Boundaries

In scope:

- Troubleshooting records
- Failure pattern catalog
- RCA methodology
- Runbooks
- Decision trees
- Telemetry interpretation guides
- Incident communication templates
- Operational governance and contribution standards
- Future retrieval-ready metadata

Out of scope:

- Vector databases
- Embedding pipelines
- Chatbot frontends
- Autonomous indexing
- Background daemons
- Cloud sync
- Runtime remediation automation
- Kubernetes or distributed infrastructure

## Conceptual Model

```text
Operational experience
        |
        v
Sanitized evidence and reasoning
        |
        v
Structured Markdown entry
        |
        +--> Failure pattern
        +--> Runbook
        +--> RCA
        +--> Decision tree
        +--> Telemetry guide
        |
        v
Searchable local knowledge
        |
        v
Future optional retrieval layer
```

## Repository Layers

| Layer | Directories | Purpose |
| --- | --- | --- |
| Knowledge | `knowledge/` | Reusable troubleshooting and failure-pattern knowledge |
| Action | `runbooks/`, `troubleshooting/` | Procedures and decision paths |
| Learning | `rca/`, `incidents/` | Incident analysis and communication patterns |
| Signal interpretation | `observability/` | Logs, metrics, traces, alerts, and event reasoning |
| Control plane | `governance/`, `references/`, `templates/` | Standards, safety, taxonomy, classification, and templates |
| Optional tooling | `scripts/` | Manual local validation only |

## Data Flow

1. Capture operational experience in sanitized form.
2. Classify it using domain, failure mode, severity, environment, signals, and tags.
3. Store it as a Markdown entry with stable headings.
4. Link it to related runbooks, RCA notes, telemetry guides, and references.
5. Validate structure and sensitive-data guardrails locally.
6. Reuse it through Git review, `rg`, or future source-cited retrieval.

## Why This Architecture

The vault prioritizes operational clarity over AI complexity. A future RAG system can read the Markdown, but the repository remains useful without it.

This keeps idle resource usage near zero, avoids cloud dependency, preserves Git review, and supports portfolio-friendly operational knowledge growth.

