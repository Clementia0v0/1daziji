dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 80.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 200.0
HitPoints = 120.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true
BlockPenetration = true
DeviceSplashDamage = 100
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 100
IncendiaryRadiusHeated = 100
StructureSplashDamage = 125
StructureSplashDamageMaxRadius = 200


dlc2_Ammunition =
{
    {
		Sprite = "hud-context-ammo-thunderbolt",
		StringId = "Weapon.sbaapl",
		--RoundsEachBurst = 1,
		--RoundPeriod = 1.2,
		FireEffect = "mods/dlc2/effects/fire_thunderbolt.lua",
		Projectile = "sbaapl",
		RetriggerFireEffect = true,
		AmmoSprites = 
		{
			{
				Node = "Head",
				Sprite = "thunderbolt-head-thunderbolt"
			}
		},
		Devices = 
		{
			{
				Name = "ammo_sbaapl",
				Consume = true
			}
		},
		Weapons = {"runway","runway2"}
	},
}



Root = 
{
	Sprite = "thunderbolt_runway-base",
	Name = "Thunderbolt",
	Angle = 0,
	Pivot = { 0, 0 },
	PivotOffset = { 0, -0.48 },
	ChildrenInFront =
		{
			{
				Sprite ="effects/media/steam.dds",
				Name = "to",
				Angle = 90,
				Scale = 0.22,
				Pivot = { -0.3, 0.1 },
				PivotOffset = { 0.0, 0.0 },
			},
		},
}
