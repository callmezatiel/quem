#!/bin/bash

# banner
banner() {

printf "\e[1;94m     ._______  .____     ._______._____.___       \e[0m\n"
printf "\e[1;94m     : .___  \ |    |___ : .____/:         |      \e[0m\n"
printf "\e[1;94m     | :   |  ||    |   || : _/\ |   \  /  |      \e[0m\n"
printf "\e[1;94m     |     :  ||    :   ||   /  \|   |\/   |      \e[0m\n"
printf "\e[1;94m      \_____. :|        ||_.: __/|___| |   |      \e[0m\n"
printf "\e[1;94m            :/ |. _____/    :/         |___|      \e[0m\n"
printf "\e[1;94m            :   :/                                \e[0m\n"
printf "\e[1;94m                :                                 \e[0m\n"
printf "\e[1;77m\e[45m   :: Kali MATE :: github.com/callmezatiel  \e[0m\n"
    printf "\n"
}
banner


#MATE desktop for Pentesters
sudo apt -y update && sudo apt -y upgrade

sudo apt install -y open-vm-tools
sudo apt install -y open-vm-tools-desktop
sudo cp $SCRIPT_DIR/images/desktop-background.png /usr/share/images/desktop-base/default
sudo apt install -y git
sudo apt install -y curl
sudo apt install -y default-jre
sudo apt install -y python3
sudo apt install -y python3-pip
sudo apt install -y python3-venv
sudo apt install -y zip
sudo apt install -y libglib2.0-dev
sudo apt install -y wget

sudo apt remove -y xterm
sudo apt purge -y xterm
sudo apt install -y gnome-terminal
sudo apt install -y dbus-x11
xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"
gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false
gsettings set org.gnome.desktop.sound event-sounds false

sudo apt install -y network-manager
sudo apt install -y network-manager-gnome
sudo systemctl enable NetworkManager.service

apt install mate-desktop mate-desktop-common mate-desktop-environment -y
apt install mate-desktop-environment-core mate-desktop-environment-extra -y
apt install mate-desktop-environment-extras kali-desktop-mate -y
apt install tor ufw gospider hakrawler gobuster ruby-dev ffuf seclists filezilla -y
apt install httrack webhttrack sherlock eyewitness sublist3r photon recon-ng python3-venv python3-pip jq pipx -y
apt install snapd mediainfo-gui kali-tools-crypto-stego neovim cargo asciinema -y
apt install marble qgis finalrecon ugrep bloodhound bing-ip2hosts golang libxcb-cursor0 -y
apt install mat2 gallery-dl libimage-exiftool-perl stegosuite exifprobe ruby-bundler mpg123 -y
apt install thunderbird sq python3-lxml libre-dev exiflooter flowblade dumpsterdiver -y
apt install tiix npm -y

apt purge spiderfoot amass theharvester -y
apt autoremove -y
sudo apt remove libreoffice mate-terminal -y
sudo apt install snapd -y 
systemctl start snapd
systemctl enable snapd
systemctl start snapd.apparmor
systemctl enable snapd.apparmor

snap install joplin-desktop
snap install ngrok
snap install localxpose
snap install telegram-desktop

gem install mechanize
gem install colorize


systemctl enable ufw
sudo apt install ufw
ufw enable
ufw allow ssh
systemctl start postgresql
systemctl enable postgresql
systemctl start ssh
systemctl enable ssh

#Update Metasploit
msfdb init


sudo apt install -y xinit
sudo apt install -y xorg 
sudo apt install -y lightdm
sudo systemctl enable lightdm
#reboot
