#!/bin/bash

# Getting ENV values
source env_helper.sh
result="$(env_helper user)"

if ! [ -z "$result" ] 
    then
    echo -e "\nProcess Stat:"
    echo -e "\n\tNumber of processes:" $(ps aux | grep -v grep | wc -l)
fi 