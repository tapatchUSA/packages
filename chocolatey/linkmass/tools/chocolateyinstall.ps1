$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/LinkMass-Setup-1.0.5.exe'
  checksum64     = 'a803ae4d9cbc90771939550aef099aca526220e9c3306a9a23046215684b6fca'
  checksumType64 = 'sha256'
  softwareName   = 'LinkMass*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
