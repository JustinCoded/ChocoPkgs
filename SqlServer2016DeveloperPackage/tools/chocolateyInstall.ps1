$packageName= 'sqlserver2016developer'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/4/4/F/44F2C687-BD92-4331-9D4F-882A5AB0D301/SQLServer2016-SSEI-Dev.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  url           = $url
  silentArgs    = "/QS /ConfigurationFile=$toolsDir\configuration.ini /IACCEPTSQLSERVERLICENSETERMS /MediaPath=C:\SqlServer2016Setup /ENU /norestart"
  validExitCodes= @(0, 3010, 1641)
  checksum      = 'a6adcc6d6bba6b421274381f245619baa7b05e53416395f5b445501ce880e35a'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs