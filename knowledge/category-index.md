# Operational Category Index

This index maps the target knowledge areas to the vault structure.

| Category | Primary Location | Typical Artifacts |
| --- | --- | --- |
| SSL/TLS failures | `knowledge/failure-patterns/`, `runbooks/network/` | Failure pattern, certificate validation runbook, RCA |
| API integration failures | `knowledge/failure-patterns/`, `observability/` | Timeout pattern, dependency trace guide, escalation note |
| SiteScope troubleshooting | `knowledge/`, `runbooks/` | Monitor failure pattern, collection workflow, support handoff |
| APM degradation patterns | `observability/`, `knowledge/failure-patterns/` | Trace interpretation, latency pattern, instrumentation note |
| Docker instability | `knowledge/failure-patterns/`, `troubleshooting/decision-trees/` | Local runtime decision tree, evidence runbook |
| WSL issues | `knowledge/failure-patterns/`, `runbooks/windows/` | Windows evidence runbook, WSL failure notes |
| Kubernetes operational notes | `knowledge/`, `runbooks/`, `troubleshooting/` | Pod state pattern, event triage, safe cleanup guidance |
| Linux operational troubleshooting | `runbooks/`, `knowledge/` | Resource pressure, logs, service state |
| Windows operational troubleshooting | `runbooks/windows/`, `knowledge/` | Event log, services, local runtime diagnostics |
| Monitoring failures | `observability/`, `knowledge/failure-patterns/` | Alert noise, missing data, collector failure |
| Authentication failures | `knowledge/failure-patterns/`, `runbooks/` | Token expiry, permission denial, identity-provider latency |
| Queue backlog patterns | `knowledge/failure-patterns/`, `observability/` | Backlog signal guide, saturation runbook |
| Performance degradation | `observability/`, `troubleshooting/` | RED and USE investigation, latency decision tree |
| Resource exhaustion | `knowledge/failure-patterns/`, `runbooks/` | CPU, memory, disk, connection pool, thread pool |
| Incident communication | `incidents/` | Initial update, escalation handoff, recovery update |
| RCA methodology | `rca/`, `templates/` | RCA method, report template, prevention actions |
| Escalation handling | `incidents/`, `governance/` | Handoff template, severity model, decision criteria |
| Operational governance | `governance/`, `references/` | Safety rules, contribution standard, anti-patterns |
| Telemetry interpretation | `observability/` | Logs, metrics, traces, alerts, events |
| AI operational workflows | `references/`, future entries | AI-assisted triage heuristics, source-cited retrieval rules |

## Coverage Rule

Do not create empty folders for every category at once. Add concrete entries when there is useful operational knowledge to capture.

This keeps the vault navigable and avoids placeholder sprawl.

