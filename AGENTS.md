# OpsMate KnowledgeVault Agent Guidance

## Project Purpose

OpsMate KnowledgeVault is a local-first operational intelligence repository for troubleshooting patterns, runbooks, RCA learning, observability interpretation, and support engineering knowledge.

## Preferred Working Style

- Keep changes documentation-first, lightweight, and reversible.
- Preserve taxonomy, metadata consistency, and cross-link quality.
- Prioritize operational clarity and searchability over volume.
- Keep governance and safety explicit.
- Treat entries as enterprise-facing operational artifacts.

## Engineering Philosophy

- Local-first and human-readable source of truth
- Stability-first repository evolution
- Operational realism with evidence-led reasoning
- Governance-aware automation boundaries
- Observability mindset across logs, metrics, traces, and events
- Human-supervised workflows with no autonomous remediation

## Non-Destructive Policy

- Do not introduce runtime services, daemons, or automation loops.
- Do not add vector databases, embedding pipelines, or hidden indexing systems.
- Do not store credentials, secrets, customer PII, or private production identifiers.
- Do not weaken existing safety language for convenience.

## Validation Before Commit

```powershell
git status --short
git diff --name-only
powershell -ExecutionPolicy Bypass -File .\scripts\validate-vault.ps1
```

## Artifact Hygiene

- Keep repository content focused on Markdown knowledge and lightweight validation scripts.
- Do not commit temporary evidence exports unless sanitized and intentionally curated.
- Ensure `.gitignore` continues to protect temporary and generated local data.
