Hi There!

If you want to work on Allegiance, one of the easiest ways to get started is to use the Lan Server. Simply perform these steps, and you'll
be up and running. 

1. Run LanServerSetup.bat
2. Run AllSrvUI.exe to bring up the server UI. The game server will also start in a console window. 
	- Note: Sometimes the game server console window floats on top of the server UI! Just slide it out of the way. :)
3. Enter in the core short name into the Core field. Currently, a good core to pick is: rc_02e
	 - When the server starts, a temp.cfg will be downloaded. You can look in there for other core names. 
	 - You can add your own cores to your artwork directory and test them out locally.
	 - Check the "Allow Empty Teams" checkbox to enable a single player game launch. 
4. Launch Allegiance, then click on the LAN Servers text link (it's on the very first screen in the six pack at the bottom of the screen)
	- Your server should show up in the list, you should be able to connect and launch a game!


There are two interesting files in the Artwork directory (C:\Program Files (x86)\Steam\steamapps\common\Allegiance\Artwork)

cores.txt 
	- You can add custom cores in this file. Use ICE to edit cores, and add them to this file to make them available. 
	- Restart your game server and change the core name to your modified core to load it in AllSrvUI.

maps.txt
	- Add your custom maps to this file to make them visible to your game server.

If we release an updated to Allegiance, these files may get overwritten. If you want to keep a permenant version, 
copy the Artwork directory to another path, then update your registry to point that to location for your server: 
	Computer\HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Microsoft Games\Allegiance\1.4\Server

Be sure to keep any files you modified in both the game client artwork directory and your server artwork directory. 

If you want to test out turreting, or other multi-player stuff, use Allegiance.exe -windowed -multi -debug command line options. 
You can then start as many instances of Allegiance as you like, and connect them to your game server. 