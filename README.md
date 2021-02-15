# bash-script
Simple bash script for logs processing

Functions:
- Display only IP addresses,
- Remove remote_addr
- Sort
- Display duplicate IP addresses
- Remove duplicate

Args and usage:

./logscript.sh [-h]
 -h - display help
 -a - display all IP
 -r - delete "remote_addr=" string
 -s - sort all IPs
 -d - display only duplicated IPs
 -D - display IPs without duplicates
