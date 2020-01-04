#!/usr/bin/env bash
#
# music - simple music player using mpv.

mapfile -t music < <(shuf -e ~/Music/Secret_Agent/*.{flac,mp3})

mpv --geometry 650x650+2450+200 \
    --x11-name music \
    -- "${music[@]}"
