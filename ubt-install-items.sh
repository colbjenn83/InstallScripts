#!/bin/bash
#Stage 1 - Utilities 
cd ~/Downloads
sudo apt install -y curl unzip apt-transport-https software-properties-common
sleep 10
#Sublime Text
echo Downloading and Installing Sublime Text...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt install -y sublime-text
sleep 10
#AWS CLI
echo Downloading and Installing AWS CLI...
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
sleep 10
#VS Code
echo Downloading and Installing VS Code...
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y code
sleep 10
#PowerShell
#echo Downloading and Installing PowerShell...
#wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#sudo apt update
#sudo add-apt-repository universe
#sleep 10
#Stage 2 - DevOps Tools
echo Downloading and Installing DevOps Utilities...
sudo apt update
sudo apt install -y gnome-tweak-tool wifite netdiscover nmap wireshark python3-pip default-jre default-jdk golang ruby-full ansible
sleep 10
#Stage 3 - Misc. Tools
echo Downloading and Installing Spotify...
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install -y spotify-client neofetch gimp audacity vlc papirus-icon-theme gnome-shell-extensions
sleep 10
#Stage 4 - Other Tasks
cd ~/
sudo mkdir Tools Scripts Loot Wordlists Wallpaper Avatars Ansible
cd Ansible
sudo mkdir Playbooks Inventory
sleep 10
#Stage 5 - git Downloads "tools"
cd ~/tools
echo Downloading Tools from GitHub...
sudo git clone https://github.com/hak5darren/USB-Rubber-Ducky.git
echo Downloading TrustedSec PTF...
sudo git clone https://github.com/trustedsec/ptf.git
cd /ptf
sudo python3 -m pip install -r requirements.txt
#Stage 6 - Clean up
echo Finished Quick Install Script...

