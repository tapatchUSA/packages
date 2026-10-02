$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/WaveCheck-Setup-1.0.3.exe'
  checksum64     = '66645d64c5d16cf30958ee5b8600eb72a08ef4a6bf4182376f4b45b9fc005c54'
  checksumType64 = 'sha256'
  softwareName   = 'WaveCheck*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
