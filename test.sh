#!/bin/sh

mkdir ~/DEB ~/Soft --> Cut to Script 1 First Line

# Download Bitwaden --> Cut to Script 1 First Line
wget -P ~/DEB 'https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb'
# Install Bitwaden
sudo pdkg -i ~/DEB/*.deb
rm ~/DEB/*

# Download google chrome (reference: https://linuxize.com/post/how-to-install-google-chrome-web-browser-on-ubuntu-18-04/)
wget -P ~/DEB 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'

# Install all .deb package
cd ~/DEB
sudo dpkg -i *.deb
cd -

# Download telegram
wget -P ~/Soft 'https://telegram.org/dl/desktop/linux'

# Install telegram
tar -xf ~/Soft/*.tar.xz -C /home/dimorng/Others/Apps/

# Clean up
sudo rm -r ~/DEB ~/Soft

# Download & Install Visual Studio Code (reference: https://blog.softhints.com/install-visual-studio-code-linux-mint/)
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders


# Install Via PPA
# Install Foliate
sudo add-apt-repository ppa:apandada1/foliate
sudo apt update
sudo apt install foliate

# Install Inkscape
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

# Install via Flatpak
# Curtail
flatpak install flathub com.github.huluti.Curtail
