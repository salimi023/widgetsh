#!/bin/bash
source env_helper.sh
result="$(env_helper disk)"

if ! [ -z "$result" ]
    then
    echo -e  "\nDisks Stats:"
    # All available disks
    echo -e "\n\tAvailable disks (name, size, type):"
    disk1=$( lsblk -aln --output=name,size,type | egrep -w sda)
    disk2=$( lsblk -aln --output=name,size,type | egrep -w sdb)
    echo -e "\t\t$disk1"
    echo -e "\t\t$disk2"
    #lsblk -dln --output=name,size,type # | cut -d' ' -f1,5,7
 
	# Amount of total disk space
    echo -e  "\n\tTotal disk space:" 
    ds1=$(df -H --output=source,size,avail,pcent | tr -s ' ' | grep /dev/sda | cut -d' ' -f1,2)
    echo -e  "\t\t$ds1"
    ds2=$(df -H --output=source,size,avail,pcent | tr -s ' ' | grep /dev/sdb | cut -d' ' -f1,2)
    echo -e "\t\t$ds2"

	
	# Amount of free space
    echo -e  "\n\tFree space:"
    fs1=$(df -H --output=source,size,avail,pcent | tr -s ' ' | grep /dev/sda | cut -d' ' -f1,3)
    echo  -e  "\t\t$fs1"
    fs2=$(df -H --output=source,size,avail,pcent | tr -s ' ' | grep /dev/sdb | cut -d' ' -f1,3)
    echo -e "\t\t$fs2"

	
	# Percentage of used disk space
    echo -e  "\n\tPercentage of used disk space:"
    uds1=$( df -H --output=source,size,avail,pcent | tr -s ' ' | grep /dev/sda | cut -d' ' -f1,4)
    echo -e "\t\t$uds1"
    uds2=$( df -H --output=source,size,avail,pcent | tr -s ' ' | grep /dev/sdb | cut -d' ' -f1,4)
    echo -e "\t\t$uds2"

fi
