#!/bin/bash

echo "what would like to do ...."
echo "1. Installing software"
echo "2. Starting Service"
echo "3. Stopping Service"
echo "4. enabling Service"
read actions

case $actions in
        1) echo "Insatalling Service"
                read -p "enter the service name you want to install :" service
                sudo apt install $service
                ;;
        2) echo "Starting service"
                read -p "enter the service name you want to start :" service
                sudo systemctl start $service
                ;;
        3) echo "Stopping Service"
                read -p "enter the service namer you want to stop :" service
                sudo systemctl stop $service
                ;;
        4) echo "Enabling Service"
                read -p "enter the service name you want to enable :" service
                sudo systemctl enable $service
                ;;
esac
