#!/bin/bash

# Check the value of setting to change
#gsettings get org.gnome.desktop.wm.preferences button-layout
# Disable minimise, maximise and close buttons from all windows
gsettings set org.gnome.desktop.wm.preferences button-layout :

# Swap esc with caps key
gsettings set org.gnome.desktop.input-sources xkb-options "['caps:swapescape']"

echo '
- Check if DBus service is launched (for kde connect)
    gapplication launch org.gnome.Shell.Extensions.GSConnect
    - if it returns error message then restart the DBus session
    systemctl --user reload dbus-broker.service
'
