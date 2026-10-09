$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/TAHub-Setup-1.0.0.exe'
  checksum64     = 'e79301a2df2775ea90b6f80eea635d07b5d75212546e71047e13f35bcba0c945'
  checksumType64 = 'sha256'
  softwareName   = 'TA Hub*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
