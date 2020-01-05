#!/bin/sh

setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -layout us -option ctrl:nocaps

#xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

#xrandr --output VGA1 --mode 1920x1080_60.00 

xset +dpms
xset -b
xset s 1860

#xset +fp ~/.fonts
#xset fp rehash

xrdb < ~/.Xdefaults
#xsidle.sh lock &

xsetroot -cursor_name left_ptr
#hsetroot -fill ~/Pictures/walls/traffic.jpg -blur .5
#xsetroot -mod 16 16 -bg "$(xrdb -query | awk '/\*.background/ {print $2}')" -fg "$(xrdb -query | awk '/\*.color8/ {print $2}')"
#xsetroot -solid "$(xrdb -query | awk '/\*.color8/ {print $2}')"
#xsetroot -solid "#82AAFF"
feh --bg-fill /home/chef/Pictures/Wallpapers/road_marking_fog_mountains_movement_120136_1920x1080.jpg &


#while true; do
#	xsetroot -name " $(date +"%a %b %d,") $(date +"%I:%M")"
#	sleep 70
#done &

#dwm_start.sh

exec sowm
