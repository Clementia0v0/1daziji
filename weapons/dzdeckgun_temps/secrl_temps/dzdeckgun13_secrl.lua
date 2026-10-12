dofile(path.."/weapons/dzdeckgun13.lua")
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
		Sprite = "dzAP",
		Projectile = "dzdeckgunAPb",
		
		MetalFireCost = 100*FireCostMultiplier,
		EnergyFireCost = 4000*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
		},
		{
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE",
		MetalFireCost = 60*FireCostMultiplier,
		EnergyFireCost = 4200*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		{
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP1",
		MetalFireCost = 100*FireCostMultiplier,
		EnergyFireCost = 2000*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
		},
	}

