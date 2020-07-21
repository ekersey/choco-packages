$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl4jz3rbrsfum.cloudfront.net/software/ppp_windows_2_2_1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'CyberPower PowerPanel Personal*'

  checksum      = '33890CCA7A32B335CFAEA2D819C69CCC'
  checksumType  = 'md5'

  silentArgs   = '-q'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
