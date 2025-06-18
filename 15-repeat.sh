#!/bin/bash

userid=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/temp/$SCRIPTNAME-$TIME_STAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [ $userid -ne 0 ]
    then 
        echo "you're not a super user"
        exit 1
    else    
        echo "you're a super user"
    fi
}

dnf install git -y &>>LOGFILE
VALIDATE $? "Installed git is Success"
