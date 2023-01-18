Config = Config or {}

------------
--MZ-HACKS--
------------

-- DEFAULT HACK LOCATION:               -67.91, 6253.94, 31.09

Config.NotifyType = "okok" 				-- Notification type: 'qb' for qb-core standard notifications, 'okok' for okokNotify notifications

-- Hacking types

Config.AllowMHacking = true             -- Set to "false" to disable the "mhacking" type of hacking option.

Config.AllowScramble = true             -- Set to "false" to disable the "scramble" type of hacking option.

Config.AllowVARHacking = true           -- Set to "false" to disable the "VAR hack" type of hacking option.

-- DEFAULT GLOW HACK LOCATION:          -87.09, 6238.09, 31.09

Config.GlowHacking = false               -- Set to "false" if you do not wish to utilise "glow_minigames" hacks. 

-- mz-skills

Config.mzskills = true					-- Set to "false" if you do not wish to use "Hacking" mz-skills
-- if "Config.mzskills = true", then the following parameters apply: 
Config.HackingXPlow = 5					-- Lowest amount of "Hacking" XP added for a successful hack.
Config.HackingXPmid = 7					-- Middle amount of "Hacking" XP added for a successful hack.
Config.HackingXPhigh = 9				-- Highest amount of "Hacking" XP added for a successful hack.
Config.HackingXPloss = 7				-- "Hacking" XP lost for failing a hack.

Config.FailChance = 50					-- Chance (in percent) for a failed hack to result in the Blank USB being lost. 

-- Doorlock

Config.doorparses = 6                   -- Number of times the circle skillcheck needs to be satisfied.
Config.doortime = 10                    -- Amount of time player has per skill parse.
Config.usbhacksdoor = 'usbhack_door-usbhack_door'      -- No need to touch this (PLEASE MAKE SURE YOU HAVE ADDED THE DOORLOCK LUA TO DOORLOCK "CONFIGS" FOLDER)

-- Timing and progress bars

Config.LoadUSBlow = 4					-- Lowest time (in sconds) to load USB for hacking
Config.LoadUSBhigh = 8					-- Highest time (in sconds) to load USB for hacking
Config.DownloadUSBlow = 4				-- Lowest time (in seconds) to download data to usb following successful hack.
Config.DownloadUSBhigh = 8				-- Highest time (in seconds) to download data to usb following successful hack.

-- Formatting USBs
Config.Formattimelow = 4                -- Lowest time (in sconds) to format loaded USBs
Config.Formattimehigh = 8               -- Highest time (in sconds) to format loaded USBs

--------------------
--OUTPUT VARIABLES--
--------------------

Config.USBitem1 = "cryptostick"			-- Most common data uploaded from successful hack (change to a different item if you are not using qb-crypto)
Config.USBitem2 = "trojan_usb"			-- Second most common data uploaded from successful hack.
Config.USBitem3 = "usb1"				-- Low-tier "blue usb" data uploaded from successful hack.
Config.USBitem4 = "usb2"				-- Mid-tier "red usb" data uploaded from successful hack.
Config.USBitem5 = "usb3"				-- Mid-tier "pink usb" data uploaded from successful hack.
Config.USBitem6 = "usb4"				-- High-tier "green usb" data uploaded from successful hack.
Config.USBitem7 = "yellowdongle"		-- High-tier "yellow usb" data uploaded from successful hack (for use with mz-atmrobbery, change to a different rare drop if resource is not in use)

-----------------------------
--CONFIGURING MHACKING HACK--
-----------------------------

-- if Config.mzskills = true, then the following parameters apply:

