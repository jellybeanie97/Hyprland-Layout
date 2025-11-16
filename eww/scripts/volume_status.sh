#!/bin/bash
case "$1" in
    icon)
        amixer get Master | grep -q 'off' && echo '' || echo ''
        ;;
    level)
        amixer get Master | grep -o '[0-9]*%' | head -1 | tr -d '%'
        ;;
esac
