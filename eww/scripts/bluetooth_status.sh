#!/bin/bash
if bluetoothctl info | grep "Connected: yes" > /dev/null; then
    echo "ON"
else
    echo "OFF"
fi
