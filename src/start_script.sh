#!/usr/bin/env bash

set -e

echo "Starting setup..."

# Clean up if directory exists
if [ -d "comfyui-wan" ]; then
    echo "Removing existing comfyui-wan directory..."
    rm -rf comfyui-wan
fi

echo "Cloning repository..."
git clone https://github.com/moltowski/comfyui-wan.git || { echo "Git clone failed!"; exit 1; }

echo "Copying start script..."
cp comfyui-wan/src/start.sh /start.sh || { echo "Copy failed!"; exit 1; }
chmod +x /start.sh

echo "Starting main script..."
bash /start.sh