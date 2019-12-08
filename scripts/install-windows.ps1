$Directory=[string](get-location)
echo $Directory

if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

$IsChocoInstalled = Get-Command "choco" -ErrorAction SilentlyContinue
if ($IsChocoInstalled -eq '') {
    echo "Install choco";
    Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

echo "Install BurntSushi/erd and dependecies: "
& choco install --yes graphviz haskell-stack

git clone git://github.com/BurntSushi/erd ./erd
cd erd
echo "Build BurntSushi/erd: "
stack install --local-bin-path ../bin
cd ..
echo "Remove unused files: "
Remove-Item -Recurse -Force ./erd
pause