#!/bin/bash
#here I'm trying to get user1 details and store in variable and perform some operations with special variables
read -p "ENTER USER1 NAME: " USER1
echo "User1 Name is: $USER1"

if [ ${#USER1} -gt 5 ]; then
    echo "User1 name is longer than 5 characters."
else
    echo "User1 name is 5 characters or shorter."
fi
USER1_LOWER=${USER1,,}
echo "User1 name in lowercase: $USER1_LOWER"
USER1_UPPER=${USER1^^}
echo "User1 name in uppercase: $USER1_UPPER" 

#here I'm trying to get arguments passed to script and perform some operations
echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
TOTAL_ARGS=$#
echo "Total Number of Arguments: $TOTAL_ARGS"
if [ $TOTAL_ARGS -lt 2 ]; then
    echo "Please provide at least two arguments."
    exit 1    
fi
ARG_SUM=$(( $1 + $2 ))
echo "Sum of First and Second Argument: $ARG_SUM"
# Accessing all arguments as a single string
ALL_ARGS="$@"
echo "All Arguments: $ALL_ARGS"
TIME=$(date)
echo "Time Command Output: $TIME"
sleep 60 &
echo "Waited for some time"
echo "Time Command Output: $TIME"
# End of script 

