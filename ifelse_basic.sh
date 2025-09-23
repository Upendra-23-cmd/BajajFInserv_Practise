#!/bin/bash

# To learn all the basic of the bash script
# Important this to know before using if else

# for String Comparison
# for equal to '='
# for not equal to '!='

# for Number Comparison
# for equal to '-eq'
# for not equal to '-ne'
# for less than '-lt'
# for less than and equal to '-le'
# for greater than '-gt'
# for greater than and equal to '-ge'

# for file check (important for devops practise)
# -e file -> exists
# -f file -> is a regular file
# -d dir  -> is a directory
# -r file -> file readable
# -w file -> file writeable
# -x file -> file execute able

# Bash also support double square brackets
# Safer for string 
# Supports &&(And) and ||(or) inside without escaping.

# to declare if we use we use square bracket for condtion that is { if [ condition ]; then }
# where space must be provided between each word and brackets
# for mutiple condition use elif instead of nested if
# after all the condtion end it with fi
# if we don't add fi at the end may cause an syntax error


# Example :  check the Disk usage of the file
            usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')
            if [ $usage -gt 80 ]; then
                echo "Disk space is going to be filed soon, delete unwanted files"
            else
                echo "Disk space is normal"
            fi 

#        :  check servic status 
            if systemctl is-active --quiet nginx; then
            echo "nginx running"
            else 
            echo "nginx not running"
            fi

#        :  check for branch if CSE welcome else no permission
            read -p "Enter your Branch : " branch
            if [[ "$branch" = "cse" ]];then
            echo "Welcome CSE member"
            else
            echo "No access"
            fi

#        :  Read a log file and print all lines containing "ERROR" or "WARN"
            line=$(grep -Ei "ERROR|WARN" /var/log/fsck_apfs.log )
            echo "Error message in log file are : $line"

#        :  Check if config.txt exists in the current directory:
            if [ -f bash_Basic.sh ];then
            echo "file exists"
            else
            echo "no file exists"
            fi

#        :  Check if /var/log/myapp exists:
            if [ -d ~/Desktop/programs ];then
            echo "directory exist"
            else
            echo "no directory exist"
            fi



