$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Autrix-Setup-1.0.5.exe'
  checksum64     = '9b801adc398a3c1e0ae818b1bf771b11325616d9216f048d63f2a582ab5c37fe'
  checksumType64 = 'sha256'
  softwareName   = 'Autrix*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
