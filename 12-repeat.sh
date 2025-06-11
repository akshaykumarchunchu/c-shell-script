#!/bin/bash

userid=(id -u)

if [ $userid -ne 0 ]
then 
    echo "Run with a super user"
    exit 1
else
    echo "Your a Super user"
fi 

dnf install mysql -y 

echo "Mysql installed successfully"

# Install nginx
if [ $? -ne 0 ]
then
    echo "NGINX installed failed."
    exit 1
else
    echo "Success to install NGINX."
fi

dnf install nginx -y 

if [ $? -ne 0 ]
then 
    echo "Git installed Success"
    exit 1
else 
    echo "Failed to installed git"
fi

dnf install git -y 

