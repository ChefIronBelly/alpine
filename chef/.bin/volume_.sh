#!/bin/sh
# original by z3bra
# modified by dkeg 
# 2015 
# additional output for mute,speaker,headphone
# 2026 WIP

test "$1" = "-h" && echo "usage `basename $0` [+|-|!]" && exit 0

state() {
    amixer get Master | sed -n 's/^.*\[\(o[nf]\+\)]$/\1/p' | uniq
  }

level() {
	vol=$(amixer get Master|awk 'NR==5 {print $4}'|cut -d '%' -f1 | cut -d '[' -f2) #sed -e 's/[//g')
	mut=$(amixer get Master | awk 'NR==5 {print $6}')
	head=$(cat /proc/asound/card0/codec#0 | awk 'NR==143 {print $2}')
	  if [ $mut = "[off]" ] ;then
	      lvl="Muted: "" "
	  # check for headphones
	  elif [ $head = "0x00:" ] ;then
	      lvl="headphones: "$vol" "
	  else
	      lvl="speaker: "$vol" "
  fi
  echo $lvl
}

test $# -eq 0 && echo "`level` `state`" && exit 0

case $1 in
            +)  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+;;
            -)  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-;;
            0)  wpctl set-mute @DEFAULT_AUDIO_SINK@ 0;;
  state|level)  $1;;
            *)  amixer set Master $1 >/dev/null;;
esac
