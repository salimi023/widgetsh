#!/bin/bash

# Getting ENV values
source env_helper.sh
result="$(env_helper user)"

if ! [ -z "$result" ]    
    then
    echo -e "\nUser Stats:"

    # Number of non-system users
    echo -e "\n\tNumber of non-system users:" $(awk -F: '($3<1000){print $1}' /etc/passwd | wc -l)    

    # Number of groups
    echo -e "\n\tNumber of groups:" $(groups | wc -w )                     
fi