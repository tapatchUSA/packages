$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/FlowDesk-Setup-1.0.6.exe'
  checksum64     = 'd404ca51ceb735d652f3ee57417e1f1f0bc21ce133b3c24c6509a86054c88b3c'
  checksumType64 = 'sha256'
  softwareName   = 'FlowDesk*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
