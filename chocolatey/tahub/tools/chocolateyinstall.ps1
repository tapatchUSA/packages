$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/TAHub-Setup-1.0.4.exe'
  checksum64     = 'ffbaf9364965b8333a69fae11d9f12e9cbc034a1ffe5ef2576018f4206bf0c1c'
  checksumType64 = 'sha256'
  softwareName   = 'TA Hub*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
