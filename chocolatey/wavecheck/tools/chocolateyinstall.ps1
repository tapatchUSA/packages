$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/WaveCheck-Setup-1.0.6.exe'
  checksum64     = 'd1122e62f069da1b6828474053ae17f565b58a16e07a16e4fb208ed05fc8c8be'
  checksumType64 = 'sha256'
  softwareName   = 'WaveCheck*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
