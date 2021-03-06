## Run

1. clone (this repo) or move script directory (SETUP_SCRIPT/) to (your) home directory of current user:

```
git clone https://github.com/Dimorng/SETUP_SCRIPT.git ~/SETUP_SCRIPT/
```
2. run script

```bash
cd ~/SETUP_SCRIPT/ && chmod +x setup.sh && sudo ./setup.sh
```
3. **IMPORTANT**: during script is running, after Bitwarden is installed, add SSH key to GitHub account (and deleted unused SSH Key). *SSH KEY IS STORED IN `~/Desktop/ssh_key_must_add_to_github`*.

## Command created after successully running script

Alias command created:
- `clean` : system clean up, equivalant to `sudo apt clean && sudo apt autoclean && sudo apt autoremove`
- `pbcopy path/to/file` : copy content of file to clipboard
- `pbpaste path/to/file` : paste content from clipboard

Command (shell function) created:
- `cLO` check lastest version of LibreOffice (.deb) available to download on official LibreOffice website
    - `cLO -U` update LibreOffice to the(/that) latest version (.deb)

## Tested with: 
- Linux Mint 20.1 (Ulyssa) Cinnamon Edition (on 4 May 2021)
- Linux Mint 20.2 (Uma) Cinnamon Edition (on 19 Oct 2021)

## Complete the setup (manually done)

1. Setting Bitwarden
    - <kbd>Ctrl</kbd> + <kbd>,</kbd> to access setting
        - enable Minimize when copying to clipboard
        - Clear Clipboard: 10 seconds 

![Bitwarden setting](image/BitwardenSetting.png)

2. Assign Shortcut key for closing all open windows
    - Menu > Keyboard > Shortcut
    - Assign <kbd>Super</kbd> + <kbd>Backspace</kbd> to `~/Others/Apps/close-all-windows.sh`

![Assign Shortcut key for closing all open windows](image/AssignShortcutToCAOW.png)

