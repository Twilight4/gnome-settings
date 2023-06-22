# GNOME - Aesthetic Gruvbox Dark Color Theme Setup
## Installing GNOME Package Dependencies and file resources
```
sudo pacman -Syu
sudo pacman -S gnome-tweak-tool gnome-extensions-app extension-manager kitty neofetch git conky jq curl rsync variety
git clone https://github.com/Twilight4/gnome-settings ~/downloads/gnome-settings
```

## Installing GTK theme
```
rsync -av ~/downloads/gnome-settings/themes/.config ~
ls -al ~/.config/.local/share/themes
ln -s ~/.config/.local/share/themes/Gruvbox-Dark-BL-MOD/gtk-4.0/assets ~/.config/gtk-4.0
ln -s ~/.config/.local/share/themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk.css ~/.config/gtk-4.0
ln -s ~/.config/.local/share/themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
```

## Installing icons and cursor theme
```
rsync -av ~/downloads/gnome-settings/icons/.config ~
ls -al ~/.config/.local/share/icons
rsync -av ~/downloads/gnome-settings/cursors/.config ~ 
ls -al ~/.config/.local/share/icons
```

## Installing fonts and wallpapers
```
rsync -av ~/downloads/gnome-settings/fonts/.config ~
ls -al ~/.config/.local/share/fonts
sudo rsync -av ~/downloads/gnome-settings/wallpapers/usr /
ls -al /usr/share/backgrounds/gruvbox
```

## Installing GNOME extensions
```
rsync -av ~/downloads/gnome-settings/gnome-extensions/.config ~
ls -al ~/.config/.local/share/gnome-shell/extensions
```

## Importing GNOME shell configurations
```
cd ~/downloads/gnome-settings/gnome-shell-config
dconf load /org/gnome/desktop/ < org-gnome-desktop.conf
dconf load /org/gnome/shell/ < org-gnome-shell.conf
```
go to settings > multitasking and change workspaces to: **fixed number of workspaces**: **4**

## Importing system settings
```
cd ~/downloads/gnome-settings/dconf-settings
dconf load / < gnome-settings-backup.ini
```

### Tip: Exporting system settings
```
dconf dump / > gnome-setting-backup.ini
```

## Importing switch-minimized script
```
rsync -av ~/downloads/gnome-settings/gnome-scripts/.config ~
ls -al ~/.config/zsh/bash-scripts
```

## Importing firefox theme config with UI fix
1. Go to `about:config`
2. Search for: `toolkit.legacyUserProfileCustomizations.stylesheets` - switch to **true**
3. Download configurations and theme:
```
git clone https://github.com/black7375/Firefox-UI-Fix.git ~/downloads/Firefox-UI-Fix
cp ~/downloads/Firefox-UI-Fix/user.js ~/.mozilla/8bejujaq.default-release
mkdir ~/.mozilla/8bejujaq.default-release/chrome && mv ~/downloads/Firefox-UI-Fix/* ~/.mozilla/8bejujaq.default-release/chrome && rm -rf ~/downloads/Firefox-UI-Fix
curl -s https://codeberg.org/Freeplay/Firefox-Onebar/raw/branch/main/userChrome.css >> ~/.mozilla/8bejujaq.default-release/chrome/userChrome.css
```
3. Click the `Clear startup cache…` at the top of `about:support`

## Importing conky configurations
```
rsync -av ~/downloads/gnome-settings/conky-config/.config ~
ls -al ~/.config/conky
ls -al ~/.config/autostart
```
### Change weather location
1. Go to https://openweathermap.org/ and search your city
2. Copy the city ID from URL and paste it in city_id variable:
```
nvim ~/.config/conky/alshain-mod/scripts/weather-v2.0.sh
```

## Importing Variety configurations
```
rsync -av ~/downloads/gnome-settings/variety/.config ~
ls -al ~/.config/variety
```

## Importing kitty, foot and neofetch themes
```
rsync -av ~/downloads/gnome-settings/kitty-theme/.config ~
ls -al ~/.config/kitty
rsync -av ~/downloads/gnome-settings/foot-theme/.config ~
ls -al ~/.config/foot
rsync -av ~/downloads/gnome-settings/neofetch-theme/.config ~
ls -al ~/.config/neofetch
```

## Importing neovim and emacs theme
```
rsync -av ~/downloads/gnome-settings/neovim-theme/.config ~
ls -al ~/.config/nvim
rm -rf ~/downloads/gnome-settings
```
Emacs theme: `SPC m t` - gruvbox-dark

