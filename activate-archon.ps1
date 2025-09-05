# Activate Archon Virtual Environment
# This script completely clears any existing virtual environment and activates only Archon's venv

Write-Host "Deactivating any existing virtual environment..." -ForegroundColor Yellow

# Clear all virtual environment variables
$env:VIRTUAL_ENV = $null
$env:PYTHONHOME = $null

# Remove any virtual environment paths from PATH
if ($env:PATH -match "\.venv\\Scripts") {
    $env:PATH = ($env:PATH -split ';' | Where-Object { $_ -notmatch "\.venv\\Scripts" }) -join ';'
}
if ($env:PATH -match "Lumanela") {
    $env:PATH = ($env:PATH -split ';' | Where-Object { $_ -notmatch "Lumanela" }) -join ';'
}

Write-Host "Activating Archon virtual environment..." -ForegroundColor Green

# Navigate to python directory and activate the correct virtual environment
Set-Location python
& ".\\.venv\\Scripts\\Activate.ps1"

Write-Host "Archon virtual environment activated!" -ForegroundColor Green
Write-Host "Current directory: $(Get-Location)" -ForegroundColor Cyan
Write-Host "Python location: $(Get-Command python | Select-Object -ExpandProperty Source)" -ForegroundColor Cyan
