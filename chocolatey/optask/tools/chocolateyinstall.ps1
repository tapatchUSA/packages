$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/OpTask-Setup-1.0.6.exe'
  checksum64     = 'f73e315c93e012c6c615c22edd50df4831739a06c6ac96965f72ab92a518d0c1'
  checksumType64 = 'sha256'
  softwareName   = 'OpTask*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
