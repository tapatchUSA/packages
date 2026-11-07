$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/LinkMass-Setup-1.0.6.exe'
  checksum64     = '023bd4755c5ec0296074fb3e5ab6adf5ef7f6ba9ea9edae028ce5c230d0f00ff'
  checksumType64 = 'sha256'
  softwareName   = 'LinkMass*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
