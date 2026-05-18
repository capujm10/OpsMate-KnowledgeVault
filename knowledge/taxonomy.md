# Operational Taxonomy

The taxonomy keeps the vault searchable and prevents it from becoming a random note collection.

## Top-Level Knowledge Types

| Type | Purpose | Directory |
| --- | --- | --- |
| Failure pattern | Recurring symptom and cause pattern | `knowledge/failure-patterns/` |
| Runbook | Repeatable operational procedure | `runbooks/` |
| RCA | Incident learning and root cause analysis | `rca/` |
| Decision tree | Branching diagnostic workflow | `troubleshooting/decision-trees/` |
| Telemetry guide | Logs, metrics, traces, alert interpretation | `observability/` |
| Communication template | Stakeholder, escalation, handoff messaging | `incidents/` |
| Governance reference | Safety, contribution, classification rules | `governance/`, `references/` |

## Operational Domains

Use these as `domain` values where possible:

- `ssl-tls`
- `api-integration`
- `sitescope`
- `apm`
- `docker`
- `wsl`
- `kubernetes`
- `linux`
- `windows`
- `monitoring`
- `authentication`
- `queues`
- `performance`
- `resource-exhaustion`
- `incident-communication`
- `rca-methodology`
- `escalation-handling`
- `operational-governance`
- `telemetry-interpretation`
- `ai-operations`

## Failure Modes

Use these as `failure_mode` values where possible:

- `timeout`
- `latency`
- `error-rate`
- `unavailable`
- `misconfiguration`
- `credential-expired`
- `certificate-expired`
- `certificate-chain`
- `dns-resolution`
- `network-path`
- `resource-saturation`
- `memory-leak`
- `disk-pressure`
- `queue-backlog`
- `auth-failure`
- `permission-denied`
- `dependency-degradation`
- `agent-failure`
- `collector-failure`
- `alert-noise`
- `false-positive`
- `unknown`

## Environment Values

- `windows`
- `linux`
- `docker`
- `wsl`
- `kubernetes`
- `saas`
- `network`
- `database`
- `observability`
- `general`

## Status Values

- `draft`: useful but not reviewed.
- `reviewed`: checked for clarity and safety.
- `validated`: tested against a lab, repeated case, or strong evidence.
- `deprecated`: kept for history but no longer recommended.

