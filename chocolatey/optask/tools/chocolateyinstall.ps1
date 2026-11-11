$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/OpTask-Setup-1.0.7.exe'
  checksum64     = '8e75430da2c43b146e392c92e06953e5b266e40441f05a8995e28c699a27a671'
  checksumType64 = 'sha256'
  softwareName   = 'OpTask*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
