#!/bin/bash

# Get the directory of the script.
SCRIPT_DIR=$(dirname "$(realpath "$0")")

# Navigate to the script directory.
cd "$SCRIPT_DIR"

# Print the current directory to verify.
echo "Current directory: $(pwd)"

# Launch the server.
start python3 -m http.server 8000 --directory "$SCRIPT_DIR"

# Open url in a web browser.
python3 -m webbrowser "http://localhost:8000/"

echo "Press Enter to continue..."
read
echo "Continuing script execution..."