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
sudo add-apt-repository universe
sleep 10
#Stage 2 - DevOps Tools
echo Downloading and Installing DevOps Utilities...
sudo apt update
sudo apt install -y dotnet-sdk-3.1 netdiscover nmap wireshark python3-pip default-jre default-jdk golang ruby-full ansible
sleep 10
#Stage 3 - Misc. Tools
echo Downloading and Installing Spotify...
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo add-apt-repository ppa:papirus/papirus
sudo apt update
sudo apt install -y spotify-client neofetch gimp audacity vlc gnome-tweak-tool papirus-icon-theme gnome-shell-extensions
sleep 10
#Stage 4 - Install Hacking Tools and Dependencies
echo Install Hacking Tools and Dependencies...
sudo apt install -y libpcap-dev build-essential beef libssl-dev openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev nodejs libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev autoconf libc6-dev libncurses5-dev automake libtool bison subversion aircrack-ng wifite crunch postgresql postgresql-contrib pyrit john hashcat wireless-tools ettercap-graphical hostapd isc-dhcp-server iptables sslstrip lighttpd dsniff reaver xterm 
sudo gem install bettercap
#Stage 5 - Other Tasks
cd ~
sudo mkdir Tools Scripts Loot Wordlists Wallpaper Avatars Ansible
cd Ansible
sudo mkdir Playbooks Inventory
sleep 10
#Stage 6 - git Downloads "Tools"
cd ~/Tools
echo Downloading Tools from GitHub...
sudo git clone https://github.com/hak5darren/USB-Rubber-Ducky.git
sudo git clone https://github.com/aanarchyy/bully.git
cd bully*/
cd src/
sudo make
sudo make install
cd ~/Tools
git clone https://github.com/wiire/pixiewps.git
cd pixiewps*/
make
sudo make install
cd ~/Tools
git clone https://github.com/charlesxsh/mdk3-master.git
cd mdk3-master
make
sudo make install
cd ~/Tools

#Stage 6 - Theme Install
cd ~/Downloads
sudo git clone https://github.com/colbjenn83/InstallScripts/X-Arc-Collection-v1.4.9.zip
sudo unzip X-Arc-Collection-v1.4.9.zip
cd X-Arc-Collection-v1.4.9 
cp -r * /usr/share/themes
cd ~
#Stage 7 - Clean up
echo Finished Quick Install Script...

