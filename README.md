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
- `ULO` for updating LibreOffice to the lastest version (downloaded .deb file that used during installation process is in ~/Desktop/LibreOfficeSOFT/, in case you want to used it laster, otherwise delete it)
- `clean` for system clean up, equivalant to `sudo apt clean && sudo apt autoclean && sudo apt autoremove`

Tested with: 
- OS: e.g. Linux Mint
- Version: e.g. 20.1
- Codename: e.g. Ulyssa
- DE: e.g. Cinnamon
- Date: e.g. 4 May 2021
