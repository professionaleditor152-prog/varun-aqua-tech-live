$destDir = "$env:LOCALAPPDATA\MinGit"
$zipPath = "$env:TEMP\MinGit.zip"

if (-not (Test-Path "$destDir\cmd\git.exe")) {
    Write-Host "Downloading MinGit..."
    $url = "https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip"
    $wc = New-Object System.Net.WebClient
    $wc.Headers.Add("User-Agent", "Mozilla/5.0")
    try {
        $wc.DownloadFile($url, $zipPath)
        Write-Host "Downloaded MinGit zip."
    } catch {
        Write-Host "Retrying with v2.44.0..."
        $url = "https://github.com/git-for-windows/git/releases/download/v2.44.0.windows.1/MinGit-2.44.0-64-bit.zip"
        $wc.DownloadFile($url, $zipPath)
    }

    Write-Host "Extracting to $destDir..."
    if (-not (Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir -Force | Out-Null }
    Expand-Archive -Path $zipPath -DestinationPath $destDir -Force
    Remove-Item $zipPath -Force -ErrorAction SilentlyContinue
}

$gitCmd = "$destDir\cmd\git.exe"
if (Test-Path $gitCmd) {
    Write-Host "MinGit successfully installed at: $gitCmd"
    & $gitCmd --version
    
    # Add to current process PATH and user PATH
    $currPath = [Environment]::GetEnvironmentVariable("Path", "User")
    if ($currPath -notlike "*MinGit\cmd*") {
        [Environment]::SetEnvironmentVariable("Path", "$currPath;$destDir\cmd", "User")
        Write-Host "Added MinGit to User PATH."
    }
    $env:Path = "$destDir\cmd;$env:Path"
} else {
    Write-Warning "MinGit executable not found."
}
