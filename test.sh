#!/bin/sh

# header start ===
# define $home as the home directory of currently look in user:
    # find username of current account
    pwd > /home/tmp.link
    user=$(python3 python/whoRu.py)
    rm /home/tmp.link
    # path of home dir of current user
    home='/home/'$user

# Directory 
    # Dir to stort file & App
    #sudo -u $user mkdir $home/Others/ $home/Others/Apps/
    # Temporary Dir that store downloaded file
    #sudo -u $user mkdir $home/DEB $home/Soft $home/TMP
# header end =====

# test code start here ===
python3 $home/SETUP_SCRIPT/python/TexMathLink.py
# test code end here ===

# foot start =====
# Clean up system and reboot
#sudo -u $user mv $home/TMP/*.deb $home/DEB/
#rm -rf $home/TMP
#sudo -u $user mkdir $home/Documents/SOFT/
#sudo -u $user mv $home/DEB $home/Soft $home/Documents/SOFT/
#apt clean && apt autoclean && apt autoremove #&& reboot
#footer end =====
