$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ForeverCrypt-Setup-1.0.5.exe'
  checksum64     = '887f4c6df6d308270ac69fb9d7f97732586898662082b07be12ef8724ca82db6'
  checksumType64 = 'sha256'
  softwareName   = 'ForeverCrypt*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
