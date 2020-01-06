#!/bin/sh

setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -layout us -option ctrl:nocaps

xset s off -dpms
xset s noblank

xrdb < ~/.Xdefaults
#xsidle.sh lock &

xsetroot -cursor_name left_ptr
#hsetroot -fill ~/Pictures/walls/traffic.jpg -blur .5
#xsetroot -mod 16 16 -bg "$(xrdb -query | awk '/\*.background/ {print $2}')" -fg "$(xrdb -query | awk '/\*.color8/ {print $2}')"
#xsetroot -solid "$(xrdb -query | awk '/\*.color8/ {print $2}')"
#xsetroot -solid "#82AAFF"
#feh --bg-fill /home/chef/Pictures/Wallpapers/road_marking_fog_mountains_movement_120136_1920x1080.jpg &

bud ~/Pictures/Wallpapers
exec sowm