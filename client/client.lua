ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do 
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::| MENU |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

_menuPool = NativeUI.CreatePool()
BlackMarketMenu = NativeUI.CreateMenu("","Marché Noir"--[[Translate it to your language]], "", "", "image_blackmarket-a", "image_blackmarket_cuchi")
_menuPool:Add(BlackMarketMenu)

function AddShopsMenu(menu)

    local utilemenu = _menuPool:AddSubMenu(menu, "🔫 Utiles"--[[Translate it to your language]], nil, nil, "image_blackmarket-a", "image_blackmarket_cuchi")
    local gadgetmenu = _menuPool:AddSubMenu(menu, "🛒 Gadgets"--[[Translate it to your language]], nil, nil, "image_blackmarket-a", "image_blackmarket_cuchi")

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| UTILE ITEMS |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

    local silencieux = NativeUI.CreateItem("Silencieux", "ENTRÉE > Pour valider l'achat") -- Translate it to your language
    utilemenu.SubMenu:AddItem(silencieux)
    silencieux:RightLabel("~r~7000$" )

    local chargeur = NativeUI.CreateItem("Chargeur", "ENTRÉE > Pour valider l'achat") -- Translate it to your language 
    utilemenu.SubMenu:AddItem(chargeur)
    chargeur:RightLabel("~r~7500$")

    local grip = NativeUI.CreateItem("Poignée", "ENTRÉE > Pour valider l'achat") -- Translate it to your language 
    utilemenu.SubMenu:AddItem(grip)
    grip:RightLabel("~r~7000$")

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| GADGET ITEMS |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

    local yusuf = NativeUI.CreateItem("Skin de luxe", "ENTRÉE > Pour valider l'achat") -- Translate it to your language 
    gadgetmenu.SubMenu:AddItem(yusuf)
    yusuf:RightLabel("~r~15000$")

    local flashlight = NativeUI.CreateItem("Lampe", "ENTRÉE > Pour valider l'achat") -- Translate it to your language 
    gadgetmenu.SubMenu:AddItem(flashlight)
    flashlight:RightLabel("~r~2500$")

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| MENU UTILE |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

    utilemenu.SubMenu.OnItemSelect = function(menu, item)
        if item == silencieux then
            TriggerServerEvent('buySilencieux')
            ESX.ShowNotification('~r~Prix : ~h~ '--[[Translate it to your language]] .. Config.Silencieux .. '$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Marché Noir"--[[Translate it to your language]], "Vous demandez un ~r~Silencieux"--[[Translate it to your language]], "", "CHAR_BLOCKED", 1)
        elseif item == chargeur then
            TriggerServerEvent('buyChargeur')
            ESX.ShowNotification('~r~Prix : ~h~ '--[[Translate it to your language]] .. Config.Chargeur .. '$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Marché Noir"--[[Translate it to your language]], "Vous demandez un ~r~Chargeur"--[[Translate it to your language]], "", "CHAR_BLOCKED", 1)
        elseif item == grip then 
            TriggerServerEvent('buyGrip')
            ESX.ShowNotification('~r~Prix : ~h~ '--[[Translate it to your language]] .. Config.Grip .. '$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Marché Noir"--[[Translate it to your language]], "Vous demandez une ~r~Poignée"--[[Translate it to your language]], "", "CHAR_BLOCKED", 1)
        end
    end

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| MENU GADGET |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

    gadgetmenu.SubMenu.OnItemSelect = function(menu, item)
        if item == yusuf then
            TriggerServerEvent('buyYusuf')
            ESX.ShowNotification('~r~Prix : ~h~ '--[[Translate it to your language]] .. Config.Yusuf .. '$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Marché Noir"--[[Translate it to your language]], "Vous demandez un ~r~Skin"--[[Translate it to your language]], "", "CHAR_BLOCKED", 1)
        elseif item == flashlight then
            TriggerServerEvent('buyFlashlight')
            ESX.ShowNotification('~r~Prix : ~h~ '--[[Translate it to your language]] .. Config.Flashlight .. '$')
            Citizen.Wait(1)
            ESX.ShowAdvancedNotification("Marché Noir"--[[Translate it to your language]], "Vous demandez une ~r~Lampe"--[[Translate it to your language]], "", "CHAR_BLOCKED", 1)
        end
    end
end

AddShopsMenu(BlackMarketMenu)
_menuPool:RefreshIndex()

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| LOCALISATION |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, 1003.8208007813, 2456.9731445313, 49.611461639404)

        if dist <= 2.0 then
            ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour voir ce que propose le ~r~vendeur") -- Translate it to your language 
            if IsControlJustPressed(1,38) then 
                BlackMarketMenu:Visible(not BlackMarketMenu:Visible())
            end
        end
    end
end)

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| BLIP |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

Citizen.CreateThread(function()
    if Config.Blip then
        blip = AddBlipForCoord(1004.4245605469, 2456.9865722656, 49.610412597656)
        SetBlipSprite(blip, 378)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, 1.0)
        SetBlipColour(blip, 1)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("BlackMarket")
        EndTextCommandSetBlipName(blip)
    end
end)

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| PED |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

Citizen.CreateThread(function()
    local hash = GetHashKey(Config.Ped)
    while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVMALE", Config.Ped, 1004.4245605469, 2456.9865722656, 48.610412597656, 356.86, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true)
    FreezeEntityPosition(ped, true)
    GiveWeaponToPed(ped, 0x6A6C02E0 --[[weapon hash : https://wiki.rage.mp/index.php?title=Weapons ]], 0, true, true)
end)

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| GUARD 1 |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--
-- (You can remove if you want)

Citizen.CreateThread(function()
    if Config.Garde then
        local hash = GetHashKey(Config.Garde1)
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", Config.Garde1, 1006.2889404297,2461.1706542969,48.565422058105, 265.28, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
        GiveWeaponToPed(ped, 0xBFEFFF6D --[[weapon hash : https://wiki.rage.mp/index.php?title=Weapons ]], 0, true, true)
        -- Second Guard
        local hash = GetHashKey(Config.Garde2)
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", Config.Garde2, 1006.2797241211,2457.732421875,48.565422058105, 265.28, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
        GiveWeaponToPed(ped, 0xBFEFFF6D, 0, true, true)
    end
end)

----------------------------------------------
--|𝗗𝗶𝘀𝗰𝗼𝗿𝗱 : ! Cuchi'#3120                    
--|𝗔𝘂𝘁𝗵𝗼𝗿 : 𝗖𝘂𝗰𝗵𝗶❜                   ♥      
--|𝗗𝗼 𝗻𝗼𝘁 𝗿𝗲-𝗿𝗲𝗹𝗲𝗮𝘀𝗲.                       
----------------------------------------------
