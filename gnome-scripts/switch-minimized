#!/bin/bash

# Since I switch windows using the same keybinds as in hyprland utilizing "focus changer" GNOME extension, I rarely use alt-tab
# keybind so using this keybind instead as a method of cycling through only minimized windows which is equivalent of how I used
# special workspaces in hyprland I'd find helpful (There's no extension for this functionality but I'd love to have it work like "Switch windows directly" option in GNOME Keyboard Shortcuts).
# 
# This script is bound to special keybind in gnome keyboard settings.

xdotool search --class "^Navigator$|^Brave$|^cachybrowser$|^kitty$|^Lutris$|^Discord$" windowactivate %@ keydown Alt+Tab

# To check the currently focus class name use command in terminal: sleep 1 && xdotool getactivewindow getwindowclassname - and then change focus desired window
