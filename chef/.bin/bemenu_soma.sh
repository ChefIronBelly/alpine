#!/bin/sh
# play somaFM radio streams using bemenu and mpv.

selection="";

if [ "$(pgrep mpv)" ] ; then
        echo "All your sound belong to us ..." | bemenu
        pkill mpv
        exit 0
fi

stations="$(cat /home/chef/.bin/stations)"
selection="$(echo "$stations" | bemenu "$@")"
player () { mpv "$@" 2>/dev/null &} 

if [ "$selection" ]; then
		echo "Playing SomaFM channel $selection ..." | bemenu 
		player http://somafm.com/$selection.pls
else exit;
fi
