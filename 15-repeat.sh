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
    if [ $1 -ne 0 ]
    then 
        echo -e "$R $2 is not success $N"
        exit 1
    else    
        echo -e "$R $2 is success $N"
    fi
}

    if [ $userid -ne 0 ]
    then 
        echo -e "$R you're not a super user $N"
        exit 1
    else    
        echo -e "$R you're a super user $N"
    fi

dnf install git -y &>>LOGFILE
VALIDATE $? -e "$R Installed git is Success $N"

dnf install mysql -y &>>LOGFILE
VALIDATE $? -e "$R installed mysql in success $N"

