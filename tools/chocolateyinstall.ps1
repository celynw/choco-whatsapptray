$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/D4koon/WhatsappTray/releases/download/v1.9.0/WhatsappTrayV1.9.0.0.exe'

$packageArgs = @{
	packageName = $env:ChocolateyPackageName
	unzipLocation = $toolsDir
	fileType = 'exe'
	url = $url
	softwareName = 'whatsapptray'
	checksum = '6535FA20F12FD21C0ABD104E5594D4F0AE82528D4274D3470D9C1FBB3C403A18'
	checksumType = 'sha256'
	silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
