# GNOME - Aesthetic Gruvbox Dark Color Theme
## Install GNOME Package Dependencies and file resources
```
sudo pacman -Syu
sudo pacman -S gnome-tweak-tool gnome-extensions-app git curl rsync gnome-browser-connector extension-manager variety
git clone https://github.com/Twilight4/gnome-settings
```
## Install GTK theme
```
unzip ~/Downloads/themes.zip -d ~/Downloads/
rsync -av ~/Downloads/themes/.themes ~
ls -al ~/.themes
ln -s ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0/assets ~/.config/gtk-4.0
ln -s ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk.css ~/.config/gtk-4.0
ln -s ~/.themes/Gruvbox-Dark-BL-MOD/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0
```
## Installing icons and cursor theme
```
unzip ~/Downloads/icons.zip -d ~/Downloads
rsync -av ~/Downloads/icons/.local ~
ls -al ~/.local/share/icons
unzip ~/Downloads/cursors.zip -d ~/Downloads
rsync -av ~/Downloads/cursors/ ~ 
ls -al ~/.icons
```
## Installing fonts and wallpapers
```
unzip ~/Downloads/fonts.zip -d ~/Downloads
rsync -av ~/Downloads/fonts/.local ~
ls -al ~/.local/share/fonts
unzip ~/Downloads/wallpapers.zip -d ~/Downloads
sudo rsync -av ~/Downloads/wallpapers/usr /
ls -al /usr/share/backgrounds
```
## Installing GNOME extensions - TODO
```
unzip ~/Downloads/gnome-extensions.zip -d ~/Downloads/
rsync -av ~/Downloads/gnome-extensions/.local ~
ls -al ~/.local/share/gnome-shell/extensions
```
## Import GNOME shell configurations
```
unzip ~/Downloads/gnome-shell-config.zip -d ~/Downloads/
cd ~/Downloads/gnome-shell-config
dconf load /org/gnome/desktop/ < org-gnome-desktop.conf
dconf load /org/gnome/shell/ < org-gnome-shell.conf
```
go to settings > multitasking and change workspaces to fixed number of workspaces
## Copy Variety configurations
```
cp ~/gnome-settings/variety ~/.config
```
## Change kitty and foot theme
## Change emacs and web browser theme
