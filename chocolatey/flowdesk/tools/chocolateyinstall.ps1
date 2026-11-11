$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/FlowDesk-Setup-1.0.7.exe'
  checksum64     = '5cc2118ce29e87f0b5d5de0682b6c25e247eaee26dc241ecd890e6a350f31163'
  checksumType64 = 'sha256'
  softwareName   = 'FlowDesk*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
