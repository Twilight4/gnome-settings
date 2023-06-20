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
### General
| Keybind                                            | Description                                   |
| -------------------------------------------------- | --------------------------------------------- |
| <kbd>SUPER</kbd> + <kbd>Return</kbd>               | Open Kitty terminal                           |
| <kbd>SUPER</kbd> + <kbd>W</kbd>                    | Open firefox in workspace 2                   |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>W</kbd> | Open WhatsApp in workspace 9 silently         |
| <kbd>SUPER</kbd> + <kbd>Q</kbd>                    | Kill focused window                           |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>Q</kbd> | Exit Hyprland                                 |
| <kbd>SUPER</kbd> + <kbd>A</kbd>                    | Open Microsoft Edge (Default Profile)         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>A</kbd> | Open Microsoft Edge (Profile 1)               |
| <kbd>SUPER</kbd> + <kbd>F</kbd>                    | Toggle fullscreen of focused window           |
| <kbd>SUPER</kbd> + <kbd>CTRL</kbd> + <kbd>F</kbd>  | Toggle fake fullscreen of focused window      |
| <kbd>SUPER</kbd> + <kbd>E</kbd>                    | Open lf - Terminal based file manager         |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>E</kbd> | Open Nautilus                                 |
| <kbd>SUPER</kbd> + <kbd>V</kbd>                    | Toggle floating of focused window             |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>V</kbd> | Toggle floating on all windows                |
| <kbd>SUPER</kbd> + <kbd>R</kbd>                    | Open application using anyrun                 |
| <kbd>SUPER</kbd> + <kbd>C</kbd>                    | Open application using wofi                   |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>C</kbd> | Open application using bemenu                 |
| <kbd>SUPER</kbd> + <kbd>L</kbd>                    | Toggle between Master and Dwindle layout      |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>L</kbd> | Lock screen                                   |
| <kbd>SUPER</kbd> + <kbd>S</kbd>                    | Set split ratio to 0.3                        |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>S</kbd> | Set split ratio to -0.3                       |
| <kbd>SUPER</kbd> + <kbd>Escape</kbd>               | Toggle power menu (archlinux-logout)          |
| <kbd>SUPER</kbd> + <kbd>T</kbd>                    | Set night mode on (flux)                      |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>T</kbd> | Set night mode off                            |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>O</kbd> | Color picker in RGB format                    |
| <kbd>SUPER</kbd> + <kbd>ALT</kbd> + <kbd>F</kbd>   | Focus the first matched kitty window          |
| <kbd>SUPER</kbd> + <kbd>Y</kbd>                    | Open Youtube-Music in special:trash workspace |
| <kbd>SUPER</kbd> + <kbd>B</kbd>                    | Toggle (show/hide) waybar                     |
| <kbd>SUPER</kbd> + <kbd>SHIFT</kbd> + <kbd>B</kbd> | Reload waybar                                 |
