# Script to render Quarto manuscript and push updates to GitHub Pages

# type .\update_site.ps1 to run it after editing index.qmd

# Step 1: Render the manuscript to HTML
Write-Host "Rendering index.qmd..."
quarto render index.qmd --to html

# Step 2: Stage all changes in git
Write-Host "Adding files to git..."
git add -A

# Step 3: Commit changes
$commitMessage = Read-Host "Enter commit message"
git commit -m "$commitMessage"

# Step 4: Push to GitHub
Write-Host "Pushing to GitHub..."
git push

Write-Host "Update complete! Your GitHub Pages site should refresh in ~1 minute."