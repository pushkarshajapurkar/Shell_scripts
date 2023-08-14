#!/bin/bash
echo "Every file Automation_Monitoring.sh will change into .log extension"
for files in Automation_Monitoring*.sh
do
       echo "Renaming $files to ${files%Automation_Monitoring.txt}.log"
        mv "$files" "${files%Automation_Monitoring.txt}.log"
done
