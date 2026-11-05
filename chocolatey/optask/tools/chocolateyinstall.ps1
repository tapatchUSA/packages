$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/OpTask-Setup-1.0.5.exe'
  checksum64     = 'f183be630c5f6be14b6687e836cb2c3523875b40c4e6c0d543ac71952cf18773'
  checksumType64 = 'sha256'
  softwareName   = 'OpTask*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
