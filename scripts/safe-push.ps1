param(
[string]$Message = "Update Day Night project files"
)

Write-Host "Running safe Git push..." -ForegroundColor Cyan

git status
git pull origin main --no-rebase
git add .
git commit -m "$Message"
git push
git status