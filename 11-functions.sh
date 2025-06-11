#!/bin/bash

userid=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIME_STAMP.log

VALIDATE(){
if [ $1 -ne 0 ]
then 
    echo "$2...is failure $N"
    exit 1
else    
    echo "$2...is success $N"
fi
}

if [ $userid -ne 0 ]
then 
    echo "Please run with super user"
    exit 1
else
    echo "You're a super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Installating mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installating git"











