#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# Let the user select a file using rofi
SELECTED_FILE=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) | \
  sort | rofi -dmenu -p "Select a wallpaper")

# If a file was selected, use swww to set it
if [ -n "$SELECTED_FILE" ]; then
    swww img "$SELECTED_FILE" -t grow --transition-fps 165
fi

