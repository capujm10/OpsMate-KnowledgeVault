---
id: docker-wsl-instability
title: Docker and WSL instability on Windows
status: draft
domain: docker
failure_mode: unavailable
severity: sev3
environment: windows
signals:
  - docker-daemon-unavailable
  - wsl-distro-error
  - backend-startup-failure
tags:
  - docker
  - wsl
  - windows
  - local-runtime
  - diagnostics
related:
  - ../../runbooks/windows/collect-basic-evidence.md
  - ../../troubleshooting/decision-trees/local-runtime-unavailable.md
---

# Docker and WSL Instability on Windows

## Pattern Summary

Docker Desktop or WSL-based local runtimes fail to start, respond slowly, or lose the expected backend endpoint. This impacts local labs, observability stacks, and developer workflows.

## Common Symptoms

- Docker CLI cannot connect to the daemon.
- Expected WSL distributions are missing, stopped, or unhealthy.
- Docker Desktop UI appears started while backend APIs are unavailable.
- Local containers, Compose stacks, or Kubernetes contexts fail unexpectedly.

## Fast Evidence

- `docker version`
- `docker context ls`
- `wsl --list --verbose`
- Docker Desktop diagnostics or logs when available.
- Recent Windows, WSL, Docker Desktop, VPN, or security-tool changes.

## Safe Remediation

- Collect evidence before reset, reinstall, or distro deletion.
- Restart Docker Desktop and WSL through documented steps.
- Avoid deleting WSL distributions unless there is a reviewed backup and explicit approval.
- Preserve logs for RCA if the issue blocks a portfolio or lab environment.

