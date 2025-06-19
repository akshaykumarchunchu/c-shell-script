#!/bin/bash

userid=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="e\[31m"
G="e\[32m"
Y="e\[33m"
N="e\[0m"

VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo "$2 installed git..SKIPPING"
    else    
        echo "$2 git is not install"
    fi
}

if [ $userid -ne 0 ]
then 
    echo "You're a not superuser"
    exit 1
else    
    echo "You're a Superuser"
fi 

for i in $@
do 
    echo "install list of $i"
    dnf list install $i -y &>>$LOGFILE
    if [ $? -eq 0 ]
    then 
        echo "$i is already installed..SKIPPING"
    else
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installed $i"
    fi
done
