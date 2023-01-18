local QBCore = exports['qb-core']:GetCoreObject()

local ItemList = {
    ["cryptostick"] = "cryptostick",
    ["trojan_usb"] = "trojan_usb",
    ["usb1"] = "usb1",
    ["usb2"] = "usb2",
    ["usb3"] = "usb3",
    ["usb4"] = "usb4",
    ["yellowdongle"] = "yellowdongle",
}

-------------
--BLANK USB--
-------------

-- Removal upon failure

RegisterNetEvent("mz-hacks:server:RemoveBlankUSB", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local failchance = math.random(1, 100)
    if failchance <= Config.FailChance then 
        Player.Functions.RemoveItem("blankusb", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, "Blank USB seizes and corrupts...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            TriggerClientEvent('okokNotify:Alert', source, "HACK FAILED!", "Blank USB seizes and corrupts...", 3500, 'error')
        end
    else 
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, "The Blank USB starts transferring files and fails...", "error", 3500)
        elseif Config.NotifyType == "okok" then
            TriggerClientEvent('okokNotify:Alert', source, "USB HEATS UP", "The Blank USB starts transferring files and fails...", 3500, 'error')
        end
    end
end)

----------
--OUTPUT--
----------

-- Level 0 

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl0", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local luck2 = math.random(1, 100)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    if luck2 <=50 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 50 and luck2 <= 75 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 75 and luck2 <= 90 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 90 and luck2 <= 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 95 and luck2 <= 98 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 98 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end        	
end) 

-- Level 1

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl1", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 45 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 45 and luck2 <= 65 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 65 and luck2 <= 80 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 80 and luck2 <= 90 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 90 and luck2 <= 96 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 96 and luck2 <= 99 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 99 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 2

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl2", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 40 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 40 and luck2 <= 60 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 60 and luck2 <= 73 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 73 and luck2 <= 86 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 86 and luck2 <= 92 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 92 and luck2 <= 97 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 97 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 3

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl3", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 30 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 30 and luck2 <= 50 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 50 and luck2 <= 70 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 70 and luck2 <= 85 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 85 and luck2 <= 92 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 92 and luck2 <= 97 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 97 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 4

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl4", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 20 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 20 and luck2 <= 40 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 40 and luck2 <= 60 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 60 and luck2 <= 75 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 75 and luck2 <= 85 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 85 and luck2 <= 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 5

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl5", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 15 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 15 and luck2 <= 30 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 30 and luck2 <= 50 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 50 and luck2 <= 70 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 70 and luck2 <= 85 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 85 and luck2 <= 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 6

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl6", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 10 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 10 and luck2 <= 20 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 20 and luck2 <= 45 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 45 and luck2 <= 70 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 70 and luck2 <= 85 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 85 and luck2 <= 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 95 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 7

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl7", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 5 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 5 and luck2 <= 10 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 10 and luck2 <= 35 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 35 and luck2 <= 60 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 60 and luck2 <= 80 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 80 and luck2 <= 90 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 90 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- Level 8

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvl8", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    Wait(1000)
    local luck2 = math.random(1, 100)
    if luck2 <= 25 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 25 and luck2 <= 50 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 50 and luck2 <= 70 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 70 and luck2 <= 90 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 90 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                
end)

-- NO XP - mz-skills = false

RegisterNetEvent("mz-hacks:server:SuccessBlankUSBlvlNOXP", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("blankusb", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["blankusb"], "remove")     
    local luck2 = math.random(1, 100)
    if luck2 <= 40 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem1].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem1], "add", 1)
    elseif luck2 > 40 and luck2 <= 60 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem2].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem2], "add", 1)
    elseif luck2 > 60 and luck2 <= 73 then
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem3].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem3], "add", 1)
    elseif luck2 > 73 and luck2 <= 86 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem4].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem4], "add", 1)
    elseif luck2 > 86 and luck2 <= 92 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem5].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem5], "add", 1)
    elseif luck2 > 92 and luck2 <= 97 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem6].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem6], "add", 1)
    elseif luck2 > 97 then 
        Player.Functions.AddItem(QBCore.Shared.Items[Config.USBitem7].name, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.USBitem7], "add", 1)
    end
    if Config.NotifyType == 'qb' then
        TriggerClientEvent('QBCore:Notify', src, 'Data successfully uploaded to USB...', 'success', 3500)  
    elseif Config.NotifyType == "okok" then
        TriggerClientEvent('okokNotify:Alert', source, "HACK SUCCESSFUL", "Data successfully uploaded to USB...", 3500, 'success')
    end                 
end)

--------------
--FORMATTING--
--------------

