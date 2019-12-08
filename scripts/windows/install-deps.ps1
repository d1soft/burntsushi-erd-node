$IsChocoInstalled = Get-Command "choco" -ErrorAction SilentlyContinue
if ($IsChocoInstalled -eq '') {
    Write-Output "Install choco";
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Output "Install BurntSushi/erd and dependecies: "
& choco install --yes graphviz haskell-stack