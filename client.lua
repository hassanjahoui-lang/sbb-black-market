local QBCore = exports['qb-core']:GetCoreObject()
local blackMarketPed = nil

-- Funzione per spawnare il ped
CreateThread(function()
    local model = GetHashKey(Config.PedModel)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end

    blackMarketPed = CreatePed(0, model, Config.Location.x, Config.Location.y, Config.Location.z - 1.0, Config.Location.w, false, false)
    FreezeEntityPosition(blackMarketPed, true)
    SetEntityInvincible(blackMarketPed, true)
    SetBlockingOfNonTemporaryEvents(blackMarketPed, true)

    -- Aggiunge l'interazione qb-target al ped
    exports['qb-target']:AddTargetEntity(blackMarketPed, {
        options = {
            {
                type = "client",
                event = "qb-blackmarket:client:OpenMenu",
                icon = "fas fa-user-secret",
                label = "Parla con il Contrabbandiere",
            },
        },
        distance = 2.0
    })
end)

-- Evento per aprire il menu
RegisterNetEvent('qb-blackmarket:client:OpenMenu', function()
    local menu = {
        {
            header = "Mercato Nero",
            isMenuHeader = true
        }
    }

    for k, v in pairs(Config.Items) do
        menu[#menu+1] = {
            header = v.label,
            txt = "Prezzo: $" .. v.price,
            params = {
                isServer = true,
                event = "qb-blackmarket:server:BuyItem",
                args = {
                    itemId = k -- Passiamo l'ID della configurazione (più sicuro che passare il prezzo)
                }
            }
        }
    end

    menu[#menu+1] = {
        header = "Chiudi",
        txt = "",
        params = {
            event = "qb-menu:client:closeMenu"
        }
    }

    exports['qb-menu']:openMenu(menu)
end)

-- Pulisce il ped se lo script viene riavviato
AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        if blackMarketPed then
            DeleteEntity(blackMarketPed)
        end
    end
end)
