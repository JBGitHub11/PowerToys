# Collects PowerToys logs from the user's local AppData directory
param(
    [string]$Output = "PowerToysLogs.zip"
)

$logPath = Join-Path $env:LOCALAPPDATA 'Microsoft' 'PowerToys'
if (Test-Path $logPath) {
    Compress-Archive -Path (Join-Path $logPath '*') -DestinationPath $Output -Force
    Write-Host "Logs archived to $Output"
} else {
    Write-Warning "PowerToys log directory not found"
}
