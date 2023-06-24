#!/bin/bash

# Check the value of setting to change
#gsettings get org.gnome.desktop.wm.preferences button-layout
# Disable minimise, maximise and close buttons from all windows - done in dconfsettings
#gsettings set org.gnome.desktop.wm.preferences button-layout :

# Swap esc with caps key - done in dconf settings
#gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"

# Add wayland variables to zshenv
echo '
PATH=$HOME/.config/zsh/bash-scripts:$HOME/.local/bin:$HOME/.config/.local/bin:$HOME/.config/node_modules/.bin:$PATH
export PATH

# Essential Vars
export WAYLAND=1
export QT_QPA_PLATFORM="wayland;xcb"                  # Tell QT applications to use the Wayland backend, and fall back to x11 if Wayland is unavailable
export QT_QPA_PLATFORMTHEME=qt5ct                     # Tells QT based applications to pick your theme from qt5ct
export GDK_BACKEND="wayland,x11"                      # Controls how GTK apps run
export SDL_VIDEODRIVER=wayland                        # Run SDL2 applications on Wayland
export CLUTTER_BACKEND=wayland                        # Force Clutter applications to try and use the Wayland backend
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1          # Disables window decorations on QT applications
export QT_AUTO_SCREEN_SCALE_FACTOR=1                  # enables automatic scaling, based on the monitor’s pixel density
export XDG_CURRENT_DESKTOP=GNOME                      # XDG specific var for sanity check
export XDG_SESSION_DESKTOP=gnome                      # XDG specific var for sanity check
export XDG_SESSION_TYPE=wayland                       # This effects Qt and other non-GTK toolkits
export MUTTER_DEBUG_ENABLE_ATOMIC_KMS=0               # Fix slightly sloppy mouse response issue
export CLUTTER_PAINT=disable-dynamic-max-render-time  # Get a smoother frame rate
export _JAVA_AWT_WM_NONREPARENTING=1                  # Java apps don’t support Wayland natively
export XCURSOR_THEME=Gruvbox_Cursors_Light            # Cursor theme for Xwayland
export XCURSOR_SIZE=24                                # Cursor size for Xwayland
export WLR_NO_HARDWARE_CURSORS=1                      # Cursor doesnt need hardware
export MOZ_ENABLE_WAYLAND=1                           # Enables Wayland for Mozilla products
export MOZ_DISABLE_RDD_SANDBOX=1                      # Disable RDD sandbox in firefox
export MOZ_DBUS_REMOTE=1
export BEMENU_BACKEND=wayland
export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl' >> ~/.config/zsh/.zshenv


echo '
- Check if DBus service is launched (for kde connect)
    gapplication launch org.gnome.Shell.Extensions.GSConnect
    - if it returns error message then restart the DBus session
    systemctl --user reload dbus-broker.service
'
