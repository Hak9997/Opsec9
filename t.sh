#!/bin/bash

# Array of color codes for text
COLORS=(31 32 33 34 35 36 37) # Red, Green, Yellow, Blue, Magenta, Cyan, White

# Infinite loop to continuously cycle colors
while true; do
    for COLOR in "${COLORS[@]}"; do
        # Print "opsec9" in the current color
        echo -e "\033
