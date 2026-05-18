---
id: windows-basic-evidence
title: Windows basic operational evidence collection
status: draft
domain: windows
failure_mode: unknown
severity: learning
environment: windows
signals:
  - event-log
  - service-state
  - process-state
tags:
  - windows
  - diagnostics
  - evidence
  - support
related:
  - ../../governance/safety.md
---

# Windows Basic Operational Evidence Collection

## Purpose

Collect non-destructive Windows evidence before changing services, drivers, WSL distributions, Docker state, or system configuration.

## Safety

These commands are read-only. Do not include customer data, secrets, or private hostnames when saving output.

## Commands

```powershell
$Output = "$env:TEMP\opsmate-evidence"
New-Item -ItemType Directory -Force -Path $Output | Out-Null

Get-ComputerInfo | Out-File "$Output\computer-info.txt"
Get-Service | Sort-Object Status, Name | Out-File "$Output\services.txt"
Get-Process | Sort-Object ProcessName | Select-Object ProcessName, Id, CPU, WorkingSet | Out-File "$Output\processes.txt"
Get-EventLog -LogName System -Newest 200 | Out-File "$Output\system-events.txt"
Get-EventLog -LogName Application -Newest 200 | Out-File "$Output\application-events.txt"
```

## Validation

- Evidence folder exists.
- Files contain command output.
- Sensitive values are reviewed before committing or sharing.

## Stop Criteria

Stop and escalate if the next step requires deleting files, resetting WSL distributions, changing registry keys, uninstalling software, or modifying production access.

