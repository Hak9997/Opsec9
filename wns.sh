#!/bin/bash

# Check if nmcli is available
if command -v nmcli &> /dev/null; then
    echo "Scanning Wi-Fi networks using nmcli..."
    echo "------------------------------------------"
    nmcli -f SSID,BSSID,CHAN,SIGNAL,SECURITY device wifi list | awk 'NR==1 || $1!=""' # Skip empty SSIDs
    echo "------------------------------------------"
else
    # Fall back to iwlist if nmcli is not available
    if command -v iwlist &> /dev/null; then
        echo "Scanning Wi-Fi networks using iwlist..."
        echo "------------------------------------------"
        for interface in $(iwconfig 2>&1 | grep "IEEE" | awk '{print $1}'); do
            echo "Interface: $interface"
            sudo iwlist $interface scan | grep -E "ESSID|Signal|Channel" | awk -F: '
                /ESSID/ {print "SSID: " substr($2, 2, length($2)-2)}
                /Signal/ {print "Signal: " $2}
                /Channel/ {print "Channel: " $2 "\n"}
            '
        done
        echo "------------------------------------------"
    else
        echo "Neither nmcli nor iwlist is available on this system."
        exit 1
    fi
fi
