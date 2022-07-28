#!/bin/bash

# Lesson 5 - reading standard input, creating accounts, username, conventions
CLEAR=$(clear)
echo $CLEAR
echo "____START OF SCRIPT____"
# A random number generation
echo "${RANDOM}"

# How pipe is working => pipe ( "|" symbol) takes output of one comand to the input of the second command

# Display what user typed on the command line:
echo "You executed this command: ${0}"


# Base name of the file
BASE_NAME=$(basename ${0})
echo $BASE_NAME

# Tell passed parameters:
NUMBER_OF_PARAMETERS="${#}"

# Make sure that we have at least one argument:
if [[ "${NUMBER_OF_PARAMETERS}" -lt 1 ]]
then
    echo "Params passed are $NUMBER_OF_PARAMETERS"
    echo "ERROR; EXIT"
    exit 1
fi

echo "DISPLAY PARAMS"
# Display input paramters:
echo
echo "Paramter 0: ${0}" 
echo "Paramter 1: ${1}"
echo "Paramter 2: ${2}"
echo "Paramter 3: ${3}"
echo

echo "FOR LOOP"
# For loop
# @ takes last paramters from the $1, $2, $3, etc. (no number definied)
for X in ${@}
do
    echo "Hi $X"
done

echo "WHILE LOOP"
# While loop through all the positional paramters:
while [[ "${#}" -gt 0 ]]
do
    echo "Number of paramters: ${#}"
    echo "Paramter 1: ${1}"
    echo "Paramter 2: ${2}"
    echo "Paramter 3: ${3}"
    echo
    shift
done


echo "____END OF SCRIPT____"








