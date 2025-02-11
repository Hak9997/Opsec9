#/bin/bash

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
if yes_or_no "Do you want to install Opsec9's tool box? [Yy-Nn] "; then
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
clear
pkg update 
pkg upgrade -y
apt update && apt upgrade -y && apt install python2 -y && apt install git -y && apt install python3 -y && apt install proot -y && apt install apache2 -y && apt-get install python-pip -y
pkg installl proot -y
pkg install termux-api -y
clear
echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
x=0
while [ $x = 0 ]
do

pkg install tsu -y
# Try to install nmap with sudo
if sudo ping -c 1 google.com; then
    apt install root-repo -y
    apt install hping 3 -y 
    apt install macchanger -y
    apt install nmap -y
    echo "root installation succeeded with sudo."
else
    echo "nmap installation failed with sudo. Running apt update without sudo and retrying..."

    # Run apt update without sudo
    apt update
    
    # Try to install nmap again without sudo

        echo "nmap installation succeeded without sudo."
        exit 1
    fi

clear
echo -e "\033[31m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "\033[31m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "\033[31m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "033[01;32m Mounting storage \033[0m"
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
cd /data/data/com.termux/files/home/opsec9/PhoneInfoga/phoneinfoga.py
chmod +x phoneinfoga.py 
chmod +x /data/data/com.termux/files/home/opsec9/start.sh
clear
echo -e "Please exit termux to load bash.bashrc file"
termux-notification -t "Opsec9 installer" -c "Opsec9 terminal is installed"
exit
fi
