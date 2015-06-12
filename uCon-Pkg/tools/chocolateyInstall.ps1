$packageName = 'ucon' 
$installerType = 'exe'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "http://www.umonfw.com/releases/ucon_install.exe"
$silentArgs = "/S"
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes 
