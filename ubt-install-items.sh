#!/bin/bash
#Stage 1 - DevOps Tools
cd ~/Downloads
sudo apt install -y git curl bat
sleep 10
#Sublime Text
echo Downloading and Installing Sublime Text...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add 
sudo apt install -y apt-transport-https software-properties-common
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sleep 30
#AWS CLI
echo Downloading and Installing AWS CLI...
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sleep 30
#VS Code
echo Downloading and Installing VS Code...
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sleep 30
#PowerShell
echo Downloading and Installing PowerShell...
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sleep 30
#Stage 2 - Misc. Tools
echo Downloading and Installing Utilities...
sudo apt-get update
sudo apt install -y gnome-tweak-tool wifite netdiscover nmap wireshark python3.8 default-jre default-jdk powershell sublime-text code
sleep 30
#Stage 3 - Misc. Tools
echo Downloading and Installing Spotify...
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install -y spotify-client neofetch gimp audacity vlc papirus-icon-theme gnome-shell-extensions
sleep 30
#Stage 4 - Other Tasks
cd ~/
sudo mkdir tools scripts loot wordlists
sleep 10
#Stage 5 - git Downloads "tools"
cd ~/tools
echo Downloading TrustedSec PTF...
git clone https://github.com/trustedsec/ptf.git
cd /ptf
sudo python3 -m pip install -r requirements.txt
cd ~/tools
git clone https://github.com/hak5darren/USB-Rubber-Ducky.git
#Stage 6 - Clean up
echo Finished Quick Install Script...

