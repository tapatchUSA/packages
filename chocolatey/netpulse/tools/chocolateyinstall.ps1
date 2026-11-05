$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/NetPulse-Setup-1.0.5.exe'
  checksum64     = '03517ff7f75c26ce8d64af4b65a0516ada25ceb0d14d55c8af21a915a62d3e75'
  checksumType64 = 'sha256'
  softwareName   = 'NetPulse*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
