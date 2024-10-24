# i3wm Terminal Split Toggle Script

A simple bash script that toggles between horizontal and vertical splits when opening new terminals in i3 window manager. The script maintains the split state between sessions, providing a more predictable terminal splitting behavior.

## Features

- Automatically toggles between horizontal and vertical splits
- Persists split state between sessions
- Works with Alacritty terminal (easily configurable for other terminals)
- Seamless integration with i3wm

## Prerequisites

- i3 window manager
- Alacritty terminal (or modify the script for your preferred terminal)
- Basic write permissions in your home directory

3. Ensure your `~/.local/bin` is in your PATH:
   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

## Configuration

1. The script stores its state in `~/.config/i3/split_state`. This location is automatically created on first run.

2. To use a different terminal emulator, modify the last line of the script:

   ```bash
   # Replace 'alacritty' with your preferred terminal
   alacritty &
   ```

3. Add to your i3 config (`~/.config/i3/config`):
   ```
   # Replace default terminal binding with the toggle script
   bindsym $mod+Return exec ~/.local/bin/i3-split-toggle
   ```

## How It Works

1. The script checks for a state file that stores the current split direction
2. If the state file doesn't exist, it creates one with a default vertical split
3. When executed, it:
   - Reads the current split state
   - Toggles between horizontal and vertical splits
   - Updates the state file
   - Launches a new terminal instance

## Usage

Simply press your configured i3 keybinding (default: `$mod+Return`) to open a new terminal. The script will automatically alternate between horizontal and vertical splits.

## Customization

You can modify the default split direction by changing the initial state in the script:

```bash
if [ ! -f "$STATE_FILE" ]; then
  echo "v" >"$STATE_FILE"  # Change "v" to "h" for default horizontal split
fi
```

## Contributing

Feel free to submit issues and pull requests for any improvements you'd like to suggest.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Inspired by the i3wm community's desire for more predictable terminal splitting behavior
- Thanks to the i3wm developers for providing the command interface that makes this possible

## Troubleshooting

If you encounter any issues:

1. Check if the state file exists and has proper permissions:

   ```bash
   ls -l ~/.config/i3/split_state
   ```

2. Verify that i3-msg is working:

   ```bash
   i3-msg split v
   ```

3. Ensure your terminal emulator is properly installed and accessible from PATH
