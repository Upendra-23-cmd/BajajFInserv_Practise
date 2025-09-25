#!/bin/bash

#       ss -tuln → lists all listening TCP/UDP ports.

#           :   Check if port 80 is being used:
                port=80
                if netstat -tuln | grep -q ":$port";then
                echo "Port $port is being used"
                else
                echo "port $port is free"
                fi

#           :   Check if the script is being run as root:
                if [ "$(id -u )" -eq 0 ];then
                echo "Script running as root user"
                else
                echo "script running as local user"
                fi

#           :  Check if log.txt size > 1MB:
                filename="/Users/upendraverma/Desktop/programs/BajajFInserv_Practise/bash_Basic.sh"
#                take the file size and convert it into mb 
                size=$(wc -c < "$filename" | awk '{printf "%.2f" , $1/1024/1024}')

                if [ $( echo "$size <= 1 " | bc -l) -le 1 ];then
                echo "File is in required range"
                else
                echo "File exceeded the range"
                fi


#               Ask for a process name.,Check if it is running:
                read -p  "Enter the process Name " processname
                if ps -aux | grep -v grep | grep -q "$processname"; then
                echo "The process is running"
                else
                echo "The process is not running"
                fi

#               Ask the user to enter a number between 1–10:
                read -p "Enter a number between 1-10 : " no
                if [[ "$no" -ge 1 && "$no" -le 10 ]];then
                echo "valid no"
                else
                echo "invalid no"
                fi   

#               Check if environment variable DEV is set:
                if [ -z "$dev" ];then
                echo "enviroment variable is not set "
                else
                echo "enviroment variable is set to $dev "
                fi 
                