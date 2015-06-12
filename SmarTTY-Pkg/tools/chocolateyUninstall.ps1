$packageName = 'smartty'
$programName = 'SmarTTY' 
$installerType = 'msi'
$scriptDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" 
$installUrl = "http://sysprogs.com/files/SmarTTY/SmarTTY-1.1.msi"
$silentArgs = "/quiet"

$local_key = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*'
$machine_key32 = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*'
$machine_key64 = 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'

$uninstaller = Get-ItemProperty -Path @($local_key, $machine_key32, $machine_key64) | ?{ $_.DisplayName -match $programName }
$productCode = $uninstaller.PSChildName

Uninstall-ChocolateyPackage "$packageName" "$installerType" "$productCode $silentArgs"