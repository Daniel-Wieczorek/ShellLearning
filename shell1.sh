#!/bin/bash

# Hello from the main OS

echo 'Hello'
echo 'Hello2'

# VARIABLES in shell:
STR_2="Hello World!"
echo "${STR_2}ing"

# DISPLAY USER ID

    #Disaply UID
    echo "Your UID os ${UID}"

    #Display user name
    USER_NAME=`id -un`
    echo "Your username is ${USER_NAME}"

    # Display if root
    if [ "${UID}" -eq 0 ] 
    then
        echo 'No root'
    else
        echo 'You are root'
    fi



