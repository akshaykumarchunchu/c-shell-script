#/bin/bash

userid=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-$S)
SCRIPT_NAME=$(echo $0 | cut -d '.' -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R="\e[31m"
G="\e[32m"
Y="\e[33m"
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
    echo "Please enter with super user"
    exit 1
else    
    echo "Your a Super user"
fi

# for i in $@
# do 
#     echo "packages to installing $i"
#     dnf list installed $i &>>$LOGFILE
#     if [ $? -eq 0 ]
#     then 
#         echo -e "$i already installed ...SKIPPING"
#     else    
#         dnf install $i -y &>>LOGFILE 
#         VALIDATE $? "installation of $i"
#     fi
# done

for i in $@
do 
    echo "packages to install $i"
    dnf list of installed $i &>>$LOGFILE
    if [ $? -eq o ]
    then 
        echo "$i is already installed.. SKIPPING"
    else    
        echo "$i is not installed.. Need to install"
    fi
done