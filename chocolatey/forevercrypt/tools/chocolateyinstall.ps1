$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ForeverCrypt-Setup-1.0.3.exe'
  checksum64     = '9ce6c76f897415de7e36ed8c89782f384a576f08cb97f52da5dc627b906181b2'
  checksumType64 = 'sha256'
  softwareName   = 'ForeverCrypt*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
