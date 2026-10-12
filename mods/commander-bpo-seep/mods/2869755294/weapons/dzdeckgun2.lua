
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
                StringId = "Weapon.dzdeckgunAP", -- context menu display name
                Sprite = "dzAP",
                Projectile = "dzdeckgunAP2b",
                MetalFireCost = 160,
                EnergyFireCost = 5600,
                Devices = { { Name = "ammo_dzdeckgunAP", Consume = false } },
                },
                {
                    StringId = "Weapon.dzdeckgunSAP", -- context menu display name
                    Sprite = "dzSAP",
                    Projectile = "dzdeckgunSAP2b",
                    MetalFireCost = 120,
                    EnergyFireCost = 5800,
                    Devices = { { Name = "ammo_dzdeckgunSAP", Consume = false } },
                    },
                {
                    StringId = "Weapon.dzdeckgunEMP", -- context menu display name
                    Sprite = "dzEMP",
                    Projectile = "dzdeckgunEMP2",
                    MetalFireCost = 80,
                    EnergyFireCost = 2000,
                    Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
                    },
        }

RegisterApplyMod(CommanderApplyModBase)