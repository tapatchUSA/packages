$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/TAHub-Setup-1.0.5.exe'
  checksum64     = 'eecfc1e94a64642a6a7f106cb77e4b3cdd00841554841c448fb37a3eae003077'
  checksumType64 = 'sha256'
  softwareName   = 'TA Hub*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
