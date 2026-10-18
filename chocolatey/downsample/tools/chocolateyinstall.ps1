$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/DownSample-Setup-1.0.4.exe'
  checksum64     = '8b484b062e3ddaab2ea73cd4da2ae0952f46de229a12a668808ba4df07c4a652'
  checksumType64 = 'sha256'
  softwareName   = 'DownSample*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
