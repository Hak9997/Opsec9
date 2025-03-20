
#!/bin/bash

declare -a detected_ips
log_file="port_scan_log.txt"

# Process the log file in real-time
tail -f $log_file | while read line; do
    SRC_IP=$(echo "$line" | grep -oP '(?<=IP )[^ ]+')

    # Add the IP to an array to track detected IPs
    detected_ips+=("$SRC_IP")

    # Notify for each IP as it is detected
    termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP"

    # Introduce a delay to avoid constant notifications
    sleep 1
done &

# After the loop finishes (script interrupted), send a summary notification
trap "summary_notification" SIGINT

summary_notification() {
    unique_ips=$(printf "%s\n" "${detected_ips[@]}" | sort | uniq)
    termux-notification -t "Summary" -c "Total unique IPs detected: $(echo "$unique_ips" | wc -l)"
    exit 0
}
