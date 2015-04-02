#
# Build-All.ps1
#
$scriptPath = Split-Path $MyInvocation.MyCommand.Definition | Resolve-Path
$cpack = 'c:\ProgramData\chocolatey\bin\cpack.exe'

$buildPath = Join-Path $scriptPath.Path '\build'
New-Item -ItemType Directory -Path $buildPath -Force
Set-Location $buildPath

$nuspecFiles = Get-ChildItem $scriptPath -Filter *.nuspec -Recurse
foreach($nuspecFile in $nuspecFiles)
{          
    & $cpack $nuspecFile.FullName
}
Pop-Location