-- "Hacking" Level 0 
Config.lowhacklvl0 = 5					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 0.
Config.highhacklvl0 = 5 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 0.
Config.hacktimelvl0 = 13				-- Time given to match in mhacking at "Hacking" level 0.
-- "Hacking" Level 1 
Config.lowhacklvl1 = 4					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 1.
Config.highhacklvl1 = 5 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 1.
Config.hacktimelvl1 = 14				-- Time given to match in mhacking at "Hacking" level 1.
-- "Hacking" Level 2 
Config.lowhacklvl2 = 4					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 2.
Config.highhacklvl2 = 5 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 2.
Config.hacktimelvl2 = 15				-- Time given to match in mhacking at "Hacking" level 2.
-- "Hacking" Level 3 
Config.lowhacklvl3 = 4					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 3.
Config.highhacklvl3 = 4 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 3.
Config.hacktimelvl3 = 16				-- Time given to match in mhacking at "Hacking" level 3.
-- "Hacking" Level 4 
Config.lowhacklvl4 = 3					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 4.
Config.highhacklvl4 = 4 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 4.
Config.hacktimelvl4 = 17				-- Time given to match in mhacking at "Hacking" level 4.
-- "Hacking" Level 5 
Config.lowhacklvl5 = 3					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 5.
Config.highhacklvl5 = 4 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 5.
Config.hacktimelvl5 = 18				-- Time given to match in mhacking at "Hacking" level 5.
-- "Hacking" Level 6 
Config.lowhacklvl6 = 3					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 6.
Config.highhacklvl6 = 3 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 6.
Config.hacktimelvl6 = 19				-- Time given to match in mhacking at "Hacking" level 6.
-- "Hacking" Level 7 
Config.lowhacklvl7 = 2					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 7.
Config.highhacklvl7 = 3 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 7.
Config.hacktimelvl7 = 20				-- Time given to match in mhacking at "Hacking" level 7.
-- "Hacking" Level 8 
Config.lowhacklvl8 = 2					-- Lowest number of alphanumeric items to match in mhacking at "Hacking" level 8.
Config.highhacklvl8 = 3 				-- Highest number of alphanumeric items to match in mhacking at "Hacking" level 8.
Config.hacktimelvl8 = 20				-- Time given to match in mhacking at "Hacking" level 8.

-- if Config.mzskills = false, then the following parameters apply for all hacks:  

Config.lowhack = 3                      -- Lowest number of alphanumeric items to match in mhacking where Config.mzskills = false. 
Config.highhack = 4                     -- Highest number of alphanumeric items to match in mhacking where Config.mzskills = false. 
Config.hacktime = 15                    -- Time given to match in mhacking where Config.mzskills = false.

------------------------------
--CONFIGURING SCRAMBLER HACK--
------------------------------

-- if Config.mzskills = true, then the following parameters apply: 

-- "Hacking" Level 0 
Config.stypelvl0 = "alphabet"			-- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 0.
Config.ssecondslvl0 = 17 				-- Time (in seconds) to complete the hack at "Hacking" level 0.
Config.smodifylvl0 = 0				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 0.
-- "Hacking" Level 1 
Config.stypelvl1 = "alphabet"			-- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 1.
Config.ssecondslvl1 = 15 				-- Time (in seconds) to complete the hack at "Hacking" level 1.
Config.smodifylvl1 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 1.
-- "Hacking" Level 2 
Config.stypelvl2 = "numeric"			-- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 2.
Config.ssecondslvl2 = 16 				-- Time (in seconds) to complete the hack at "Hacking" level 2.
Config.smodifylvl2 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 2.
-- "Hacking" Level 3 
Config.stypelvl3 = "numeric"			-- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 3.
Config.ssecondslvl3 = 14 				-- Time (in seconds) to complete the hack at "Hacking" level 3.
Config.smodifylvl3 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 3.
-- "Hacking" Level 4 
Config.stypelvl4 = "alphanumeric"		-- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 4.
Config.ssecondslvl4 = 16 				-- Time (in seconds) to complete the hack at "Hacking" level 4.
Config.smodifylvl4 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 4.
-- "Hacking" Level 5 
Config.stypelvl5 = "alphanumeric"		-- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 5.
Config.ssecondslvl5 = 14 				-- Time (in seconds) to complete the hack at "Hacking" level 5.
Config.smodifylvl5 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 5.
-- "Hacking" Level 6 
Config.stypelvl6 = "greek"		        -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 6.
Config.ssecondslvl6 = 16 				-- Time (in seconds) to complete the hack at "Hacking" level 6.
Config.smodifylvl6 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 6.
-- "Hacking" Level 7 
Config.stypelvl7 = "greek"		        -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 7.
Config.ssecondslvl7 = 14 				-- Time (in seconds) to complete the hack at "Hacking" level 7.
Config.smodifylvl7 = 1				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 7.
-- "Hacking" Level 8 
Config.stypelvl8 = "runes"		        -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes for "Hacking" level 8.
Config.ssecondslvl8 = 14 				-- Time (in seconds) to complete the hack at "Hacking" level 8.
Config.smodifylvl8 = 20				    -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only for "Hacking" level 8.

