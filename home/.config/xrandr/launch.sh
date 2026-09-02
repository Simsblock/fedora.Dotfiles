#!/bin/bash
# DP-0 = Gigabyte M27Q specifications:
# Resolution: 2560x1440 (QHD)
# Refresh Rate: 170Hz (overclocked, native 144Hz)
# DP-2 Dell UltraSharp 27
# HDMI-0 = XP-Pen Artist 12 Pro 
# Mirror DP-0 at tablet's native 1920x1080

#xrandr --output DP-0 --mode 2560x1440 --rate 144 --primary --pos 0x0
#xrandr --output DP-2 --mode 2560x1440 --rate 60 --right-of DP-0
#xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --below-of DP-0

xrandr --output DP-0 --mode 2560x1440 --rate 144 --primary --pos 0x0
xrandr --output DP-2 --mode 2560x1440 --rate 60 --pos 2560x0
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --pos 0x1440