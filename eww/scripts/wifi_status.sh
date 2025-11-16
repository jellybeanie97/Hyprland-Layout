#!/bin/bash

SSID=$(nmcli -t -f active,ssid dev wifi | grep "^yes" | cut -d: -f2)
STRENGTH=$(nmcli -t -f active,signal dev wifi | grep "^yes" | cut -d: -f2)

if [ -z "$SSID" ]; then
  echo '{"connected": false}'
else
  echo "{\"connected\": true, \"ssid\": \"$SSID\", \"strength\": $STRENGTH}"
fi
