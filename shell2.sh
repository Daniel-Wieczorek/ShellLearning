#!/bin/bash

echo "Hello, let's start"

# Display the UID and username of the user executing this script
# Display if the user is the vagrant user or not


# Display UID:
echo "${UID}"

#Only disply if the UID does NOT match 1000
UID_TO_TEST_FOR='1000'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
    echo "Your UID not match $UID_TO_TEST_FOR"
    exit 1
fi

#Display the user name


#Test if the command succeeded
USER_NAME=$(id -un)

#Test if the command succeeded (checking last called command)
if [ "${?}" -ne 0 ]
then
    echo 'ID command executed not succesfully'
    exit 1
fi

# I can use a string test conditional.
USER_NAME_TO_TEST_FOR='vagrant'
if [[ "${USER_NAME}" = "${UID_TO_TEST_FOR}" ]]
then
    echo "Your user name matches $UID_TO_TEST_FOR."
fi

# Test for not equal in the string
if [[ "${USER_NAME}" != "${UID_TO_TEST_FOR}" ]]
then
    echo "Your username does not match $UID_TO_TEST_FOR"
    exit 1
fi

# Ask for the user name.
read -p 'Enter the user name: ' USER_NAME

# Ask for real name
echo $USER_NAME

echo "I am here so it is ok"















CHECK_INSTALLATION=$(gcc --version)

if [ "${?}" -ne 0 ]
then
    echo "Please install GCC"
    echo "More information in:"
    echo "https://pypi.org/project/pycodestyle/"
    exit 1
fi



