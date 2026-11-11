$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/NetPulse-Setup-1.0.7.exe'
  checksum64     = '131d84815b36f71668e3596046c977993f146c9712707b4b68a2d8941386c32c'
  checksumType64 = 'sha256'
  softwareName   = 'NetPulse*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
