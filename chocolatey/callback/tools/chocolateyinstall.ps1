$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Callback-Setup-1.0.0.exe'
  checksum64     = '3a0c36c010b4ebbed6ae107393d126346dd9808d8856a2549b225d234eea6d3a'
  checksumType64 = 'sha256'
  softwareName   = 'Callback*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
