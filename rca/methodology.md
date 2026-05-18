# RCA Methodology

## Purpose

RCA documents convert an incident or repeated failure into reusable operational learning.

## Minimum RCA Questions

- What happened?
- Who or what was impacted?
- When did it start, get detected, get mitigated, and get resolved?
- What signals detected it?
- What signals were missing or misleading?
- What was the proximate cause?
- What was the systemic cause?
- What actions prevented recurrence?
- What should be added to runbooks, alerts, dashboards, or knowledge entries?

## Cause Language

Prefer precise operational language:

- "Certificate chain was incomplete on the load balancer."
- "Retry policy amplified dependency latency."
- "Alert threshold detected symptoms but did not identify the failing dependency."

Avoid vague language:

- "The system broke."
- "Human error."
- "Network issue."
- "Monitoring failed."

