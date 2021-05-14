# Script to update LibreOffice to the lastest version

#!/bin/sh

# define $home as the home directory of currently look in user:
    # find username of current account
    pwd > /home/tmp.link
    user=$(python3 python/whoRu.py)
    rm /home/tmp.link
    # path of home dir of current user
    home='/home/'$user

# Uninstall LibreOffcie installed by default
apt-get remove --purge libreoffice* -y
apt-get clean
apt-get autoclean
apt-get autoremove
# Dowload Latest version of LibreOffice for office website
    # get Download Link
    L=$(python3 $home/SETUP_SCRIPT/python/LO_lastest_V_link.py)
    # Download lastest version of LibreOffcie .deb files
    sudo -u $user mkdir $home/Desktop/LibreOfficeSOFT/ $home/Desktop/TMP/
    sudo -u $user wget $L -P $home/Desktop/LibreOfficeSOFT/
    sudo -u $user tar -xf $home/Desktop/LibreOfficeSOFT/*.tar.gz -C $home/Desktop/TMP/
    # install lastest vesion of LibreOffice
    dpkg -i $home/Desktop/TMP/LibreOffice*/DEBS/*.deb
    # clean up & reboot
    rm -r $home/Desktop/TMP/
    reboot
