$ErrorActionPreference	= 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName	= 'whatsapptray'
$url32			  = 'https://github.com/D4koon/WhatsappTray/releases/download/1.3.1/WhatsappTrayV1.3.1.exe'
$checksum32		= 'DB95B366751CC7EFF056246C891DE0F418DB9A633FD224011546707E45B575DD'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url32
  softwareName  = 'whatsapptray*'
  checksum      = $checksum32
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
}

Install-ChocolateyPackage @packageArgs
