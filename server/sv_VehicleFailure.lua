------------------------------------------
--	iEnsomatic RealisticVehicleFailure  --
------------------------------------------
--
--	Created by Jens Sandalgaard
--
--	This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
--
--	https://github.com/iEns/RealisticVehicleFailure
--
ESX = nil

TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)


local function checkWhitelist(id)
	for key, value in pairs(RepairWhitelist) do
		if id == value then
			return true
		end
	end	
	return false
end

RegisterCommand('repair', function(source, args)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer.getGroup() == "supradmin" then
		TriggerClientEvent('mx-fix:repair', source)
	else
		xPlayer.showNotification('Kamu tidak diijinkan!')
	end
end)

RegisterServerEvent('rvFailure:takemoney')
AddEventHandler('rvFailure:takemoney', function(repairCost)
	local xPlayer = ESX.GetPlayerFromId(source)			
	xPlayer.removeMoney(repairCost)
end)