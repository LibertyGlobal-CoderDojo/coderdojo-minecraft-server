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
- Reset the world as described below so that any previoulsy generated non flat world is discarded

## Installing the Scriptcraft plugin

To get the latest version of the Scriptcraft plugin, we will upload our own jarfile.

- Download the latest scriptcraft jatfile from http://scriptcraftjs.org/download/latest/
  - At the time of writing this was version 3.1.12
- Go to `Files/FTP File Access`
- Select `CoderDojo Minecraft Server` and login
- Go to the `plugins` folder
- Upload the `scriptcraft.jar` file
- restart the server

## Restarting the server (and enabling classroom mode)

Restarting the server is straight forward from Mutlicraft, there's a big button, however everytime you do so you will need to re-enable `classroom` mode.

Class room mode enable scripts for all players and gives them there own scripts folder and context to use.

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

## Adding players

With the above initial configuration, players will not be able to join unless they have been added to the `Players` section in the Multicraft interface.

- Go to the `Players` section
- Click `Create Player`
- Set the `Name` to the players Minecraft login name
- Set the `Role` to `Guest` - they will not need more permissions here
- Go to the `Console` section

## Uploading scripts
