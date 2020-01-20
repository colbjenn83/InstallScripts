#!/bin/sh
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
#Stage 1 - DevOps Tools
cd ~/Downloads
#Sublime Text
echo Downloading Sublime Text...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add 
sudo apt-get install apt-transport-https software-properties-common
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#VS Code
echo Downloading VS Code...
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
#PowerShell
echo Downloading PowerShell...
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt install -y gnome-tweak-tool nmap wireshark curl git python3.7 python-pip default-jre default-jdk powershell postgresql sublime-text code

#Stage 2 - Other Tasks
cd ~/
sudo mkdir tools scripts loot wordlists
#Add Kali-Rolling Repository
#echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" | sudo tee -a /etc/apt/sources.list
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ED444FF07D8D0BF6
#sudo apt update

#Stage 3 - Hacking Tools
sudo apt install wifite netdiscover hydra john

#Stage 4 - Misc. Tools
echo Downloading Spotify...
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install spotify-client neofetch gimp audacity vlc papirus-icon-theme

#Stage 5 - git Downloads
cd ~/tools
git clone https://github.com/LionSec/katoolin.git
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git

