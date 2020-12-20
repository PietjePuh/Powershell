## software windows ( https://chocolatey.org/packages )
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#restart powershell and run
choco install choco-upgrade-all-at-startup -y

#browser
choco install opera
choco install tor-browser
choco install firefox
choco install adblockplus-firefox 
choco install googlechrome
choco install adblockpluschrome

#tools
choco install teamviewer
choco install 7zip.install
choco install notepadplusplus.install
choco install keepass
choco install ccleaner
choco install ditto #start + v
choco install f.lux #night light
choco install greenshot #start+shift+S
choco install vmwareworkstation
choco install imgburn

#Security
choco install avgantivirusfree
choco install adwcleaner
choco install sandboxie.install
choco install lastpass
choco install nordvpn

#drivers
choco install nvidia-display-driver
choco install geforce-game-ready-driver
choco install geforce-experience
choco install intel-dsa
choco install windows-10-update-assistant

#games
choco install discord
choco install goggalaxy
choco install steam
choco install epicgameslauncher
choco install uplay
choco install origin
choco install telegram.install

#office
choco install adobereader
choco install adobereader-update
choco install office365business
choco install libreoffice-fresh
choco install openoffice

#work
choco install citrix-receiver
choco install citrix-workspace
choco install mremoteng
choco install mobaxterm
choco install autohotkey.portable

#communication 
choco install skype
choco install thunderbird
choco install whatsapp
choco install telegram

#video
choco install vlc
choco install kodi

#music
choco install spotify
choco install itunes

#picture
choco install gimp

#runetime 
choco install javaruntime
choco install jdk8
choco install flashplayeractivex
choco install flashplayerppapi
choco install adobeshockwaveplayer
choco install dotnetfx
choco install windowsrepair
