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

# Check if the selected option is 'Change Wallpaper'
if [ "$selected" == "Change Wallpaper" ]; then
  rofi -dmenu -p "Select wallpaper to apply:" -theme "Path/to/your/themeFile" | while read -r wallpaper_name; do
    # Find the corresponding file for the selected wallpaper
    selected_file=""
    for entry in "${wallpapers[@]}"; do
      name=$(echo "$entry" | cut -d'|' -f1)
      file=$(echo "$entry" | cut -d'|' -f2)
      if [ "$wallpaper_name" == "$name" ]; then
        selected_file="$WALLPAPER_DIR/$file"
        break
      fi
    done

    # Apply the selected wallpaper
    if [ -n "$selected_file" ]; then
      feh --bg-fill "$selected_file"
    else
      echo "No valid selection."
    fi
  done
else
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
    feh --bg-fill "$selected_file"
  else
    echo "No valid selection."
  fi
fi
