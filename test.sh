#/bin/bash
sudo tcpdump -i wlan0 'tcp[tcpflags] & (tcp-syn) != 0' -l >> port_scan_log.txt &
