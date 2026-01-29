$pkgName = "cqjtuthesis"
$version = "1.0"
$destDir = "$pkgName"
$zipName = "$pkgName-$version.zip"

Write-Host "Starting packaging process..."

# Enforce clean state for destination directory
if (Test-Path $destDir) { 
    Write-Host "Cleaning up existing temp directory..."
    Remove-Item $destDir -Recurse -Force 
}
New-Item -ItemType Directory -Path $destDir | Out-Null

Write-Host "Copying files..."

# List of root files to include
$includeFiles = @(
    "README", "README.md", "LICENSE", "CHANGELOG.md", "MANIFEST-CTAN.txt", 
    "USAGE_GUIDE.md", "CONTENTS_README.md", "DOCS_INDEX.md",
    "cqjtuthesis.cls", "cqjtuthesis.dtx", "cqjtuthesis.ins",
    "main.tex", "main_master.tex", "main_professional.tex", "main_doctor.tex",
    "main.pdf", "main_master.pdf", "main_professional.pdf", "main_doctor.pdf",
    "Makefile", "makewin.bat"
)

foreach ($file in $includeFiles) {
    if (Test-Path $file) {
        Copy-Item $file -Destination $destDir
    } else {
        Write-Warning "File not found: $file"
    }
}

# Copy directories
Write-Host "Copying directories..."
if (Test-Path "contents") { Copy-Item "contents" -Destination $destDir -Recurse }
if (Test-Path "contents_graduate") { Copy-Item "contents_graduate" -Destination $destDir -Recurse }
if (Test-Path "figures") { Copy-Item "figures" -Destination $destDir -Recurse }
if (Test-Path "ref") { Copy-Item "ref" -Destination $destDir -Recurse }

# Compress
Write-Host "Creating archive $zipName..."
Compress-Archive -Path $destDir -DestinationPath $zipName -Force

# Cleanup
Write-Host "Cleaning up..."
Remove-Item $destDir -Recurse -Force

Write-Host "Done! Package created: $zipName"
