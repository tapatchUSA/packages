$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ClickMeter-Setup-1.0.6.exe'
  checksum64     = 'bb502d83f7a0b8d9f56d26af4f245cf88ba76432ea442ad47d043d52ded7e2b6'
  checksumType64 = 'sha256'
  softwareName   = 'ClickMeter*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
