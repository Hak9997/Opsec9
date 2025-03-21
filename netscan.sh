#!/bin/bash

 
as=$(lscpu | grep 'Model name' | awk -F ':' '{print $2}')

echo -e "\033[31m╔═══════════════════════════════════════════════════════════════════════════════════════════════════╗\033[0m"
echo -e "\033[31m███╗   ██╗███████╗████████╗██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗    ███████╗ ██████╗ █████╗ ███╗   ██╗\033[0m"
echo -e "\033[31m████╗  ██║██╔════╝╚══██╔══╝██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝    ██╔════╝██╔════╝██╔══██╗████╗  ██║\033[0m"
echo -e "\033[31m██╔██╗ ██║█████╗     ██║   ██║ █╗ ██║██║   ██║██████╔╝█████╔╝     ███████╗██║     ███████║██╔██╗ ██║\033[0m"
echo -e "\033[31m██║╚██╗██║██╔══╝     ██║   ██║███╗██║██║   ██║██╔══██╗██╔═██╗     ╚════██║██║     ██╔══██║██║╚██╗██║\033[0m"
echo -e "\033[31m██║ ╚████║███████╗   ██║   ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗    ███████║╚██████╗██║  ██║██║ ╚████║\033[0m"
echo -e "\033[31m╚═╝  ╚═══╝╚══════╝   ╚═╝    ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝\033[0m"
echo -e "\033[31m╚═══════════════════════════════════════════════════════════════════════════════════════════════════╝\033[0m"
function yes_or_no {
  while true; do
    read -p "$* [y/n/*]: " yn
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
    echo -e "\033[5m\033[31m Opsec 9 tools\033[0m"
    echo "---------------------------------------"
     exit
    ;;
    ?) echo "Usage: $(basename $0) [-v]" >&2; exit 1;;
  esac
done

if yes_or_no "Do you want to scan the network"; then
# Get the IP address of the default interface
interface=$(ip route | grep default | awk '{print $5}')
ip_address=$(ip addr show $interface | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)
# Scan the network for all devices
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "██╗██████╗ ███████╗"
echo -e "██║██╔══██╗██╔════╝"
echo -e "██║██████╔╝███████╗"
echo -e "██║██╔═══╝ ╚════██║"
echo -e "██║██║     ███████║"
echo -e "╚═╝╚═╝     ╚══════╝"
                   
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
echo -e "\033[30m─────────────────────────────────────────────────────────────\033[0m "
echo -e "\033[31m╔═══════════════════════════════════════════════════════════════╗\033[0m"
sudo nmap -sn $ip_address/24
wait
sudo nmap -sn -oG - $ip_address/24
echo -e "\033[31m╚═══════════════════════════════════════════════════════════════╝\033[0m"
else
  exit
fi
