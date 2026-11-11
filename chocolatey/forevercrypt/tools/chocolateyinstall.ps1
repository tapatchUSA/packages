$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ForeverCrypt-Setup-1.0.6.exe'
  checksum64     = 'dde81c2635b2f67a65f0b0354fce2580d144b75e9f784e27751fc2f23135dc75'
  checksumType64 = 'sha256'
  softwareName   = 'ForeverCrypt*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
