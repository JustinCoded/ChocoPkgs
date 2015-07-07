$packageName = 'ssdt12' 
$installerType = 'exe'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "http://go.microsoft.com/fwlink/?LinkID=393521&clcid=0x409"
$silentArgs = "/passive /norestart"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes 
