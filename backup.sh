#!/bin/sh
HOST=$1
USER=$2
PASSWD=$3

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
get *.json
get *.yml
get *.txt
get *.properties
quit
END_SCRIPT
exit 0
