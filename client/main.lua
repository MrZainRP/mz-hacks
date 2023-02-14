local QBCore = exports['qb-core']:GetCoreObject()

local lvl0 = false
local lvl1 = false
local lvl2 = false
local lvl3 = false
local lvl4 = false
local lvl5 = false
local lvl6 = false
local lvl7 = false
local lvl8 = false

--------
--DOOR--
--------

CreateThread(function()
    exports['qb-target']:AddBoxZone("usbhacksdoor", vector3(-70.13, 6254.07, 31.09), 1.4, 0.4, {
        name = "usbhacksdoor",
        heading = 33,
        debugPoly = false,
        minZ = 28.49,
        maxZ = 32.49,
        }, {
            options = { 
            {
                type = "client",
                event = "mz-hacks:client:usbhacksdoor",
                icon = 'fas fa-trash',
                label = 'Unlock door'
            },
        },
        distance = 1.2,
     })
end)

RegisterNetEvent('mz-hacks:client:usbhacksdoor', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"type2"})
    exports['ps-ui']:Circle(function(success)
        if success then
		    TriggerServerEvent('qb-doorlock:server:updateState', Config.usbhacksdoor, false, false, false, true)
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("The door will auto lock in 120 seconds.", "info", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("BACKUP LOCK", "The door will auto lock in 120 seconds.", 3500, "info")
            end
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
	    else
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("Access denied.", "error", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("UNAUTHORISED", "Access denied...", 3500, "error")
            end
            TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        end
	end, Config.doorparses, Config.doortime)
end)

--------------------
--TARGET FUNCTIONS--
--------------------

if Config.AllowMHacking and Config.AllowScramble and Config.AllowVARHacking then 
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    num = 1, 
                    type = "client",
                    event = "mz-hacks:client:StartHackBlankUSB",
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (mHacking)'
                },
                {
                    num = 2, 
                    type = "client",
                    event = 'mz-hacks:client:StartHackScrambler',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (Scrambler)'
                },
                {
                    num = 3, 
                    type = "client",
                    event = 'mz-hacks:client:StartHackVARHack',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (VAR Hack)'
                },
            },
            distance = 1.2,
        })
    end)
elseif Config.AllowMHacking and Config.AllowScramble and not Config.AllowVARHacking then
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    type = "client",
                    event = "mz-hacks:client:StartHackBlankUSB",
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (mHacking)'
                },
                {
                    type = "client",
                    event = 'mz-hacks:client:StartHackScrambler',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (Scrambler)'
                },
            },
            distance = 1.2,
        })
    end)
elseif Config.AllowMHacking and not Config.AllowScramble and Config.AllowVARHacking then 
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    type = "client",
                    event = "mz-hacks:client:StartHackBlankUSB",
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (mHacking)'
                },
                {
                    type = "client",
                    event = 'mz-hacks:client:StartHackVARHack',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (VAR Hack)'
                },
            },
            distance = 1.2,
        })
    end)
elseif not Config.AllowMHacking and Config.AllowScramble and Config.AllowVARHacking then 
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    type = "client",
                    event = 'mz-hacks:client:StartHackScrambler',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (Scrambler)'
                },
                {
                    type = "client",
                    event = 'mz-hacks:client:StartHackVARHack',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (VAR Hack)'
                },
            },
            distance = 1.2,
        })
    end)
elseif Config.AllowMHacking and not Config.AllowScramble and not Config.AllowVARHacking then
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    type = "client",
                    event = "mz-hacks:client:StartHackBlankUSB",
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (mHacking)'
                },
            },
            distance = 1.2,
        })
    end)
elseif not Config.AllowMHacking and Config.AllowScramble and not Config.AllowVARHacking then
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    type = "client",
                    event = 'mz-hacks:client:StartHackScrambler',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (Scrambler)'
                },
            },
            distance = 1.2,
        })
    end)
elseif not Config.AllowMHacking and not Config.AllowScramble and Config.AllowVARHacking then
    CreateThread(function()
        exports['qb-target']:AddBoxZone("usbhacks_trigger", vector3(-67.16, 6253.49, 31.09), 0.8, 1.2, {
            name = "usbhacks_trigger",
            heading = 33,
            debugPoly = false,
            minZ = 27.69,
            maxZ = 31.69,
            }, {
                options = { 
                {
                    type = "client",
                    event = 'mz-hacks:client:StartHackVARHack',
                    icon = 'fas fa-laptop',
                    label = 'Hack Slaughterhouse Database (VAR Hack)'
                },
            },
            distance = 1.2,
        })
    end)         
end 

