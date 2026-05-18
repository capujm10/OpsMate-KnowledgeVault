# Contributing Guide

## Scope

This repository is a documentation-first operational knowledge vault. Contributions should improve structure, clarity, safety, and reusability of troubleshooting and observability knowledge without introducing runtime systems.

## Core Contribution Principles

- Keep changes small, reversible, and reviewable.
- Follow taxonomy and metadata conventions.
- Preserve local-first and stability-first philosophy.
- Keep operational language concise and enterprise-relevant.
- Cross-link related entries to strengthen retrieval quality.

## Required Terminology Alignment

Use these terms consistently:

- local-first
- stability-first
- operational realism
- governance-aware automation
- observability mindset
- human-supervised workflows

## Validation Expectations

Before sharing a patch:

```powershell
git status --short
git diff --name-only
powershell -ExecutionPolicy Bypass -File .\scripts\validate-vault.ps1
```

## Content Safety Guardrails

- Do not store credentials, secrets, private keys, customer PII, or private production identifiers.
- Sanitize evidence and use placeholders where needed.
- Mark high-risk or destructive remediation actions clearly.
- Keep all future RAG or indexing work explicit and opt-in.

## Commit Guidance

Prefer concise conventional-style commit messages for documentation and governance tasks:

- `docs(readme): align ecosystem governance language`
- `docs(governance): add contribution and safety standards`
- `chore(repo): add license and gitattributes policy`
