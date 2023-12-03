local uiOpen = false

RegisterCommand('commands', function()
	if (not uiOpen) then
		uiOpen = true
		SendNUIMessage({ transactionType = 'openUI', sendData = json.encode(Config)})
	else
		uiOpen = false
		SendNUIMessage({ transactionType = 'closeUI' })
	end
	Citizen.CreateThread(function()
		while uiOpen do
			if IsControlJustPressed(0, 38) then
				SendNUIMessage({ transactionType = 'closeUI' })
				uiOpen = false
			end
			Citizen.Wait(0)
		end
	end)
end)




































--[[Citizen.CreateThread( function()
	local heading, lastHeading = 0, 1

	while true do
		Citizen.Wait(0)

		if true then
			-- Converts [-180, 180] to [0, 360] where E = 90 and W = 270
			local camRot = GetGameplayCamRot(0)
			heading = tostring(round(360.0 - ((camRot.z + 360.0) % 360.0)))
		else
			-- Converts E = 270 to E = 90
			heading = tostring(round(360.0 - GetEntityHeading(PlayerPedId())))
		end
		if heading == '360' then heading = '0' end
		if heading ~= lastHeading then
            print(heading)
		--	SendNUIMessage({ action = "display", value = heading })
			Citizen.Wait(2)
		end
		lastHeading = heading
	end
end)

function round(num, numDecimalPlaces)
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num + 0.5 * mult)
end--]]
