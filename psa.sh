#!/bin/bash

INTERFACE="wlan0"

# Log detected packets for debugging
tcpdump -i $INTERFACE 'tcp[tcpflags] & (tcp-syn) != 0' -l | while read line; do
    echo "$line" >> port_scan_log.txt  # Save packets to a log file
    SRC_IP=$(echo "$line" | grep -oP '(?<=IP )[^ ]+')  # Extract source IP
    termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP"
done
