
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
                Projectile = "dzdeckgunAP3b",
            
                MetalFireCost = 240,
                EnergyFireCost = 8000,
                Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
                },
                {
                    StringId = "Weapon.dzdeckgunSAP", -- context menu display name
                    Sprite = "dzSAP",
                    Projectile = "dzdeckgunSAP3b",
                    MetalFireCost = 220,
                    EnergyFireCost = 8200,
                    Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
                    },
                    {
                        StringId = "Weapon.dzdeckgunEMP", -- context menu display name
                        Sprite = "dzEMP",
                        Projectile = "dzdeckgunEMP3",
                        MetalFireCost = 100,
                        EnergyFireCost = 4000,
                        Devices = { { Name = "ammo_pmagazine_large", Consume = false } },
                        },
        }

RegisterApplyMod(CommanderApplyModBase)