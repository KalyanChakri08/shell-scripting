#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%5)
SCRIPT_NAME=$(echo $e | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-STIMESTAMP.1og
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"

VALIDATE(){ 
    if [ $1 -ne 0 ] 
    then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi

}

if [ $USERID -ne 0 ] 
then
     echo "Please run this script with root access."
     exit 1 # manually exit if error comes. 
else

echo "You are super user."
fi

dnf install mysql -y &>>$LOGFILE 
VALIDATE $? "Installing MySQL"

dnf install git -y &>>$LOGFILE 
VALIDATE $? "Installing Git"

dnf install dockerr -y &>>$LOGFILE 
VALIDATE $? "Installing Docker"