#!/bin/bash

INTERFACE="wlan0"

tcpdump -i $INTERFACE 'tcp[tcpflags] & (tcp-syn) != 0' -l | while read line; do
    # Log the detected packet
    echo "$line" >> port_scan_log.txt

    # Extract source IP
    SRC_IP=$(echo "$line" | grep -oP '(?<=IP )[^ ]+')

    # Send notification and log errors
    /data/data/com.termux/files/usr/bin/termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP" 2>>notification_error_log.txt
done
