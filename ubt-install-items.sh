#!/bin/bash
#Stage 1 - DevOps Tools
cd ~/Downloads
sudo apt install -y git curl
#Sublime Text
echo Downloading and Installing Sublime Text...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add 
sudo apt install -y apt-transport-https software-properties-common
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#AWS CLI
echo Downloading and Installing AWS CLI...
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
#VS Code
echo Downloading and Installing VS Code...
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
#PowerShell
echo Downloading and Installing PowerShell...
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt install -y gnome-tweak-tool nmap wireshark python3.7 filezilla python-pip default-jre default-jdk powershell sublime-text code

#Stage 2 - Misc. Tools
echo Downloading and Installing Spotify...
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install -y spotify-client neofetch gimp audacity vlc arc-theme papirus-icon-theme

#Stage 3 - Other Tasks
cd ~/
sudo mkdir tools scripts loot wordlists
#Add Kali-Rolling Repository
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
sudo apt update

#Stage 4 - Hacking Tools
sudo apt install -y wifite netdiscover hydra hashcat binwalk ettercap-graphical john beef-xss metasploit-framework
sudo service postgresql start
sudo msfdb init

#Stage 5 - git Downloads
cd ~/tools
git clone https://github.com/LionSec/katoolin.git
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git
#git clone https://github.com/EmpireProject/Empire.git
#sudo /Empire/setup/install.sh

#Stage 6 - Clean up
#Remove Kali-Rolling Repository
sudo cp /etc/apt/sources.list.bak /etc/apt/sources.list
sudo apt update
sudo rm -fr ~/Downloads/*

