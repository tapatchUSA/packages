$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ForeverCrypt-Setup-1.0.4.exe'
  checksum64     = '650cd3f99f4ed095c35ec3a72b1cc862953bf535907683e37f79042834079c42'
  checksumType64 = 'sha256'
  softwareName   = 'ForeverCrypt*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
