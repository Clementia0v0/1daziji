dofile(path.."/weapons/dzdeckgun32.lua")
ReloadTime = ReloadTime * 2.1
ProjectilesEachRound = 2
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
		Projectile = "dzdeckgunAP3b",
	
		MetalFireCost = 200*FireCostMultiplier,
		EnergyFireCost = 7000*FireCostMultiplier,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunHE", -- context menu display name
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE3",
		MetalFireCost = 160*FireCostMultiplier,
		EnergyFireCost = 7400*FireCostMultiplier,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunEMP", -- context menu display name
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP3",
		MetalFireCost = 100*FireCostMultiplier,
		EnergyFireCost = 7000*FireCostMultiplier,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
	}
