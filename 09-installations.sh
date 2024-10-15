#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1 #manually exit if error comes
else
    echo "You are super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql... FAILURE"
    exit 1
else
    echo "MYSQL installation SUCCESS"
fi

dnf install git -y
then
    echo "Installation of GIT... FAILURE"
    exit 1
else
    echo "GIT installation SUCCESS"
fi

echo "is script proceeding?"