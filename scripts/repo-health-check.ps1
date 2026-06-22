# DAY NIGHT DELIVERY SERVICES - Repository Health Check

Write-Host "Checking Day Night repository..." -ForegroundColor Cyan

$RequiredPaths = @(
    "README.md",
    "01-Website-WordPress",
    "01-Website-WordPress\pages",
    "01-Website-WordPress\content\company-profile-full.md",
    "01-Website-WordPress\WORDPRESS_IMPORT_PLAN.md",
    ".github\workflows\repo-quality.yml",
    ".github\ISSUE_TEMPLATE\bug_report.yml",
    ".github\ISSUE_TEMPLATE\feature_request.yml",
    "docs\ROADMAP.md",
    "docs\wordpress\NAMECHEAP_WORDPRESS_DEPLOYMENT.md",
    "docs\operations\ORDER_WORKFLOW.md",
    "docs\branding\BRAND_GUIDELINES.md",
    "docs\SEO_CHECKLIST.md",
    "docs\API_SPEC_DRAFT.md",
    "scripts",
    "config\project.json"
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