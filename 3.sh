#/bin/bash
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "\033[5m\033[31mTesting to see if you are root  \033[0m"
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
# Try to install nmap with sudo
#!/bin/bash

# Attempt to run the ping command
if sudo ping -c 1 www.google.com >/dev/null 2>&1; then
    echo "Ping command executed successfully."
     apt install root-repo -y
    apt install hping 3 -y 
    pkg install macchanger -y
   apt install nmap -y
    termux-toast -b "#FF0000" -c blue -g top "Root is installed on this device"
else
    # Show a toast message in Termux
    termux-toast -b "#FF0000" -c blue -g top "Root is not installed on this device"
fi
