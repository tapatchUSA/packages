$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/LinkMass-Setup-1.0.7.exe'
  checksum64     = '5461251664ae10b240c530f6bf5a08dc6fa892435c98acebad3f6d8f31b9760c'
  checksumType64 = 'sha256'
  softwareName   = 'LinkMass*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
