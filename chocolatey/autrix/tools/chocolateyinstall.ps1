$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Autrix-Setup-1.0.9.exe'
  checksum64     = '547300db9e8f5a2d7e6248a871f92002f5f8baa0440f14abf24b4aa48c562a2f'
  checksumType64 = 'sha256'
  softwareName   = 'Autrix*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
