if dlc2_Ammunition then
    dlc2_Ammunition = nil
    dlc2_Ammunition = 
        {
            {
                StringId = "Weapon.dzdeckgunSAP", -- context menu display name
                Sprite = "dzSAP",
                Projectile = "dzdeckgunSAPb",
                MetalFireCost = 70,
                EnergyFireCost = 2200,
                Devices = { { Name = "ammo_dzdeckgunSAP", Consume = false } },
                },
                {
                StringId = "Weapon.dzdeckgunHE", -- context menu display name
                Sprite = "dzHE",
                Projectile = "dzdeckgunHE",
                MetalFireCost = 60,
                EnergyFireCost = 2400,
                Devices = { { Name = "ammo_dzdeckgunHE", Consume = false } },
                },
                {
                StringId = "Weapon.dzdeckgunEMP", -- context menu display name
                Sprite = "dzEMP",
                Projectile = "dzdeckgunEMP1",
                MetalFireCost = 80,
                EnergyFireCost = 2000,
                Devices = { { Name = "ammo_dzdeckgunEMP", Consume = false } },
                },

        }
end