## Importing post-installation settings
```
~/downloads/gnome-settings/gnome-setup-script/setup.sh
```

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
| <kbd>SUPER</kbd> + <kbd>Z</kbd>                    | Resize window                                 |
| <kbd>SUPER</kbd> + <kbd>TAB</kbd>                  | Switch applications                           |
| <kbd>ALT</kbd> + <kbd>ESC</kbd>                    | Switch windows directly                       |
| <kbd>ALT</kbd> + <kbd>TAB</kbd>                    | Switch windows on current workspace           |
| <kbd>SUPER</kbd> + <kbd>backtick</kbd>             | Switch windows of an application              |
| <kbd>SUPER</kbd> + <kbd>N</kbd>                    | Show the notification list                    |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>N</kbd> | Focus the active notification                 |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>X</kbd> | Show the run command prompt                   |

## Custom keybinds
### Tiling-Assistant extension
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>X</kbd>                    | Tile Editing Mode                             |
| <kbd>SUPER</kbd> + <kbd>M</kbd>                    | Toggle 'Always on Top'
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle Maximization                           |
| <kbd>SUPER</kbd> + <kbd>R</kbd>                    | Restore Window Size                           |
| <kbd>SUPER</kbd> + <kbd>C</kbd>                    | Move Window to Center                         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>K</kbd> | Tile to top                                   |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>J</kbd> | Tile to bottom                                |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>H</kbd> | Tile to left                                  |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>L</kbd> | Tile to right                                 |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>J</kbd>  | Tile to top-left                              |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>K</kbd>  | Tile to top-right                             |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>H</kbd>  | Tile to bottom-left                           |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>L</kbd>  | Tile to bottom-right                          |

### Tiling-Assistant - editing mode
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>h/j/k/l</kbd>                                             | Navigate focus                                |
| <kbd>CTRL</kbd> + <kbd>h/j/k/l</kbd>                           | Swaps the highlighted windows                 |
| <kbd>SHIFT</kbd> + <kbd>h/j/k/l</kbd>                          | Moves the tile group to the monitor           |
| <kbd>SHIFT</kbd> + <kbd>ALT</kbd> + <kbd>h/j/k/l</kbd>         | Moves the tile group to the workspace         |
| <kbd>SUPER</kbd> + <kbd>h/j/k/l</kbd>                          | Resizes the highlighted window                |
| <kbd>Q</kbd>                                                   | Quits the highlighted window                  |
| <kbd>R</kbd>                                                   | Restores the highlighted window               |
| <kbd>E</kbd>                                                   | Expands the highlighted window                |
| <kbd>C</kbd>                                                   | Cycles through the half-sized tiling states   |
| <kbd>SPACE</kbd>                                               | Opens the tiling popup                        |
| <kbd>Esc/Return</kbd>                                          | Leaves the tile editing mode                  |

### Clipboard Indicator extension
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>V</kbd>                                | Show the clipboard menu                       |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>V</kbd>             | Clear the clipboard history                   |
| <kbd>SUPER</kbd> + <kbd>ALT</kbd> + <kbd>P</kbd>               | Previous entry                                |
| <kbd>SUPER</kbd> + <kbd>ALT</kbd> + <kbd>N</kbd>               | Next entry                                    |

### Dash to Dock extension - TODO
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>1<kbd>  | Hide app 1                                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>2<kbd>  | Hide app 2                                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>3<kbd>  | Hide app 3                                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>4<kbd>  | Hide app 4                                    |
| <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>1<kbd>   | Launch app 1                                  |
| <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>2<kbd>   | Launch app 2                                  |
| <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>3<kbd>   | Launch app 3                                  |
| <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>4<kbd>   | Launch app 4                                  |

### Focus changer extension
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>H</kbd>                    | Focus left                                    |
| <kbd>SUPER</kbd> + <kbd>J</kbd>                    | Focus down                                    |
| <kbd>SUPER</kbd> + <kbd>K</kbd>                    | Focus up                                      |
| <kbd>SUPER</kbd> + <kbd>L</kbd>                    | Focus right                                   |

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

### Other
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>ALT</kbd> + <kbd>SPACE</kbd>                              | Activate the window menu                      |
| <kbd>SUPER</kbd> + <kbd>SPACE</kbd>                            | Switch to next input source                   |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>SPACE</kbd>         | Switch to previous input source               |
| <kbd>SUPER</kbd> + <kbd>F1</kbd>                               | Launch help browser                           |

## Troubleshooting GNOME freeze at login screen login screen (after each step see if the problem is solved)
1. Restart the display manager or try to disabling it - Ctrl+Alt+F2 (or alternative), issue command:
    - sudo systemctl restart gdm
    - sudo systemctl disable gdm
2. Restart the PC
3. Clear GNOME Shell extensions or lastly installed one in virtual console and then restart display manager:
    - rm -rf ~/.config/.local/share/gnome-shell/extensions/culprit-extension
4. Reinstall GNOME and then restart the PC: 
    - sudo pacman -Rns gnome-shell gnome-session
    - sudo pacman -S gnome-shell gnome-session
5. Use a live USB or recovery mode 
