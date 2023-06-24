# Installing League of Legends
### Install the launcher titled Standard version for your region in lutris client
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
    - `sudo pacman -S gnome-shell-extension-gamemode-git` - and re-log PC
    - Right click League of Legends
    - Select `Configure`
    - Select `System Options`
    - Enable `Enable Feral Gamemode` then `Save`
3. Enable `Esync` and `Fsync`
    - Right click League of Legends
    - Select `Configure`
    - Select `Runner Options`
    - Check `Enable Fsync` and `Enable Esync` then `Save`

#### If you have critical errors in games try this command
- `sudo sh -c 'sysctl -w abi.vsyscall32=0' && sudo sysctl -w abi.vsyscall32=0`

##### For support visit league of legends wiki - https://leagueoflinux.org/
