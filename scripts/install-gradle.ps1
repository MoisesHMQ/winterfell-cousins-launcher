param(
    [Parameter(Mandatory = $true)]
    [string] $GradleVersion
)

$ErrorActionPreference = "Stop"

$distRoot = Join-Path $env:USERPROFILE ".gradle\wrapper\dists\gradle-$GradleVersion-bin"
$gradleHome = Join-Path $distRoot "gradle-$GradleVersion"
$zipPath = Join-Path $distRoot "gradle-$GradleVersion-bin.zip"
$downloadUrl = "https://services.gradle.org/distributions/gradle-$GradleVersion-bin.zip"

if (Test-Path (Join-Path $gradleHome "bin\gradle.bat")) {
    exit 0
}

New-Item -ItemType Directory -Force -Path $distRoot | Out-Null

if (-not (Test-Path $zipPath)) {
    Write-Host "Baixando Gradle $GradleVersion..."
    Invoke-WebRequest -Uri $downloadUrl -OutFile $zipPath
}

Write-Host "Extraindo Gradle $GradleVersion..."
Expand-Archive -Path $zipPath -DestinationPath $distRoot -Force
