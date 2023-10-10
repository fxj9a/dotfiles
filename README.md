# My dotfiles
Hi.

This is my dotfiles backup archive.

I use: 

  - fish

  - neovim with AstroNVIM

  - [dwm](https://gitlab.com/fxj9a/dwm) or Hyprland with HybridBar

  - [keyd](https://github.com/rvaiya/keyd)
  
## citadell
Dell Latitude E7450

```
adrian@citadell 
--------------- 
OS: Arch Linux x86_64 
Host: Latitude E7450 
Kernel: 6.5.5-arch1-1 
Uptime: 59 mins 
Packages: 807 (pacman) 
Shell: fish 3.6.1 
Resolution: 1920x1080, 1920x1080, 2560x1440 
DE: GNOME 44.5 (wayland) 
WM: Mutter 
WM Theme: Adwaita 
Theme: Adwaita [GTK2/3] 
Icons: Adwaita [GTK2/3] 
Cursor: Adwaita [GTK2/3] 
Terminal: lxterminal 
Terminal Font: Terminus 12 
CPU: Intel i7-5600U (4) @ 3.2GHz 
GPU: Intel HD Graphics 5500 
Memory: 2.67 GiB / 15.47 GiB (17%) 
BIOS: Dell Inc. 65.24 (04/11/2020) 
```


## Natural Scrolling
add touchpad config in `/etc/X11/xorg.conf.d/01-touchpad.conf`

```
Section "InputClass"
    Identifier "touchpad"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "ClickMethod" "clickfinger"
    Option "DisableWhileTyping" "on"
    Option "MiddleEmulation" "on"
    Option "NaturalScrolling" "on"
EndSection
```
