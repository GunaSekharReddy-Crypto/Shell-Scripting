#!/bin/bash

array=( "Apple" "Banana" "Cherry" "Date" "Elderberry")
echo ${array[@]}
echo ${#array[@]}
for fruit in ${array[@]} ; do
    echo $fruit
done


