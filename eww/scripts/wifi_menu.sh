#!/bin/bash
# List Wi-Fi networks, select with Rofi/Wofi
nmcli device wifi list | awk '{print $2}' | rofi -dmenu -i -p "Select Wi-Fi" | while read SSID; do
    nmcli device wifi connect "$SSID"
done
