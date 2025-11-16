#!/bin/bash
case "$1" in
    level)
        cat /sys/class/power_supply/BAT0/capacity
        ;;
    time)
        # This is a complex calculation; a simplified approach is used here.
        # You may need a more advanced script for accurate time remaining.
        echo "$(cat /sys/class/power_supply/BAT0/time_to_empty_now | awk '{printf "%.2f", $1/3600}')h"
        ;;
esac
