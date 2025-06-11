#!/bin/bash

userid=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2... is a failure"
    exit 1
else    
    echo "$2... is a success"
fi
}


if [ $userid -ne 0 ]
then
    echo "Your not a super user"
else
    echo "Your a super user"
fi

dnf install mysql -y &>>LOGFILE
VALIDATE $? "Installing mysql"

dnf install git -y &>>LOGFILE
VALIDATE $? "Installating git"

