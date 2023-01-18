 ## MZ-HACKS - a skill-based USB hacking and encoding resource for players to obtain data USBs for other purposes (with or without "Hacking" XP progression via mz-skills)

A reworked mz-usbhacks resource to facilitate more hacking options, easier difficulty modifications and a non-mz-skills option. Optimised for the latest qb-core with deprecated functions removed. 

[![mz-hacks](https://i.imgur.com/7BnJC9v.png)](https://youtu.be/rPQJOHJVHuM "mz-hacks for FiveM by Mr_Zain#4139")

PREVIEW: https://youtu.be/rPQJOHJVHuM

- Highly customisable, almost all aspects of each hack available set via config.lua;
- Optimised to operate at resmon 0.00 idle; 
- Configured with qb-core standard notifications and "okokNotify" notifications; 
- Open source code for maximum customisation options; 
- Replaces qb-lock dependency with ps-ui 
- Utilises 3 hacking classes "mhacking", "scramble" and "VAR Hack" via ps-ui to allow a player to convert blank USBs (found either in bins via mz-bins or alternatively capable of replacing cryptosticks in standard qb-core jobs if not using qb-crypto)
- Outputs 7 USB variants with scaled probabilities based on "Hacking" XP if using mz-skills or as set by the server owner for non-XP options; 
A standalone resource where the player accesses a computer system (can be changed to any boxzone or even a PED if desirable) to hack and encode USBs found in dumspters (if using mz-bins).
- Earning "Hacking" XP via performing successful hacks unlocks harder hacks (which can be customised) producing better probabilities of better hack returns i.e. more rare USB outputs. All hack difficulty variables are set via config.lua

## Dependencies
**[mz-skills](https://github.com/MrZainRP/mz-skills)** - to track skill progress. All credit to Kings#4220 for the original qb-skillz now **[B1-skillz](https://github.com/Burn-One-Studios/B1-skillz)**

**[progressbar](https://github.com/qbcore-framework/progressbar)**

**[qb-target](https://github.com/qbcore-framework/qb-target)**

**[qb-skillbar](https://github.com/qbcore-framework/qb-skillbar)**

**[ps-ui](https://github.com/Project-Sloth/ps-ui)**

**(v1.1)** If you want to run two additional hack styles from glow_minigames - you will need that resource: **[glow_minigames](https://github.com/christikat/glow_minigames)**
 
OPTIONAL: (Configured to work with okokNotify as well as base qb-core notifications).

## Installation Instruction

## A. MZ-SKILLS

1. Ensure that mz-skills forms part of your running scripts. 

2. Run the "skills.sql" sql file and open the database. (This will add a data table to the existing "players" database which will hold the skill value for "Scraping" as well as other jobs)

## B. QB-CORE/SHARED/ITEMS.LUA

3. Add the following items to qb-core/shared/items.lua 

```lua
	['blankusb'] 				 	= {['name'] = 'blankusb', 			  	  	['label'] = 'Blank USB', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'blankusb.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Non-descript USB, wonder if there is anything on it?'},
	['usb1'] 				 	 	= {['name'] = 'usb1', 			  	  		['label'] = 'Blue USB', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'usbblue.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Blank USB has downloaded a particular encryption marking it blue.'},
	['usb2'] 				 	 	= {['name'] = 'usb2', 			  	  		['label'] = 'Red USB', 					['weight'] = 100, 		['type'] = 'item', 		['image'] = 'usbred.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Blank USB has downloaded a particular encryption marking it red.'},
	['usb3'] 				 	 	= {['name'] = 'usb3', 			  	  		['label'] = 'Pink USB', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'usbpink.png', 				['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Blank USB has downloaded a particular encryption marking it pink.'},
	['usb4'] 				 		= {['name'] = 'usb4', 			  	  		['label'] = 'Green USB', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'usbgreen.png', 			['unique'] = false, 	['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The Blank USB has downloaded a particular encryption marking it green.'},
```

Please note: 

A. IF YOU ARE RUNNING MZ-BINS YOU DO NOT NEED TO RE-ADD THE "BLANKUSB" - BY DEFAULT, BLANKUSBs ARE FOUND IN BINS; 

B. "TROJAN_USB" AND "CRYPTOSTICK" ARE DEFAULT QB-CORE ITEMS; 

C. "USB2" IS USED BY THE MZ-STOREROBBERY FORK;

D. "USB3" IS USED BY DRUG RELATED MZ-RESOURCES (E.G. MZ-COKE, MZ-HEROIN, MZ-METH, MZ-LSD);

E. "YELLOWDONGLE" IS USED BY MZ-ATMROBBERY; 

4. If your server does not have any use for some of these USB items please replace them in the config.lua. 

## C. INVENTORY IMAGES

5. Add the images which appear in the "images" folder to your inventory images folder. If using lj-inventory, add the images to: lj-inventory/html/images/ - if you are using qb-inventory, add the images to qb-inventory/html/images/

## D. DOORS

6. If you are using the default location to allow access to the hacking room, add this to your doorlock config file:

```lua 
    -- usbhack_door created by Mr_Zain
    Config.DoorList['usbhack_door-usbhack_door'] = {
        distance = 2,
        fixText = false,
        objCoords = vec3(-70.522263, 6254.583984, 31.233118),
        doorType = 'door',
        objName = -952356348,
        doorRate = 1.0,
        locked = true,
        objYaw = 122.89998626709,
        doorLabel = 'usbhack_door',
        autoLock = 120000,
    }
```

7. PLEASE NOTE: YOU CAN ALTERNATIVELY SIMPLY ADD THE CONFIG FILE WHICH COMES WITH THIS RESOURCE TO YOUR QB-DOORLOCK/CONFIGS FOLDER

## E. FINALISATION 

8. If you attend to all of the above steps you will need to restart the server in order for the new added items to be recognised by qb-core. 

Please restart your server ensuring that mz-hacks is ensured/starts after qb-core starts (ideally it should just form part of your [qb] folder).
