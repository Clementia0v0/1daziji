
CommanderApplyModBase = function()

	if active then
		if Projectile ~= "missile" then
			ReloadTime = 1.5 
		end
	end
end
RegisterApplyMod(CommanderApplyModBase)