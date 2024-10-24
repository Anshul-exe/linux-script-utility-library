# Wallpaper Management Scripts

A collection of bash scripts for managing and setting wallpapers using rofi as a selection menu. Two variants are provided - one using `feh` and another using `pywal` for wallpaper setting.

## Prerequisites

- `rofi`: For the selection menu interface
- `feh` (for feh variant) or `pywal` (for pywal variant): For wallpaper setting
- Bash shell

### Wallpaper Configuration

In both scripts, wallpapers are configured in the following format:

```bash
wallpapers=(
  "Display Name|actual_filename.jpg"
  "Another Wallpaper|wallpaper2.png"
)
```

Each entry consists of:

- Display Name: The name shown in the rofi menu
- Actual Filename: The filename of the wallpaper in your wallpapers directory

## Usage

### Feh Version

```bash
./wallpaper-feh.sh
```

- Provides a basic wallpaper selection and setting functionality
- Includes an additional "Change Wallpaper" option for sequential selection
- Uses `feh --bg-fill` to set wallpapers

### Pywal Version

```bash
./wallpaper-pywal.sh
```

- Simpler implementation with direct wallpaper selection
- Uses `pywal` to set wallpaper and generate a matching color scheme
- Automatically updates terminal colors based on the wallpaper

## Features

### Feh Script

- Direct wallpaper selection
- "Change Wallpaper" option for multiple selections
- Custom display names for wallpapers
- Error handling for invalid selections

### Pywal Script

- Direct wallpaper selection
- Color scheme generation
- Terminal color theme integration
- Custom display names for wallpapers
- Error handling for invalid selections

## Customization

### Rofi Theme

You can customize the appearance of the selection menu by modifying the rofi theme path:

```bash
-theme "Path/to/your/themeFile"
```

### Adding Wallpapers

To add new wallpapers:

1. Add the wallpaper file to your wallpapers directory
2. Add a new entry to the `wallpapers` array in the format:
   ```bash
   "Display Name|filename.extension"
   ```

## Troubleshooting

### Common Issues

1. Script not executing:

   - Check if the script has executable permissions
   - Verify the shebang line: `#!/bin/bash`

2. Wallpaper not setting:

   - Verify the wallpaper directory path
   - Check file permissions of wallpapers
   - Ensure wallpaper filenames match the configuration

3. Rofi menu not appearing:
   - Verify rofi is installed
   - Check if the theme file exists and is accessible

## Dependencies

- Bash
- rofi
- feh (for feh script) or pywal (for pywal script)
- Basic Unix utilities (echo, cut)

## License

This project is provided as-is, feel free to modify and distribute according to your needs.

## Contributing

Feel free to submit issues and enhancement requests.
