[CmdletBinding()]
param(
    [string]$Root = ""
)

$ErrorActionPreference = "Stop"

if ([string]::IsNullOrWhiteSpace($Root)) {
    $scriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
    $Root = (Resolve-Path (Join-Path $scriptDirectory "..")).Path
}

$requiredDirectories = @(
    "knowledge",
    "knowledge/failure-patterns",
    "runbooks",
    "rca",
    "observability",
    "troubleshooting",
    "troubleshooting/decision-trees",
    "incidents",
    "governance",
    "templates",
    "references",
    "scripts"
)

$requiredFiles = @(
    "README.md",
    "knowledge/taxonomy.md",
    "templates/knowledge-entry.md",
    "templates/failure-pattern.md",
    "templates/rca-report.md",
    "templates/runbook.md",
    "templates/troubleshooting-workflow.md",
    "references/severity-classification.md",
    "references/tagging-strategy.md",
    "references/search-strategy.md",
    "references/rag-readiness.md",
    "governance/safety.md",
    "governance/contribution-standard.md"
)

$failures = New-Object System.Collections.Generic.List[string]

foreach ($directory in $requiredDirectories) {
    $path = Join-Path $Root $directory
    if (-not (Test-Path -LiteralPath $path -PathType Container)) {
        $failures.Add("Missing directory: $directory")
    }
}

foreach ($file in $requiredFiles) {
    $path = Join-Path $Root $file
    if (-not (Test-Path -LiteralPath $path -PathType Leaf)) {
        $failures.Add("Missing file: $file")
    }
}

$secretPatterns = @(
    ("BEGIN " + "RSA PRIVATE KEY"),
    ("BEGIN " + "OPENSSH PRIVATE KEY"),
    ("BEGIN " + "PRIVATE KEY"),
    "AKIA[0-9A-Z]{16}",
    "password\s*[:=]\s*['""][^'""]+['""]",
    "api[_-]?key\s*[:=]\s*['""][^'""]+['""]",
    "token\s*[:=]\s*['""][^'""]+['""]"
)

$markdownFiles = Get-ChildItem -LiteralPath $Root -Recurse -File -Include *.md |
    Where-Object { $_.FullName -notmatch "\\.git\\" }

foreach ($file in $markdownFiles) {
    $content = Get-Content -LiteralPath $file.FullName -Raw
    foreach ($pattern in $secretPatterns) {
        if ($content -match $pattern) {
            $relative = Resolve-Path -LiteralPath $file.FullName -Relative
            $failures.Add("Potential sensitive data pattern '$pattern' in $relative")
        }
    }
}

if ($failures.Count -gt 0) {
    Write-Host "Vault validation failed:" -ForegroundColor Red
    $failures | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
    exit 1
}

Write-Host "Vault validation passed." -ForegroundColor Green
Write-Host "Checked directories: $($requiredDirectories.Count)"
Write-Host "Checked required files: $($requiredFiles.Count)"
Write-Host "Checked Markdown files: $($markdownFiles.Count)"
