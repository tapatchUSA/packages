$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ClickMeter-Setup-1.0.9.exe'
  checksum64     = '0f1f5cfcbeda12111a89fbe5ded298e64003f2f33f3d30a6d7f89785630aff7a'
  checksumType64 = 'sha256'
  softwareName   = 'ClickMeter*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
