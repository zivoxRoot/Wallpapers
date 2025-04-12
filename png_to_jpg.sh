#!/bin/bash

# Check if ImageMagick is installed
if ! command -v convert &> /dev/null; then
    echo "ImageMagick is not installed. Please install it first."
    exit 1
fi

# Loop through all .png files in current directory
for file in *.png; do
    # Check if any .png files exist
    if [[ -f "$file" ]]; then
        # Get filename without extension
        filename="${file%.*}"
        # Convert png to jpg
        magick "$file" "$filename.jpg"
        echo "Converted $file to $filename.jpg"
    fi
done

# Check if any files were processed
if [[ ! -f *.png ]]; then
    echo "No PNG files found in current directory"
fi
