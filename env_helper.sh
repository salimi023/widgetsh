function env_helper 
{
    source .env
    old_ifs="$IFS"
    IFS=","
    env="$WIDGET_CONTROL"
    file=""

    if ! [ -z "$env" ]
        then
        for i in $env
            do
                if [ $i == "$1" ]
                    then
                        file="$1"
                        break
                fi
            done

        if ! [ -z "$file" ]
        then
            if [ $file == "$1" ]
            then
                echo true
            else 
                echo false    
            fi    
        fi
        else
        echo "no_env"
    fi
}