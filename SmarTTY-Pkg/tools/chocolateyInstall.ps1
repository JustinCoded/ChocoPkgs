$packageName = 'SmarTTY v1.1' 
$installerType = 'msi'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installFile = "http://smartty.sysprogs.com/download/SmarTTY-1.1.msi"
$silentArgs = "/quiet"
$validExitCodes = @(0) 

try {  
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installFile" -validExitCodes $validExitCodes 

} catch { 
	Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)" 
  throw 

}