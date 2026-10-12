
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
                MetalFireCost = 100,
                EnergyFireCost = 3000,
                Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
                },
            {
                StringId = "Weapon.dzdeckgunSAP", -- context menu display name
                Sprite = "dzSAP",
                Projectile = "dzdeckgunSAPb",
                MetalFireCost = 80,
                EnergyFireCost = 3200,
                Devices = { { Name = "ammo_dzdeckgunSAP", Consume = false } },
                },
                {
                    Sprite = "dzEMP",
                    Projectile = "dzdeckgunEMP1",
                    MetalFireCost = 80,
                    EnergyFireCost = 2000,
                    Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
                    },

        }

RegisterApplyMod(CommanderApplyModBase)