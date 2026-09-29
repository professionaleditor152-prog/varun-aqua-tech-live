$git = "$env:LOCALAPPDATA\MinGit\cmd\git.exe"
if (-not (Test-Path $git)) {
    $git = "git"
}

Write-Host "Using Git binary: $git"

# Initialize git if not already initialized
if (-not (Test-Path "$PSScriptRoot\..\.git")) {
    & $git init "$PSScriptRoot\.."
}

# Set local user name and email if not configured
& $git -C "$PSScriptRoot\.." config user.name "Varun Aqua Tech"
& $git -C "$PSScriptRoot\.." config user.email "contact@varunaquatech.com"

# Set default branch to main
& $git -C "$PSScriptRoot\.." branch -M main

# Add all files
& $git -C "$PSScriptRoot\.." add -A

# Check status
& $git -C "$PSScriptRoot\.." status --short

# Commit
& $git -C "$PSScriptRoot\.." commit -m "Initial commit: VARUN AQUA TECH multi-page website with local SEO, NAP schema, and responsive UI"

& $git -C "$PSScriptRoot\.." log -n 1 --stat
