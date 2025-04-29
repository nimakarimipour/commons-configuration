#!/bin/bash
echo "Adjusting paths"
# Define the old and new paths
OLD_PATH="/home/nima/Desktop/taint-docker/table4/annotator/commons-configuration"
NEW_PATH="$(cd "$(dirname "$0")" && pwd)"

# Get absolute path of the running script
SCRIPT_PATH="$(cd "$(dirname "$0")" && pwd)/$(basename "$0")"

# Find all scanner.xml files and replace the path
find . -type f | while read -r file; do
    # Skip the script file
    if [ "$(realpath "$file")" = "$(realpath "$SCRIPT_PATH")" ]; then
        echo "Skipping script itself: $file"
        continue
    fi
    echo "Processing: $file"
    sed -i "s|$OLD_PATH|$NEW_PATH|g" "$file"
done

echo "Replacement complete."