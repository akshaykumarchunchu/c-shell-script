#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then 
    echo "Please run with super user"
    exit 1
else
    echo "You're a super user"
fi

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2... is failure"
    exit 1
else    
    echo "$2... is success"
fi
}

dnf install mysql -y
VALIDATE $? "Installating mysql"

dnf install git -y
VALIDATE $? "Installating git"











