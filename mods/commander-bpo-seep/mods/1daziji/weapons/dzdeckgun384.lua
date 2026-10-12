
dlc2_Ammunition =
	{
		{
		StringId = "Weapon.dzdeckgunEmptyMag", -- context menu display name
		Sprite = "nomag",
		Projectile = "dzempty",
		ReloadTime = 2,
		MetalFireCost = 0,
		EnergyFireCost = 0,
		},
		{
		StringId = "Weapon.dzdeckgunAP", -- context menu display name
		Sprite = "dzAP",
		Projectile = "dzdeckgunAP38b",
		MetalFireCost = 220,
		EnergyFireCost = 7600,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
		{
		StringId = "Weapon.dzdeckgunSAP", -- context menu display name
		Sprite = "dzSAP",
		Projectile = "dzdeckgunSAP38b",
		MetalFireCost = 200,
		EnergyFireCost = 8800,
		Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
		},
		--[[{
		StringId = "Weapon.dzdeckgunEMP", -- context menu display name
		Sprite = "dzEMP",
		Projectile = "dzdeckgunEMP3",
		MetalFireCost = 100,
		EnergyFireCost = 8000,
		Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
		},]]--
	}

RegisterApplyMod(CommanderApplyModBase)