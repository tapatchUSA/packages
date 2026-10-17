$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/LinkMass-Setup-1.0.4.exe'
  checksum64     = '5deeacaf4e47552093b6ea2b48f2f8a9d8269972d4bec19f1feb94f58e5ff2fa'
  checksumType64 = 'sha256'
  softwareName   = 'LinkMass*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
