#!/bin/bash

# Base URL
base_url="https://github.com/r-Techsupport/training_bsods/raw/refs/heads/main/"

# Output file
output_file="README.md"

# Clear the output file
> "$output_file"

# Loop through each .dmp file in the directory
for file in ./*.dmp; do
    # Check if the file exists
    if [[ -f "$file" ]]; then
        # Extract the filename from the path
        filename=$(basename "$file")
        
        # Create the link
        link="${base_url}${filename}"
        
        # Write the link to the output file
        echo "$link" >> "$output_file"
    else
        echo "No .dmp files found in the directory."
    fi
done

echo "Links have been written to $output_file"

