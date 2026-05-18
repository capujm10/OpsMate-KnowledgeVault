# Cross-Linking Strategy

Cross-links convert isolated notes into an operational knowledge system.

## Link Types

- Failure pattern to runbook
- Runbook to telemetry guide
- RCA to prevention action
- Decision tree to failure pattern
- Communication template to severity model
- Governance rule to contribution checklist

## Link Guidelines

- Use relative Markdown links.
- Link the most useful operational next step.
- Keep related links near the top in front matter and near the bottom in prose.
- Prefer stable documents over temporary drafts.
- Do not link to private ticketing systems unless the link is sanitized or omitted.

## Example

A TLS failure pattern can link to:

- A TLS certificate validation runbook
- A severity classification reference
- An RCA about certificate rotation
- A telemetry guide explaining handshake errors

