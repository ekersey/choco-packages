$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl4jz3rbrsfum.cloudfront.net/software/ppp_windows_2_2_0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'CyberPower PowerPanel Personal*'

  checksum      = 'B33632B6DFA648A32C0625BBB69A5AB2'
  checksumType  = 'md5'

  silentArgs   = '-q'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
