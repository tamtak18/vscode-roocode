$extensions = @(
    @{ name = "vscode-gradle.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-gradle/3.17.20240508/vspackage" },
    @{ name = "vscode-checkstyle.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/shengchen/vsextensions/vscode-checkstyle/0.10.3/vspackage" },
    @{ name = "java-run.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/java-run/1.11.20240501/vspackage" }
)

foreach ($ext in $extensions) {
    Write-Host "Downloading $($ext.name)..."
    Invoke-WebRequest -Uri $ext.url -OutFile $ext.name
}
Write-Host "All downloads completed."
