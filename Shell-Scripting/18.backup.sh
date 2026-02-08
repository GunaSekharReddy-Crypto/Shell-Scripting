#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo $USER
LOGS_FOLDER="/c/Users/shell-scripting/shellscript-logs"

if [ ! -d LOGS_FOLDER ] ; then
    echo "Creating Log folder "
    mkdir /c/Users/mgunasek/shell-scripting/Shell-scripting/shellscript-logs
fi


LOG_FILE=$(echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"
SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14}

if [ ! -d DEST_DIR ] ; then
    echo "Creating Destination folder "
    mkdir $2
fi

echo "Args passed $SOURCE_DIR $DEST_DIR $DAYS"

USAGE(){
    echo -e "$R USAGE: <Scriptname> <source_dir> <dist_dir> <days>(optional)"
    exit 1
}

if [ ! -d $SOURCE_DIR ] ; then 
    USAGE
fi

if [ ! -d $DEST_DIR ] ; then 
    USAGE
fi

if [ -d $SOURCE_DIR ]; then
    cd ~$SOURCE_DIR  
fi

FILES= find -name "*.log" $SOURCE

if [ -n $FILES ]; then
    tar -xvzf $FILES tar.zip

fi




# echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME