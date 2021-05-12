#!/bin/sh

# define $home as the home directory of currently look in user:
    # find username of current account
    sudo pwd > /home/tmp.link
    user=$(python3 whoRu.py)
    sudo rm /home/tmp.link
    # path of home dir of current user
    home='/home/'$user
