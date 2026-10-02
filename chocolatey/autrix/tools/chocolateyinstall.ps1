$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Autrix-Setup-1.0.6.exe'
  checksum64     = '39c46005a46741c4efcc6ceeb289c381702fd98e999bc73b9f8d2fb819389721'
  checksumType64 = 'sha256'
  softwareName   = 'Autrix*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
