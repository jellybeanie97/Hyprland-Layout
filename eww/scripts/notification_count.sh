#!/bin/bash
# This script assumes a dunst-like notification history.
# You will need to adjust based on your specific notification daemon.
# This is a common method for some setups.
dunstctl count | cut -d ' ' -f 2
