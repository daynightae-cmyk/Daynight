
# Changelog

## 2026-06-22

* Added professional GitHub repository pack.
* Added GitHub Actions quality check.
* Added docs folder.
* Added security policy.
* Added contributing guide.
* Added WordPress deployment plan.
* Added Supabase backend plan.
* Added brand guidelines.
* Added operational workflow.
* Added SEO checklist.
* Added PowerShell utility scripts.
  '@

Write-Utf8File "scripts\repo-health-check.ps1" @'

# DAY NIGHT DELIVERY SERVICES - Repository Health Check

Write-Host "Checking Day Night repository..." -ForegroundColor Cyan

$RequiredPaths = @(
"README.md",
"01-Website-WordPress",
"01-Website-WordPress\pages",
"01-Website-WordPress\content\company-profile-full.md",
"01-Website-WordPress\WORDPRESS_IMPORT_PLAN.md",
"docs",
"scripts"
)

foreach ($Path in $RequiredPaths) {
if (Test-Path $Path) {
Write-Host "[OK] $Path" -ForegroundColor Green
} else {
Write-Host "[MISSING] $Path" -ForegroundColor Red
}
}

Write-Host ""
Write-Host "Git status:" -ForegroundColor Cyan
git status

Write-Host ""
Write-Host "Recent commits:" -ForegroundColor Cyan
git log --oneline -5