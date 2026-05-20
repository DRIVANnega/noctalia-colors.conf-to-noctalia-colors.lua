#!/bin/bash
echo "$HOME"
# Path to your Python script
PY_SCRIPT="$HOME/.config/hypr/noctalia/hyprConfToLua.py"

# File you want to move
SOURCE_FILE="$HOME/.config/hypr/noctalia/noctalia-colors.lua"

# Destination directory
DEST_DIR="$HOME/.config/hypr/"

# 1. Execute Python script
python hyprConfToLua.py noctalia-colors.conf -o noctalia-colors.lua


# 2. Check if Python ran successfully
if [ $? -eq 0 ]; then
    echo "Python script executed successfully."

    # 3. Move the file
    mv "$SOURCE_FILE" "$DEST_DIR"

    echo "File moved to $DEST_DIR"
else
    echo "Python script failed. File not moved."
fi

