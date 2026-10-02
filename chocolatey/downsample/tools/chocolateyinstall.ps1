$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/DownSample-Setup-1.0.2.exe'
  checksum64     = 'ba0d3fc38c564ae9ed2074a2cba16bd910b012edf9a3ddde53cd13de067c8eeb'
  checksumType64 = 'sha256'
  softwareName   = 'DownSample*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
