#!/bin/bash

# Swap Caps Lock and Escape
# This script swaps the functionality of Caps Lock and Escape keys

echo "Swapping Caps Lock and Escape..."

# Method 1: Using setkeycodes (more reliable for direct hardware mapping)
if command -v setkeycodes &> /dev/null; then
    echo "Using setkeycodes method..."
    
    # Swap Caps Lock (keycode 58) with Escape (keycode 1)
    # First, we need to find the actual keycodes
    echo "Checking current key mappings..."
    
    # Remove any existing mappings
    setkeycodes 58 1 2>/dev/null && echo "Caps Lock mapped to Escape"
    setkeycodes 1 58 2>/dev/null && echo "Escape mapped to Caps Lock"
    
    # Alternative approach using xmodmap if setkeycodes fails
    if [ $? -ne 0 ]; then
        echo "Trying xmodmap method..."
        # Remove existing mappings
        xmodmap -e "remove mod2 = Caps_Lock"
        xmodmap -e "remove Lock = Escape"
        # Map Caps Lock to Escape and Escape to Caps Lock
        xmodmap -e "keycode 66 = Escape"
        xmodmap -e "keycode 1 = Caps_Lock"
    fi
else
    echo "setkeycodes not found. Using xmodmap method..."
    # Fallback to xmodmap
    xmodmap -e "remove mod2 = Caps_Lock"
    xmodmap -e "remove Lock = Escape"
    xmodmap -e "keycode 66 = Escape"
    xmodmap -e "keycode 1 = Caps_Lock"
fi

echo "Caps Lock and Escape have been swapped!"
echo "Note: This change is temporary. For permanent changes, add to your system's startup scripts."

# Show current mapping
echo "Current key mappings:"
xmodmap -pke | grep -E "(Escape|Caps_Lock)"
