Set-StrictMode -Version Latest
$PSDefaultParameterValues["Disabled"] = $False
$ErrorActionPreference = "Stop"
$PSDefaultParameterValues['*:Encoding'] = 'utf8'

Write-Host "Compile shaders..."

Push-Location ".\shaders"
glslc shader.vert -o vert.spv
glslc shader.frag -o frag.spv
Pop-Location

Write-Host "Compile shaders done."

Write-Host "Build project..."

meson setup build
meson compile -C build

Write-Host "Build project done."
