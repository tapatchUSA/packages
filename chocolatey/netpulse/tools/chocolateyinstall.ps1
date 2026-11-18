$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/NetPulse-Setup-1.0.8.exe'
  checksum64     = '373771d758041ec2c55346ff75171fcab6c73a32c29b646b1922b3aa0b94d2dc'
  checksumType64 = 'sha256'
  softwareName   = 'NetPulse*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
