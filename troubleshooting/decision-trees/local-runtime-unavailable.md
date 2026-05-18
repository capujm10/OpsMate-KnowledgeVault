# Decision Tree: Local Runtime Unavailable

## Entry Symptom

A local development or lab runtime is unavailable. Examples include Docker Desktop, WSL, local API services, or local observability stacks.

## Decision Tree

1. Is the runtime process or service started?
   - No: start through the documented UI or service manager, then recheck.
   - Yes: continue.
2. Does the CLI reach the backend?
   - No: collect CLI error, backend logs, and service state.
   - Yes: continue.
3. Is the expected context selected?
   - No: switch only to a known local context.
   - Yes: continue.
4. Did Windows, WSL, Docker, VPN, security tooling, or filesystem policy change recently?
   - Yes: capture change evidence and correlate timing.
   - No: continue.
5. Is the failure isolated to one repo or all local runtimes?
   - One repo: inspect repo startup scripts, ports, env files, and dependencies.
   - All runtimes: inspect host-level services, WSL, Docker backend, and networking.

## Stop Criteria

Stop before destructive operations such as deleting WSL distributions, resetting Docker Desktop, removing volumes, or deleting local state unless the action is explicitly approved and backups are understood.

