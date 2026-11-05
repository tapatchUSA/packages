$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/FlowDesk-Setup-1.0.5.exe'
  checksum64     = '5fffbdf8162e513bbad89ed293fcf420989e8f6f4144dc635014e641dce5740f'
  checksumType64 = 'sha256'
  softwareName   = 'FlowDesk*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