-- if Config.mzskills = false, then the following parameters apply for all hacks:  

Config.stypeNOXP1 = "alphabet"          -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes where Config.mzskills = false.
Config.stypeNOXP2 = "numeric"           -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes where Config.mzskills = false.
Config.stypeNOXP3 = "alphanumeric"      -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes where Config.mzskills = false.
Config.stypeNOXP4 = "greek"             -- Set to: alphabet, numeric, alphanumeric, greek, braille or runes where Config.mzskills = false.
Config.ssecondsNOXPtime = 10            -- Time (in seconds) to complete the hack where Config.mzskills = false.
Config.smodifyNOXP = 1                  -- Complexity variable, set to "0" for Normal, "1" for Normal + Mirrored or "2" for Mirrored only where Config.mzskills = false.

------------------------
--CONFIGURING VAR HACK--
------------------------

-- if Config.mzskills = true, then the following parameters apply: 

-- "Hacking" Level 0 
Config.Blocknumberlvl0 = 3              -- Number of blocks player needs to remember at "Hacking" level 0.
Config.VARtimelvl0 = 10                 -- Amount of time player has to recount the blocks at "Hacking" level 0.
-- "Hacking" Level 1
Config.Blocknumberlvl1 = 3              -- Number of blocks player needs to remember at "Hacking" level 1.
Config.VARtimelvl1 = 8                  -- Amount of time player has to recount the blocks at "Hacking" level 1.
-- "Hacking" Level 2 
Config.Blocknumberlvl2 = 4              -- Number of blocks player needs to remember at "Hacking" level 2.
Config.VARtimelvl2 = 9                  -- Amount of time player has to recount the blocks at "Hacking" level 2.
-- "Hacking" Level 3
Config.Blocknumberlvl3 = 4              -- Number of blocks player needs to remember at "Hacking" level 3.
Config.VARtimelvl3 = 7                  -- Amount of time player has to recount the blocks at "Hacking" level 3.
-- "Hacking" Level 4 
Config.Blocknumberlvl4 = 5              -- Number of blocks player needs to remember at "Hacking" level 4.
Config.VARtimelvl4 = 7                  -- Amount of time player has to recount the blocks at "Hacking" level 4.
-- "Hacking" Level 5
Config.Blocknumberlvl5 = 5              -- Number of blocks player needs to remember at "Hacking" level 5.
Config.VARtimelvl5 = 6                  -- Amount of time player has to recount the blocks at "Hacking" level 5.
-- "Hacking" Level 6 
Config.Blocknumberlvl6 = 6              -- Number of blocks player needs to remember at "Hacking" level 6.
Config.VARtimelvl6 = 10                 -- Amount of time player has to recount the blocks at "Hacking" level 6.
-- "Hacking" Level 7
Config.Blocknumberlvl7 = 7              -- Number of blocks player needs to rememberat "Hacking" level 7.
Config.VARtimelvl7 = 10                 -- Amount of time player has to recount the blocks at "Hacking" level 7.
-- "Hacking" Level 8 
Config.Blocknumberlvl8 = 8              -- Number of blocks player needs to remember at "Hacking" level 8.
Config.VARtimelvl8 = 10                 -- Amount of time player has to recount the blocks at "Hacking" level 8.

-- if Config.mzskills = false, then the following parameters apply for all hacks: 

Config.BlocknumberNOXP1 = 3             -- 25% chance to have this many block numbers where Config.mzskills = false.
Config.BlocknumberNOXP2 = 4             -- 25% chance to have this many block numbers where Config.mzskills = false.
Config.BlocknumberNOXP3 = 5             -- 25% chance to have this many block numbers where Config.mzskills = false.
Config.BlocknumberNOXP4 = 6             -- 25% chance to have this many block numbers where Config.mzskills = false.
Config.BlocknumberNOXPtime = 10         -- Amount of time player has to recount the blocks where Config.mzskills = false.

------------------------
--CONFIGURING PATH HACK--
------------------------

-- if "Config.mzskills = true", then the following parameters apply: 

