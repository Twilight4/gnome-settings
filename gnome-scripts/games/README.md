# Installing League of Legends
### Install the launcher titled Standard version for your region in lutris client
1. `./install-lutris.sh` 
2. Launch lutris and log in
3. Search and install League of Legends by clicking at the plus icon
#### Caveats
- There are two downloads one after the other: the initial client download and the Riot client download. Wait for both downloads to finish.
- Do not enter your login details and login or click play. Instead, just quit the launcher when the two downloads have finished.

# Optimising League of Legends
1. Enable low spec mode in league client
2. Change in-game video settings:
    - **Window mode** - borderless
    - **Graphics** - most intense settings that should be reduced first are Shadow Quality and Environment Quality
    - **Character Inking** - false
    - **Frame Rate Cap** - If you have a powerful machine set this to double your monitors refresh rate (eg. 60hz monitor == 120 FPS cap), this is a decent middle ground between curbing wasted CPU cycles and not giving up too many input frames
    - **Anti-Aliasing** - False
    - **Wait for Vertical Sync** - False
## System and Lutris Optimizations
1. Adding `D3D10` and `D3D11` native `.dll`
    - Select League of Legends in Lutris
    - Select the 🔺triangle next to Wine symbol
    - Select `Wine configuration`
    - In the new Wine dialogue select `Libraries`
    - Add a new override for the library `d3d10` and set it to `Native (Windows)` using the `Edit...` button
    - Add a new override for the library `d3d11` and set it to `Native (Windows)` using the `Edit...` button, then `OK`
2. Installing **Gamemode** in GNOME
    - `sudo pacman -S gnome-shell-extension-gamemode-git` - and re-log to system account
    - Right click League of Legends
    - Select `Configure`
    - Select `System Options`
    - Enable `Enable Feral Gamemode` then `Save`
3. Enable `Esync` and `Fsync`
    - Right click League of Legends
    - Select `Configure`
    - Select `Runner Options`
    - Check `Enable Fsync` and `Enable Esync` then `Save`

# Guaranteed problems
### If you have critical errors in games try this command
- `sudo sh -c 'sysctl -w abi.vsyscall32=0' && sudo sysctl -w abi.vsyscall32=0`

### Game or client resolution or it is stuck at the lowest resolution
-  Right Click League of Legends
-  Select `Configure`
-  Select `Runner options`
-  Enable `Windowed (virtual desktop)`
-  Change `Virtual desktop resolution` to the size of your monitor
-  Launch the game and in graphics settings change `Window mode` to `Borderless`

### Gamemode errors
If you see either one of: 
- `ERROR: ld.so: object '/usr/$LIB/libgamemodeauto.so.0' from LD_PRELOAD cannot be preloaded (cannot open shared object file): ignored.` or 
- `ERROR: ld.so: object ‘libgamemodeauto.so.0’ from LD_PRELOAD cannot be preloaded (wrong ELF class: ELFCLASS64): ignored.` in your logs
    - This is a known error and does not have any effect on the performance or ability to play games. It can safely be ignored, and is not considered the cause of inability to play League.

##### For support visit league of legends wiki - https://leagueoflinux.org/
