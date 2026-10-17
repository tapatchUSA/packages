$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/TAHub-Setup-1.0.1.exe'
  checksum64     = '34a8e9d807a1238a7b6a90ff5c9f65cc4f1ff8199b9d41a7b1a4fd4a5c78a979'
  checksumType64 = 'sha256'
  softwareName   = 'TA Hub*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
