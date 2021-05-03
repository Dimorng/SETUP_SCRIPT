#!/bin/sh

# for basic set up 

# Prolone laptop battery
sudo apt update && sudo apt install tlp tlp-rdw && sudo tlp start

# configure redshif for Cambodia location
wget -P ~/.config/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/redshift.conf'

# fix Khmer digraph in Khmer keyboard layout
cp /usr/share/X11/xkb/symbols/kh ~/Documents/Original-Khmer-Keyboard-Layout && sudo rm /usr/share/X11/xkb/symbols/kh && sudo wget -P /usr/share/X11/xkb/symbols/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/kh' 

# Download close all opened window
mkdir ~/Others/ && mkdir ~/Others/Apps/ && wget -P ~/Others/Apps/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/close-all-windows.sh'

# Download extra app from official repo
sudo apt update && sudo apt install audacity gimp picard scrcpy vlc pdfarranger ffmpeg fonts-khmeros fonts-khmeros-core geogebra texlive dvipng texlive-latex-extra rhythmbox-plugin-alternative-toolbar git aircrack-ng fontforge font-manager

# Install youtube-dl from official site
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl && sudo chmod a+rx /usr/local/bin/youtube-dl

# Clean up system and reboot
sudo apt clean && sudo apt autoclean && sudo apt autoremove && reboot

