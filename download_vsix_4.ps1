$extensions = @(

    @{ name = "roocode-vscode.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/RooVeterinaryInc/vsextensions/roo-cline/3.16.4/vspackage" }
)

foreach ($ext in $extensions) {
    Write-Host "Downloading $($ext.name)..."
    Invoke-WebRequest -Uri $ext.url -OutFile $ext.name
}
Write-Host "All downloads completed."
