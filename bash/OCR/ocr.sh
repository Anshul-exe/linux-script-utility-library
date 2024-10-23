#!/bin/env bash

mkdir -p /tmp/OCRshitz

# defining tmp files for saving cropped image and extracting it's content
imagefile="/tmp/OCRshitz/sloppy.$RANDOM.png"
text="/tmp/OCRshitz/translation.txt"
echo "$imagefile"

# using slop to take screenshot
slop=$(slop -f "%g") || exit 1
read -r G <<<$slop

# saving the file as a PNG file
import -window root -crop $G $imagefile

# performing OCR on the image and saving the result to translation text
# Removing .txt from $text before passing to tesseract
tesseract $imagefile "${text%.txt}" 2>/dev/null

# copying the result to translation file nd removing imagefile
cat "$text" | xclip -selection c
rm "$imagefile"
