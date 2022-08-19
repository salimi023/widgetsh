#!/bin/bash
source .env
old_ifs="$IFS"
IFS=","

if [ -z "$WIDGET_CONTROL" ]
    then
        ./mem.sh 
        ./cpu.sh 
    else
        env=$WIDGET_CONTROL
        
        for i in $env
            do
            ./"$i".sh
        done
fi