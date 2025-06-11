#!/bin/bash

userid=$(id -u)
TIME_STAMP=$(Date+%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo -e "$2...$R is failure $N"
    exit 1
else    
    echo -e "$2...$G is success $N"
fi
}

if [ $userid -ne 0 ]
then 
    echo "Please run with super user"
    exit 1
else
    echo "You're a super user"
fi

dnf install mysql -y
VALIDATE $? "Installating mysql"

dnf install git -y
VALIDATE $? "Installating git"











