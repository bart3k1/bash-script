#!/bin/bash
myfile=logs
myregex='\b([0-9]{1,3}\.){3}[0-9]{1,3}\b'

case "$1" in
        -a|--all)
            echo "Display all IPs"
            grep -oP "$myregex" $myfile
            ;;

        -r|--remote)
            echo "Remove remote_addr string"
            sed 's/remote_addr=//g' $myfile
            ;;

        -s|--sorted)
            echo "Display sorted IPs"
            grep -oP "$myregex" $myfile | sort
            ;;

        -d|--duponly)
            echo "Display only duplicated IPs"
            grep -oP "$myregex" $myfile | uniq -D
            ;;

        -D|--dupno)
            echo "Display IPs without duplicates"
            grep -oP "$myregex" $myfile | sort | uniq
            ;;

        *)
            echo "Usage: ./script.sh [option]"
            echo "[-h] display this help"
            echo "[-a] display all IPs"
            echo "[-r] delete remote_addr string"
            echo "[-s] sort all IPs"
            echo "[-d] display only duplicated IPs"
            echo "[-D] display IPs without duplicates"
            exit 1
esac
