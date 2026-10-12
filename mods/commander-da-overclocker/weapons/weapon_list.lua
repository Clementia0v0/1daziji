dofile(path .. "/downgrade.lua")

AddDowngrades(Weapons)

CommanderApplyModBase = function()
	local multiplierUpgrade = 0.75

	for k, device in ipairs(Weapons) do
		if device.Upgrades then
			for i, upgradeParams in pairs(device.Upgrades) do
				if not upgradeParams.Downgrade then
					local upgrade = FindWeapon(upgradeParams.SaveName)
					if upgrade and not upgrade.Downgrade then
						upgradeParams.BuildDuration = multiplierUpgrade*(upgradeParams.BuildDuration or upgrade.BuildTimeComplete or 0)
					end
				end
			end
		end
	end
end

mtl = FindWeapon("mtl")
if mtl then
	
	mtl.Enabled = true
	
end
RegisterApplyMod(CommanderApplyModBase)