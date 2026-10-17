$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/DownSample-Setup-1.0.3.exe'
  checksum64     = '6db8b47042761b2b195e3d9f177d03a40a196d1cdc9a10a75645110cde3525b6'
  checksumType64 = 'sha256'
  softwareName   = 'DownSample*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
