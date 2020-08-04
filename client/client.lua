local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

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


local BlackMarket = {
    {x = 1003.8208007813, y = 2456.9731445313, z = 49.611461639404}, 
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        _menuPool:MouseEdgeEnabled (false);

        for k in pairs(BlackMarket) do

            local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
            local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, BlackMarket[k].x, BlackMarket[k].y, BlackMarket[k].z)

            if dist <= 2.0 then
                ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour voir ce que propose le ~r~vendeur") -- Translate it to your language 
                if IsControlJustPressed(1,Keys["E"]) then 
                    BlackMarketMenu:Visible(not BlackMarketMenu:Visible())
                end
            end
        end
    end
end)

--:::::::::::::::::::::::::::::::::::::::::::::::::::::::| BLIP |::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::--

local blips = {
    {title="BlackMarket", colour=1, id=378, x = 1004.4245605469, y = 2456.9865722656, z = 49.610412597656},
}

Citizen.CreateThread(function()
    if Config.Blip then
        for _, info in pairs(blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, info.id)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 1.0)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
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
--|𝗗𝗶𝘀𝗰𝗼𝗿𝗱 : Cuchi'#0999                    
--|𝗔𝘂𝘁𝗵𝗼𝗿 : 𝗖𝘂𝗰𝗵𝗶❜                   ♥      
--|𝗗𝗼 𝗻𝗼𝘁 𝗿𝗲-𝗿𝗲𝗹𝗲𝗮𝘀𝗲.                       
----------------------------------------------