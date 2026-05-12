$TempFolder = "C:\ProgramData\Autopilot"

if (!(Test-Path $TempFolder)) {
    New-Item -Path $TempFolder -ItemType Directory -Force
}

$Serial = (Get-CimInstance Win32_BIOS).SerialNumber
$Name = $env:COMPUTERNAME

$OutputFile = "\\au.local\data\afdeling\BYG\05_IT\Autopilot\$Name-$Serial.csv"

& "C:\ProgramData\Autopilot\Get-WindowsAutoPilotInfo.ps1" `
    -OutputFile $OutputFile