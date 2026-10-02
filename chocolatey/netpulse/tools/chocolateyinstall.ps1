$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/NetPulse-Setup-1.0.3.exe'
  checksum64     = '645818cb2901415e1d54014000b56e145b0aaef34c65871bd26d52841377300d'
  checksumType64 = 'sha256'
  softwareName   = 'NetPulse*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
