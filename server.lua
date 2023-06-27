ESX = nil
UseNewESX = true -- true / false

if not UseNewESX then
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
else
	ESX = exports["es_extended"]:getSharedObject()
end

-------- Item ------------
ESX.RegisterUsableItem("phone_battery", function(playerid)
    local xPlayer = ESX.GetPlayerFromId(playerid)
	xPlayer.removeInventoryItem("phone_battery", 1)
		local battery = 100
		TriggerClientEvent('lb-addon-phone-community:setBattery', xPlayer.source, battery)
		TriggerClientEvent('esx:showNotification', xPlayer.source, "Phone charged 100% again!")
end)
