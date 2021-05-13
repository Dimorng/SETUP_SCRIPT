## Run

1. clone (this repo) or move script directory (SETUP_SCRIPT/) to your home directory of current user:

```
git clone https://github.com/Dimorng/SETUP_SCRIPT.git ~/SETUP_SCRIPT/
```
2. run script

```bash
cd ~/SETUP_SCRIPT/
chmod +x setup.sh && sudo ./setup.sh
```

## Note

Alias command created:
- `clean` for system clean up, equivalant to `sudo apt clean && sudo apt autoclean && sudo apt autoremove`

command (shell function) created:
- `cLO` check lastest version of LibreOffice (.deb) available to download on official LibreOffice website
    - `cLO -U` update LibreOffice to the(/that) latest version (.deb)

Tested with: 
- Linux Mint 20.1 (Ulyssa) Cinnamon Edition (on 4 May 2021)
