# GNOME - Aesthetic Gruvbox Dark Color Theme
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
```
## Importing kitty and foot themes
```
rsync -av ~/downloads/gnome-settings/kitty-theme/.config ~
rsync -av ~/downloads/gnome-settings/foot-theme/.config ~
```
## Importing my dconf database configuration (binary file)
```
rsync -av ~/downloads/gnome-settings/dconf-settings/.config ~
```
### Change emacs, nvim and web browser theme to Gruvbox dark
