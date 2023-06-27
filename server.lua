ESX = nil
UseNewESX = true -- true / false


if not UseNewESX then
	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
else
	ESX = exports["es_extended"]:getSharedObject()
end

ESX.RegisterUsableItem(Config.BatteryItem, function(playerid)
    local xPlayer = ESX.GetPlayerFromId(playerid)
	xPlayer.removeInventoryItem(Config.BatteryItem, 1)
		local batteryamount = 100
		TriggerClientEvent('mfp_phonebattery:setBattery', xPlayer.source, batteryamount)
		TriggerClientEvent('esx:showNotification', xPlayer.source, "Phone charged 100% again!")
end)