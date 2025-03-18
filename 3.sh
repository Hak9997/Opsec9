#/bin/bash
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "\033[5m\033[31mTesting to see if you are root  \033[0m"
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
# Try to install nmap with sudo
if sudo ping -c 1 google.com; then
    apt install root-repo -y
    apt install hping 3 -y 
    pkg install macchanger -y
    apt install nmap -y
termux-toast -b red -c blue -g top "Root is installed on this device"
else
termux-toast -b red -c blue -g top "Root is not installed on this device"
    sleep 1
fi
