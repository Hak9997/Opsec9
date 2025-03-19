#!/bin/bash
# Text to display
#text="OPSEC9"

# Array of ANSI color codes:
# 31: Red, 32: Green, 33: Yellow, 34: Blue, 35: Magenta, 36: Cyan, 37: White
#colors=(31 32 33 34 35 36 37)

# Infinite loop to continuously cycle through the colors
#while true; do
  # Optional: Clear the screen for a cleaner display
  #clear
  
  # Iterate over each color code in the array
  #for color in "${colors[@]}"; do
    # Print the text in the current color:
    # - "\033[" starts the ANSI escape sequence.
    # - "${color}m" sets the color (e.g., "31m" for red).
    # - "${text}" is the text (OPSEC9) to print.
    # - "\033[0m" resets the terminal formatting back to default.
    #echo -e "\033[${color}m${text}\033[0m"
    
    # Pause for 1 second to let you see the color before changing
    #sleep 1
  #!/bin/bash
# Text to display
#text="OPSEC9"

# Array of ANSI color codes (Red, Green, Yellow, Blue, Magenta, Cyan, White)
#colors=(31 32 33 34 35 36 37)

# Infinite loop to cycle through colors on the same line
#while true; do
  #for color in "${colors[@]}"; do
    # -ne: do not add a newline and enable escape sequence interpretation.
    # \r: carriage return to move cursor to the beginning of the line.
    # \033
  #echo -e "\033[${color}m${text}\033[0m"
  #done
#done

# Array of colors using ANSI escape codes
colors=("\e[31m" "\e[32m" "\e[33m" "\e[34m" "\e[35m" "\e[36m")

# Echo the word "Hello" once with the first color
echo -e "${colors[0]}Hello\e[0m"

# Cycle through the remaining colors silently
i=1
while true; do
  printf "\e[8m"  # Invisible cursor
  echo -e "${colors[i]}Hello\e[0m" > /dev/null
  i=$(( (i + 1) % ${#colors[@]} ))
  sleep 1
done
