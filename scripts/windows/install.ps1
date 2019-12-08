if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { 
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File ./install-deps.ps1" -Verb RunAs;
}

git clone git://github.com/BurntSushi/erd ./erd
Set-Location erd
Write-Output "Build BurntSushi/erd: "
stack install --local-bin-path ../bin
Set-Location ..
Write-Output  "Remove unused files: "
Remove-Item -Recurse -Force ./erd