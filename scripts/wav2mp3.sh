#!/bin/bash

# Check if at least one argument (filename) is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename1> [<filename2> ...]"
  exit 1
fi

# Iterate through each argument (filename)
for file in "$@"; do
    # Check if the file exists
    if [ ! -f "$file" ]; then
    echo "Error: File '$file' not found."
    continue # Skip to the next file
    fi

    # Extract the filename without extension
    filename=$(basename "$file")
    extension="${file##*.}"

    #Check if file already ends in mp3
    if [[ "$extension" == "mp3" ]]; then
        echo "'$file' already ends in .mp3"
        continue
    fi

    # Construct the new filename with .mp3 extension
    new_filename="${filename%.*}.mp3"

    # encode file
    ffmpeg -i "$file" -vn -ar 44100 -ac 2 -b:a 192k "$new_filename"
    if [ $? -eq 0 ]; then
        echo "converted '$file' to '$new_filename'"
    else
        echo "Error converting '$file'"
    fi
done

exit 0

