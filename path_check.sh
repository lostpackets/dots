#!/bin/bash

# Store current directory
current_dir=$(pwd)

# Store the folder's names
directories=("a" "b" "c")

# Loop through the folder names
for folder_name in "${directories[@]}"; do

    # Check if folder exists
    if [ -d "$folder_name" ]; then
        # Find the latest modified file in the folder
        latest_modified=$(find "$folder_name" -type f -printf '%T@ %p\n' | sort -n | tail -1)
        # Split the string into variables
        IFS=" " read -r timestamp path <<< "$latest_modified"
        # Format the timestamp to human readable format
        latest_modified_time=$(date -d @"$timestamp")

        # Check if the folder or its contents have been modified
        if [ $(find "$folder_name" -type f -printf '%T@\n' | sort -n | tail -1) -nt $(find "$folder_name" -type f -printf '%T@\n' | sort -n | head -1) ]; then
            # Create the "folder_updates" directory if it doesn't exist
            if [ ! -d "$current_dir/folder_updates" ]; then
                mkdir "$current_dir/folder_updates"
            fi

            # Copy the folder and its contents to the "folder_updates" directory
            cp -r "$folder_name" "$current_dir/folder_updates/$folder_name"

            # Print confirmation message
            echo "Folder $folder_name and its contents have been copied to the folder_updates directory. Last modified at $latest_modified_time"
        else
            # Print message if the folder and its contents have not been modified
            echo "Folder $folder_name and its contents have not been modified since $latest_modified_time. No changes made."
        fi
    else
        # Print error message if the folder does not exist
        echo "Error: Folder $folder_name does not exist"
    fi
done

