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
## Importing kitty, foot and neofetch themes
```
rsync -av ~/downloads/gnome-settings/kitty-theme/.config ~
ls -al ~/.config/kitty
rsync -av ~/downloads/gnome-settings/foot-theme/.config ~
ls -al ~/.config/foot
rsync -av ~/downloads/gnome-settings/neofetch-theme/.config ~
ls -al ~/.config/neofetch
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
| <kbd>SUPER</kbd> + <kbd>Y</kbd>                    | Lock screen                                   |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>Q</kbd> | Log out                                       |
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle fullscreen of focused window           |
| <kbd>SUPER</kbd> + <kbd>D</kbd>                    | Hide window                                   |
| <kbd>SUPER</kbd> + <kbd>Z</kbd>                    | Resize window                                 |
| <kbd>SUPER</kbd> + <kbd>TAB</kbd>                  | Switch applications                           |
| <kbd>ALT</kbd> + <kbd>ESC</kbd>                    | Switch windows directly                       |
| <kbd>ALT</kbd> + <kbd>TAB</kbd>                    | Switch windows on current workspace           |
| <kbd>SUPER</kbd> + <kbd>backtick</kbd>             | Switch windows of an application              |
| <kbd>SUPER</kbd> + <kbd>N</kbd>                    | Focus the active notification                 |
| <kbd>SUPER</kbd> + <kbd>V</kbd>                    | Show the notification list                    |
| <kbd>SUPER</kbd> + <kbd>X</kbd>                    | Show the run command prompt                   |

## Custom keybinds
### Tiling-Assistant extension
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>R</kbd>                    | Tile Editing Mode                             |
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle Maximization                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>R</kbd> | Restore Window Size                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>F</kbd> | Move Window to Center                         |
| <kbd>SUPER</kbd> + <kbd>K</kbd>                    | Tile to top                                   |
| <kbd>SUPER</kbd> + <kbd>J</kbd>                    | Tile to bottom                                |
| <kbd>SUPER</kbd> + <kbd>H</kbd>                    | Tile to left                                  |
| <kbd>SUPER</kbd> + <kbd>L</kbd>                    | Tile to right                                 |
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

### Dash to Dock extension
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
 
## Default keybinds
### Accessibility
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>S<kbd>                | Turn screen reader on or off                  |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>8<kbd>                | Turn zoom on or off                           |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>=<kbd>                | Zoom in                                       |
| <kbd>ALT</kbd> + <kbd>SUPER</kbd> + <kbd>-<kbd>                | Zoom out                                      |

### Navigation - TODO
| Keybind                                                        | Description                                   |
| -------------------------------------------------------------- | --------------------------------------------- |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>DOWN<kbd>           | Move window one monitor down                  |
| <kbd>SHIFt</kbd> + <kbd>SUPER</kbd> + <kbd>LEFT<kbd>           | Move window one monitor to the left           |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>RIGHT<kbd>          | Move window one monitor to the right          |
| <kbd>SHIFT</kbd> + <kbd>SUPER</kbd> + <kbd>UP<kbd>             | Move window one monitor up                    |
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
