#!/bin/bash
case "$1" in
  day)
    date +"%A"
    ;;
  full_date)
    date +"%b %d, %Y"
    ;;
esac
