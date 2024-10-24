#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="Path/to/your/wallpapers_Folder"

# List of wallpapers with custom names
# Format: Custom Name|Actual Filename
wallpapers=(
  "Wallpaper_Display_Name|Filename{.png or .jpg}"
  "Wallpaper_Display_Name|Filename{.png or .jpg}"
)

# Generate rofi menu options
options=""
for entry in "${wallpapers[@]}"; do
  name=$(echo "$entry" | cut -d'|' -f1)
  file=$(echo "$entry" | cut -d'|' -f2)
  options+="$name\n"
done

# Show the rofi menu with the custom theme and get the selected option
selected=$(echo -e "$options" | rofi -dmenu -p "Select wallpaper:" -theme "Path/to/your/themeFile")

# Find the corresponding file for the selected wallpaper
selected_file=""
for entry in "${wallpapers[@]}"; do
  name=$(echo "$entry" | cut -d'|' -f1)
  file=$(echo "$entry" | cut -d'|' -f2)
  if [ "$selected" == "$name" ]; then
    selected_file="$WALLPAPER_DIR/$file"
    break
  fi
done

# Apply the selected wallpaper
if [ -n "$selected_file" ]; then
  wal -i "$selected_file"
else
  echo "No valid selection."
fi