-- "Hacking" Level 0 
Config.pathGridSizelvl0 = 31             -- Number of blocks to the maze that the player must get through at "Hacking" level 0.
Config.pathLiveslvl0 = 2                 -- Number of mistakes a player can make before the task fails at "Hacking" level 0.
Config.pathTimelvl0 = 15                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 0.
-- "Hacking" Level 1
Config.pathGridSizelvl1 = 29             -- Number of blocks to the maze that the player must get through at "Hacking" level 1.
Config.pathLiveslvl1 = 2                 -- Number of mistakes a player can make before the task fails at "Hacking" level 1.
Config.pathTimelvl1 = 14                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 1.
-- "Hacking" Level 2 
Config.pathGridSizelvl2 = 27             -- Number of blocks to the maze that the player must get through at "Hacking" level 2.
Config.pathLiveslvl2 = 2                 -- Number of mistakes a player can make before the task fails at "Hacking" level 2.
Config.pathTimelvl2 = 13                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 2.
-- "Hacking" Level 3
Config.pathGridSizelvl3 = 25             -- Number of blocks to the maze that the player must get through at "Hacking" level 3.
Config.pathLiveslvl3 = 2                 -- Number of mistakes a player can make before the task fails at "Hacking" level 3.
Config.pathTimelvl3 = 12                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 3.
-- "Hacking" Level 4 
Config.pathGridSizelvl4 = 23             -- Number of blocks to the maze that the player must get through at "Hacking" level 4.
Config.pathLiveslvl4 = 2                 -- Number of mistakes a player can make before the task fails at "Hacking" level 4.
Config.pathTimelvl4 = 11                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 4.
-- "Hacking" Level 5
Config.pathGridSizelvl5 = 21             -- Number of blocks to the maze that the player must get through at "Hacking" level 5.
Config.pathLiveslvl5 = 1                 -- Number of mistakes a player can make before the task fails at "Hacking" level 5.
Config.pathTimelvl5 = 11                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 5.
-- "Hacking" Level 6 
Config.pathGridSizelvl6 = 19             -- Number of blocks to the maze that the player must get through at "Hacking" level 6.
Config.pathLiveslvl6 = 1                 -- Number of mistakes a player can make before the task fails at "Hacking" level 6.
Config.pathTimelvl6 = 10                 -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 6.
-- "Hacking" Level 7
Config.pathGridSizelvl6 = 17             -- Number of blocks to the maze that the player must get through at "Hacking" level 7.
Config.pathLiveslvl6 = 1                 -- Number of mistakes a player can make before the task fails at "Hacking" level 7.
Config.pathTimelvl6 = 9                  -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 7.
-- "Hacking" Level 8 
Config.pathGridSizelvl6 = 17             -- Number of blocks to the maze that the player must get through at "Hacking" level 8.
Config.pathLiveslvl6 = 1                 -- Number of mistakes a player can make before the task fails at "Hacking" level 8.
Config.pathTimelvl6 = 8                  -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 8.

-- if "Config.mzskills = false", then the following parameters apply for all hacks: 

Config.pathGridSizelNOXP = 25            -- Number of blocks to the maze that the player must get through with mz-skills disabled.
Config.pathLivesNOXP = 2                 -- Number of mistakes a player can make before the task fails with mz-skills disabled.
Config.pathTimeNOXP = 12                 -- Amount of time (in seconds) player has to recount the blocks with mz-skills disabled.

------------------------
--CONFIGURING SPOT HACK--
------------------------

-- if "Config.mzskills = true", then the following parameters apply: 

