#!/bin/bash

echo "All variables: $@"
echo "Number of variables passes: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home Directory of current user: $HOME"
echo "Which user is running script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "Process ID of last background command: $!"