CreateThread(function()
    exports['qb-target']:AddBoxZone("usbhacks_trigger_glow", vector3(-87.09, 6238.09, 31.09), 1.65, 1, {
        name = "usbhacks_trigger_glow",
        heading = 303,
        debugPoly = false,
        minZ = 27.89,
        maxZ = 31.89,
        }, {
            options = { 
            {
                type = "client",
                event = 'mz-hacks:client:StartHackPathHack',
                icon = 'fas fa-laptop',
                label = 'Hack Slaughterhouse Database (Path Hack)'
            },
            {
                type = "client",
                event = 'mz-hacks:client:StartHackSpotHack',
                icon = 'fas fa-laptop',
                label = 'Hack Slaughterhouse Database (Spot Hack)'
            },
        },
        distance = 1.2,
    })
end)  

------------
--MHACKING--
------------

RegisterNetEvent('mz-hacks:client:StartHackBlankUSB', function()
    if QBCore.Functions.HasItem("blankusb") then
		TriggerEvent('animations:client:EmoteCommandStart', {"type3"})
        local accesstime = math.random(Config.LoadUSBlow * 1000, Config.LoadUSBhigh * 1000)
        QBCore.Functions.Progressbar("deliver_reycle_package", "Accessing Slaughterhouse database...", accesstime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
			TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            Wait(500)
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("Match the static letters/numbers.", "primary", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("MHACKING", "Match the static letters/numbers.", 3500, "info")
            end
            Wait(500)
            TriggerEvent("mhacking:show")
            if Config.mzskills then 
                exports["mz-skills"]:CheckSkill("Hacking", 12800, function(hasskill)
                    if hasskill then lvl8 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 6400, function(hasskill)
                    if hasskill then lvl7 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 3200, function(hasskill)
                    if hasskill then lvl6 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 1600, function(hasskill)
                    if hasskill then lvl5 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 800, function(hasskill)
                    if hasskill then lvl4 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 400, function(hasskill)
                    if hasskill then lvl3 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 200, function(hasskill)
                    if hasskill then lvl2 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 100, function(hasskill)
                    if hasskill then lvl1 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 0, function(hasskill)
                    if hasskill then lvl0 = true end
                end)
                if lvl8 then        
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl8, Config.highhacklvl8), Config.hacktimelvl8, HackingSuccessBlankUSB)
                    lvl8 = false 
                elseif lvl7 then
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl7, Config.highhacklvl7), Config.hacktimelvl7, HackingSuccessBlankUSB)
                    lvl7 = false
                elseif lvl6 then
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl6, Config.highhacklvl6), Config.hacktimelvl6, HackingSuccessBlankUSB)
                    lvl6 = false
                elseif lvl5 then 
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl5, Config.highhacklvl5), Config.hacktimelvl5, HackingSuccessBlankUSB)
                    lvl5 = false
                elseif lvl4 then        
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl4, Config.highhacklvl4), Config.hacktimelvl4, HackingSuccessBlankUSB)
                    lvl4 = false
                elseif lvl3 then
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl3, Config.highhacklvl3), Config.hacktimelvl3, HackingSuccessBlankUSB)
                    lvl3 = false
                elseif lvl2 then
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl2, Config.highhacklvl2), Config.hacktimelvl2, HackingSuccessBlankUSB)
                    lvl2 = false
                elseif lvl1 then 
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl1, Config.highhacklvl1), Config.hacktimelvl1, HackingSuccessBlankUSB)
                    lvl1 = false
                elseif lvl0 then 
                    TriggerEvent("mhacking:start", math.random(Config.lowhacklvl0, Config.highhacklvl0), Config.hacktimelvl0, HackingSuccessBlankUSB)
                    lvl0 = false 
                end
            elseif not Config.mzskills then 
                TriggerEvent("mhacking:start", math.random(Config.lowhack, Config.highhack), Config.hacktime, HackingSuccessBlankUSB)
            end
        end)
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["blankusb"]["name"], image = QBCore.Shared.Items["blankusb"]["image"]},
        }
		if Config.NotifyType == 'qb' then
        	QBCore.Functions.Notify("You need something to extract information from the database...", "error", 3500)
		elseif Config.NotifyType == "okok" then
			exports['okokNotify']:Alert("NEED BLANK USB", "You need something to extract information from the database...", 3500, "error")
		end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
		TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

