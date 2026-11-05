$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/Callback-Setup-1.0.1.exe'
  checksum64     = '09a6d059b4663a5d2ac7aa4349d87b0e10732c4bf105f9c7d77517fd16c5dc6c'
  checksumType64 = 'sha256'
  softwareName   = 'Callback*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
