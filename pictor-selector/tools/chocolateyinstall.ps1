$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://pictoselector.sclera.be/setup_complete.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'picto-select*'
  checksum      = 'F15B1786697F4B8CCDEC41C80BA238C8CB78A855E0A27BCB75DEFE730A9EFD9D'
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT"
  validExitCodes= @(0, 3010, 1641)
}


Install-ChocolateyPackage @packageArgs
