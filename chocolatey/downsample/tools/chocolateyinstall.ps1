$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/DownSample-Setup-1.0.7.exe'
  checksum64     = '87281f6fc9f9951f0b1e8662c464a4b5ec75e23cadb7322ecb5186ac9e35977d'
  checksumType64 = 'sha256'
  softwareName   = 'DownSample*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
