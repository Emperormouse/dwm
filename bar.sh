#!/usr/bin/sh

bat=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep 'percentage' | cut -d':' -f2 | tr -d ' ')

wifi=$(iw dev wlan0 link | grep SSID | cut -d':' -f2 | tr -d ' ')

printf "%s%93s " $(date +%I:%M) "$bat | $wifi"

