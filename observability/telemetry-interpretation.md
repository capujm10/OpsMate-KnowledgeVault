# Telemetry Interpretation Guide

## Logs

Best for discrete events, error messages, state transitions, and context. Logs should be correlated with request IDs, trace IDs, service names, and timestamps.

Common risks:

- Log volume hides the first failure.
- Error logs repeat symptoms rather than root cause.
- Sensitive data can appear in raw logs.

## Metrics

Best for trends, thresholds, saturation, and alerting. Metrics should be interpreted with labels, aggregation windows, and known baseline behavior.

Common risks:

- Averages hide tail latency.
- Missing labels hide blast radius.
- Counter resets can look like traffic drops.

## Traces

Best for request path, dependency timing, fan-out, and latency attribution.

Common risks:

- Sampling may miss rare failures.
- Missing instrumentation can hide the failing boundary.
- Trace success does not prove all requests are healthy.

## Events

Best for deployments, restarts, scaling actions, configuration changes, and operator activity.

Common risks:

- Events may be retained briefly.
- Events show what changed, not always why it changed.

