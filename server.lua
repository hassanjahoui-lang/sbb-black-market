local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-blackmarket:server:BuyItem', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local itemData = Config.Items[data.itemId]

    if not Player or not itemData then return end

    local price = itemData.price
    local itemName = itemData.name
    local amount = itemData.amount

    -- Controlla se il giocatore ha abbastanza soldi
    if Player.Functions.RemoveMoney(Config.Currency, price, "blackmarket-buy") then
        -- Dà l'oggetto al giocatore
        Player.Functions.AddItem(itemName, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[itemName], "add", amount)
        TriggerClientEvent('QBCore:Notify', src, "Hai acquistato " .. itemData.label .. " per $" .. price, "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "Non hai abbastanza soldi!", "error")
    end
end)
