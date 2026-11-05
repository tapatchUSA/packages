$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Autrix-Setup-1.0.8.exe'
  checksum64     = '6904c86c56ed45c58e8a1749e416361536f12ff6413f1f4e5493ec687f793272'
  checksumType64 = 'sha256'
  softwareName   = 'Autrix*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
