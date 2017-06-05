$packageName = 'ssdt12' 
$installerType = 'exe'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "http://go.microsoft.com/fwlink/?LinkID=393521&clcid=0x409"
$silentArgs = "/passive /norestart"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes -Checksum '08B2D57E34068364DA9F06F864E987E9553AA5BD8B498AF1BDCAA3DA8A5B4DB7' -ChecksumType 'sha256'
