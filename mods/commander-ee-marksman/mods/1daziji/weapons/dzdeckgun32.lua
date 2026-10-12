MaxFireAngle = 60
if not dlc2_Ammunition then
    dlc2_Ammunition = {}
end
table.insert(dlc2_Ammunition,
	-- beacon ammo
    {
		StringId = "Weapon.dzdeckgunAPHEVc",
		Sprite = "APHEV",
		AmmoSprites = nil,
		Devices = { { Name = "ammo_dzdeckgunAPHEVc", Consume = true, }, },
		Projectile = "dzdeckgunAPHEV3b",
		RoundsEachBurst = 2,
		MinFireSpeed = 3700,
		MaxFireSpeed = 4700,
		MetalFireCost = 160,
		EnergyFireCost = 7000,
		RetriggerFireEffect = true,
	}
)