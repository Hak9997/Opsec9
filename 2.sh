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
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
if yes_or_no "Do you want to install Opsec9's tool box? [Yy-Nn] "; then
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
pkg install tsu
# Run the other script
bash /data/data.com.termux/file/home/Opsec9/3.sh
# Wait for the script to finish
wait
# Update the package list
sudo apt update
clear
# Print name and version together

# Print name and version together in the desired format
# Print name and version with a space in between
hping3 --version | grep "hping" | awk '{print $1 " " $2}'


fi
