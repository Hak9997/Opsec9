#!/bin/bash

as=$(lscpu | grep 'Model name' | awk -F ':' '{print $2}')


# Retrieve the default network interface
interface=$(ip route | grep default | awk '{print $5}')
if [ -z "$interface" ]; then
    echo "Error: Failed to determine the network interface. Check your network configuration."
    exit 1
fi

echo "Network Interface: $interface"

# Retrieve the IP address for the interface
ip_address=$(ip addr show $interface | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
if [ -z "$ip_address" ]; then
    echo "Error: Failed to determine the IP address. Ensure the interface has a valid IP address."
    exit 1
fi

echo "IP Address: $ip_address"

# Perform an nmap scan on the subnet
echo "Scanning the subnet $ip_address/24..."
sudo nmap -sn "$ip_address/24" -oG - | awk '/Host:/{print $2, $3}' | column -t -N "IP_Address,Status"
