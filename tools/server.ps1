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