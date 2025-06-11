#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update

# Install nginx
echo "Installing NGINX..."
if sudo apt install -y nginx; then
    echo "✅ NGINX installed successfully."
else
    echo "❌ Failed to install NGINX."
    exit 1
fi

# Install git
echo "Installing Git..."
if sudo apt install -y git; then
    echo "✅ Git installed successfully."
else
    echo "❌ Failed to install Git."
    exit 1
fi
