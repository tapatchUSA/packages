$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/OpTask-Setup-1.0.3.exe'
  checksum64     = '5a4dea60a6607af9ab91aa748c0437c4b0b4981018dfea352992779d358fd4de'
  checksumType64 = 'sha256'
  softwareName   = 'OpTask*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
