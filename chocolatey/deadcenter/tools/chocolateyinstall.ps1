$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/DeadCenter-Setup-1.0.0.exe'
  checksum64     = '4dbfbcaf296d95af5d3e7e3d847bfd64d66ba7f28d73d7243e76e6ea8c8ebade'
  checksumType64 = 'sha256'
  softwareName   = 'DeadCenter*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
