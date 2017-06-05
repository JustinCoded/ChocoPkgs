$packageName = 'smartty' 
$installerType = 'msi'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "http://sysprogs.com/files/SmarTTY/SmarTTY-2.2.msi"
$silentArgs = "/quiet"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes -Checksum '57e5f9c40c8f7fc6ae7cd4eb0fc5ac9a9ca3429fbf296d58986d9e1191d8aa56' -ChecksumType 'sha256'