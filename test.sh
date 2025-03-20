#!/bin/bash


INTERFACE="wlan0"

# Log packets for debugging
tcpdump -i $INTERFACE 'tcp[tcpflags] & (tcp-syn) != 0' -l | while read line; do
    echo "$line" >> port_scan_log.txt  # Save packets for verification
    SRC_IP=$(echo "$line" | grep -oP '(?<=IP )[^ ]+')
    
    # Send notification and log errors
    /data/data/com.termux/files/usr/bin/termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP" 2>>notification_error_log.txt

    # Delay to ensure execution
    sleep 1
done

