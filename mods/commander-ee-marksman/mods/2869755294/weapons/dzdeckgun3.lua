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
		RoundsEachBurst = 3,
		MinFireSpeed = 3700,
		MaxFireSpeed = 4700,
		MetalFireCost = 200,
		EnergyFireCost = 8000,
		RetriggerFireEffect = true,
	}
)