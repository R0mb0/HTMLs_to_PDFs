# Working directory (where the script is located)
$BaseDir = $PSScriptRoot

# Output directory path
$OutputDir = Join-Path $BaseDir "output"
if (!(Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir | Out-Null
}

# Path to wkhtmltopdf executable (modify if necessary)
$wkhtmltopdf = "wkhtmltopdf.exe" # If in system PATH
# If not in PATH, use something like: $wkhtmltopdf = "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe"

# Options to avoid cutting off wide landscape pages (landscape, high width, no truncation)
$options = "--page-size A4 --orientation Landscape --disable-smart-shrinking"

# Get all HTML files in the working directory
$HtmlFiles = Get-ChildItem -Path $BaseDir -Filter *.html

foreach ($file in $HtmlFiles) {
    $inputPath = $file.FullName
    $outputPath = Join-Path $OutputDir ($file.BaseName + ".pdf")
    
    # Build the command
    $cmd = "$wkhtmltopdf $options `"$inputPath`" `"$outputPath`""
    Write-Host "Converting: $inputPath -> $outputPath"
    
    # Run conversion
    Invoke-Expression $cmd
}
Write-Host "Conversion completed!"