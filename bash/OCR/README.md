# OCR Script with Screen Selection and Clipboard Integration

This script allows you to select a portion of your screen, perform Optical Character Recognition (OCR) on it using Tesseract, and copy the extracted text directly to your clipboard. **OR IN SIMPLE WORDS you can copy words and sentences from an image or any part of your screen**

## Features

- **Screen Selection**: Uses `slop` to let you select a region of your screen.
- **Image Capture**: Captures the selected screen region and saves it as a PNG image.
- **OCR**: Uses Tesseract to extract text from the captured image.
- **Clipboard Integration**: Copies the extracted text to your clipboard for easy pasting.

## Requirements

Make sure you have the following dependencies installed:

- `slop`: For selecting screen regions.
- `imagemagick`: Provides the `import` command for screen capturing.
- `tesseract-ocr`: For performing OCR on the selected region.
- `xclip`: For copying the extracted text to the clipboard.

### Packages required for using this script

Install the required packages using your distro's package manager. Some of are given below:

- **Arch Linux (pacman)**:

  ```bash
  sudo pacman -S slop imagemagick tesseract xclip
  ```

- **Ubuntu/Debian (apt)**:

  ```bash
  sudo apt install slop imagemagick tesseract-ocr xclip
  ```

- **Fedora (dnf)**:
  ```bash
  sudo dnf install slop ImageMagick tesseract xclip
  ```
