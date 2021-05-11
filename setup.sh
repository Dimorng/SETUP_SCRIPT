#!/bin/sh

# for basic set up (Note: this script work only for system that have only one user in /home/ only)

# define $home as the home directory of currently look in user:
home='/home/'$(ls /home)

# Working with Github
    # generate ssh key on local pc
    ssh-keygen -t rsa -b 4096 -C "mdmarticles@gmail.com"
    # add shh key to ssh keygen
    eval "$(ssh-agent -s)" && ssh-add $home/.ssh/id_rsa
    # Manually add ssh key to GitHub
    echo 'Please add ssh key (.pub) to "mdmarticles@gmail.com" GitHub Accout!'

# Dirextory 
    # Dir to stort file & App
    mkdir $home/Others/ $home/Others/Apps/
    # Temporary Dir that store downloaded file
    mkdir $home/DEB $home/Soft $home/TMP

# Update system
apt update && apt upgrade -y

# Download and install Bitwaden
    # Download Bitwaden
    wget -P $home/DEB 'https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb'
    # Install Bitwaden
    dpkg -i $home/DEB/*.deb
    mv $home/DEB/*.deb $home/TMP/

# Prolone laptop battery
apt install -y tlp tlp-rdw && tlp start

# configure redshif for Cambodia location
wget -P $home/.config/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/redshift.conf'

# fix Khmer digraph in Khmer keyboard layout
cp /usr/share/X11/xkb/symbols/kh $home/Documents/Original-Khmer-Keyboard-Layout
rm /usr/share/X11/xkb/symbols/kh
wget -P /usr/share/X11/xkb/symbols/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/kh' 

# Download bash script that close all opened windows
wget -P $home/Others/Apps/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/close-all-windows.sh'

# Install Additional app
    # Download extra app from official repo
    apt update && apt install -y audacity gimp picard scrcpy vlc pdfarranger ffmpeg fonts-khmeros fonts-khmeros-core geogebra texlive dvipng texlive-latex-extra rhythmbox-plugin-alternative-toolbar git aircrack-ng fontforge font-manager evince

    # Install youtube-dl from official site
    wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
    chmod a+rx /usr/local/bin/youtube-dl
    # fix '/usr/bin/env: ‘python’: No such file or directory' error
    ln -s /usr/bin/python3 /usr/bin/python

    # Install Via PPA
    # Install Foliate
    add-apt-repository ppa:apandada1/foliate -y
    apt update
    apt install foliate -y

    # Install Inkscape
    add-apt-repository ppa:inkscape.dev/stable -y
    apt update
    apt install inkscape -y

    # Install via Flatpak
    # Curtail
    flatpak install flathub com.github.huluti.Curtail -y

    # Install from .deb
        # Download .deb
            # Google chrome (reference: https://linuxize.com/post/how-to-install-google-chrome-web-browser-on-ubuntu-18-04/)
            wget -P $home/DEB 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
            # Bitwaden 
                # Done At the beginning
            # Visual studio code
            wget $(python3 vscode.py) -P $home/DEB/

        # install all .deb
        dpkg -i $home/DEB/*.deb
    
    # Install Telegram
        # Download telegram
        wget -P $home/Soft 'https://telegram.org/dl/desktop/linux'
        # Install telegram
        tar -xf $home/Soft/*.tar.xz -C /home/dimorng/Others/Apps/

    # Install Latest version of LibreOffice
        # Uninstall LibreOffcie installed by default
        apt-get remove --purge libreoffice* -y
        apt-get clean
        apt-get autoclean
        apt-get autoremove
        # Dowload Latest version of LibreOffice for office website
            # get Download Link
            L=$(python3 LO_lastest_V_link.py)
            # Download LibreOffcie .deb files
            mkdir $home/DEB/LibreOffice/
            wget $L -P $home/DEB/LibreOffice/
            tar -xf $home/DEB/LibreOffice/*.tar.gz -C $home/TMP/
            dpkg -i $home/TMP/LibreOffice*/DEBS/*.deb
            # Download extension
            mkdir $home/Desktop/LOextension $home/DEB/LibreOffice/extension/
                # SBBIC Khmer Spelling Checker
                    # get link
                    L=$(python3 SBBICKhmerSpellingChecker.py)
                    # download
                    wget -P $home/Desktop/LOextension/ $L

                # TexMath
                    # get link
                    L=$(python3 TexMathLink.py)
                    # download
                    wget -P $home/Desktop/LOextension/ $L
            cp $home/Desktop/LOextension/* $home/DEB/LibreOffice/extension/

# Other (require connected to github via ssh)
    # Download additional fonts
    git clone -y git@github.com:Dimorng/extra-Khmer-and-Englsh-fonts-for-Linux-Mint.git $home/.fonts/
    # Download additional wallpapers
    git clone -y git@github.com:Dimorng/extraWallpapers.git $home/Others/extraWallpapers/
    # Download additional icons
    git clone -y git@github.com:Dimorng/customIcons.git $home/Others/customIcons/

# Clean up system and reboot
mv $home/TMP/*.deb $home/DEB/
rm -rf $home/TMP
mkdir $home/Documents/SOFT/
mv $home/DEB $home/Soft $home/Documents/SOFT/
apt clean && apt autoclean && apt autoremove && reboot

