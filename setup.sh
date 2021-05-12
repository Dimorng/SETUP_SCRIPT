#!/bin/sh

# for basic set up

# define $home as the home directory of currently look in user:
    # find username of current account
    pwd > /home/tmp.link
    user=$(python3 whoRu.py)
    rm /home/tmp.link
    # path of home dir of current user
    home='/home/'$user

# Working with Github
    # generate ssh key on local pc
    sudo -u $user ssh-keygen -t rsa -b 4096 -C "mdmarticles@gmail.com"
    # add shh key to ssh keygen
    eval "$(ssh-agent -s)" && ssh-add $home/.ssh/id_rsa
    # Manually add ssh key to GitHub
    cp $home/.ssh/id_rsa.pub $home/Desktop/ssh_key_must_add_to_github

# Dirextory 
    # Dir to stort file & App
    sudo -u $user mkdir $home/Others/ $home/Others/Apps/
    # Temporary Dir that store downloaded file
    sudo -u $user mkdir $home/DEB $home/Soft $home/TMP

# Update system
apt update && apt upgrade -y

# Download and install Bitwaden
    # Download Bitwaden
    sudo -u $user wget -P $home/DEB 'https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=deb'
    # Install Bitwaden
    dpkg -i $home/DEB/*.deb
    sudo -u $user mv $home/DEB/*.deb $home/TMP/

# Prolone laptop battery
apt install -y tlp tlp-rdw && tlp start

# configure redshif for Cambodia location
sudo -u $user wget -P $home/.config/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/redshift.conf'

# fix Khmer digraph in Khmer keyboard layout
sudo -u $user cp /usr/share/X11/xkb/symbols/kh $home/Documents/Original-Khmer-Keyboard-Layout
rm /usr/share/X11/xkb/symbols/kh
wget -P /usr/share/X11/xkb/symbols/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/kh' 

# Download bash script that close all opened windows
sudo -u $user wget -P $home/Others/Apps/ 'https://raw.githubusercontent.com/Dimorng/Linux-Mint-File/main/close-all-windows.sh'
chmod +x $home/Others/Apps/close-all-windows.sh

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
            sudo -u $user wget -P $home/DEB/ 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb'
            # Bitwaden 
                # Done At the beginning
            # Visual studio code
            sudo -u $user wget $(python3 vscode.py) -P $home/DEB/

        # install all .deb
        dpkg -i $home/DEB/*.deb
    
    # Install Telegram
        # Download telegram
        sudo -u $user wget -P $home/Soft 'https://telegram.org/dl/desktop/linux'
        # Install telegram
        sudo -u $user tar -xf $home/Soft/*.tar.xz -C /home/dimorng/Others/Apps/

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
            sudo -u $user mkdir $home/DEB/LibreOffice/
            sudo -u $user wget $L -P $home/DEB/LibreOffice/
            sudo -u $user tar -xf $home/DEB/LibreOffice/*.tar.gz -C $home/TMP/
            # install LibreOffice
            dpkg -i $home/TMP/LibreOffice*/DEBS/*.deb
            # Download extension
            sudo -u $user mkdir $home/Desktop/LOextension $home/DEB/LibreOffice/extension/
                # SBBIC Khmer Spelling Checker
                    # get link
                    L=$(python3 SBBICKhmerSpellingChecker.py)
                    # download
                    sudo -u $user wget -P $home/Desktop/LOextension/ $L

                # TexMath
                    # get link
                    L=$(python3 TexMathLink.py)
                    # download
                    sudo -u $user wget -P $home/Desktop/LOextension/ $L
            sudo -u $user cp $home/Desktop/LOextension/* $home/DEB/LibreOffice/extension/

# Other (require connected to github via ssh)
    # Download additional fonts
    sudo -u $user git clone git@github.com:Dimorng/extra-Khmer-and-Englsh-fonts-for-Linux-Mint.git $home/.fonts/
    # Download additional wallpapers
    sudo -u $user git clone git@github.com:Dimorng/extraWallpapers.git $home/Others/extraWallpapers/
    # Download additional icons
    sudo -u $user git clone git@github.com:Dimorng/customIcons.git $home/Others/customIcons/

    # create alias (command) for updating LibreOffice to the lastest version
    chmod +x $home/SETUP_SCRIPT/updateLibreOffice.sh
    echo '#update LibreOffice' >> $home/.bash_aliases
    echo "alias ULO='cd ~/SETUP_SCRIPT/ && sudo ./updateLibreOffice.sh'" >> $home/.bash_aliases

    # reate alias (command) for clean up system
    echo '#clean up system' >> $home/.bash_aliases
    echo "alias clean='sudo apt clean && sudo apt autoclean && sudo apt autoremove'" >> $home/.bash_aliases

# Clean up system and reboot
sudo -u $user mv $home/TMP/*.deb $home/DEB/
rm -rf $home/TMP
sudo -u $user mkdir $home/Documents/SOFT/
sudo -u $user mv $home/DEB $home/Soft $home/Documents/SOFT/
apt clean && apt autoclean && apt autoremove && reboot

