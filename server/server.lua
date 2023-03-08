RegisterNetEvent("uniscript:raccolta")
AddEventHandler("uniscript:raccolta", function( item, num)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer ~= nil then
        if xPlayer.canCarryItem(item ,num) then
            xPlayer.addInventoryItem(item, num)
        end
    end
end)