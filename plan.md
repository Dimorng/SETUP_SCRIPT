# Plan

* [x] Merge with [Linux-Mint-File](https://github.com/Dimorng/Linux-Mint-File.git) repo
    - modified `set-up.sh` script
    - delete [Linux-Mint-File](https://github.com/Dimorng/Linux-Mint-File.git) repo

* [x] put python file in one folder

* [x] simplyfied aliase and shell funciton code in `set-up.sh`

* [x] smarter configure `reshift.conf` - check if `reshift.conf` already exit before doing sth

* [x] Document manually set up work

* [x] add 'How to setup Ttyper' as optional 

* [ ] Update Manually set up guide

* [ ] modified setup.sh to create only symbolic link in that point to 
    
    - ~/.bash_aliases -> SETUP_SCRIPT/other/aliasesNfuctions/bash_aliases
    - ~/.bash_custom_promt -> SETUP_SCRIPT/other/aliasesNfuctions/bash_custom_promt
    - ~/.bash_functions -> SETUP_SCRIPT/other/aliasesNfuctions/bash_functions

    - ~/.config/redshift.conf -> ../SETUP_SCRIPT/other/redshift.conf

    - ~/Others/Apps/close-all-windows.sh -> ../../SETUP_SCRIPT/other/close-all-windows.sh
