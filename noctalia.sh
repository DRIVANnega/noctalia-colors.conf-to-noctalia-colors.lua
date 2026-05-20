#!/bin/bash

USER_HOME="$HOME"
echo "User home directory: $USER_HOME"

# Path to your Python script
PY_SCRIPT="$HOME/.config/hypr/noctalia/hyprConfToLua.py"

# Input and output files
INPUT_FILE="$HOME/.config/hypr/noctalia/noctalia-colors.conf"
OUTPUT_FILE="$HOME/.config/hypr/noctalia/noctalia-colors.lua"

# Destination directory
DEST_DIR="$HOME/.config/hypr/"

# 1. Execute Python script
python3 "$PY_SCRIPT" "$INPUT_FILE" -o "$OUTPUT_FILE"

# 2. Check if Python ran successfully
if [ $? -eq 0 ]; then
    echo "Python script executed successfully."

    # 3. Move the file
    mv "$OUTPUT_FILE" "$DEST_DIR"

    echo "File moved to $DEST_DIR"
else
    echo "Python script failed. File not moved."
fi
