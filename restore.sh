#!/bin/sh
HOST=$1
USER=$2
PASSWD=$3

mkdir -p plugins
wget -O plugins/scriptcraft.jar http://scriptcraftjs.org/download/latest/scriptcraft-3.1.12/scriptcraft.jar

ftp -n -g $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
mkdir plugins
put plugins/scriptcraft.jar
put banned-ips.json
put banned-players.json
put bukkit.yml
put commands.yml
put config.yml
put eula.txt
put help.yml
put ops.json
put permissions.yml
put server.properties
put spigot.yml
put usercache.json
put whitelist.json
quit
END_SCRIPT
exit 0