function ExchangeSuccessBlankUSB()
		TriggerEvent('animations:client:EmoteCommandStart', {"kneel"})
        local downloadtime = math.random(Config.DownloadUSBlow * 1000, Config.DownloadUSBhigh * 1000)
		QBCore.Functions.Progressbar("deliver_reycle_package", "DOWNLOADING DATA...", downloadtime, false, true, {
			disableMovement = true,
			disableCarMovement = true,
			disableMouse = false,
			disableCombat = true,
		}, {}, {}, {}, function() -- Done
        Wait(1000)
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        if Config.mzskills then 
            local BetterXP = math.random(Config.HackingXPlow, Config.HackingXPhigh)
            local BetterXP2 = math.random(Config.HackingXPlow, Config.HackingXPmid)
            local hackerchance = math.random(1, 10)
            if hackerchance >= 9 then
                chance = BetterXP
            elseif hackerchance < 9 and hackerchance >= 7 then
                chance = BetterXP2
            else
                chance = Config.HackingXPlow
            end
            exports["mz-skills"]:UpdateSkill("Hacking", chance)
        end
        if Config.mzskills then 
            exports["mz-skills"]:CheckSkill("Hacking", 12800, function(hasskill)
                if hasskill then lvl8 = true end
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 6400, function(hasskill)
                if hasskill then lvl7 = true end 
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 3200, function(hasskill)
                if hasskill then lvl6 = true end
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 1600, function(hasskill)
                if hasskill then lvl5 = true end
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 800, function(hasskill)
                if hasskill then lvl4 = true end
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 400, function(hasskill)
                if hasskill then lvl3 = true end 
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 200, function(hasskill)
                if hasskill then lvl2 = true end 
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 100, function(hasskill)
                if hasskill then lvl1 = true end
            end)
            exports["mz-skills"]:CheckSkill("Hacking", 0, function(hasskill)
                if hasskill then lvl0 = true end
            end)
            Wait(500)
            if lvl8 then        
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl8')
                lvl8 = false 
            elseif lvl7 then
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl7')
                lvl7 = false
            elseif lvl6 then
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl6')
                lvl6 = false
            elseif lvl5 then 
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl5')
                lvl5 = false
            elseif lvl4 then        
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl4')
                lvl4 = false
            elseif lvl3 then
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl3')
                lvl3 = false
            elseif lvl2 then
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl2')
                lvl2 = false
            elseif lvl1 then 
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl1')
                lvl1 = false
            elseif lvl0 then 
                TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvl0')
                lvl0 = false 
            end
        elseif not Config.mzskills then 
            TriggerServerEvent('mz-hacks:server:SuccessBlankUSBlvlNOXP')
        end
	end)
end

