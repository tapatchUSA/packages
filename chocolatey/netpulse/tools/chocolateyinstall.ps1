$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/NetPulse-Setup-1.0.4.exe'
  checksum64     = 'be44cc5ddc7186a8f56c40327fb86ceb6e202b377577c4b731634c728e439ca8'
  checksumType64 = 'sha256'
  softwareName   = 'NetPulse*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
