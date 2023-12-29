# GNOME - Aesthetic Gruvbox Dark Color Theme Setup
## Installing GNOME Package Dependencies and file resources
```bash
sudo pacman -Syu
sudo pacman -S --needed gnome-tweak-tool gnome-shell-extensions extension-manager kitty neofetch git conky jq curl rsync gnome-control-center gnome-keyring gnome-nettool gnome-power-manager gnome-shell gnome-usage 

paru -S gnome-shell-extension-gamemode-git gdm-git xdg-desktop-portal-gnome
git clone https://github.com/Twilight4/gnome-settings ~/downloads/gnome-settings
```

## Installing GTK theme
```bash
rsync -av ~/downloads/gnome-settings/themes/.config ~
ls -al ~/.config/.local/share/themes
ln -s ~/.config/.local/share/themes/Gruvbox-Dark-BL-MOD/gtk-4.0/assets ~/.config/gtk-4.0
ln -s ~/.config/.local/share/themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk.css ~/.config/gtk-4.0
ln -s ~/.config/.local/share/themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
```

## Installing icons and cursor theme
```bash
rsync -av ~/downloads/gnome-settings/icons/.config ~
ls -al ~/.config/.local/share/icons
rsync -av ~/downloads/gnome-settings/cursors/.config ~ 
ls -al ~/.config/.local/share/icons
```

## Installing fonts and wallpapers
```bash
rsync -av ~/downloads/gnome-settings/fonts/.config ~
ls -al ~/.config/.local/share/fonts
sudo rsync -av ~/downloads/gnome-settings/wallpapers/usr /
ls -al /usr/share/backgrounds/gruvbox
```

## Installing GNOME extensions
```bash
rsync -av ~/downloads/gnome-settings/gnome-extensions/.config ~
cat ~/.config/.local/share/gnome-shell/extensions/extensions.txt
```

## Importing GNOME shell configurations
```bash
cd ~/downloads/gnome-settings/gnome-shell-config
dconf load /org/gnome/desktop/ < org-gnome-desktop.conf
dconf load /org/gnome/shell/ < org-gnome-shell.conf
cd -
```

## Importing system settings and applying GTK themes
```bash
cd ~/downloads/gnome-settings/dconf-settings
dconf load / < gnome-settings.ini
cd -
~/downloads/gnome-settings/gnome-scripts/gtkthemes
```

#### Tip: Exporting system settings
```bash
dconf dump / > gnome-settings.ini
```

## Importing GNOME scripts
```bash
sudo mv ~/downloads/gnome-settings/gnome-scripts/* /usr/bin
```

## Importing conky configurations
```bash
rsync -av ~/downloads/gnome-settings/conky-config/.config ~
ls -al ~/.config/conky
ls -al ~/.config/autostart
```

### Change weather location
1. Go to https://openweathermap.org/ and search your city
2. Copy the city **ID** from URL and paste it in `city_id` variable in file: `~/.config/conky/alshain-mod/scripts/weather-v2.0.sh`

## Importing CLI tools themes
```bash
rsync -av ~/downloads/gnome-settings/kitty-theme/.config ~
ls -al ~/.config/kitty
rsync -av ~/downloads/gnome-settings/foot-theme/.config ~
ls -al ~/.config/foot
rsync -av ~/downloads/gnome-settings/neofetch-theme/.config ~
ls -al ~/.config/neofetch
rsync -av ~/downloads/gnome-settings/btop-theme/.config ~
ls -al ~/.config/btop
```

## Copying GTK themes to system-wide location for GDM recognition
```bash
sudo cp -r ~/.config/.local/share/icons/Gruvbox-plus-icon-MOD/ /usr/share/icons
sudo cp -r ~/.config/.local/share/icons/Gruvbox_Cursors_Light /usr/share/icons
```

## Importing autostart applications and post-installation settings
```bash
rsync -av ~/downloads/gnome-settings/autostart/.config ~
ls -al ~/.config/autostart
~/downloads/gnome-settings/gnome-setup-script/setup.sh
rm -rf ~/downloads/gnome-settings
```

### Other customization options
  - **Neovim** theme can be changed to gruvbox
  - **Emacs** theme can be changed by using command `load-theme`
  - **Firefox** theme is changed to gruvbox GTK theme
  - **GDM** theme and settings are set to gruvbox in dconf database but you can always change them using `gdm-settings` app
  - User account's pfp can be set

