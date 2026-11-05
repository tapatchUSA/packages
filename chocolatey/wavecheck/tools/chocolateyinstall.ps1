$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/WaveCheck-Setup-1.0.5.exe'
  checksum64     = 'aa50e1d19cbe3ab6834bd3c83700f3e7fd6321515ce3a0b39485d858aadfae6d'
  checksumType64 = 'sha256'
  softwareName   = 'WaveCheck*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
