# coderdojo-minecraft-server

Instructions and config for setting up a minecraft server at http://www.shockbyte.com

## Initial Setup

- Create a new server instance
- Login to the Multicraft interface
- Select the latest Craftbukkit jar for the `server jar` option
  - enables plugins and the latest version is required to match the connecting clients
  - at the time of writing this was version 1.9
- Under `Permissions`
  - leave the `Server Visibility` set to `Users with roles only` so the server is not public
  - set the `Default Role` to `No Access` to prevent strangers joining the server
  - set `IP Auth Role` to `No Access` to prevent users on the same IP as existing users connecting (unless they are known)
  - leave the `Cheat Role` set to `Moderator`
- Restart the server

## Configuring the world

- Go to `Files/Config Files`
- Select `Server Settings`
- Set `Spawn Monsters` to `Disabled`
- Set `Player vs Player` to `Disabled`
- Set `Spawn Animals` to `Disabled`
- Set `Game Mode` to `Creative`
- Set `Server Message` to `CoderDojo Minecraft Server` or something
- Set `level-type` to `FLAT`
- Set `spawn-npcs` to `false`
- Set `generate-structures` to `false`
- Click `save`
- Reset the world as described below so that any previously generated non flat world is discarded

## Installing the Scriptcraft plugin

To get the latest version of the Scriptcraft plugin, we will upload our own jarfile.

- Download the latest scriptcraft jatfile from http://scriptcraftjs.org/download/latest/
  - At the time of writing this was version 3.1.12
- Go to `Files/FTP File Access`
- Select `CoderDojo Minecraft Server` and login
- Go to the `plugins` folder
- Upload the `scriptcraft.jar` file
- restart the server

## Enabling script uploading

Because we are using classroom mode (see Restarting the server above) each player gets their own directory to upload scripts to. However in order to upload scripts they will need to use an FTP client and connect using shared login details which should be distributed at CoderDojo events.

We don't want to hand out the main Shockbyte account login details.

The first thing to do is request a new multicraft user from Shockbyte by raising a support ticket and supplying the shared user's email address (I created a new account at gmail) so that they can create the user and attach it to the server's users.

Then you can

- Go to the `Advanced/Users` section
- If Shockbyte have added the user it should be listed there
- Set the `FTP access` to `Full access`
- Set the `Role` to `Guest`
- You can now distribute the FTP username and password to players

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

TBD...
