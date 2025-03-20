#!/bin/bash

# Interface to monitor (e.g., wlan0 for Wi-Fi)
INTERFACE="wlan0"

# Monitor for SYN packets (common in port scans)
tcpdump -i $INTERFACE 'tcp[tcpflags] & (tcp-syn) != 0' -l | while read line; do
    # Extract source IP from the packet
    SRC_IP=$(echo "$line" | grep -oP '(?<=IP )[^ ]+')

    # Send a Termux notification
    termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP"
done
