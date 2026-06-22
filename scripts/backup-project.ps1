$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$BackupDir = "06-Backups"
$BackupFile = "$BackupDir\daynight-project-backup-$Timestamp.zip"

if (!(Test-Path $BackupDir)) {
New-Item -ItemType Directory -Force -Path $BackupDir | Out-Null
}

$Items = @(
"README.md",
"CHANGELOG.md",
"01-Website-WordPress",
"docs",
"scripts",
"TODO.txt",
"REQUIREMENTS.md"
)

$ExistingItems = $Items | Where-Object { Test-Path $_ }

Compress-Archive -Path $ExistingItems -DestinationPath $BackupFile -Force

Write-Host "Backup created:" -ForegroundColor Green
Write-Host $BackupFile