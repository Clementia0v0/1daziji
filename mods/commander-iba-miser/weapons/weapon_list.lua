dzdeckgun13 = FindWeapon("dzdeckgun13")
if dzdeckgun13 then
	if dzdeckgun13.Upgrades == nil then
		dzdeckgun13.Upgrades = {}
	end

	table.insert(dzdeckgun13.Upgrades,
	{
		Enabled = true,
		SaveName = "dzdeckgun21",
		MetalCost = 220,
		EnergyCost = 2200,
	})
end

dzdeckgun21 = FindWeapon("dzdeckgun21")
if dzdeckgun21 then
	dzdeckgun21.CommanderCommon = nil
end
RegisterApplyMod(CommanderApplyModBase)