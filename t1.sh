#!/bin/bash

log_file="port_scan_log.txt"

# Install inotify-tools if not already installed (required for inotifywait)
pkg install inotify-tools

# Monitor the file for updates
while inotifywait -e modify $log_file; do
    # Extract the last updated line from the file
    last_line=$(tail -n 1 $log_file)

    # Extract source IP from the line
    SRC_IP=$(echo "$last_line" | grep -oP '(?<=IP )[^ ]+')

    # Send a single notification
    termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP"
done
