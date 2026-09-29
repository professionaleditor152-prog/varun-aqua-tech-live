Add-Type -AssemblyName System.Drawing
Get-ChildItem "$PSScriptRoot\..\assets\*.jpg" | ForEach-Object {
    try {
        $img = [System.Drawing.Image]::FromFile($_.FullName)
        [PSCustomObject]@{
            Name = $_.Name
            Width = $img.Width
            Height = $img.Height
            SizeKB = [math]::Round($_.Length / 1024)
        }
        $img.Dispose()
    } catch {
        Write-Warning "Could not read $($_.Name): $_"
    }
}
