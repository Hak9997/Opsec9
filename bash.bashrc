# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
PS1='\033[01;34m\]┌──\[\033[01;32m\]Opsec9\[\033[01;34m\]@\[\033[01;31m\]\h\[\033[00;34m\]\[\033[01;34m\]\w\[\033[00;34m\]\[\033[01;32m\]:
\[\033[01;34m\]└╼\[\033[01;31m\]#\[\033[01;32m\]'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
alias start="/data/data/com.termux/files/home/opsec9/start.sh"
user1=$(whoami)
up=$(uptime -p | cut -c4-)
since=$(uptime -s)
mac=$(macchanger --show wlan0)
clear
echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m"
echo "                                    ________ "
echo "    ____ ______  ______ ____   ____/   __   \ "
echo "  /  _ \\____ \/  ___// __ \_/ ___\____    / "
echo " (  <_> )  |_> >___ \\  ___/\  \___  /    / "
echo "  \____/|   __/____  >\___  >\___  >/____/  "
echo "        |__|       \/     \/     \/         "
echo -e "\033[31m─────────────────────────────────────────────────────────────\033[0m "
echo -e "User ─╼\033[31m\033[5m $user1\033[0m"
echo -e "Device active for \033[31m$up\033[0m since \033[31m$since\033[0m"
echo -e "\033[31m$mac\033[0m"
echo -e "\033[30m─────────────────────────────────────────────────────────────\033[0m "
printf "Bash version \033[31m$(bash --version | head -n 1 | cut -d ' ' -f 4)\033[0m\033[30m - opsec9 terminal 2024.\n"; 
printf "\033[30m ┌───────────── \033[0m\033[36m$(ifconfig | grep -w "wlan0" | cut -d ' ' -f1)\033[0m\033[30m  ──────╼ \033[0m \033[36m $(ifconfig | grep "broadcast" | cut -d " " -f 10)\033[0m  \033[30m───────────\033[0m \n";