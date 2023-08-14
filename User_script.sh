#!/bin/bash

echo "what do you want"
echo "1. Add User"
echo "2. Remove user"
echo "3. Add User into the Group"
read choice

if [ $choice -eq 1 ]
then
        read -p "enter the username :" username
        echo "creating user ....."
        sleep 3s
        sudo useradd $username
        echo "user created"
        cat /etc/passwd | tail -n 5
elif [ $choice -eq 2 ]
then
        read -p "enter the username :" username
        echo "Removing user ...."
        sleep 3s
        sudo userdel $username
        echo "user removed"
        cat /etc/passwd | tail -n 5
elif [ $choice -eq 3 ]
then
        read -p "enter the username and groupname :" username groupname
        echo "Add User into the group ....."
        sleep 3s
        sudo gpasswd -a $username $groupname
        echo "user added to group"
        cat /etc/group | tail -n 5
else
        echo "Invalid argument....."
fi
