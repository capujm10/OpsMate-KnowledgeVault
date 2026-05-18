# Metadata Conventions

Use YAML-style front matter at the top of substantial Markdown entries.

## Standard Fields

```yaml
---
id: stable-kebab-case-id
title: Human-readable title
status: draft
domain: general
failure_mode: unknown
severity: learning
environment: general
signals:
  - logs
tags:
  - example
related:
  - ../references/tagging-strategy.md
---
```

## Field Guidance

- `id`: stable identifier for future inventory and retrieval.
- `title`: clear operational title.
- `status`: lifecycle state.
- `domain`: primary operational domain.
- `failure_mode`: primary failure mode.
- `severity`: impact classification.
- `environment`: primary environment.
- `signals`: telemetry or evidence types.
- `tags`: search terms.
- `related`: relative links to relevant files.

Do not include confidential names, private URLs, customer IDs, or ticket IDs in metadata.

