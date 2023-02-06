#!/bin/bash
var=$1

if [[ $var -eq 0 ]]
then 
    echo "No students"
elif [[ $var -eq 1 ]]
then
    echo "$1 student"
elif [[ $var -gt 1 && $var -le 4 ]]
then
    echo "$1 students"
else 
    echo "A lot of students"
fi