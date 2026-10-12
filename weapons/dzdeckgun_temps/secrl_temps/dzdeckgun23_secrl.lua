dofile(path.."/weapons/dzdeckgun23.lua")
ReloadTime = ReloadTime * 2.1
ProjectilesEachRound = 3
RoundsEachBurst = 2
RoundPeriod = 0.7
FireCostMultiplier = 1.6

	dlc2_Ammunition =
	{
		{
		StringId = "Weapon.dzdeckgunEmptyMag", -- context menu display name
		Sprite = path.."/weapons/media/nomagazine.tga",
		Projectile = "dzempty",
		ReloadTime = 2,
		MetalFireCost = 0,
		EnergyFireCost = 0,
		},
		{
		StringId = "Weapon.dzdeckgunAP", -- context menu display name
		Sprite = "dzAP",
		Projectile = "dzdeckgunAP2b",
		
		MetalFireCost = 160*FireCostMultiplier,
		EnergyFireCost = 5600*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunHE", -- context menu display name
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE2",
		MetalFireCost = 120*FireCostMultiplier,
		EnergyFireCost = 6000*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunEMP", -- context menu display name
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP2",
		MetalFireCost = 80*FireCostMultiplier,
		EnergyFireCost = 6000*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
		},
	}