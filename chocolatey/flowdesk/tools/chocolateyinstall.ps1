$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/FlowDesk-Setup-1.0.2.exe'
  checksum64     = '8a6c6ce4c3ae5798f9e5b59186103498d5664c08be210db9fd7f57b8ed388113'
  checksumType64 = 'sha256'
  softwareName   = 'FlowDesk*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
