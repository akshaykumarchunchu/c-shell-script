#!/bin/bash

userid=$(id -u)

# Update package list
echo "Updating package list..."

# Install nginx
echo "Installing NGINX..."

dnf install nginx -y

if [ $userid -ne 0 ]
then
    echo "NGINX installed successfully."
else
    echo "Failed to install NGINX."
    exit 1
fi

# Install git
echo "Installing Git..."
if [ $? -ne 0 ]
then
    echo "Git installed successfully."
else
    echo "Failed to install Git."
    exit 1
fi
