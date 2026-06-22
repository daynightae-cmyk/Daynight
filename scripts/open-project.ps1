$Project = "$env:USERPROFILE\Desktop\DayNight_Express_Dev"

Start-Process explorer.exe $Project

if (Get-Command code -ErrorAction SilentlyContinue) {
code $Project
}