function ExchangeFailBlankUSB()
    if Config.mzskills then 
        lvl0 = false
        lvl1 = false 
        lvl2 = false 
        lvl3 = false 
        lvl4 = false 
        lvl5 = false 
        lvl6 = false 
        lvl7 = false 
        lvl8 = false  
        local chance = -Config.HackingXPloss
        local hackerchance = math.random(1, 10)
        exports["mz-skills"]:UpdateSkill("Hacking", chance)
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify('-'..Config.HackingXPloss..'XP to Hacking', "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("SKILLS", '-'..Config.HackingXPloss..'XP to Hacking', 3500, "error")
        end
    end
    TriggerServerEvent('mz-hacks:server:RemoveBlankUSB')
end

function HackingSuccessBlankUSB(success, timeremaining)
    if success then
        TriggerEvent('mhacking:hide')
        ExchangeSuccessBlankUSB()
    else
		TriggerEvent('mhacking:hide')
		ExchangeFailBlankUSB()
	end
end

-------------
--SCRAMBLER--
-------------

RegisterNetEvent('mz-hacks:client:StartHackScrambler', function()
    if QBCore.Functions.HasItem("blankusb") then
		TriggerEvent('animations:client:EmoteCommandStart', {"type3"})
        local accesstime = math.random(Config.LoadUSBlow * 1000, Config.LoadUSBhigh * 1000)
        QBCore.Functions.Progressbar("deliver_reycle_package", "Accessing Slaughterhouse database...", accesstime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
            Wait(500)
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("Match the sequence to complete the hack.", "primary", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("SCRAMBLER", "Match the sequence to complete the hack.", 3500, "info")
            end
            Wait(500)
			TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            if Config.mzskills then 
                exports["mz-skills"]:CheckSkill("Hacking", 12800, function(hasskill)
                    if hasskill then lvl8 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 6400, function(hasskill)
                    if hasskill then lvl7 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 3200, function(hasskill)
                    if hasskill then lvl6 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 1600, function(hasskill)
                    if hasskill then lvl5 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 800, function(hasskill)
                    if hasskill then lvl4 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 400, function(hasskill)
                    if hasskill then lvl3 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 200, function(hasskill)
                    if hasskill then lvl2 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 100, function(hasskill)
                    if hasskill then lvl1 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 0, function(hasskill)
                    if hasskill then lvl0 = true end
                end)
                Wait(500)
                if lvl8 then        
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl8 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl8 = false
                        end
                    end, Config.stypelvl8, Config.ssecondslvl8, Config.smodifylvl8)
                elseif lvl7 then
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl7 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl7 = false
                        end
                    end, Config.stypelvl7, Config.ssecondslvl7, Config.smodifylvl7)
                elseif lvl6 then
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl6 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl6 = false
                        end
                    end, Config.stypelvl6, Config.ssecondslvl6, Config.smodifylvl6)
                elseif lvl5 then 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl5 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl5 = false
                        end
                    end, Config.stypelvl5, Config.ssecondslvl5, Config.smodifylvl5)
                elseif lvl4 then        
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl4 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl4 = false
                        end
                    end, Config.stypelvl4, Config.ssecondslvl4, Config.smodifylvl4)
                elseif lvl3 then
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl3 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl3 = false
                        end
                    end, Config.stypelvl3, Config.ssecondslvl3, Config.smodifylvl3)
                elseif lvl2 then
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl2 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl2 = false
                        end
                    end, Config.stypelvl2, Config.ssecondslvl2, Config.smodifylvl2)
                elseif lvl1 then 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl1 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl1 = false
                        end
                    end, Config.stypelvl1, Config.ssecondslvl1, Config.smodifylvl1)
                elseif lvl0 then 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl0 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl0 = false
                        end
                    end, Config.stypelvl0, Config.ssecondslvl0, Config.smodifylvl0)
                else 
                    print("Your mz-skills is not properly configured, make sure you have 'mz-skills' and have opened the .sql file")
                end
            elseif not Config.mzskills then 
                local hackchance = math.random(1, 4)
                if hackchance == 1 then 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                    end, Config.stypeNOXP4, Config.ssecondsNOXPtime, Config.smodifyNOXP)
                elseif hackchance == 2 then 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                    end, Config.stypeNOXP3, Config.ssecondsNOXPtime, Config.smodifyNOXP)
                elseif hackchance == 3 then
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                    end, Config.stypeNOXP2, Config.ssecondsNOXPtime, Config.smodifyNOXP)
                elseif hackchance == 4 then 
                    exports['ps-ui']:Scrambler(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                    end, Config.stypeNOXP1, Config.ssecondsNOXPtime, Config.smodifyNOXP)
                end
            end
        end)
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["blankusb"]["name"], image = QBCore.Shared.Items["blankusb"]["image"]},
        }
		if Config.NotifyType == 'qb' then
        	QBCore.Functions.Notify("You need something to extract information from the database...", "error", 3500)
		elseif Config.NotifyType == "okok" then
			exports['okokNotify']:Alert("NEED BLANK USB", "You need something to extract information from the database...", 3500, "error")
		end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
		TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

------------
--VAR HACK--
------------

