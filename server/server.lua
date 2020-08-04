ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

--/////////// Utiles \\\\\\\\\\\--

RegisterNetEvent('buySilencieux')
AddEventHandler('buySilencieux', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Silencieux
    local blackMoney = xPlayer.getAccount('black_money')
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('silencieux', 1)
        TriggerClientEvent('esx:showNotification', _source, '~g~Transaction validé !')
    elseif blackMoney.money >= price then
        xPlayer.removeAccountMoney('black_money', price)
        xPlayer.addInventoryItem('silencieux', 1)
        TriggerClientEvent('esx:showNotification', _source, 'Bon, vu que tu n\'as que de l\'argent sale, je veux bien accepter...\n~g~Transaction validé !')
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Transaction annulée, vous n\'avez pas assez d\'argent sur vous !')
    end
end)

RegisterNetEvent('buyChargeur')
AddEventHandler('buyChargeur', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Chargeur
    local blackMoney = xPlayer.getAccount('black_money')
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('chargeur', 1)
        TriggerClientEvent('esx:showNotification', _source, '~g~Transaction validé !')
    elseif blackMoney.money >= price then
        xPlayer.removeAccountMoney('black_money', price)
        xPlayer.addInventoryItem('chargeur', 1)
        TriggerClientEvent('esx:showNotification', _source, 'Bon, vu que tu n\'as que de l\'argent sale, je veux bien accepter...\n~g~Transaction validé !')
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Transaction annulée, vous n\'avez pas assez d\'argent sur vous !')
    end
end)

RegisterNetEvent('buyGrip')
AddEventHandler('buyGrip', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Grip
    local blackMoney = xPlayer.getAccount('black_money')
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('grip', 1)
        TriggerClientEvent('esx:showNotification', _source, '~g~Transaction validé !')
    elseif blackMoney.money >= price then
        xPlayer.removeAccountMoney('black_money', price)
        xPlayer.addInventoryItem('grip', 1)
        TriggerClientEvent('esx:showNotification', _source, 'Bon, vu que tu n\'as que de l\'argent sale, je veux bien accepter...\n~g~Transaction validé !')
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Transaction annulée, vous n\'avez pas assez d\'argent sur vous !')
    end
end)

--/////////// Gadgets \\\\\\\\\\\--

RegisterNetEvent('buyYusuf')
AddEventHandler('buyYusuf', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Yusuf
    local blackMoney = xPlayer.getAccount('black_money')
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('yusuf', 1)
        TriggerClientEvent('esx:showNotification', _source, '~g~Transaction validé !')
    elseif blackMoney.money >= price then
        xPlayer.removeAccountMoney('black_money', price)
        xPlayer.addInventoryItem('yusuf', 1)
        TriggerClientEvent('esx:showNotification', _source, 'Bon, vu que tu n\'as que de l\'argent sale, je veux bien accepter...\n~g~Transaction validé !')
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Transaction annulée, vous n\'avez pas assez d\'argent sur vous !')
    end
end)

RegisterNetEvent('buyFlashlight')
AddEventHandler('buyFlashlight', function()
    local _source = source 
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = Config.Flashlight
    local blackMoney = xPlayer.getAccount('black_money')
    if xPlayer.getMoney() >= price then
        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('flashlight', 1)
        TriggerClientEvent('esx:showNotification', _source, '~g~Transaction validé !')
    elseif blackMoney.money >= price then
        xPlayer.removeAccountMoney('black_money', price)
        xPlayer.addInventoryItem('flashlight', 1)
        TriggerClientEvent('esx:showNotification', _source, 'Bon, vu que tu n\'as que de l\'argent sale, je veux bien accepter...\n~g~Transaction validé !')
    else
        TriggerClientEvent('esx:showNotification', _source, '~r~Transaction annulée, vous n\'avez pas assez d\'argent sur vous !')
    end
end)

----------------------------------------------
--|𝗗𝗶𝘀𝗰𝗼𝗿𝗱 : Cuchi'#0999                    
--|𝗔𝘂𝘁𝗵𝗼𝗿 : 𝗖𝘂𝗰𝗵𝗶❜                   ♥      
--|𝗗𝗼 𝗻𝗼𝘁 𝗿𝗲-𝗿𝗲𝗹𝗲𝗮𝘀𝗲.                       
----------------------------------------------