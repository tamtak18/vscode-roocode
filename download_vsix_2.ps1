$extensions = @(
    @{ name = "vscode-java-pack.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-java-pack/0.25.2023101600/vspackage" },
    @{ name = "vscode-maven.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-maven/0.44.0/vspackage" },
    @{ name = "vscode-gradle.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-gradle/3.15.20240315/vspackage" },
    @{ name = "vscode-spring-boot.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vmware/vsextensions/vscode-spring-boot/1.35.0/vspackage" },
    @{ name = "vscode-lombok.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-lombok/1.0.1/vspackage" },
    @{ name = "vscode-checkstyle.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/shengchen/vsextensions/vscode-checkstyle/0.9.2/vspackage" },
    @{ name = "sonarlint-vscode.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/SonarSource/vsextensions/sonarlint-vscode/4.20.0/vspackage" },
    @{ name = "java-run.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/java-run/1.3.0/vspackage" },
    @{ name = "vscode-java-test.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/vscjava/vsextensions/vscode-java-test/0.39.0/vspackage" },
    @{ name = "vscode-docker.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-azuretools/vsextensions/vscode-docker/1.29.0/vspackage" },
    @{ name = "gitlens.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/eamodio/vsextensions/gitlens/17.0.3/vspackage" },
    @{ name = "vscodeintellicode.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/VisualStudioExptTeam/vsextensions/vscodeintellicode/1.2.30/vspackage" },
    @{ name = "roocode-vscode.vsix"; url = "https://marketplace.visualstudio.com/_apis/public/gallery/publishers/RooVeterinaryInc/vsextensions/roo-cline/2.1.6/vspackage" }
)

foreach ($ext in $extensions) {
    Write-Host "Downloading $($ext.name)..."
    Invoke-WebRequest -Uri $ext.url -OutFile $ext.name
}
Write-Host "All downloads completed."
