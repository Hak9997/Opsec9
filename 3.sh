#/bin/bash

# Try to install nmap with sudo
if sudo ping -c 1 google.com; then
    apt install root-repo -y
    apt install hping 3 -y 
    apt install macchanger -y
    apt install nmap -y
    echo "root installation succeeded with sudo."
else
    sleep 4
    echo "nmap installation failed with sudo. Running apt update without sudo and retrying..."
fi
