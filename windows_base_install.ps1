Set-ExecutionPolicy Bypass -Scope Process -Force

if (!(Test-Path -Path "$env:ProgramData\Chocolatey")) {
  Invoke-Expression((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

$Packages = 'vscode', 'visualstudio2019buildtools','git', 'googlechrome', 
            'python', 'nodejs', 'putty', 'vlc', '7zip', 'curl', 'vim', 'wireshark', 
            'cmake', 'spotify', 'cmder', 'ffmpeg', 'mingw', 'openvpn', 'winpcap'

ForEach ($PackageName in $Packages)
{
    choco install $PackageName -y
}