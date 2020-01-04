#!/bin/sh
# play somaFM radio streams using dmenu and mpg123.

. $HOME/.cache/wal/colors.sh

selection="";

if [ "$(pgrep mpv)" ] ; then
        #pop.sh "All your sound belong to us ..." # re:lemonbar, wmcore.
        echo "All your sound belong to us ..." | dmenu -nb "$color0" -nf "$color15" -sb "$color4" -sf "$color15" 
        pkill mpv
        exit 0
fi

stations="$(cat /home/chef/.bin/stations)"
selection="$(echo "$stations" | dmenu "$@" -nb "$color0" -nf "$color15" -sb "$color4" -sf "$color15")"
#player() { mpg123 -C -@ "$@" 2>/dev/null & }
player () { mpv "$@" 2>/dev/null &} 

if [ "$selection" ]; then
		#pop.sh "Playing SomaFM channel $selection ..."
		echo "Playing SomaFM channel $selection ..." | dmenu -nb "$color0" -nf "$color15" -sb "$color4" -sf "$color15" 
		player http://somafm.com/$selection.pls
else exit;
fi
