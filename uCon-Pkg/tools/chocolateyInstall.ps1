$packageName = 'ucon' 
$installerType = 'exe'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "https://www.umonfw.com/releases/ucon_install.exe"
$silentArgs = "/S"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes -Checksum '8360ea102ac5de25e8059d49966363a28ae52b811a61e721620a321040ff23e3' -ChecksumType 'sha256'
