#/bin/bash

# Try to install nmap with sudo
if sudo ping -c 1 google.com; then
    apt install root-repo -y
    apt install hping 3 -y 
    pkg install macchanger -y
    apt install nmap -y
else
    echo "complete"
fi
