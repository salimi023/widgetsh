#!/bin/bash

# Getting ENV values
source env_helper.sh
result="$(env_helper cpu)"

if ! [ -z "$result" ]    
    then
    echo -e "\nCPU informations:"
    echo -e "\n\tModel name     :" $(grep -m1 "model name" /proc/cpuinfo | sed 's|.*: ||')
    echo -e "\n\tNumber of cores:" $(grep -m1 "cpu cores"  /proc/cpuinfo | sed 's|.*: ||')
    echo -e "\n\tClock frequency:" $(grep -m1 "cpu MHz"    /proc/cpuinfo | sed 's|.*: ||') "MHz"
fi
