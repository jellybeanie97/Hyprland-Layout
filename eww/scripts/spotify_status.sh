#!/bin/bash
case "$1" in
    song)
        playerctl metadata title
        ;;
    artist)
        playerctl metadata artist
        ;;
esac
