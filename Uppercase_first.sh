#!/bin/bash

# NOTE: This script makes the first letter of all files in a folder uppercase (e.g. wall.jpg -> Wall.jpg)

# Loop through all files in current directory
for file in *; do
    # Check if it's a file (not a directory)
    if [[ -f "$file" ]]; then
        # Get first character
        first_char="${file:0:1}"
        # Check if first character is lowercase
        if [[ "$first_char" =~ [a-z] ]]; then
            # Convert first char to uppercase
            new_first_char=$(echo "$first_char" | tr '[:lower:]' '[:upper:]')
            # Create new filename
            new_name="$new_first_char${file:1}"
            # Rename file
            mv "$file" "$new_name"
            echo "Renamed $file to $new_name"
        fi
    fi
done

# Check if any files were processed
if [[ -z $(ls) ]]; then
    echo "No files found in current directory"
fi
