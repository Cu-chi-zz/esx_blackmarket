# BlackMarket
*BlackMarket Menu with YMAP*
## Requirements

- [eden_accesories](https://github.com/esx-community/eden_accesories)  

Make sure to download eden_accesories and added my few lines so that the menu works 100% with the **extended clip** :  
*In `eden_accesories\client\main.lua` at the line 401*  
```lua
--[########################################################################################]--
--[                                       ADD Cuchi'                                       ]--
--[########################################################################################]--

local used5 = 0

RegisterNetEvent('eden_accesories:chargeur')
AddEventHandler('eden_accesories:chargeur', function(duration)
	local inventory = ESX.GetPlayerData().inventory
	local chargeur = 0
		for i=1, #inventory, 1 do
		  if inventory[i].name == 'chargeur' then
			chargeur = inventory[i].count
		  end
		end

local ped = PlayerPedId()
local currentWeaponHash = GetSelectedPedWeapon(ped)

		if used5 < chargeur then
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
		  				used3 = used3 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_CERAMICPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CERAMICPISTOL"), GetHashKey("COMPONENT_CERAMICPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_MINISMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MINISMG"), GetHashKey("COMPONENT_MINISMG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_MACHINEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MACHINEPISTOL"), GetHashKey("COMPONENT_MACHINEPISTOL_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_COMBATPDW_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE_MK2"), GetHashKey("COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_COMPACTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMPACTRIFLE"), GetHashKey("COMPONENT_COMPACTRIFLE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_MG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MG"), GetHashKey("COMPONENT_MG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_COMBATMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATMG"), GetHashKey("COMPONENT_COMBATMG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_COMBATMG_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATMG_MK2"), GetHashKey("COMPONENT_COMBATMG_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_GUSENBERG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_GUSENBERG"), GetHashKey("COMPONENT_GUSENBERG_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE_MK2"), GetHashKey("COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSNIPER_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSNIPER_MK2"), GetHashKey("COMPONENT_HEAVYSNIPER_MK2_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))  
		  		 ESX.ShowNotification(("Vous venez de vous équiper un chargeur grande capacité. Il devra être ~r~rééquiper~w~ à chaque retour en ville.")) 
	used5 = used5 + 1

		  	else 
		  		  ESX.ShowNotification(("Vous n'avez pas d'arme en main ou votre arme ne peux pas supporter de poignée."))

			end
		else
				  ESX.ShowNotification(("Vous avez utiliser tous vos chargeurs."))
		end
end)
```
**In `eden_accesories\server\main.lua` at the line *30***
```lua
ESX.RegisterUsableItem('chargeur', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)

    TriggerClientEvent('eden_accesories:chargeur', source)
end)
```  
**If you don't want the extended clip you just have to remove these following lines :**  
> client/client.lua : line **40** to **42**  
> client/client.lua : line **66** to **70**  
> server/server.lua : line **22** to **33**  
> config.lua : line **10**  
