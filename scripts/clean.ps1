Set-StrictMode -Version Latest
$PSDefaultParameterValues["Disabled"] = $False
$ErrorActionPreference = "Stop"
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

Remove-Item -Path "build" -Recurse -Force
