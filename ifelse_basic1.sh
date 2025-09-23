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
