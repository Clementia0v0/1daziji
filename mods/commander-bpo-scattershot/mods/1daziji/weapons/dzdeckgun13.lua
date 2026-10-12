
    dlc2_Ammunition = nil
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
                Sprite = "dzAP",
                Projectile = "dzdeckgunAPb",
                
                MetalFireCost = 125,
                EnergyFireCost = 4000,
                Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
                },
            {
                StringId = "Weapon.dzdeckgunSAP", -- context menu display name
                Sprite = "dzSAP",
                Projectile = "dzdeckgunSAPb",
                MetalFireCost = 90,
                EnergyFireCost = 4100,
                Devices = { { Name = "ammo_dzdeckgunSAP", Consume = false } },
                },
                {
                    Sprite = "dzEMP",
                    Projectile = "dzdeckgunEMP1",
                    MetalFireCost = 100,
                    EnergyFireCost = 2000,
                    Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
                    },
        }

RegisterApplyMod(CommanderApplyModBase)