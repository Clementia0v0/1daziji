dofile(path.."/weapons/dzdeckgun11.lua")
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
		Sprite = "dzAP",
		Projectile = "dzdeckgunAPb",
		MetalFireCost = 80*FireCostMultiplier,
		EnergyFireCost = 3000*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
		},
		{
		Sprite = "dzHE",
		Projectile = "dzdeckgunHE",
		MetalFireCost = 50*FireCostMultiplier,
		EnergyFireCost = 3600*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
		},
		{
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP1",
		MetalFireCost = 80*FireCostMultiplier,
		EnergyFireCost = 2000*FireCostMultiplier,
		Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
		},
	}