RegisterNetEvent('mz-hacks:client:StartHackVARHack', function()
    if QBCore.Functions.HasItem("blankusb") then
		TriggerEvent('animations:client:EmoteCommandStart', {"type3"})
        local accesstime = math.random(Config.LoadUSBlow * 1000, Config.LoadUSBhigh * 1000)
        QBCore.Functions.Progressbar("deliver_reycle_package", "Accessing Slaughterhouse database...", accesstime, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function() -- Done
			TriggerEvent('animations:client:EmoteCommandStart', {"c"})
            Wait(500)
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("Match the numbers once they disappear.", "primary", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("VAR HACK", "Match the numbers once they disappear.", 3500, "info")
            end
            Wait(500)
            if Config.mzskills then 
                exports["mz-skills"]:CheckSkill("Hacking", 12800, function(hasskill)
                    if hasskill then lvl8 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 6400, function(hasskill)
                    if hasskill then lvl7 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 3200, function(hasskill)
                    if hasskill then lvl6 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 1600, function(hasskill)
                    if hasskill then lvl5 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 800, function(hasskill)
                    if hasskill then lvl4 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 400, function(hasskill)
                    if hasskill then lvl3 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 200, function(hasskill)
                    if hasskill then lvl2 = true end 
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 100, function(hasskill)
                    if hasskill then lvl1 = true end
                end)
                exports["mz-skills"]:CheckSkill("Hacking", 0, function(hasskill)
                    if hasskill then lvl0 = true end
                end)
                Wait(500)
                if lvl8 then        
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl8 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl8 = false
                        end
                    end, Config.Blocknumberlvl8, Config.VARtimelvl8)
                elseif lvl7 then
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl7 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl7 = false
                        end
                    end, Config.Blocknumberlvl7, Config.VARtimelvl7)
                elseif lvl6 then
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl6 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl6 = false
                        end
                    end, Config.Blocknumberlvl6, Config.VARtimelvl6)
                elseif lvl5 then 
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl5 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl5 = false
                        end
                    end, Config.Blocknumberlvl5, Config.VARtimelvl5)
                elseif lvl4 then        
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl4 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl4 = false
                        end
                    end, Config.Blocknumberlvl4, Config.VARtimelvl4)
                elseif lvl3 then
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl3 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl3 = false
                        end
                    end, Config.Blocknumberlvl3, Config.VARtimelvl3)
                elseif lvl2 then
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl2 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl2 = false
                        end
                    end, Config.Blocknumberlvl2, Config.VARtimelvl2)
                elseif lvl1 then 
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl1 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl1 = false
                        end
                    end, Config.Blocknumberlvl1, Config.VARtimelvl1)
                elseif lvl0 then 
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                            lvl0 = false
                        else
                            ExchangeFailBlankUSB()
                            lvl0 = false
                        end
                     end, Config.Blocknumberlvl0, Config.VARtimelvl0)
                else 
                    print("Your mz-skills is not properly configured, make sure you have 'mz-skills' and have opened the .sql file")
                end
            elseif not Config.mzskills then 
                local hackchance = math.random(1, 4)
                if hackchance == 1 then 
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                     end, Config.BlocknumberlvlNOXP4, Config.BlocknumberNOXPtime)
                elseif hackchance == 2 then 
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                     end, Config.BlocknumberlvlNOXP3, Config.BlocknumberNOXPtime)
                elseif hackchance == 3 then
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                     end, Config.BlocknumberlvlNOXP2, Config.BlocknumberNOXPtime)
                elseif hackchance == 4 then 
                    exports['ps-ui']:VarHack(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                     end, Config.BlocknumberlvlNOXP1, Config.BlocknumberNOXPtime)
                end
            end
        end)
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["blankusb"]["name"], image = QBCore.Shared.Items["blankusb"]["image"]},
        }
		if Config.NotifyType == 'qb' then
        	QBCore.Functions.Notify("You need something to extract information from the database...", "error", 3500)
		elseif Config.NotifyType == "okok" then
			exports['okokNotify']:Alert("NEED BLANK USB", "You need something to extract information from the database...", 3500, "error")
		end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
		TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

-------------
--PATH HACK--
-------------

