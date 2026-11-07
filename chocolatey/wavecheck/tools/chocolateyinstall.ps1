$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/WaveCheck-Setup-1.0.7.exe'
  checksum64     = '13c9d8f86f5769eeb3a50d541d96db3acc1d025ffe2f6613558fa9b2f8f65703'
  checksumType64 = 'sha256'
  softwareName   = 'WaveCheck*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
