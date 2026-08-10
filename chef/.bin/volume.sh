#!/bin/sh
# Lightweight audio volume control script for Alpine Linux

get_volume() {
    amixer sget Master | grep -MIo '\[[0-9]*%\]' | head -n 1 | tr -d '[]%'
}

is_muted() {
    amixer sget Master | grep -MIo '\[off\]' > /dev/null
}

case "$1" in
    up)
        amixer sset Master 5%+ unmute > /dev/null
        echo "Volume: $(get_volume)%"
        ;;
    down)
        amixer sset Master 5%- unmute > /dev/null
        echo "Volume: $(get_volume)%"
        ;;
    toggle)
        amixer sset Master toggle > /dev/null
        if is_muted; then
            echo "Muted"
        else
            echo "Unmuted ($(get_volume)%)"
        fi
        ;;
    status)
        if is_muted; then
            echo "Muted"
        else
            echo "Volume: $(get_volume)%"
        fi
        ;;
    *)
        echo "Usage: $0 {up|down|toggle|status}"
        exit 1
        ;;
esac
