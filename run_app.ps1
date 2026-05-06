# PowerShell launcher for the project
# Run this from PowerShell with: .\run_app.ps1

Set-StrictMode -Version Latest
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $scriptDir

$venvPython = Join-Path $scriptDir 'venv\Scripts\python.exe'
if (-not (Test-Path $venvPython)) {
    Write-Error "Virtual environment Python not found at $venvPython"
    exit 1
}

$projectDir = Join-Path $scriptDir 'Customer-Survival-Analysis-and-Churn-Prediction'
if (-not (Test-Path $projectDir)) {
    Write-Error "Project directory not found at $projectDir"
    exit 1
}

Set-Location $projectDir
& $venvPython 'app_fixed.py'
