$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Callback-Setup-1.0.2.exe'
  checksum64     = 'e11d61fe1b673231785d078919315be333afd838916192d328a2358588bd1db8'
  checksumType64 = 'sha256'
  softwareName   = 'Callback*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
