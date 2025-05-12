$extensions = @(
    @{ name = "vscode-java-pack.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-java-pack/0.29.2024091906/vspackage" },
    @{ name = "python.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-python/vsextensions/python/2025.5.2025042501/vspackage" },
    @{ name = "pylance.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-python/vsextensions/vscode-pylance/2025.4.102/vspackage" },
    @{ name = "eslint.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/dbaeumer/vsextensions/vscode-eslint/3.0.13/vspackage" },
    @{ name = "prettier-vscode.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/esbenp/vsextensions/prettier-vscode/11.0.0/vspackage" },
    @{ name = "roocode-vscode.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/RooVeterinaryInc/vsextensions/roo-cline/3.11.8/vspackage" }
)

foreach ($ext in $extensions) {
    Write-Host "Downloading $($ext.name)..."
    Invoke-WebRequest -Uri $ext.url -OutFile $ext.name
}
Write-Host "All downloads completed."
