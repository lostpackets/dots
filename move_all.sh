#!/bin/bash

# Store current directory
current_dir=$(pwd)

# Move all files except for the script to the parent directory
for file in *; do
    if [ $file != "$0" ]; then
        mv "$file" "../"
    fi
done

# Change directory to parent directory
cd ".."

# Print confirmation message
echo "All files except for $0 have been moved to the parent directory: $(pwd)"

# Change back to original directory
cd $current_dir

