$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ClickMeter-Setup-1.0.7.exe'
  checksum64     = '5274d3d38c3db26ff885fa8ac262f0a45294bbfdef3bd8d35d66fade13e46809'
  checksumType64 = 'sha256'
  softwareName   = 'ClickMeter*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