RegisterNetEvent('mz-hacks:client:StartHackPathHack', function()
    if Config.GlowHacking then 
        if QBCore.Functions.HasItem("blankusb") then
            TriggerEvent('animations:client:EmoteCommandStart', {"type3"})
            local accesstime = math.random(Config.LoadUSBlow * 1000, Config.LoadUSBhigh * 1000)
            QBCore.Functions.Progressbar("deliver_reycle_package", "Accessing Slaughterhouse database...", accesstime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                Wait(500)
                if Config.NotifyType == 'qb' then
                    QBCore.Functions.Notify("Complete the labrynth in the allocated time.", "primary", 3500)
                elseif Config.NotifyType == "okok" then
                    exports['okokNotify']:Alert("PATH HACK", "Complete the labrynth in the allocated time.", 3500, "info")
                end
                Wait(500)
                if Config.mzskills then 
                    exports["mz-skills"]:CheckSkill("Hacking", 12800, function(hasskill)
                        if hasskill then lvl8 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 6400, function(hasskill)
                        if hasskill then lvl7 = true end 
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 3200, function(hasskill)
                        if hasskill then lvl6 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 1600, function(hasskill)
                        if hasskill then lvl5 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 800, function(hasskill)
                        if hasskill then lvl4 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 400, function(hasskill)
                        if hasskill then lvl3 = true end 
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 200, function(hasskill)
                        if hasskill then lvl2 = true end 
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 100, function(hasskill)
                        if hasskill then lvl1 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 0, function(hasskill)
                        if hasskill then lvl0 = true end 
                    end)
                    Wait(500)
                    if lvl8 then
                        local settings = {gridSize = Config.pathGridSizelvl8, lives = Config.pathLiveslvl8, timeLimit = Config.pathTimelvl8 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl8 = false 
                    elseif lvl7 then
                        local settings = {gridSize = Config.pathGridSizelvl7, lives = Config.pathLiveslvl7, timeLimit = Config.pathTimelvl7 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl7 = false 
                    elseif lvl6 then
                        local settings = {gridSize = Config.pathGridSizelvl6, lives = Config.pathLiveslvl6, timeLimit = Config.pathTimelvl6 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl6 = false 
                    elseif lvl5 then 
                        local settings = {gridSize = Config.pathGridSizelvl5, lives = Config.pathLiveslvl5, timeLimit = Config.pathTimelvl5 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl5 = false 
                    elseif lvl4 then        
                        local settings = {gridSize = Config.pathGridSizelvl4, lives = Config.pathLiveslvl4, timeLimit = Config.pathTimelvl4 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl4 = false 
                    elseif lvl3 then
                        local settings = {gridSize = Config.pathGridSizelvl3, lives = Config.pathLiveslvl3, timeLimit = Config.pathTimelvl3 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl3 = false 
                    elseif lvl2 then
                        local settings = {gridSize = Config.pathGridSizelvl2, lives = Config.pathLiveslvl2, timeLimit = Config.pathTimelvl2 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl2 = false 
                    elseif lvl1 then 
                        local settings = {gridSize = Config.pathGridSizelvl1, lives = Config.pathLiveslvl1, timeLimit = Config.pathTimelvl1 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl1 = false 
                    elseif lvl0 then 
                        local settings = {gridSize = Config.pathGridSizelvl0, lives = Config.pathLiveslvl0, timeLimit = Config.pathTimelvl0 * 1000}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "path")        
                        lvl0 = false  
                    end
                elseif not Config.mzskills then 
                    local settings = {gridSize = Config.pathGridSizeNOXP, lives = Config.pathLivesNOXP, timeLimit = Config.pathTimeNOXP * 1000}
                    exports["glow_minigames"]:StartMinigame(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                    end, "path")        
                end
            end)
        else
            local requiredItems = {
                [1] = {name = QBCore.Shared.Items["blankusb"]["name"], image = QBCore.Shared.Items["blankusb"]["image"]},
            }
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("You need something to extract information from the database...", "error", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("NEED BLANK USB", "You need something to extract information from the database...", 3500, "error")
            end
            TriggerEvent('inventory:client:requiredItems', requiredItems, true)
            Wait(2000)
            TriggerEvent('inventory:client:requiredItems', requiredItems, false)
        end
    else 
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("This PC isn't functioning?", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NO HACKS?", "This PC isn't functioning?", 3500, "error")
        end
    end 
end)

-------------
--SPOT HACK--
-------------

RegisterNetEvent('mz-hacks:client:StartHackSpotHack', function()
    if Config.GlowHacking then 
        if QBCore.Functions.HasItem("blankusb") then
            TriggerEvent('animations:client:EmoteCommandStart', {"type3"})
            local accesstime = math.random(Config.LoadUSBlow * 1000, Config.LoadUSBhigh * 1000)
            QBCore.Functions.Progressbar("deliver_reycle_package", "Accessing Slaughterhouse database...", accesstime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {}, {}, {}, function() -- Done
                TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                Wait(500)
                if Config.NotifyType == 'qb' then
                    QBCore.Functions.Notify("Complete the labrynth in the allocated time.", "primary", 3500)
                elseif Config.NotifyType == "okok" then
                    exports['okokNotify']:Alert("PATH HACK", "Complete the labrynth in the allocated time.", 3500, "info")
                end
                Wait(500)
                if Config.mzskills then 
                    exports["mz-skills"]:CheckSkill("Hacking", 12800, function(hasskill)
                        if hasskill then lvl8 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 6400, function(hasskill)
                        if hasskill then lvl7 = true end 
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 3200, function(hasskill)
                        if hasskill then lvl6 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 1600, function(hasskill)
                        if hasskill then lvl5 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 800, function(hasskill)
                        if hasskill then lvl4 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 400, function(hasskill)
                        if hasskill then lvl3 = true end 
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 200, function(hasskill)
                        if hasskill then lvl2 = true end 
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 100, function(hasskill)
                        if hasskill then lvl1 = true end
                    end)
                    exports["mz-skills"]:CheckSkill("Hacking", 0, function(hasskill)
                        if hasskill then lvl0 = true end 
                    end)
                    Wait(500)
                    if lvl8 then
                        local settings = {gridSize = Config.spotGridSizelvl8, timeLimit = Config.spotTimeLimitlvl8 * 1000, charSet = Config.spotCharSetlvl8, required = Config.spotRequiredlvl8}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")        
                        lvl8 = false 
                    elseif lvl7 then
                        local settings = {gridSize = Config.spotGridSizelvl7, timeLimit = Config.spotTimeLimitlvl7 * 1000, charSet = Config.spotCharSetlvl7, required = Config.spotRequiredlvl7}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")         
                        lvl7 = false 
                    elseif lvl6 then
                        local settings = {gridSize = Config.spotGridSizelvl6, timeLimit = Config.spotTimeLimitlvl6 * 1000, charSet = Config.spotCharSetlvl6, required = Config.spotRequiredlvl6}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")         
                        lvl6 = false 
                    elseif lvl5 then 
                        local settings = {gridSize = Config.spotGridSizelvl5, timeLimit = Config.spotTimeLimitlvl5 * 1000, charSet = Config.spotCharSetlvl5, required = Config.spotRequiredlvl5}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")         
                        lvl5 = false 
                    elseif lvl4 then        
                        local settings = {gridSize = Config.spotGridSizelvl4, timeLimit = Config.spotTimeLimitlvl4 * 1000, charSet = Config.spotCharSetlvl4, required = Config.spotRequiredlvl4}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")         
                        lvl4 = false 
                    elseif lvl3 then
                        local settings = {gridSize = Config.spotGridSizelvl3, timeLimit = Config.spotTimeLimitlvl3 * 1000, charSet = Config.spotCharSetlvl3, required = Config.spotRequiredlvl3}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")        
                        lvl3 = false 
                    elseif lvl2 then
                        local settings = {gridSize = Config.spotGridSizelvl2, timeLimit = Config.spotTimeLimitlvl2 * 1000, charSet = Config.spotCharSetlvl2, required = Config.spotRequiredlvl2}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")         
                        lvl2 = false 
                    elseif lvl1 then 
                        local settings = {gridSize = Config.spotGridSizelvl1, timeLimit = Config.spotTimeLimitlvl1 * 1000, charSet = Config.spotCharSetlvl1, required = Config.spotRequiredlvl1}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")        
                        lvl1 = false 
                    elseif lvl0 then 
                        local settings = {gridSize = Config.spotGridSizelvl0, timeLimit = Config.spotTimeLimitlvl0 * 1000, charSet = Config.spotCharSetlvl0, required = Config.spotRequiredlvl0}
                        exports["glow_minigames"]:StartMinigame(function(success)
                            if success then
                                ExchangeSuccessBlankUSB()
                            else
                                ExchangeFailBlankUSB()
                            end
                        end, "spot")         
                        lvl0 = false  
                    end
                elseif not Config.mzskills then 
                    local settings = {gridSize = Config.spotGridSizeNOXP, timeLimit = Config.spotTimeLimitNOXP * 1000, charSet = Config.spotCharSetNOXP, required = Config.spotRequiredNOXP}
                    exports["glow_minigames"]:StartMinigame(function(success)
                        if success then
                            ExchangeSuccessBlankUSB()
                        else
                            ExchangeFailBlankUSB()
                        end
                    end, "spot")       
                end
            end)
        else
            local requiredItems = {
                [1] = {name = QBCore.Shared.Items["blankusb"]["name"], image = QBCore.Shared.Items["blankusb"]["image"]},
            }
            if Config.NotifyType == 'qb' then
                QBCore.Functions.Notify("You need something to extract information from the database...", "error", 3500)
            elseif Config.NotifyType == "okok" then
                exports['okokNotify']:Alert("NEED BLANK USB", "You need something to extract information from the database...", 3500, "error")
            end
            TriggerEvent('inventory:client:requiredItems', requiredItems, true)
            Wait(2000)
            TriggerEvent('inventory:client:requiredItems', requiredItems, false)
        end
    else 
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("This PC isn't functioning?", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NO HACKS?", "This PC isn't functioning?", 3500, "error")
        end
    end
end)

--------------
--FORMATTING--
--------------

CreateThread(function()
    exports['qb-target']:AddBoxZone("formatusb", vector3(565.19, -3124.79, 18.77), 0.6, 1, {
        name = "formatusb",
        heading = 0,
        debugPoly = false,
        minZ = 15.37,
        maxZ = 19.37,
        }, {
            options = { 
            {
                type = "client",
                event = "mz-hacks:client:FormatCryptoCheck",
                icon = 'fas fa-laptop',
                label = 'Format Cryptosticks'
            },
            {
                type = "client",
                event = "mz-hacks:client:FormatTrojanCheck",
                icon = 'fas fa-laptop',
                label = 'Format Trojan USBs'
            },
            {
                type = "client",
                event = "mz-hacks:client:Formatusb1Check",
                icon = 'fas fa-laptop',
                label = 'Format Blue USBs'
            },
            {
                type = "client",
                event = "mz-hacks:client:Formatusb2Check",
                icon = 'fas fa-laptop',
                label = 'Format Red USBs'
            },
            {
                type = "client",
                event = "mz-hacks:client:Formatusb3Check",
                icon = 'fas fa-laptop',
                label = 'Format Pink USBs'
            },
            {
                type = "client",
                event = "mz-hacks:client:Formatusb4Check",
                icon = 'fas fa-laptop',
                label = 'Format Green USBs'
            },
            {
                type = "client",
                event = "mz-hacks:client:FormatyellowdongleCheck",
                icon = 'fas fa-laptop',
                label = 'Format Yellow Dongles'
            },
        },
        distance = 1.2,
     })
end)

RegisterNetEvent('mz-hacks:client:FormatCryptoCheck', function()
    if QBCore.Functions.HasItem("cryptostick") then
        TriggerServerEvent('mz-hacks:server:FormatCrypto')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["cryptostick"]["name"], image = QBCore.Shared.Items["cryptostick"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need cryptosticks to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED CRYPTOSTICK", "You need cryptosticks to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:FormatTrojanCheck', function()
    if QBCore.Functions.HasItem("trojan_usb") then
        TriggerServerEvent('mz-hacks:server:FormatTrojan')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["trojan_usb"]["name"], image = QBCore.Shared.Items["trojan_usb"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need Trojan USBs to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED TROJAN USBs", "You need Trojan USBs to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:Formatusb1Check', function()
    if QBCore.Functions.HasItem("usb1") then
        TriggerServerEvent('mz-hacks:server:Formatusb1')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["usb1"]["name"], image = QBCore.Shared.Items["usb1"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need Blue USBs to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED BLUE USBs", "You need Blue USBs to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:Formatusb2Check', function()
    if QBCore.Functions.HasItem("usb2") then
        TriggerServerEvent('mz-hacks:server:Formatusb2')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["usb2"]["name"], image = QBCore.Shared.Items["usb2"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need Red USBs to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED RED USBs", "You need Red USBs to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:Formatusb3Check', function()
    if QBCore.Functions.HasItem("usb3") then
        TriggerServerEvent('mz-hacks:server:Formatusb3')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["usb3"]["name"], image = QBCore.Shared.Items["usb3"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need Pink USBs to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED PINK USBs", "You need Pink USBs to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:Formatusb4Check', function()
    if QBCore.Functions.HasItem("usb4") then
        TriggerServerEvent('mz-hacks:server:Formatusb4')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["usb4"]["name"], image = QBCore.Shared.Items["usb4"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need Green USBs to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED GREEN USBs", "You need Green USBs to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:FormatyellowdongleCheck', function()
    if QBCore.Functions.HasItem("yellowdongle") then
        TriggerServerEvent('mz-hacks:server:Formatyellowdongle')
    else
        local requiredItems = {
            [1] = {name = QBCore.Shared.Items["yellowdongle"]["name"], image = QBCore.Shared.Items["yellowdongle"]["image"]},
        }
        if Config.NotifyType == 'qb' then
            QBCore.Functions.Notify("You need Yellow Dongles to erase...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            exports['okokNotify']:Alert("NEED GREEN USBs", "You need Yellow Dongles to erase...", 3500, "error")
        end
        TriggerEvent('inventory:client:requiredItems', requiredItems, true)
        Wait(2000)
        TriggerEvent('inventory:client:requiredItems', requiredItems, false)
    end
end)

RegisterNetEvent('mz-hacks:client:FormatCrypto', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"type4"})
    local formattime = math.random(Config.Formattimelow * 1000, Config.Formattimehigh * 1000)
    QBCore.Functions.Progressbar("deliver_reycle_package", "Erasing data...", formattime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        Wait(1000)
        if Config.mzskills then 
            local BetterXP = math.random(Config.HackingXPlow, Config.HackingXPhigh)
            local BetterXP2 = math.random(Config.HackingXPlow, Config.HackingXPmid)
            local hackerchance = math.random(1, 10)
            if hackerchance >= 9 then
                chance = BetterXP
            elseif hackerchance < 9 and hackerchance >= 7 then
                chance = BetterXP2
            else
                chance = Config.HackingXPlow
            end
            exports["mz-skills"]:UpdateSkill("Hacking", chance)
        end
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        Wait(1000)
        TriggerServerEvent('mz-hacks:server:GetBlankUSBs')
    end)
end)