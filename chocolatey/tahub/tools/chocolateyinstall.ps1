$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/TAHub-Setup-1.0.3.exe'
  checksum64     = 'ba0a2ba2b2992db3dc5e6c4215c05b1d749a294bb417ed385577e61dcc0f48fc'
  checksumType64 = 'sha256'
  softwareName   = 'TA Hub*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
