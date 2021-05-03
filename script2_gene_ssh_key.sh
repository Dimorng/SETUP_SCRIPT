#!/bin/sh

# 2nd Script to run

# generate ssh key on local pc
ssh-keygen -t rsa -b 4096 -C "mdmarticles@gmail.com"

# add shh key to ssh keygen
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_rsa
