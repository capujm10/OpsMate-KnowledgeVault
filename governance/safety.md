# Operational Safety

## Do Not Store

- Credentials, tokens, passwords, private keys, or API keys
- Customer PII
- Confidential customer names
- Internal production hostnames, IPs, URLs, or ticket IDs
- Raw production logs with sensitive values
- Proprietary code from customer or employer systems
- Screenshots that expose private systems

## Sanitization Conventions

Use placeholders:

- `<service-name>`
- `<customer-id>`
- `<tenant-id>`
- `<host>`
- `<ip-address>`
- `<trace-id>`
- `<ticket-id>`
- `<timestamp>`

## Safe Evidence Standard

Evidence should be:

- Sufficient to explain the operational reasoning
- Sanitized enough to share
- Linked to a reusable failure pattern where possible
- Clear about whether it came from lab reproduction, production experience, or a hypothetical example

## Mutation Boundary

Knowledge entries can describe remediation, but should mark destructive or high-risk actions clearly. Examples:

- deleting data
- rotating secrets
- disabling validation
- resetting WSL distributions
- deleting Docker volumes
- restarting production services
- changing firewall rules
- changing authentication policy

High-risk actions should require review and explicit approval in the relevant operating environment.

