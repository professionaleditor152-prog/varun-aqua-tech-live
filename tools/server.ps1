param([int]$port = 8080)

$listener = New-Object System.Net.HttpListener
$prefix = "http://localhost:$port/"
$listener.Prefixes.Add($prefix)

try {
    $listener.Start()
    Write-Output "HTTP server started at $prefix"
} catch {
    Write-Error "Failed to start HttpListener on $prefix : $_"
    exit 1
}

$root = "d:\varun aqua tech website"

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $rawUrl = $request.RawUrl.Split('?')[0]
        
        # API Endpoints for Custom Machines CRUD
        if ($rawUrl -eq "/api/machines") {
            $dataFile = Join-Path $root "data\machines.json"
            $response.Headers.Add("Access-Control-Allow-Origin", "*")
            $response.Headers.Add("Access-Control-Allow-Methods", "GET, POST, OPTIONS")
            $response.Headers.Add("Access-Control-Allow-Headers", "Content-Type")
            
            if ($request.HttpMethod -eq "OPTIONS") {
                $response.StatusCode = 200
                $response.Close()
                continue
            }
            
            if ($request.HttpMethod -eq "GET") {
                if (Test-Path $dataFile) {
                    $jsonBytes = [System.IO.File]::ReadAllBytes($dataFile)
                } else {
                    $jsonBytes = [System.Text.Encoding]::UTF8.GetBytes("[]")
                }
                $response.ContentType = "application/json; charset=utf-8"
                $response.ContentLength64 = $jsonBytes.Length
                $response.OutputStream.Write($jsonBytes, 0, $jsonBytes.Length)
                $response.Close()
                continue
            } elseif ($request.HttpMethod -eq "POST") {
                $reader = New-Object System.IO.StreamReader($request.InputStream, [System.Text.Encoding]::UTF8)
                $body = $reader.ReadToEnd()
                $reader.Close()
                
                $dataDir = Join-Path $root "data"
                if (-not (Test-Path $dataDir)) { New-Item -ItemType Directory -Path $dataDir | Out-Null }
                [System.IO.File]::WriteAllText($dataFile, $body, [System.Text.Encoding]::UTF8)
                
                $resBytes = [System.Text.Encoding]::UTF8.GetBytes('{"success":true,"message":"Machines updated successfully"}')
                $response.ContentType = "application/json; charset=utf-8"
                $response.ContentLength64 = $resBytes.Length
                $response.OutputStream.Write($resBytes, 0, $resBytes.Length)
                $response.Close()
                continue
            }
        }
        
        # API Endpoint for Media / Image Upload
        if ($rawUrl -eq "/api/upload") {
            $response.Headers.Add("Access-Control-Allow-Origin", "*")
            $response.Headers.Add("Access-Control-Allow-Methods", "POST, OPTIONS")
            $response.Headers.Add("Access-Control-Allow-Headers", "Content-Type")
            
            if ($request.HttpMethod -eq "OPTIONS") {
                $response.StatusCode = 200
                $response.Close()
                continue
            }
            
            if ($request.HttpMethod -eq "POST") {
                try {
                    $reader = New-Object System.IO.StreamReader($request.InputStream, [System.Text.Encoding]::UTF8)
                    $body = $reader.ReadToEnd()
                    $reader.Close()
                    
                    $uploadData = $body | ConvertFrom-Json
                    $fileName = $uploadData.filename
                    $dataUrl = $uploadData.data
                    
                    if (-not $fileName) { $fileName = "machine_" + (Get-Date -Format "yyyyMMdd_HHmmss") + ".jpg" }
                    $safeName = [System.IO.Path]::GetFileNameWithoutExtension($fileName) -replace '[^a-zA-Z0-9_-]', '_'
                    $ext = [System.IO.Path]::GetExtension($fileName)
                    if (-not $ext) { $ext = ".jpg" }
                    $uniqueName = "$safeName" + "_" + (Get-Date -Format "yyyyMMdd_HHmmss") + $ext
                    
                    $uploadDir = Join-Path $root "assets\uploads"
                    if (-not (Test-Path $uploadDir)) { New-Item -ItemType Directory -Path $uploadDir | Out-Null }
                    $destPath = Join-Path $uploadDir $uniqueName
                    
                    $base64 = $dataUrl
                    if ($base64 -match '^data:image\/[a-zA-Z0-9\+\-\.]+;base64,(.+)$') {
                        $base64 = $Matches[1]
                    }
                    
                    $bytes = [System.Convert]::FromBase64String($base64)
                    [System.IO.File]::WriteAllBytes($destPath, $bytes)
                    
                    $relUrl = "assets/uploads/$uniqueName"
                    $jsonRes = @{
                        success = $true
                        filePath = $relUrl
                        message = "Uploaded successfully"
                    } | ConvertTo-Json -Compress
                    
                    $resBytes = [System.Text.Encoding]::UTF8.GetBytes($jsonRes)
                    $response.ContentType = "application/json; charset=utf-8"
                    $response.ContentLength64 = $resBytes.Length
                    $response.OutputStream.Write($resBytes, 0, $resBytes.Length)
                    $response.Close()
                    continue
                } catch {
                    $errRes = @{
                        success = $false
                        error = $_.Exception.Message
                    } | ConvertTo-Json -Compress
                    $errBytes = [System.Text.Encoding]::UTF8.GetBytes($errRes)
                    $response.StatusCode = 500
                    $response.ContentType = "application/json; charset=utf-8"
                    $response.ContentLength64 = $errBytes.Length
                    $response.OutputStream.Write($errBytes, 0, $errBytes.Length)
                    $response.Close()
                    continue
                }
            }
        }
        
        if ($rawUrl -eq "/" -or $rawUrl.EndsWith("/")) {
            $rawUrl += "index.html"
        }
        
        $sub = $rawUrl.TrimStart('/').Replace('/', '\')
        $localPath = Join-Path $root $sub
        
        if (Test-Path $localPath -PathType Container) {
            $localPath = Join-Path $localPath "index.html"
        }
        
        if (Test-Path $localPath -PathType Leaf) {
            $ext = [System.IO.Path]::GetExtension($localPath).ToLower()
            $mime = switch ($ext) {
                ".html" { "text/html; charset=utf-8" }
                ".css"  { "text/css; charset=utf-8" }
                ".js"   { "application/javascript; charset=utf-8" }
                ".svg"  { "image/svg+xml" }
                ".jpg"  { "image/jpeg" }
                ".jpeg" { "image/jpeg" }
                ".png"  { "image/png" }
                ".webp" { "image/webp" }
                ".xml"  { "application/xml; charset=utf-8" }
                ".txt"  { "text/plain; charset=utf-8" }
                default { "application/octet-stream" }
            }
            
            $bytes = [System.IO.File]::ReadAllBytes($localPath)
            $response.ContentType = $mime
            $response.ContentLength64 = $bytes.Length
            $response.OutputStream.Write($bytes, 0, $bytes.Length)
        } else {
            $response.StatusCode = 404
            $msg = [System.Text.Encoding]::UTF8.GetBytes("404 Not Found: $rawUrl")
            $response.OutputStream.Write($msg, 0, $msg.Length)
        }
        $response.Close()
    } catch {
        # Continue loop on client disconnect
    }
}