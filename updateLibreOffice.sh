# Script to update LibreOffice to the lastest version

#!/bin/sh
home='/home/'$(ls /home)

# Uninstall LibreOffcie installed by default
apt-get remove --purge libreoffice* -y
apt-get clean
apt-get autoclean
apt-get autoremove
# Dowload Latest version of LibreOffice for office website
    # get Download Link
    L=$(python3 LO_lastest_V_link.py)
    # Download LibreOffcie .deb files
    mkdir $home/Desktop/LibreOfficeSOFT/ $home/Desktop/TMP/
    wget $L -P $home/Desktop/LibreOfficeSOFT/
    tar -xf $home/Desktop/LibreOfficeSOFT/*.tar.gz -C $home/Desktop/TMP/
    dpkg -i $home/Desktop/TMP/LibreOffice*/DEBS/*.deb
    # clean up & reboot
    rm -r $home/Desktop/TMP/
    reboot
