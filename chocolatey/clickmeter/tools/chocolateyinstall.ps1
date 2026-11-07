$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://tapatch.com/downloads/ClickMeter-Setup-1.0.8.exe'
  checksum64     = '2f835278ac490645c2a91ec2ed200abb895f1332c60bf07cf5a7d5b0ed3f59b6'
  checksumType64 = 'sha256'
  softwareName   = 'ClickMeter*'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