3. Configure LibreOffice
    - install extensions in `~/Desktop/LOextension/`
        - SBBIC Khmer Spelling Checker
        - TexMath
        - LanguageTool (download from https://languagetool.org/)
    - add addtional preamble (in `~/Desktop/LOextension/extra-line-to-put-in-texmath-preamble-and-save-as-global`) of TexMath and Save as Global

    ![add addtional preamble of TexMath and Save as Global](image/AdditonalTexMathPreamble.png)

    - enable Complex text layout and choose Khmer
        - Tools > Options > Language Settings > Languages > Complex text layout > Khmer

    ![enable Complex text layout and choose Khmer](image/enableKhmerCompexTextLayout.png)

    - change Measurement unit to Centimeters
        - Tools > Options > LibreOffice * > General > Measurement unit > Centimeters

    ![change Measurement unit to Centimeters](image/SetUnitToCentimeters.png)

4. Welcome Screen

    Menu > Welcome Screen > First Steps:
    - create **_System Snapshots_**: leave everything as default except **Schedule: Weekly (Keep 3)**
    - install additional drivers using **Driver Manager**
    - Enable **Firewall**: 
        - Profile ??? Home
        - **Status ??? Enable**
        - **Incoming ??? Deny**
        - Outgoing ??? Allow 

    - disable Show this dislog at startup

    ![Linux Mint Cinnamon Welcome](image/LinuxMintCinnamonWelcome.png)

5. Enable **Redshift Autostart**
    - Menu > Redshift
    - Redshift applet (left hand side panel) > autostart

    ![enable redshift autostart](image/EnableRedshiftAutostart.png)

6. Add Khmer Keyboard Layout and change switching layout shortcut
    - Menu ??? Keyboard ??? Layout ??? + ??? Khmer (Cambodia) ??? Add
    - Options... ??? Switching to another layout ??? **Both Shift Together** (fix conflict with LibreOffice shortcut <kbd>Shift</kbd> + <kbd>Crtl</kbd> + <kbd>Alt</kbd> + <kbd>v</kbd> [Paste Unformatted Text Shortcut])

    ![Keyboard Layout Configure](image/KeyboardLayoutConf.png)

7. Change Clock & Date Format
    - **disable 24h clock**: clock applet (left click) > Date & Time Settings > disable Use 24h clock

    ![disable 24h clock](image/Disable24hClock.png)

    - suggeted clock format on the panel: `%l:%M %p (%Z)%n(%a) %d/%m/%Y`
        - clock applet (right click) > configure... > enable Use a custom date format > Date format: `%l:%M %p (%Z)`

        ![change clock format on the panel](image/customPanelDateFormat.png)

    - suggeted clock format on the login screen top panel: `%a.%e.%b.%Y ?????? %l:%M %p (%Z)`
        - Menu > Login window > Settings > Clock format: `%a.%e.%b.%Y ?????? %l:%M %p (%Z)`

        ![change clock format on the login screen top panel](image/LoginScreenClockFormat.png)

8. Install Additional Applets

    recommended applets:

    a. [Color Picker](https://cinnamon-spices.linuxmint.com/applets/view/179) (easily activate (pick up color) by `Ctrl + Alt + P` Key Binding)

    b. [Clipboard QR code applet](https://cinnamon-spices.linuxmint.com/applets/view/213) (required to `sudo apt install python3-zbar` to activate bar/qr code scanning fuctionality)

    ![Recommended Additonal Applets](image/recommended_additional_applets.png)


9. Customize bottom panel

    Recommended customize to look like this:

    ![Suggested Customized bottom panel](image/suggestBotomPanelCustomize.png)

    - to arrange icons on left hand side panel, **just drag it**
    - to arrange icons on right hand side panel
        - **first enale Panel edit mode**
        - then arrange the applets by dragging it

        ![enale Panel edit mode to arrange applets on the right hand side of the panel](image/enablePanelEditMode.png)

10. Enable and disable some sounds
    
    Menu > Sound > Sounds:

    - sounds to **disable**:
        - Starting Cinnamon
        - Switching Workspace
    - sound to **enable**: **Showing Notification**

    ![Enable and disable some sounds](image/enableNdisableSomeSounds.png)

11. (Optional) Download songs:

```
git clone https://github.com/Dimorng/SongCollection.git ~/Music
```

12. (Optional) Install Ttyper to Test Your Typing Speed in Linux Terminal 

    - installation

    ```bash
    sudo apt update
    sudo apt install cargo
    cargo install ttyper
    ```

    - crate symbolic link to call (lanch) ttyper in terminal

    ```
    sudo ln -s ~/.cargo/bin/ttyper /usr/local/bin/ttyper
    ```
    [guid about ttyper by itsfoss](https://itsfoss.com/ttyper/)

13. Ulauncher setting

    **Preference**
    - Number of frequenct apps to show: `4`
    - Show indicator icon: `disable`
    - Lauch at login: `enable`

    **Shortcut**
    - Name: `Emojipedia`, Keyword: `emp`, Query or Script: `https://emojipedia.org/`, Run without argument: `enable`, Icon: `~/Others/customIcons/220px-Emojipedia_logo.png`

    **Extensions**
    - Name: `Emoji`, by: `Aleksandr Gornostal`, URL: `https://github.com/Ulauncher/ulauncher-emoji`

14. Customized Bash Prompt (optional)
    - copy `SETUP_SCRIPT/other/aliasesNfuctions/bash_custom_promt` and paste to `~` and rename it to `.bash_custom_promt`
    - add this code to `.bashrc` (see picture):
    ```
    #Add custom promt file
    if [ -f ~/.bash_custom_promt ]; then
        . ~/.bash_custom_promt
    fi
    ```
    ![custom bash promt](image/bash_custom_promt.png)
    
    bash prompt after customized:
    ![bash prompt after customized](image/bash_promt_after_customized.png)

15. Install More App

    a. [Mailspring Email Client](https://getmailspring.com/download) (recommended to install via .deb package)

    ![Mailspring Email Client](image/mailspring_email_client.png)