-- "Hacking" Level 0 
Config.spotGridSizelvl0 = 10              -- Grid size the player must search through at "Hacking" level 0.
Config.spotTimeLimitlvl0 = 7             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 0.
Config.spotCharSetlvl0 = "alphabet"      -- Type of characters in hack maze at "Hacking" level 0.
Config.spotRequiredlvl0 = 5              -- Number of correct matches required to pass the hack at "Hacking" level 0.
-- "Hacking" Level 1
Config.spotGridSizelvl1 = 10              -- Grid size the player must search through at "Hacking" level 1.
Config.spotTimeLimitlvl1 = 6             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 1.
Config.spotCharSetlvl1 = "numeric"       -- Type of characters in hack maze at "Hacking" level 1.
Config.spotRequiredlvl1 = 6              -- Number of correct matches required to pass the hack at "Hacking" level 1.
-- "Hacking" Level 2 
Config.spotGridSizelvl2 = 9              -- Grid size the player must search through at "Hacking" level 2.
Config.spotTimeLimitlvl2 = 6             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 2.
Config.spotCharSetlvl2 = "alphanumeric"  -- Type of characters in hack maze at "Hacking" level 2.
Config.spotRequiredlvl2 = 6              -- Number of correct matches required to pass the hack at "Hacking" level 2.
-- "Hacking" Level 3
Config.spotGridSizelvl3 = 9              -- Grid size the player must search through at "Hacking" level 3.
Config.spotTimeLimitlvl3 = 5             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 3.
Config.spotCharSetlvl3 = "greek"         -- Type of characters in hack maze at "Hacking" level 3.
Config.spotRequiredlvl3 = 7              -- Number of correct matches required to pass the hack at "Hacking" level 3.
-- "Hacking" Level 4 
Config.spotGridSizelvl4 = 9              -- Grid size the player must search through at "Hacking" level 4.
Config.spotTimeLimitlvl4 = 5             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 4.
Config.spotCharSetlvl4 = "numeric"       -- Type of characters in hack maze at "Hacking" level 4.
Config.spotRequiredlvl4 = 8              -- Number of correct matches required to pass the hack at "Hacking" level 4.
-- "Hacking" Level 5
Config.spotGridSizelvl5 = 8              -- Grid size the player must search through at "Hacking" level 5.
Config.spotTimeLimitlvl5 = 4             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 5.
Config.spotCharSetlvl5 = "alphanumeric"  -- Type of characters in hack maze at "Hacking" level 5.
Config.spotRequiredlvl5 = 9              -- Number of correct matches required to pass the hack at "Hacking" level 5.
-- "Hacking" Level 6 
Config.spotGridSizelvl6 = 8              -- Grid size the player must search through at "Hacking" level 6.
Config.spotTimeLimitlvl6 = 4             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 6.
Config.spotCharSetlvl6 = "greek"         -- Type of characters in hack maze at "Hacking" level 6.
Config.spotRequiredlvl6 = 9              -- Number of correct matches required to pass the hack at "Hacking" level 6.
-- "Hacking" Level 7
Config.spotGridSizelvl7 = 7              -- Grid size the player must search through at "Hacking" level 7.
Config.spotTimeLimitlvl7 = 4             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 7.
Config.spotCharSetlvl7 = "runes"         -- Type of characters in hack maze at "Hacking" level 7.
Config.spotRequiredlvl7 = 8              -- Number of correct matches required to pass the hack at "Hacking" level 7.
-- "Hacking" Level 8 
Config.spotGridSizelvl8 = 7              -- Grid size the player must search through at "Hacking" level 8.
Config.spotTimeLimitlvl8 = 4             -- Amount of time (in seconds) player has to recount the blocks at "Hacking" level 8.
Config.spotCharSetlvl8 = "runes"         -- Type of characters in hack maze at "Hacking" level 8.
Config.spotRequiredlvl8 = 10             -- Number of correct matches required to pass the hack at "Hacking" level 8.

-- if "Config.mzskills = false", then the following parameters apply for all hacks: 

Config.spotGridSizeNOXP = 8              -- Grid size the player must search through with mz-skills disabled.
Config.spotTimeLimitNOXP = 5             -- Amount of time (in seconds) player has to recount the blocks with mz-skills disabled.
Config.spotCharSetNOXP = "alphanumeric"  -- Type of characters in hack maze with mz-skills disabled.
Config.spotRequiredNOXP = 9             -- Number of correct matches required to pass the hack with mz-skills disabled.

--------------
--FORMATTING--
--------------

-- DEFAULT FORMATTING USB LOCATION:     565.19, -3124.79, 18.77

Config.cryptocost = 5                   -- Number of cryptosticks needed in order to execute a format.
Config.trojancost = 4                   -- Number of trojan_usbs needed in order to execute a format.
Config.usb1cost = 3                     -- Number of Blue usbs needed in order to execute a format.
Config.usb2cost = 3                     -- Number of Red usbs needed in order to execute a format.
Config.usb3cost = 2                     -- Number of Pink usbs needed in order to execute a format.
Config.usb4cost = 2                     -- Number of Green usbs needed in order to execute a format.
Config.yellowdonglecost = 1             -- Number of Yellow Dongles needed in order to execute a format.

Config.BlankUSBDoubleChance = 20        -- Chance to have 2 Blank USBs returned.