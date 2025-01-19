#!/bin/bash
clear
ping -c 1 www.google.com > /dev/null 2>&1

# Check the exit status of the ping command
if [ $? -eq 0 ]; then
  echo -e "\033[31m─────────────────────────────────────────────\033[0m"
  echo -e "checking wifi connection"
  sleep 1
  echo "*Connection successful*"
  echo -e "\033[31m─────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  sleep 1
clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
 sleep 1
 clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  echo "░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄"
  echo "░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█"
  echo "░░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░"
  echo "░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░░▄▀▄░▀█░"
  echo "░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░░█/█░░█░"
  echo "░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀░░▀░░▀▀▀"
  sleep 1
 clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
 clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           =="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
 clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ==="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
 clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ===="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
 sleep 1
 clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ====="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ======"
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ======="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ========"
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
 sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           ============="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           access granted"
  echo "           =============="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           "
  echo "           =============="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           access granted"
  echo "           =============="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           "
  echo "           =============="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  sleep 1
  clear
  echo "░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀"
  echo "░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█"
  echo "░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀"
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
  echo ""
  echo ""
  echo "           LOADING TOOLS"
  echo ""
  echo "           access granted"
  echo "           =============="
  echo ""
  echo -e "\033[31m───────────────────────────────────────────────────\033[0m"
 else
  echo "you need wifi a connection to install the toolkit"
  echo "you have no wifi connection , exiting..."
  exit 1

fi
sleep 1
clear
echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m"
echo "                                   ________ "
echo "   ____ ______  ______ ____   ____/   __   \ "
echo "  /  _ \\____ \/  ___// __ \_/ ___\____    / "
echo " (  <_> )  |_> >___ \\  ___/\  \___  /    / "
echo "  \____/|   __/____  >\___  >\___  >/____/  "
echo "        |__|       \/     \/     \/         "
echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m "
echo "Choose a option"
echo " 1) facebook Data Scrape 2)ultra ddos"
echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m "
# Set the prompt for the menu
chmod +x /data/data/com.termux/files/home/opsec9/Ultra-DDos/src
x=0
while [ $x = 0 ]
do
    read answer 
case "$answer" in
    1)
    python2 /data/data/com.termux/files/home/opsec9/OSIF/osif.py
    x=1
    ;;
    2)
    python2 /data/data/com.termux/files/home/opsec9/Ultra-DDos/main.py
    x=1
    ;;
    *)
    ;;
esac
done

