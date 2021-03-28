ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
	ESX = obj 
end)

--------------------------
-------- taxi ---------
--------------------------

ESX.RegisterUsableItem('taxi', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('outfit:settenuetaxi', _source)
end)