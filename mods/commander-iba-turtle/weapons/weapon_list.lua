dzdeckgun1 = FindWeapon("dzdeckgun1")
if dzdeckgun1 then
	if dzdeckgun1.Upgrades == nil then
		dzdeckgun1.Upgrades = {}
	end

	table.insert(dzdeckgun1.Upgrades,
	{
		Enabled = true,
		SaveName = "dzdeckgun157",
		MetalCost = 200,
		EnergyCost = 2000,
	})
end

dzdeckgun157 = FindWeapon("dzdeckgun157")
if dzdeckgun157 then
	dzdeckgun157.CommanderCommon = nil
end
RegisterApplyMod(CommanderApplyModBase)