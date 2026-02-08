#!/bin/bash

# array=( "Apple" "Banana" "Cherry" "Date" "Elderberry")
# echo ${array[@]}
# echo ${#array[@]}
# for fruit in ${array[@]} ; do
#     echo $fruit
# done

echo "$HOSTNAME"
read -p "Enter Number of Entries: " total_no_of_elements
array=()
for (( i=1; i<=total_no_of_elements; i++ ))
do
    read -p "Enter Element $i: " element
    array+=("$element")
fi
done

echo
echo "You entered ${#array[@]} elements:"
echo "${array[@]}"

#conditions
if [ "${array[0]}" -gt "${array[1]}" ]; then
    echo "${array[0]} is Greater"
else
    echo "${array[1]} is Greater"
fi

