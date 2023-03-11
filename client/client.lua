local farm = false
local impacts = 0
for k, v in pairs(Config.raccolta) do
    for j, g in pairs(v.coords) do
        exports.ox_target:addBoxZone({
            coords = g,
            size = vec3(2, 2, 2),
            rotation = 45,
            debug = drawZones,
            options = {
                {
                    name = 'box',
                    icon = 'fa-solid fa-cube',
                    label = Text.pickup,
                    items = v.itemRequest or false,
                    distance = 2,
                    onSelect = function(data)
                        TriggerEvent('uniscript:farming', k)
                    end
                }
            }
        })
    end
end

RegisterNetEvent('uniscript:farming', function(K)
    if not farm then
        farm = true
        local item, qty

        qty = math.random(Config.raccolta[K].qtymin, Config.raccolta[K].qtymax)
        numAnim = Config.raccolta[K].numAnim
        if Config.raccolta[K].randomItem then
            item = Config.raccolta[K].item[math.random(1, #Config.raccolta[K].item)]
        else
            item = K
        end

        Animation(Config.raccolta[K].dict, Config.raccolta[K].lib, item, qty, Config.raccolta[K].prop,
            Config.raccolta[K].rotation, numAnim)
    else
        ESX.ShowNotification(Text.actionFinish, 5000, 'error')
    end
end)

function Animation(dict, lib, item, count, prop, rotation, num)
    Citizen.CreateThread(function()
        local ped = PlayerPedId()
        FreezeEntityPosition(ped, true)
        while impacts < num do
            Citizen.Wait(1)

            if impacts == 0 then
                if prop ~= nil then
                    props = CreateObject(GetHashKey(prop), 0, 0, 0, true, true, true)
                    AttachEntityToEntity(props, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), rotation.x,
                        rotation.y, rotation.z, rotation.rx, rotation.ry, rotation.rz, true, true, false, true, 1, true)
                end
            end
            if not HasAnimDictLoaded(dict) then
                RequestAnimDict(dict)
                while not HasAnimDictLoaded(dict) do
                    Citizen.Wait(0)
                end
            end
            Citizen.Wait(100)
            TaskPlayAnim((ped), dict, lib, 8.0, 8.0, -1, 80, 0, 0, 0, 0)
            Citizen.Wait(2500)
            ClearPedTasks(ped)
            impacts = impacts + 1
            if impacts == num then
                farm = false
                impacts = 0
                if prop ~= nil then
                    DetachEntity(props, 1, true)
                    DeleteEntity(props)
                    DeleteObject(props)
                end
                TriggerServerEvent("uniscript:raccolta", item, qty)
                FreezeEntityPosition(ped, false)
                break
            end
        end
    end)
end
