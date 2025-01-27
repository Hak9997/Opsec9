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
echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
if yes_or_no "Do you want to install Opsec9's tool box? [Yy-Nn] "; then
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
    echo "are you root y/n?" 
    read answer 
case "$answer" in
    y)
    pkg install tsu
    apt install root-repo -y
    apt install hping 3 -y 
    apt install macchanger -y
    apt install nmap -y
    x=1
    ;;
    n)
    echo okay
    x=1
    ;;
esac
done
clear
echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
echo "Mounting storage"
sleep 1
clear
echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
echo "Mounting storage ."
sleep 1
clear
echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
echo "Mounting storage .."
sleep 1
clear
echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
echo "Mounting storage ..."
termux-setup-storage
clear
echo "storage mounted" 
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
echo "Please exit termux to load bash.bashrc file"
termux-notification -t "Opsec9 installer" -c "Opsec9 terminal is installed"
exit
else
  exit
fi
