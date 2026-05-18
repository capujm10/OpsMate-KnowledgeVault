# OpsMate KnowledgeVault

OpsMate KnowledgeVault is a local-first operational intelligence and troubleshooting knowledge system.

It is designed to capture enterprise operational failure knowledge in a structure that is readable by humans today and suitable for lightweight retrieval or RAG later.

This repository is not a generic notes folder, chatbot memory store, vector database platform, or runtime automation system. It is a documentation-first operational knowledge base for support engineering, observability engineering, incident investigation, RCA practice, and AI-assisted operational reasoning.

## Core Purpose

OpsMate KnowledgeVault captures reusable operational knowledge from:

- Enterprise operational failures
- Observability and telemetry patterns
- Troubleshooting workflows
- RCA methodology
- Support escalation handling
- Operational runbooks
- Platform investigation notes
- Remediation and validation procedures
- AI-assisted troubleshooting heuristics

The goal is to make operational experience reusable, searchable, reviewable, and safe to share in a portfolio or interview setting.

## Design Principles

- Operational realism: entries should reflect how production incidents are investigated.
- Human-readable first: Markdown is the source of truth.
- Local-first: no cloud dependency, background daemon, or hidden sync requirement.
- Lightweight by default: no vector database, embedding pipeline, Kubernetes, or heavy API layer.
- RAG-ready later: metadata, headings, links, and taxonomy are structured for future retrieval.
- Git-friendly: every entry should be reviewable through diffs.
- Safety-first: no credentials, secrets, customer PII, private hostnames, or production-only identifiers.
- Enterprise support mindset: entries should help an L2, L3, SRE, platform engineer, or escalation engineer act clearly.
- Observability-first thinking: logs, metrics, traces, events, health checks, and symptoms should drive investigation.
- Stability-first evolution: prefer small additions and templates over broad restructures.

## Repository Map

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

## Start Here

1. Read [references/architecture-overview.md](references/architecture-overview.md) for the system model.
2. Read [knowledge/taxonomy.md](knowledge/taxonomy.md) to understand the vault taxonomy.
3. Check [knowledge/category-index.md](knowledge/category-index.md) for the operational coverage map.
4. Use [templates/knowledge-entry.md](templates/knowledge-entry.md) for operational knowledge entries.
5. Use [templates/failure-pattern.md](templates/failure-pattern.md) for recurring production failure modes.
6. Use [templates/runbook.md](templates/runbook.md) for repeatable investigation or recovery procedures.
7. Use [templates/rca-report.md](templates/rca-report.md) for incident learning reports.
8. Check [governance/safety.md](governance/safety.md) before adding real-world evidence.

## Operational Classification Model

Every substantial entry should include metadata with:

- `id`: stable kebab-case identifier
- `title`: concise operational title
- `status`: `draft`, `reviewed`, `validated`, or `deprecated`
- `domain`: primary technology or operational area
- `failure_mode`: the main failure type
- `severity`: `sev1`, `sev2`, `sev3`, `sev4`, or `learning`
- `environment`: `windows`, `linux`, `docker`, `wsl`, `kubernetes`, `saas`, `network`, `database`, `observability`, or `general`
- `signals`: logs, metrics, traces, alerts, events, symptoms, or user reports
- `tags`: search-oriented operational tags
- `related`: links to related entries, runbooks, RCA notes, or references

See [references/tagging-strategy.md](references/tagging-strategy.md) and [references/severity-classification.md](references/severity-classification.md).
See [references/operational-classification-model.md](references/operational-classification-model.md) for the full model.

## Naming Conventions

- Use lowercase kebab-case filenames.
- Prefer one operational concept per file.
- Start broad indexes with `README.md`.
- Use stable IDs that can survive file moves.
- Avoid dates in filenames unless the document is a specific incident or RCA.
- Keep titles operational and searchable, for example `ssl-certificate-chain-expired.md`.

## Search Strategy

The vault is optimized for simple local search before AI retrieval:

```powershell
rg -n "tls|certificate|handshake" knowledge runbooks observability troubleshooting rca references
rg -n "severity: sev2|failure_mode: timeout" knowledge runbooks rca
rg -n "tags:.*docker" knowledge runbooks troubleshooting
```

See [references/search-strategy.md](references/search-strategy.md).

## Safety Rules

Do not store:

- Production credentials, tokens, API keys, passwords, or private keys
- Customer PII or confidential customer names
- Internal-only URLs, hostnames, IPs, ticket IDs, or screenshots unless sanitized
- Raw production logs that contain sensitive identifiers
- Proprietary source code copied from customer or employer systems

Use sanitized evidence blocks and placeholders such as `<service-name>`, `<customer-id>`, `<host>`, and `<trace-id>`.

## Future RAG Compatibility

This repository intentionally does not implement embeddings, indexing, vector databases, agents, or APIs.

Future retrieval can be added later by reading Markdown files, front matter, headings, links, and tags. Until then, Git plus `rg` are the primary search tools.

See [references/rag-readiness.md](references/rag-readiness.md).

## Local Validation

Run the lightweight validator before committing structural changes:

```powershell
powershell -ExecutionPolicy Bypass -File .\scripts\validate-vault.ps1
```

The script checks required directories, required templates, and obvious sensitive-data patterns. It does not upload data or build an index.

## Ecosystem Fit

OpsMate KnowledgeVault is intended to complement:

- AI-OPS-Toolkit
- OpsMate-Incident-Lab
- OpsSight-Observability-Lab
- ResumeOps
- Portafolio

This repository stores operational knowledge. Runtime labs, dashboards, incident simulations, and portfolio sites should remain in their own repositories.
