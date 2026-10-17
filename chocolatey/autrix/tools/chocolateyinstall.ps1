$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Autrix-Setup-1.0.7.exe'
  checksum64     = '3314068c41625f76339e83860acfcd7b1da2e7ae49d5f65a6b15706729fb40f8'
  checksumType64 = 'sha256'
  softwareName   = 'Autrix*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
