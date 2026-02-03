#!/bin/bash
# A simple script to demonstrate advanced variable usage in bash.
# Define a variable with command substitution
CURRENT_DATE=$(date)
# Print the current date
echo "Current Date and Time: $CURRENT_DATE"
# Define an array variable
FRUITS=("Apple" "Banana" "Cherry")
# Print all fruits in the array
echo "Fruits: ${FRUITS[@]}"
# Access a specific element in the array
echo "First fruit: ${FRUITS[0]}"
# Define a variable with special characters
SPECIAL_VAR="This is a string with spaces and !@#$%^&*()"
# Print the special variable
echo "Special Variable: $SPECIAL_VAR"
# Perform string manipulation
ORIGINAL_STRING="Hello Bash Scripting"
UPPERCASE_STRING=${ORIGINAL_STRING^^}
# Print the uppercase version of the string
echo "Uppercase String: $UPPERCASE_STRING"
# End of script