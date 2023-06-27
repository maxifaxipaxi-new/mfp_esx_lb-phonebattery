RegisterNetEvent('mfp_phonebattery:setBattery')
AddEventHandler('mfp_phonebattery:setBattery', function(battery)
  local xPlayer = PlayerPedId()
  print(xPlayer.." & "..battery) -- for debug only
  exports["lb-phone"]:SetBattery(battery)
end)