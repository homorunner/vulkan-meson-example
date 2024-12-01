Set-StrictMode -Version Latest
$PSDefaultParameterValues["Disabled"] = $False
$ErrorActionPreference = "Stop"
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

meson wrap update -j8

