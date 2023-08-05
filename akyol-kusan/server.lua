
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("akyolsv:kusan")
AddEventHandler("akyolsv:kusan", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    for _, itemData in ipairs(Config.items) do
        Player.Functions.AddItem(itemData.name, itemData.amount)
    end

    TriggerClientEvent("QBCore:Notify", src, "Öğeler başarıyla verildi.", "success")
end)
