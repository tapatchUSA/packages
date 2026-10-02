# Packs every TAPATCH Chocolatey package in this folder and pushes it to the Chocolatey Community Repository.
# One-time setup first (your key is on https://community.chocolatey.org/account):
#   choco apikey --key <YOUR API KEY> --source https://push.chocolatey.org/
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$out = Join-Path $here 'out'
New-Item -ItemType Directory -Force $out | Out-Null

Get-ChildItem $here -Directory | Where-Object Name -ne 'out' | ForEach-Object {
  choco pack (Join-Path $_.FullName "$($_.Name).nuspec") --outputdirectory $out
  if ($LASTEXITCODE -ne 0) { throw "choco pack failed for $($_.Name)" }
}

Get-ChildItem $out -Filter *.nupkg | ForEach-Object {
  choco push $_.FullName --source https://push.chocolatey.org/
  if ($LASTEXITCODE -ne 0) { Write-Warning "push failed for $($_.Name)" }
}
