#!/bin/bash

if [[ $# -ne 1 ]]; then 
    echo "should be only one argument"
fi

if [[ -d "$1" ]]; then 
    echo "Passed argument is not a file"
fi


if [[ -L "$1" ]]; then
    echo "'$1' is a symbolic link."
fi