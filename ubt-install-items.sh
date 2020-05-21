#!/bin/bash
#Stage 1 - Utilities
cd ~/Downloads
sudo apt install -y curl unzip apt-transport-https software-properties-common
sleep 10
#Sublime Text
echo Downloading and Installing Sublime Text...
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
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
sudo apt update
sudo apt install -y code
sleep 10
#Micorsoft Repositories
echo Downloading and Installing MS Repos...
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt update
sleep 3
sudo add-apt-repository universe
sleep 3
#Stage 2 - DevOps Tools
echo Downloading and Installing DevOps Utilities...
sudo apt update
sleep 3
sudo apt install -y dotnet-sdk-3.1 netdiscover nmap wireshark putty virtualbox python3-pip default-jre default-jdk golang ruby-full ansible
sleep 3
#Stage 3 - Misc. Tools
echo Downloading and Installing Spotify...
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:papirus/papirus
sleep 3
sudo apt update
sleep 3
sudo apt install -y spotify-client neofetch gimp audacity vlc gnome-tweak-tool papirus-icon-theme gnome-shell-extensions
sleep 3
#Stage 4 - Install Hacking Tools and Dependencies
echo Install Hacking Tools and Dependencies...
sudo apt install -y libpcap-dev build-essential openssl libreadline8 libreadline-dev zlib1g-dev nodejs libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison subversion aircrack-ng wifite crunch postgresql postgresql-contrib john hashcat wireless-tools ettercap-graphical hostapd isc-dhcp-server iptables lighttpd dsniff reaver xterm 
#Stage 5 - Other Tasks
cd ~/
sudo mkdir Tools Scripts Loot Wordlists Wallpaper Avatars Ansible
cd Ansible
sudo mkdir Playbooks Inventory
sleep 3
#Stage 6 - git Downloads "Tools"
cd ~/Tools
sleep 3
echo Downloading Tools from GitHub...
sudo git clone https://github.com/hak5darren/USB-Rubber-Ducky.git
#Stage 6 - Install Themes
cd ~/Downloads/InstallScripts/
sudo unzip X-Arc-Collection-v1.4.9.zip -d X-Arc-Collection-v1.4.9
cd X-Arc-Collection-v1.4.9 
sudo cp -r * /usr/share/themes
#Stage 7 - Download Assets
echo Downloading Assets...
cd ~/Downloads/InstallScripts/
sudo cp Corvo*.* ~/Avatars
sudo cp NeoTokyo*.* ~/Wallpaper
cd ~/
#Stage 8 - Clean up
echo Finished Quick Install Script...