RegisterNetEvent("mz-hacks:server:FormatCrypto", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cryptostick = Player.Functions.GetItemByName('cryptostick')
    if Player.PlayerData.items ~= nil then 
        if cryptostick ~= nil then 
            if cryptostick.amount >= Config.cryptocost then 
                Player.Functions.RemoveItem("cryptostick", Config.cryptocost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['cryptostick'], "remove", Config.cryptocost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough cryptosticks to format (Need "..Config.cryptocost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED CRYPTOSTICKS", "You do not have enough cryptosticks to format (Need "..Config.cryptocost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterNetEvent("mz-hacks:server:FormatTrojan", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local trojan_usb = Player.Functions.GetItemByName('trojan_usb')
    if Player.PlayerData.items ~= nil then 
        if trojan_usb ~= nil then 
            if trojan_usb.amount >= Config.trojancost then 
                Player.Functions.RemoveItem("trojan_usb", Config.trojancost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['trojan_usb'], "remove", Config.trojancost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough Trojan USBs to format (Need "..Config.trojancost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED TROJAN USBs", "You do not have enough Trojan USBs to format (Need "..Config.trojancost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterNetEvent("mz-hacks:server:Formatusb1", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local usb1 = Player.Functions.GetItemByName('usb1')
    if Player.PlayerData.items ~= nil then 
        if usb1 ~= nil then 
            if usb1.amount >= Config.usb1cost then 
                Player.Functions.RemoveItem("usb1", Config.usb1cost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['usb1'], "remove", Config.usb1cost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough Blue USBs to format (Need "..Config.usb1cost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED BLUE USBs", "You do not have enough Blue USBs to format (Need "..Config.usb1cost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterNetEvent("mz-hacks:server:Formatusb2", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local usb2 = Player.Functions.GetItemByName('usb2')
    if Player.PlayerData.items ~= nil then 
        if usb2 ~= nil then 
            if usb2.amount >= Config.usb2cost then 
                Player.Functions.RemoveItem("usb2", Config.usb2cost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['usb2'], "remove", Config.usb2cost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough Red USBs to format (Need "..Config.usb2cost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED RED USBs", "You do not have enough Red USBs to format (Need "..Config.usb2cost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterNetEvent("mz-hacks:server:Formatusb3", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local usb3 = Player.Functions.GetItemByName('usb3')
    if Player.PlayerData.items ~= nil then 
        if usb3 ~= nil then 
            if usb3.amount >= Config.usb3cost then 
                Player.Functions.RemoveItem("usb3", Config.usb3cost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['usb3'], "remove", Config.usb3cost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough Pink USBs to format (Need "..Config.usb3cost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED PINK USBs", "You do not have enough Pink USBs to format (Need "..Config.usb3cost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterNetEvent("mz-hacks:server:Formatusb4", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local usb4 = Player.Functions.GetItemByName('usb4')
    if Player.PlayerData.items ~= nil then 
        if usb4 ~= nil then 
            if usb4.amount >= Config.usb4cost then 
                Player.Functions.RemoveItem("usb4", Config.usb4cost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['usb4'], "remove", Config.usb4cost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough Pink USBs to format (Need "..Config.usb4cost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED PINK USBs", "You do not have enough Pink USBs to format (Need "..Config.usb4cost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterNetEvent("mz-hacks:server:Formatyellowdongle", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local yellowdongle = Player.Functions.GetItemByName('yellowdongle')
    if Player.PlayerData.items ~= nil then 
        if yellowdongle ~= nil then 
            if yellowdongle.amount >= Config.yellowdonglecost then 
                Player.Functions.RemoveItem("yellowdongle", Config.yellowdonglecost)
                TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['yellowdongle'], "remove", Config.yellowdonglecost)
                Wait(1500)
                TriggerClientEvent("mz-hacks:client:FormatCrypto", src)
            else
                if Config.NotifyType == 'qb' then
                    TriggerClientEvent('QBCore:Notify', src, "You do not have enough Yellow Dongles to format (Need "..Config.yellowdonglecost..")", 'error')
                elseif Config.NotifyType == "okok" then
                    TriggerClientEvent('okokNotify:Alert', source, "NEED YELLOW DONGLES", "You do not have enough Yellow Dongles to format (Need "..Config.yellowdonglecost..")", 3500, 'error')
                end
            end
        end
    end
end)

RegisterServerEvent('mz-hacks:server:GetBlankUSBs', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if math.random(1, 100) <= Config.BlankUSBDoubleChance then 
        Player.Functions.AddItem("blankusb", 2)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['blankusb'], "add", 2)
        if Config.NotifyType == 'qb' then
            TriggerClientEvent('QBCore:Notify', src, "You managed to salvage 2 USBs, nice!", 'success')
        elseif Config.NotifyType == "okok" then
            TriggerClientEvent('okokNotify:Alert', source, "BLANK USBS", "You managed to salvage 2 USBs, nice!", 3500, 'success')
        end
    else
        Player.Functions.AddItem("blankusb", 1)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['blankusb'], "add", 1)
    end 
end)