#!/bin/bash
# ~/.config/eww/scripts/wifi_strength.sh
bash ~/.config/eww/scripts/wifi_status.sh | jq -r '.strength // 0'
