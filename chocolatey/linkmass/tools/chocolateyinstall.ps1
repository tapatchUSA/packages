$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/LinkMass-Setup-1.0.3.exe'
  checksum64     = 'b072a6049b5a7968609924cdf35f05ae3931102067cddc8eea6e4ef8aa6dbbbd'
  checksumType64 = 'sha256'
  softwareName   = 'LinkMass*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
