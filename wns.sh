#!/bin/bash
# Wi-Fi Scanner for Rooted Android

# Check for iwlist availability
if command -v iwlist &> /dev/null; then
    echo "Scanning Wi-Fi networks using iwlist..."
   echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m"
    iwlist wlan0 scan | grep -E "ESSID|Signal|Channel" | awk -F: '
        /ESSID/ {print "SSID: " substr($2, 2, length($2)-2)}
        /Signal/ {print "Signal: " $2}
        /Channel/ {print "Channel: " $2 "\n"}
    '
   echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m"
else
    echo "iwlist is not installed. Please install it or use another tool!"
fi
