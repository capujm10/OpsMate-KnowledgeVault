# Observability Investigation Patterns

## RED Pattern

Use rate, errors, and duration to understand request-serving systems.

- Rate: traffic volume and change in demand.
- Errors: failed requests, exception classes, and dependency failures.
- Duration: latency percentiles and timeout thresholds.

## USE Pattern

Use utilization, saturation, and errors to understand resource pressure.

- Utilization: how busy a resource is.
- Saturation: queued or delayed work waiting for the resource.
- Errors: failed operations caused by resource limits or instability.

## Correlation Pattern

Correlate alerts, logs, metrics, traces, deploys, config changes, and dependency health by time window.

Useful questions:

- Did symptoms start after a deployment or configuration change?
- Are errors isolated to a route, tenant, region, node, dependency, or version?
- Do traces show where time is spent?
- Do logs explain the error class?
- Do metrics show saturation before errors?

## Anti-Pattern: Single-Signal Diagnosis

Avoid declaring root cause from one signal unless the signal is definitive. A CPU spike, error log, or timeout alert is usually a symptom until correlated with other evidence.

