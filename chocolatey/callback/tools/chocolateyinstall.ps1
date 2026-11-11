$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Callback-Setup-1.0.3.exe'
  checksum64     = 'cd7e1639777adce12fc67241f1e70b60ed5f2f5338e0c1d79f7f9fa208dadaf5'
  checksumType64 = 'sha256'
  softwareName   = 'Callback*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
