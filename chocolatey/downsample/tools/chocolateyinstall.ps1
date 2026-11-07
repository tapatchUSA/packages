$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/DownSample-Setup-1.0.6.exe'
  checksum64     = 'd30e633dfb1c43f886d4d055ca30de28fcd2ad8b3233f9d53678d89e9674bebd'
  checksumType64 = 'sha256'
  softwareName   = 'DownSample*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
