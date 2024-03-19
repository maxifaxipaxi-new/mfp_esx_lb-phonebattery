RegisterNetEvent('lb-addon-phone-community:setBattery')
AddEventHandler('lb-addon-phone-community:setBattery', function(battery)
  local xPlayer = PlayerPedId()
  --print(xPlayer.." & "..battery) -- uncomment for debug only
  exports["lb-phone"]:SetBattery(battery)
end)
