$packageName = 'smartty' 
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$productCode = '{9EF7805A-E176-4A15-8EF8-CD2CC4F21492}'
$silentArgs = "/quiet"

try {  
  & msiexec.exe "/x" "$productCode" "$silentArgs"

} catch { 

  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)" 
  throw 

}