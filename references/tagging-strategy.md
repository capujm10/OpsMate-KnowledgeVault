# Operational Tagging Strategy

Tags make the vault searchable with simple local tools and future retrieval systems.

## Tag Rules

- Use lowercase kebab-case.
- Prefer operational terms over vague labels.
- Keep tags stable.
- Add technology, symptom, signal, and workflow tags.
- Avoid personal names, customer names, internal ticket IDs, and private system names.

## Recommended Tag Families

Technology:

- `windows`
- `linux`
- `docker`
- `wsl`
- `kubernetes`
- `sitescope`
- `apm`
- `prometheus`
- `loki`
- `grafana`

Failure:

- `timeout`
- `latency`
- `auth-failure`
- `certificate`
- `queue-backlog`
- `resource-exhaustion`
- `disk-pressure`
- `memory-leak`
- `dependency-failure`

Signal:

- `logs`
- `metrics`
- `traces`
- `alerts`
- `events`
- `health-check`

Workflow:

- `triage`
- `runbook`
- `rca`
- `escalation`
- `validation`
- `recovery`

AI operations:

- `ai-assisted-triage`
- `rag-ready`
- `retrieval`
- `heuristics`