# Keybinds
## General
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>Return</kbd>               | Open Kitty terminal                           |
| <kbd>SUPER</kbd> + <kbd>A</kbd>                    | Show all apps                                 |
| <kbd>SUPER</kbd> + <kbd>Q</kbd>                    | Exit focused window                           |
| <kbd>SUPER</kbd> + <kbd>Y</kbd>                    | Lock screen                                   |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>Q</kbd> | Power off                                     |
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle fullscreen of focused window           |
| <kbd>SUPER</kbd> + <kbd>D</kbd>                    | Dashboard menu                                |
| <kbd>SUPER</kbd> + <kbd>S</kbd>                    | Hide window                                   |
| <kbd>SUPER</kbd> + <kbd>P</kbd>                    | Displays/Monitors menu                        |
| <kbd>SUPER</kbd> + <kbd>TAB</kbd>                  | Switch applications                           |
| <kbd>ALT</kbd> + <kbd>ESC</kbd>                    | Switch windows directly                       |
| <kbd>ALT</kbd> + <kbd>TAB</kbd>                    | Switch windows on current workspace           |
| <kbd>SUPER</kbd> + <kbd>backtick</kbd>             | Switch windows of an application              |
| <kbd>SUPER</kbd> + <kbd>N</kbd>                    | Show the calendar widget                      |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>X</kbd> | Show the run command prompt - type `gnome-restart` to restart gnome shell |

## Default keybinds
### Accessibility
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>S<kbd>                | Turn screen reader on or off                  |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>8<kbd>                | Turn zoom on or off                           |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>=<kbd>                | Zoom in                                       |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>-<kbd>                | Zoom out                                      |

### Navigation
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SHIFT</kbd> + <kbd>ALT</kbd> + <kbd>H<kbd>                | Move window one monitor to the left           |
| <kbd>SHIFT</kbd> + <kbd>ALT</kbd> + <kbd>L<kbd>                | Move window one monitor to the right          |
| <kbd>SUPER</kbd> + <kbd>I</kbd>                                | Workspace 1 - terminal                        |
| <kbd>SUPER</kbd> + <kbd>O</kbd>                                | Workspace 2 - terminal                        |
| <kbd>SUPER</kbd> + <kbd>W</kbd>                                | Workspace 3 - web browser                     |
| <kbd>SUPER</kbd> + <kbd>E</kbd>                                | Workspace 4 - emacs                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>I</kbd>             | Switch to Workspace 1                         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>O</kbd>             | Switch to Workspace 2                         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>W</kbd>             | Switch to Workspace 3                         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>E</kbd>             | Switch to Workspace 4                         |

### Screenshots
| Keybind                                                            | Description                               | 
| ------------------------------------------------------------------ | ----------------------------------------- |
| <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>R</kbd> | Recored a screencast interactively        | 
| <kbd>SHIFT</kbd> + <kbd>PRINT</kbd> + <kbd>F</kbd>                 | Take a screenshot                         | 
| <kbd>PRINT</kbd>                                                   | Take a screenshot interactively           | 
| <kbd>ALT</kbd> + <kbd>PRINT</kbd>                                  | Take a screenshow of a window             | 

### Custom-set keybinds
| Keybind                                                            | Description                               | 
| ------------------------------------------------------------------ | ----------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>C</kbd>                 | Activate Caffeine for 30mins              |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>T</kbd>                 | Launch athena welcome menu                |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>Y</kbd>                 | Launch variables menu                     |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>U</kbd>                 | Launch role viewer                        |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>M</kbd>  | Update mirrors                         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>U</kbd>  | Update system                          |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>ESC</kbd>               | Launch gnome usage                        |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>Z</kbd>                 | Launch webcam                             |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>ESC</kbd>                | Launch btop                               |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>C</kbd>                  | Launch cava                               |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>U</kbd>                  | Launch tty-clock                          |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>M</kbd>                  | Launch musikcube                          |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>,</kbd>                  | Launch cmatrix                            |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>F</kbd>                  | Launch neofetch                           |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>N</kbd>                  | Launch newsboat                           |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>P</kbd>                  | Launch pipes                              |
| <kbd>SUPER</kbd> + <kbd>ALT</kbd> + <kbd>V</kbd>                   | Toggle VPN                                |

### Other
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>ALT</kbd> + <kbd>SPACE</kbd>                              | Activate the window menu                      |
| <kbd>SUPER</kbd> + <kbd>SPACE</kbd>                            | Switch to next input source                   |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>SPACE</kbd>         | Switch to previous input source               |
| <kbd>SUPER</kbd> + <kbd>F1</kbd>                               | Launch help browser                           |

## Troubleshooting GNOME session freeze
1. Restart the display manager or try to disabling it - **Ctrl+Alt+F2** (or alternative), issue command:
    - `sudo systemctl restart gdm`
    - `sudo systemctl disable gdm`
2. Use command in virtual console which should make the session functional again: `gnome-restart`
3. Use `killall` command: `killall -3 gnome-shell`
4. Restart the PC
5. Clear GNOME Shell extensions or lastly installed one in virtual console and then restart display manager:
    - `rm -rf ~/.config/.local/share/gnome-shell/extensions/culprit-extension`
6. Reinstall GNOME and then restart the PC: 
    - `sudo pacman -Rns gnome-shell gnome-session`
    - `sudo pacman -S gnome-shell gnome-session`
7. Use a live USB or recovery mode 
