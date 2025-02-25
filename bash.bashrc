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
PS1='\033[01;34m\]┌──\[\033[01;32m\]☢ⓄⓅⓈⒺⒸ⓽☢\[\033[01;34m\]@\[\033[01;31m\]\h\[\033[00;34m\]\[\033[01;31m\][\w]\[\033[00;34m\]\[\033[01;32m\]👁️⃤
\[\033[01;34m\]└╼\[\033[01;31m\]#\[\033[01;32m\]'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
# Get OS details using neofetch
os_details=$(neofetch --stdout | grep 'OS:')

# Extract the actual OS name from the string
os_name=$(echo "$os_details" | awk -F': ' '{print $2}')

alias start="/data/data/com.termux/files/home/opsec9/start.sh"
user1=$(whoami)
up=$(uptime -p | cut -c4-)
since=$(uptime -s)
mac=$(macchanger --show wlan0)
clear
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
if [ "$EUID" -eq 0 ]; then echo -e " \033[32m ☢You are root☢ \033[0m "; else echo -e "\033[31m You are not root, some tools need root to be at full potential ⚠\033[0m"; fi
echo -e "\033[31m╔═════════════════════════════════════════════╗\033[0m"
echo -e "\033[31m ░█▀█░█▀█░█▀▀░█▀▀░█▀▀░▄▀▄░░░█░█░█▀█░█▀▄░█░█░█▀▀ \033[0m"
echo -e "\033[01;34m ░█░█░█▀▀░▀▀█░█▀▀░█░░░░▀█░░░█▄█░█░█░█▀▄░█▀▄░▀▀█ \033[0m"
echo -e "\033[01;32m ░▀▀▀░▀░░░▀▀▀░▀▀▀░▀▀▀░▀▀░░░░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀ \033[0m"
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
echo -e "User ─╼\033[31m\033[5m $user1\033[0m"
echo -e "Device active for ─╼ \033[31m$up\033[0m"
echo -e "\033[0msince ─╼ \033[31m$since\033[0m"
echo -e "\033[32m$mac\033[0m"
echo "os: $os_name"
echo -e "\033[31m╚═════════════════════════════════════════════╝\033[0m"
printf "Bash version \033[31m$(bash --version | head -n 1 | cut -d ' ' -f 4)\033[0m\033[30m - opsec9 terminal 2024.\n"; 
printf " \033[0m\033[36m$(ifconfig | grep -w "wlan0" | cut -d ' ' -f1)\033[0m\033[30m  "╼" \033[0m \033[36m $(ifconfig | grep "broadcast" | cut -d " " -f 10)\033[0m  \n";
