$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/WaveCheck-Setup-1.0.4.exe'
  checksum64     = '1552c83989d298bf4d5ad19b2ad449d80d77675d6083a63ca7ad98b6588ea21c'
  checksumType64 = 'sha256'
  softwareName   = 'WaveCheck*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
