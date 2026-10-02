$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ClickMeter-Setup-1.0.5.exe'
  checksum64     = 'ab252a3db9a766dbf55840482513abc7fc9275fed87b1d0e50d506e08f24e547'
  checksumType64 = 'sha256'
  softwareName   = 'ClickMeter*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
