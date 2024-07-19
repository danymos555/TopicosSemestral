#!/bin/bash

APP_DIR="/var/www/bun-service"
BUILD_DIR="$APP_DIR/build"
ENTRY_POINT="index.js"

echo "Stopping any existing Bun service..."
pkill -f $ENTRY_POINT

cd $BUILD_DIR

echo "Starting the Bun service..."
nohup bun run $BUILD_DIR &

# Ensure the service started successfully
if pgrep -f $ENTRY_POINT > /dev/null
then
    echo "Bun service started successfully."
else
    echo "Failed to start Bun service."
    exit 1
fi