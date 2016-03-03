# coderdojo-minecraft-server

Initially the Shockbyte account and server should have been setup according to the `INITIAL_SETUP.md` guide

## Installing the Scriptcraft plugin

To use the latest version of the Scriptcraft plugin, we will upload our own jarfile.

- Download the latest scriptcraft jarfile from http://scriptcraftjs.org/download/latest/
  - At the time of writing this was version 3.1.12
- Go to `Files/FTP File Access`
- Select `CoderDojo Minecraft Server` and login
- Go to the `plugins` folder
- Upload the `scriptcraft.jar` file
- restart the server

## Restarting the server (and enabling classroom mode)

Restarting the server is straight forward from Multicraft, there's a big button, however everytime you do so you will need to re-enable classroom mode.

Classroom mode enable scripts for all players and gives them their own scripts folder and context to use.

While you're at it, you may want to stop the daylight cycle so that it stays daytime all the time

After restarting the server, go to the console and run

```
jsp classroom on
gamerule doDaylightCycle false
```

NB. The daylight cycle rule may persist a restart but the classroom setting will not

## Resetting the world

- Stop the server
- Go to `Files/FTP File Access`
- Select `CoderDojo Minecraft Server` and login
- Check the following folders
  - `world`
  - `world_nether`
  - `world_the_end`
- Click Delete
- Start the server

NB. Resetting the world may turn the daylight cycle back on (see restarting the server above)

## Adding players

With the above initial configuration, players will not be able to join unless they have been added to the `Players` section in the Multicraft interface.

- Go to the `Players` section
- Click `Create Player`
- Set the `Name` to the player's Minecraft login name
- Set the `Role` to `Guest`

## Uploading scripts

Use an FTP client (eg. Filezilla) to connect to the server (using the server IP address and the shared login created above). Scripts can then be uploaded to player specific directories under the path

```
/scriptcraft/players/{playername}/
```

Because we are using classroom mode, scripts added to these directories will be automatically loaded and exports added to the player's javascript context (see scriptcraft docs)

## Restoring the server

Bearing in mind that handing out FTP access gives enough access to break the server, it is necessary to have a backup/restore plan just in case

In order to restore the server

- Stop the server
- Run `./restore.sh`
- Start the server

This will delete the contents of the FTP site, upload the config from this project and reinstall scriptcraft

NB. this will also reset the world and delete any previously uploaded scripts. Players should be responsible for backing up their own scripts

In order to backup the server config

- Run `./backup.sh`
- Add, commit and push the newly downloaded config to Github
