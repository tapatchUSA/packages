$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/OpTask-Setup-1.0.4.exe'
  checksum64     = 'bf67527b4e8a8564e24e07928210c1e9379766bf1688a0b495bc935258bf7e79'
  checksumType64 = 'sha256'
  softwareName   = 'OpTask*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
