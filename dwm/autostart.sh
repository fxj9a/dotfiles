#!/bin/sh

slstatus &
2>/dev/null 1>&2 xfce4-power-manager &
picom &
volumeicon &
feh --bg-fill ~/Pictures/fehbg.jpg
/home/adrian/xcapes &
