#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Your a super user"
    exit 1
else
    echo "Not Super user"
fi 

dnf install mysql -y 

echo "Mysql installed successfully"

# Install nginx
if [ $? -ne 0 ]
then
    echo "NGINX installed successfully."
    exit 1
else
    echo "Failed to install NGINX."
fi

dnf install nginx -y 

if [ $? 0 ]
then 
    echo "Git installed Success"
    exit 1
else 
    echo "Failed to installed git"
fi

dnf install git -y

