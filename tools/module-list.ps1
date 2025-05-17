# Lists all PowerToys modules by reading the src/modules directory
param()

$modulesPath = Join-Path $PSScriptRoot '..' 'src' 'modules'
Get-ChildItem -Path $modulesPath -Directory | ForEach-Object {
    $_.Name
}
