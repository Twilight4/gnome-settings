# GNOME - Aesthetic Gruvbox Dark Color Theme Setup
## Installing GNOME Package Dependencies and file resources
```
sudo pacman -Syu
sudo pacman -S gnome-tweak-tool gnome-extensions-app git curl rsync gnome-browser-connector extension-manager variety
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
go to settings > multitasking and change workspaces to fixed number of workspaces
## Importing Variety configurations
```
rsync -av ~/downloads/gnome-settings/variety/.config ~
ls -al ~/.config/variety
```
## Importing kitty and foot themes
```
rsync -av ~/downloads/gnome-settings/kitty-theme/.config ~
ls -al ~/.config/kitty
rsync -av ~/downloads/gnome-settings/foot-theme/.config ~
ls -al ~/.config/foot
```
## Importing my dconf database configuration (binary file)
```
rsync -av ~/downloads/gnome-settings/dconf-settings/.config ~
ls -al ~/.config/dconf
```
### Change emacs, nvim and web browser theme to Gruvbox dark

# Keybinds
## General
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>Return</kbd>               | Open Kitty terminal                           |
| <kbd>SUPER</kbd> + <kbd>A</kbd>                    | Show all apps                                 |
| <kbd>SUPER</kbd> + <kbd>Q</kbd>                    | Exit focused window                           |
| <kbd>SUPER</kbd> + <kbd>W</kbd>                    | Open Browser                                  |
| <kbd>SUPER</kbd> + <kbd>E</kbd>                    | Open Emacs                                    |
| <kbd>SUPER</kbd> + <kbd>I</kbd>                    | Open second workspace with terminal Edge (Default Profile) |
| <kbd>SUPER</kbd> + <kbd>O</kbd>                    | Open first workspace Microsoft Edge (Profile 1)            |
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle fullscreen of focused window           |

## Custom keybinds
### Tiling-Assistant extension
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>R</kbd>                    | Tile Editing Mode                             |
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle Maximization                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>R</kbd> | Restore Window Size                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>F</kbd> | Move Window to Center                         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>K</kbd> | Tile to top                                   |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>J</kbd> | Tile to bottom                                |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>H</kbd> | Tile to left                                  |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>L</kbd> | Tile to right                                 |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>H</kbd> | Tile to top-left                              |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>L</kbd> | Tile to top-right                             |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>J</kbd> | Tile to bottom-left                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>K</kbd> | Tile to bottom-right                          |
| <kbd>HOLD-CTRL</kbd> + <kbd>GRAB</kbd>             | Use Adaptive Tiling while grabbing a window   |

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
 
## Other - default keybinds
### Accessibility
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>S<kbd>                | Turn screen reader on or off                  |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>8<kbd>                | Turn zoom on or off                           |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>=<kbd>                | Zoom in                                       |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>-<kbd>                | Zoom out                                      |

### Launchers                                                                                        
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>F1</kbd>                               | Launch help browser                           |

### Navigation
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>PgUp</kbd>                             | Move to workspace on the left                 |
| <kbd>SUPER</kbd> + <kbd>PgDn</kbd>                             | Move to workspace on the right                |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>DOWN<kbd>           | Move window one monitor down                  |
| <kbd>SHIFt</kbd> + <kbd>SUPER</kbd> + <kbd>LEFT<kbd>           | Move window one monitor to the left           |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>RIGHT<kbd>          | Move window one monitor to the right          |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>UP<kbd>             | Move window one monitor up                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>PgUp<kbd>           | Move window one workspace to the left         |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>PgDn<kbd>           | Move window one workspace to the right        |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>End<kbd>            | Move window to last workspace                 |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>1<kbd>              | Move window to workspace 1                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>2<kbd>              | Move window to workspace 2                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>3<kbd>              | Move window to workspace 3                    |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>4<kbd>              | Move window to workspace 4                    |
| <kbd>SUPER</kbd> + <kbd>TAB</kbd>                              | Switch applications                           |
| <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>TAB</kbd>              | Switch system controls                        |
| <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>ESC</kbd>              | Switch system controls directly               |
| <kbd>SUPER</kbd> + <kbd>END</kbd>                              | Switch to last workspace                      |
| <kbd>SUPER</kbd> + <kbd>1</kbd>                                | Switch to workspace 1                         |
| <kbd>SUPER</kbd> + <kbd>2</kbd>                                | Switch to workspace 2                         |
| <kbd>SUPER</kbd> + <kbd>3</kbd>                                | Switch to workspace 3                         |
| <kbd>SUPER</kbd> + <kbd>4</kbd>                                | Switch to workspace 4                         |
| <kbd>ALT</kbd> + <kbd>ESC</kbd>                                | Switch windows directly                       |
| <kbd>ALT</kbd> + <kbd>TAB</kbd>                                | Switch windows on current workspace           |
| <kbd>ALT</kbd> + <kbd>F6</kbd> + <kbd>B</kbd>                  | Switch windows of an app directly             |
| <kbd>SUPER</kbd> + <kbd>backtick</kbd> + <kbd>B</kbd>          | Switch windows of an application              |

### Screenshots
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SHIFT</kbd> + <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>R</kbd> | Recored a screencast interactively        |
| <kbd>SHIFT</kbd> + <kbd>PRINT</kbd> + <kbd>F</kbd>             | Take a screenshot                             |
| <kbd>PRINT</kbd>                                               | Take a screenshot interactively               |
| <kbd>ALT</kbd> + <kbd>PRINT</kbd>                              | Take a screenshow of a window                 |

### System
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>N</kbd>                                | Focus the active notification                 |
| <kbd>SUPER</kbd> + <kbd>Y</kbd>                                | Lock screen                                   |
| <kbd>CTRL</kbd> + <kbd>ALT</kbd> + <kbd>DEL</kbd>              | Log out                                       |
| <kbd>SUPER</kbd> + <kbd>F10</kbd>                              | Open the app menu                             |
| <kbd>SUPER</kbd> + <kbd>A</kbd>                                | Show all apps                                 |
| <kbd>SUPER</kbd> + <kbd>V</kbd>                                | Show the notification list                    |
| <kbd>SUPER</kbd> + <kbd>F2</kbd>                               | Show the run command prompt                   |

### Typing
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>SPACE</kbd>                            | Switch to next input source                   |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>SPACE</kbd>         | Switch to previous input source               |

### Windows
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>ALT</kbd> + <kbd>SPACE</kbd>                              | Activate the window menu                      |
| <kbd>SUPER</kbd> + <kbd>Q</kbd>                                | Close window                                  |
| <kbd>SUPER</kbd> + <kbd>W</kbd> + <kbd>DEL</kbd>               | Hide window                                   |
| <kbd>ALT</kbd> + <kbd>F7</kbd>                                 | Move window                                   |
| <kbd>ALT</kbd> + <kbd>F8</kbd>                                 | Resize window                                 |
