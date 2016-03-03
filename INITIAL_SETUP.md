# coderdojo-minecraft-server

The following procedure was followed to get the initial setup of the server. It should not be necessary to do this again as the files committed in this project should be used to restore a working state.

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

To use the latest version of the Scriptcraft plugin, we will upload our own jarfile.

- Download the latest scriptcraft jarfile from http://scriptcraftjs.org/download/latest/
  - At the time of writing this was version 3.1.12
- Go to `Files/FTP File Access`
- Select `CoderDojo Minecraft Server` and login
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
