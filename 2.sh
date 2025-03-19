#/bin/bash
#RED='\033
#GRN='\033
#BLUE='\033
#PRPL='\033
#gnome-terminal -- bash -c "sudo apt update && sudo apt upgrade -y; exec bash"

function yes_or_no {
  while true; do
    read -p "$* [y/n]: " yn
    case $yn in
      [Yy]* ) return 0;;
      [Nn]* ) return 1;;
      * ) 
      clear 
      echo -e "\033[5m\033[31mThats not a option \033[0m";;
    esac
  done
}

while getopts 'v' OPTION; do
  case "$OPTION" in
    v) 
	echo -e "---------------------------------------"
    echo "Version 1.0." 
    echo "---------------------------------------"
    echo -e "\033[5m\033[31m Opsec 9 Tool Box\033[0m"
    echo "---------------------------------------"
     exit
    ;;
    ?) echo "Usage: $(basename $0) [-v]" >&2; exit 1;;
  esac
done
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "\033[31m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "\033[01;34m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "\033[01;32m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
if yes_or_no "Do you want to install Opsec9's tool box? [Yy-Nn] "; then
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
source /data/data/com.termux/files/home/Opsec9/wificheck.sh
wait
apt install neofetch -y
pkg update 
pkg upgrade -y
apt update && apt upgrade -y && apt install python2 -y && apt install git -y && apt install python3 -y && apt install proot -y && apt install apache2 -y && apt-get install python-pip -y
pkg installl proot -y
pkg install termux-api -y
pkg install tsu
# Run the other script
source /data/data/com.termux/files/home/Opsec9/3.sh &
wait
pkg install macchanger -y&
sleep 5
# Update the package list
apt update
clear
# Print name and version together
hping3 --version
macchanger --version
nmap --version
sleep 1
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "\033[31m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "\033[01;34m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "\033[01;32m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
echo -e "Mounting storage"
sleep 1
clear
echo -e "033[01;32m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "033[01;32m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "033[01;32m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "\033[01;34m Mounting storage . \033[0m"
sleep 1
clear
echo -e "\033[01;34m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "\033[01;34m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "\033[01;34m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "\033[01;34m Mounting storage .. \033[0m"
sleep 1
clear
echo -e "\033[01;33m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "\033[01;33m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "\033[01;33m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "033[01;32m Mounting storage ... \033[0m"
termux-setup-storage
clear
echo -e "\033[31m ⚠storage mounted⚠ \033[0m" 
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "please prease allow from here then will resume" 
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
rm /data/data/com.termux/files/usr/etc/bash.bashrc
mv /data/data/com.termux/files/home/Opsec9/bash.bashrc /data/data/com.termux/files/usr/etc/
pip install -r /data/data/com.termux/files/home/opsec9/OSIF/requirements.txt
cd /data/data/com.termux/files/home/opsec9/pyshell
pip2 install pyscreenshot
pip2 install python-nmap
pip2 install requests
cd /data/data/com.termux/files/home/opsec9/Ultra-DDos
chmod +x main.py
chmod +x src
pip3 install requests
cd /data/data/com.termux/files/home/opsec9/Ultra-DDos/src
chmod +777 *
cd /data/data/com.termux/files/home/opsec9/ReconDog
pip install -r requirements.txt
cd /data/data/com.termux/files/home/opsec9/
/data/data/com.termux/files/home/opsec9/
cd /data/data/com.termux/files/home/opsec9/OSIF
chmod +x osif.py
pip2 install -r requirements.txt
pip2 install requests
chmod +x /data/data/com.termux/files/home/opsec9/netscan.sh
#pip install requests==2.28.2 -t ./
cd /data/data/com.termux/files/home/opsec9/pi/phoneinfoga.py
chmod +x *
pip install -r requirements.txt
chmod +x /data/data/com.termux/files/home/opsec9/start.sh
clear
termux-notification -t "Opsec9 installer" -c "Opsec9 terminal is installed"
# Simulate typing "exit" letter by letter
for char in e x i t; do
  echo -n "$char"  # Print each character without a newline
  sleep 1        # Pause for half a second between each letter
done
echo                # Move to a new line after "exit"
sleep 1             # Wait for a moment before exiting
#!/bin/bash

# Array of colors using ANSI escape codes
colors=("\e[31m" "\e[32m" "\e[33m" "\e[34m" "\e[35m" "\e[36m")

# Print the message once, and make it cycle through colors
i=0
while true; do
  echo -ne "${colors[i]}Please press enter to exit and reload termux\e[0m\r"
  i=$(( (i + 1) % ${#colors[@]} ))
  sleep 1
done
  kill -9 $(ps -o ppid= -p $$) #Kills Session
fi
