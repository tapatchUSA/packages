$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/FlowDesk-Setup-1.0.4.exe'
  checksum64     = 'db3dd5bad488f476768a30a214e8dc9d9561dcd3f0d82e929082e88b989f640e'
  checksumType64 = 'sha256'
  softwareName   = 'FlowDesk*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
