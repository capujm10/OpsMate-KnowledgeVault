# Search Strategy

This vault should remain useful with basic local search.

## Primary Tool

Use ripgrep:

```powershell
rg -n "certificate|tls|handshake" .
rg -n "failure_mode: timeout" .
rg -n "severity: sev2" .
rg -n "tags:.*docker" .
```

## Search Dimensions

- Technology: `docker`, `wsl`, `kubernetes`, `sitescope`
- Symptom: `timeout`, `latency`, `auth-failure`, `queue-backlog`
- Signal: `logs`, `metrics`, `traces`, `alerts`, `events`
- Workflow: `runbook`, `rca`, `triage`, `escalation`
- Environment: `windows`, `linux`, `saas`, `network`

## Future Retrieval Considerations

Future indexing should use:

- File path
- Front matter
- H1 and H2 headings
- Tags
- Related links
- Short summary sections

Do not add hidden indexes or generated artifacts until there is a clear retrieval implementation.

