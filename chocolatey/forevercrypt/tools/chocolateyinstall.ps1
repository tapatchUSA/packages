$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ForeverCrypt-Setup-1.0.2.exe'
  checksum64     = 'befb4a81118a9c427a1f02fc95a767db16e1f5b0ce97b683b10c148e7d62ded9'
  checksumType64 = 'sha256'
  softwareName   = 'ForeverCrypt*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
