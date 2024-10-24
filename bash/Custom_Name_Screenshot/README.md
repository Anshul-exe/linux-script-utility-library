# Screenshot Renaming Script

#### This script captures a screenshot using Flameshot, allows you to rename it, and saves it to a specified directory. You have the option to rename the screenshot using either Zenity or Rofi.

## Requirements

- Flameshot
- Rofi (for fast input) or Zenity (for GUI input)

## How It Works

1. The script captures a screenshot using Flameshot.
2. It generates a default name for the screenshot based on the current date and time.
3. You can rename the screenshot using either:
   - **Rofi** (lightweight, fast response)
   - **Zenity** (graphical interface for input, slower but user-friendly)

## Setup

1. **Install the required tools:**
   - Flameshot: `sudo pacman -S flameshot` (Arch Linux) or `sudo apt install flameshot` (Debian-based)
   - Rofi (for lightweight input): `sudo pacman -S rofi` or `sudo apt install rofi`
   - Zenity (for graphical input): `sudo pacman -S zenity` or `sudo apt install zenity`
2. **Edit the script to define the screenshot directory:**
   Replace `path/to/your/screenshot_dir` with the actual path where you want to save screenshots.

## Usage

- The script will take a screenshot and prompt you to rename it.
- If you use Rofi, it will use a lightweight text prompt.
- If you want to use Zenity for graphical renaming, uncomment the `zenity` line and comment out the `rofi` line.
