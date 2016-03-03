#!/bin/sh
HOST=$1
USER=$2
PASSWD=$3

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
get banned-ips.json
get banned-players.json
get bukkit.yml
get commands.yml
get config.yml
get eula.txt
get help.yml
get ops.json
get permissions.yml
get server.properties
get spigot.yml
get usercache.json
get whitelist.json
quit
END_SCRIPT
exit 0
