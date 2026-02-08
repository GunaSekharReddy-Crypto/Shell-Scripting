#!/bin/bash
read -p "Enter Username: " USERNAME
#read -s cant see what is entering

#p --- prompt
#s --- silent
read -s -p "Enter Password: " PASSWORD

echo "Username: $USERNAME"
echo "Password: $PASSWORD"
#how can I hide the password in echo
#use * for hiding password
HIDDEN_PASSWORD=$(echo $PASSWORD | sed 's/./*/g')
#sed 's/./*/g' explained:
#s --- substitute
#./ --- every character
#* --- with *
#g --- globally
echo "Hidden Password: $HIDDEN_PASSWORD"

#Special variables

echo "All variables passed: $@"
echo "Number of variables: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "$HOSTNAME"
echo "Process id of current script: $$"
sleep 60 &
echo "Process id of last command in background: $!"
