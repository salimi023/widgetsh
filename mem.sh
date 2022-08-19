# Getting ENV values
source env_helper.sh
result="$(env_helper mem)"
#echo $result
if ! [ -z "$result" ]    
    then
    echo "Memory Stats:"
    # Do your stuff              
    #cat /proc/meminfo | grep -n "MemTotal*"
    #cat /proc/meminfo | grep -iw "MemTotal"
    #cat /proc/meminfo | grep -iw "MemFree"
	echo -e "\n\tMemory Total:" $(grep -m1 "MemTotal"  /proc/meminfo | sed 's|.*: ||')
	echo -e "\n\tMemory Free:" $(grep -m1 "MemFree"  /proc/meminfo | sed 's|.*: ||')
fi

