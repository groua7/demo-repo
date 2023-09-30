#!/bin/bash
# this simple script will check the user ID and see if they have sudo permission
# if not it will return their name and ID 

if [ $UID -eq 0 ]
then
echo "You are the root/admin user"
echo "You are an authorised user to perform admin tasks"
echo "You have superuser access"
else
echo "Hello $USER, Your  userID is $UID"
echo "Please request for superuser access"
fi
