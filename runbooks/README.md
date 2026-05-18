# Runbooks

Runbooks contain repeatable operational procedures.

They should be specific enough for an engineer to execute, but safe enough to avoid accidental production mutation.

Use [../templates/runbook.md](../templates/runbook.md) for new runbooks.

## Runbook Types

- Evidence collection
- Investigation workflow
- Validation procedure
- Recovery workflow
- Escalation handoff
- Post-remediation verification

## Runbook Safety

Every runbook should state:

- Scope
- Preconditions
- Required access
- Read-only versus mutating steps
- Rollback or stop criteria
- Validation evidence

