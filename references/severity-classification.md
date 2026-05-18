# Severity Classification

Severity should describe operational impact, urgency, and communication needs.

| Severity | Meaning | Typical Response |
| --- | --- | --- |
| `sev1` | Critical business or production outage, data loss risk, or severe security exposure | Immediate incident response, executive or stakeholder visibility, continuous updates |
| `sev2` | Major degradation, customer-impacting failure, significant operational risk | Urgent triage, assigned owner, frequent updates, RCA expected |
| `sev3` | Limited impact, workaround available, non-critical service degradation | Normal escalation, runbook-driven investigation, prevention tracking |
| `sev4` | Minor issue, documentation gap, low-risk defect, local productivity blocker | Backlog or scheduled improvement |
| `learning` | Lab finding, reference note, interview artifact, or non-incident knowledge | No incident response required |

## Classification Notes

- Severity can change as impact evidence changes.
- Avoid assigning high severity only because a technology sounds important.
- Use actual user impact, operational risk, and recovery urgency.
- For portfolio examples, use `learning` unless describing a sanitized incident pattern.

