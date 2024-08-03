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
sudo cp $SCRIPT_DIR images/desktop-background.png    /usr/share/images/desktop-base/default
sudo cp $SCRIPT_DIR images/desktop-grub.png          /usr/share/images/desktop-base/desktop-grub.png
sudo cp $SCRIPT_DIR images/kali-ferrofluid-16x9.jpg  /usr/share/backgrounds/kali/kali-ferrofluid-16x9.jpg
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
sudo xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"
suuo gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false
sudo gsettings set org.gnome.desktop.sound event-sounds false

sudo apt install -y network-manager
sudo apt install -y network-manager-gnome
sudo systemctl enable NetworkManager.service

sudo apt install -y git
git clone https://github.com/zayronxio/Elementary-KDE-Icons
sudo mv $SCRIPT_DIR Elementary-KDE-Icons /usr/share/icons

sudo apt install -y kali-desktop-mate
sudo apt install -y tor ufw gospider hakrawler gobuster ruby-dev ffuf seclists filezilla
sudo apt install -y httrack webhttrack sherlock eyewitness sublist3r photon recon-ng python3-venv python3-pip jq pipx 
sudo apt install -y snapd mediainfo-gui kali-tools-crypto-stego neovim cargo asciinema 
sudo apt install -y marble qgis finalrecon ugrep bloodhound bing-ip2hosts golang libxcb-cursor0 
sudo apt install -y mat2 gallery-dl libimage-exiftool-perl stegosuite exifprobe ruby-bundler mpg123 
sudo apt install -y thunderbird sq python3-lxml libre-dev exiflooter flowblade dumpsterdiver 
sudo apt install -y tilix npm 

sudo apt purge spiderfoot amass theharvester -y 
sudo apt remove libreoffice -y
sudo apt install snapd -y

sudo systemctl start snapd
sudo systemctl enable snapd
sudo systemctl start snapd.apparmor
sudo systemctl enable snapd.apparmor

sudo snap install joplin-desktop
sudo snap install ngrok
sudo snap install localxpose
sudo snap install telegram-desktop

sudo gem install mechanize
sudo gem install colorize

sudo systemctl enable ufw
sudo apt install ufw
sudo ufw enable
sudo ufw allow ssh
sudo systemctl start postgresql
sudo systemctl enable postgresql
sudo systemctl start ssh
sudo systemctl enable ssh

#Update Metasploit
sudo msfdb init

sudo apt install -y xinit
sudo apt install -y xorg 
sudo apt install -y lightdm
sudo systemctl enable lightdm
sudo reboot
