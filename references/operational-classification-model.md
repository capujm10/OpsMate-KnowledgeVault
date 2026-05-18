# Operational Classification Model

The classification model makes entries consistent enough for local search, review, and future retrieval.

## Core Dimensions

| Dimension | Question Answered | Example |
| --- | --- | --- |
| Domain | What operational area owns the knowledge? | `ssl-tls`, `docker`, `sitescope` |
| Failure mode | What type of failure is this? | `timeout`, `auth-failure`, `resource-saturation` |
| Severity | How urgent or impactful is it? | `sev2`, `sev3`, `learning` |
| Environment | Where does it occur? | `windows`, `linux`, `kubernetes`, `saas` |
| Signals | What evidence reveals it? | `logs`, `metrics`, `traces`, `alerts` |
| Status | How mature is the entry? | `draft`, `reviewed`, `validated` |
| Tags | How should engineers find it? | `tls`, `certificate`, `api-integration` |

## Severity Versus Confidence

Severity describes impact. It does not describe how certain the root cause is.

Use entry text to capture confidence:

- Confirmed by direct evidence
- Strongly suspected
- Reproduced in lab
- Historical pattern
- Hypothesis only

## Status Versus Accuracy

`draft` does not mean wrong. It means not fully reviewed.

Use `validated` only when an entry has been confirmed through lab reproduction, repeated operational experience, or strong incident evidence.

## Classification Example

```yaml
---
id: api-integration-timeout
title: API integration timeout
status: draft
domain: api-integration
failure_mode: timeout
severity: sev2
environment: saas
signals:
  - request-timeout
  - elevated-latency
  - dependency-error
tags:
  - api
  - timeout
  - dependency
  - latency
related:
  - ../observability/investigation-patterns.md
---
```

## Review Standard

An entry is classifiable when an engineer can quickly answer:

- What is failing?
- Where is it failing?
- How severe is it?
- What evidence should be collected?
- What should be searched next?

