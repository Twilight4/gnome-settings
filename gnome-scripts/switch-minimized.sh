#!/bin/bash

# Since I switch windows using the same keybinds as in hyprland utilizing "focus changer" GNOME extension, I rarely use alt-tab
# keybind so using this keybind instead as a method of cycling through only minimized windows which is equivalent of how I used
# special workspaces in hyprland I'd find helpful (There's no extension for this functionality).

xdotool search --class "^Navigator$|^Brave$|^cachybrowser$|^kitty$|^Lutris$" windowactivate %@ keydown Alt+Tab

# This script is bound to special keybind in gnome keyboard settings.
