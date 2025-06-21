#!/bin/bash

userid=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[33m"
G="\e[32m"
Y="\e[31m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "$2 is failure"
    else
        echo "$2 is success"
    fi
}

if [ $userid -ne 0 ]
then 
    echo "You're not a superuser"
    exit 1
else 
    echo "You're superuser"
fi

for i in $@
do 
    dnf install $i -y &>>LOGFILE
    echo "$i Packages installed"
    if [ $? -eq 0 ]
    then 
        echo "$i is already installed..SKIPPING"
    else    
        dnf install $i -y &>>LOGFILE
        VALIDATE $? "Packages installed $i"
done