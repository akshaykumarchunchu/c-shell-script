#!/bin/bash

userid=$(id -u)

#(id -u) gives you the user value 

if [ $userid -ne 0 ]
then 
    echo "Please run with super user"
    exit 1
else
    echo "You're a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo "installation of mysql is failure"
    exit 1
else
    echo "installation is mysql is success"
fi

dnf install git -y

if [ $? -ne 0 ]
then 
    echo "installation of git is failure"
    exit 1
else
    echo "installation of git is success"
fi










