#/bin/bash
tail -f port_scan_log.txt | while read line; do
    SRC_IP=$(echo "$line" | grep -oP '(?<=IP )[^ ]+')
    termux-notification -t "Port Scan Detected" -c "Suspicious activity from $SRC_IP"
done

