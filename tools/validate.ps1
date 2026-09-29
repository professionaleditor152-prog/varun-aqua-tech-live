$htmlFiles = Get-ChildItem -Path "d:\varun aqua tech website" -Recurse -Filter "*.html"

Write-Output "Found $($htmlFiles.Count) HTML files to validate..."
$allValid = $true

foreach ($file in $htmlFiles) {
  $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
  $rel = $file.FullName.Replace("d:\varun aqua tech website\", "")
  
  # Check H1 count
  $h1Matches = [regex]::Matches($content, "<h1[^>]*>.*?</h1>", "Singleline")
  if ($h1Matches.Count -ne 1) {
    Write-Warning "[$rel] Expected exactly 1 H1 tag, found: $($h1Matches.Count)"
    $allValid = $false
  }
  
  # Check Title
  if ($content -notmatch "<title>(.*?)</title>") {
    Write-Warning "[$rel] Missing title tag"
    $allValid = $false
  }
  
  # Check Meta Description
  if ($content -notmatch '<meta\s+name="description"\s+content="([^"]+)"') {
    Write-Warning "[$rel] Missing meta description"
    $allValid = $false
  }
  
  # Check Canonical
  if ($content -notmatch '<link\s+rel="canonical"\s+href="([^"]+)"') {
    Write-Warning "[$rel] Missing canonical link"
    $allValid = $false
  }
  
  # Check Schema
  if ($content -notmatch '<script\s+type="application/ld\+json">') {
    Write-Warning "[$rel] Missing JSON-LD schema"
    $allValid = $false
  }
  
  # Check Phone consistency
  if ($content -notmatch '88380\s?55968') {
    Write-Warning "[$rel] Missing phone number"
    $allValid = $false
  }
}

if ($allValid) {
  Write-Output "SUCCESS: All $($htmlFiles.Count) HTML files passed on-page validation!"
} else {
  Write-Warning "Some files failed validation."
}