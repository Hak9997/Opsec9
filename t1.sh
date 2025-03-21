#!/bin/bash

log_file="port_scan_log.txt"
last_line_count=0

while true; do
    # Count the total number of lines in the file
    current_line_count=$(wc -l < "$log_file")

    # Check if the file has been updated
    if (( current_line_count > last_line_count )); then
        # Get the new lines added since the last check
        new_lines=$(tail -n $((current_line_count - last_line_count)) "$log_file")

        # Extract unique source IPs
        unique_ips=$(echo "$new_lines" | grep -oP '(?<=IP )[^ ]+' | sort | uniq)

        # Send a single notification with the summary
        termux-notification -t "Port Scan Detected" -c "New activity from: $unique_ips"

        # Update the last line count
        last_line_count=$current_line_count
    fi

    # Wait for a few seconds before checking again
    sleep 5
done
