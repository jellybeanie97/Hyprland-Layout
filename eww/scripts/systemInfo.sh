#!/bin/bash
echo "$(playerctl metadata --format '{{ artist }} - {{ title }}')"
