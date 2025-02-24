#!/bin/bash

# Ping www.google.com once
ping -c 1 www.google.com > /dev/null 2>&1

# Check the exit status of the ping command
if [ $? -eq 0 ]; then
  echo -e "\033[31m─────────────────────────────────────────────\033[0m"
  echo -e "checking wifi connection"
  echo -e "\033[31m─────────────────────────────────────────────\033[0m"
sleep 3
clear
  echo -e "\033[31m─────────────────────────────────────────────\033[0m"
  echo "*connection successful*"
  echo -e "\033[31m─────────────────────────────────────────────\033[0m"
  # Load another script
  source /data/data/com.termux/files/home/opsec9/2.sh
else
  echo "you need wifi a connection to install the toolkit"
  echo "you have no wifi connection , exiting..."
  exit 1
fi
