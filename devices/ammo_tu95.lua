dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 400.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 400.0
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
		StringId = "Weapon.tu95",
		--RoundsEachBurst = 1,
		--RoundPeriod = 1.2,
		FireEffect = "mods/dlc2/effects/fire_thunderbolt.lua",
		Projectile = "tu95",
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
				Name = "ammo_tu95",
				Consume = true
			}
		},
		Weapons = {"runway2"}
	},
}



Root = 
{
	
	Name = "Thunderbolt",
	Sprite = path.."/weapons/head.png",
	Angle = 0,
	Pivot = { -3, -0.32 },
	PivotOffset = { 0, 0 },
	ChildrenBehind =
		{
			{
			Sprite = path.."/weapons/sbplanes/tu95/tu95.png",
			Name = "to",
			Angle = 90,
			Pivot = { 3, 0.0 },
			PivotOffset = { 0.0, 0.0 },
			},
		},
}
