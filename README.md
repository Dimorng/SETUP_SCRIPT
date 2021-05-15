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
        - Profile → Home
        - **Status → Enable**
        - **Incoming → Deny**
        - Outgoing → Allow 

    - disable Show this dislog at startup

    ![Linux Mint Cinnamon Welcome](image/LinuxMintCinnamonWelcome.png)

5. Enable **Redshift Autostart**
    - Menu > Redshift
    - Redshift applet (left hand side panel) > autostart

    ![enable redshift autostart](image/EnableRedshiftAutostart.png)

6. Add Khmer Keyboard Layout and change switching layout shortcut
    - Menu → Keyboard → Layout → + → Khmer (Cambodia) → Add
    - Options... → Switching to another layout → **Both Shift Together** (fix conflict with LibreOffice shortcut <kbd>Shift</kbd> + <kbd>Crtl</kbd> + <kbd>Alt</kbd> + <kbd>v</kbd> [Paste Unformatted Text Shortcut])

    ![Keyboard Layout Configure](image/KeyboardLayoutConf.png)

7. Change Date Format
    - **disable 24h clock**: clock applet (left click) > Date & Time Settings > disable Use 24h clock

    ![disable 24h clock](image/Disable24hClock.png)

    - suggeted clock format on the panel: `%l:%M %p (%Z)`
        - clock applet (right click) > configure... > enable Use a custom date format > Date format: `%l:%M %p (%Z)`

        ![change clock format on the panel](image/customPanelDateFormat.png)

    - suggeted clock format on the login screen top panel: `%a.%e.%b.%Y ⏲️ %l:%M %p (%Z)`
        - Menu > Login window > Settings > Clock format: `%a.%e.%b.%Y ⏲️ %l:%M %p (%Z)`

        ![change clock format on the login screen top panel](image/LoginScreenClockFormat.png)

8. Customize bottom panel

    Recommended customize to look like this:

    ![Suggested Customized bottom panel](image/suggestBotomPanelCustomize.png)

    - to arrange icons on left hand side panel, **just drag it**
    - to arrange icons on right hand side panel
        - **first enale Panel edit mode**
        - then arrange the applets by dragging it

        ![enale Panel edit mode to arrange applets on the right hand side of the panel](image/enablePanelEditMode.png)

9. Enable and disable some sounds
    
    Menu > Sound > Sounds:

    - sounds to **disable**:
        - Starting Cinnamon
        - Switching Workspace
    - sound to **enable**: **Showing Notification**

    ![Enable and disable some sounds](image/enableNdisableSomeSounds.png)

10. (Optional) Download songs:

```
git clone https://github.com/Dimorng/SongCollection.git ~/Music
```