$packageName = 'smartty' 
$installerType = 'msi'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "http://sysprogs.com/files/SmarTTY/SmarTTY-2.2.msi"
$silentArgs = "/quiet"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes 
