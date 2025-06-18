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
        echo -e "$G you're a super user $N"
    fi

for i in $i
do 
    echo "Packages installing $i"
    dnf list install $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then 
        echo "Already packages installed $i..SKIPPING"
    else 
        dnf list install $i -y &>>$LOGFILE
        VALIDATE $? "Packages installed"
    fi 
done

