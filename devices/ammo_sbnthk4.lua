dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 120.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 300.0
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
		Sprite = "hud-context-ammo-nighthawk",
		StringId = "Weapon.sbnthk4",
		FireEffect = "mods/dlc2/effects/fire_nighthawk.lua",
		Projectile = "sbnthk4",
		RetriggerFireEffect = true,
		AmmoSprites = 
		{
			{
				Node = "Head",
				Sprite = "thunderbolt-head-nighthawk"
			}
		},
		Devices = 
		{
			{
				Name = "ammo_sbnthk4",
				Consume = true
			}
		},
		Weapons = {"runway","runway2"}
	},
}



Root = 
{
	Sprite = "nighthawk_runway-base",
	Name = "nighthawkt",
	Angle = 0,
	Pivot = { 0, 0 },
	PivotOffset = { 0, -0.48 },
	ChildrenInFront =
		{
			{
				Sprite = "nighthawk_runway-base",
				Name = "Thunderbolt1",
				Angle = 0,
				Pivot = { 0.2, 0 },
				PivotOffset = { 0, 0.0 },
			},
			{
			Sprite = "nighthawk_runway-base",
			Name = "nighthawk2",
			Angle = 0,
			Pivot = { 0.4, 0 },
			PivotOffset = { 0, 0.0 },
			},
		},
	ChildrenBehind =
		{
			{
			Sprite = "nighthawk_runway-base",
			Name = "nighthawk2",
			Angle = 0,
			Pivot = { -0.2, 0 },
			PivotOffset = { 0, 0.0 },
			},
			ChildrenBehind =
			{
				{
				Sprite = "nighthawk_runway-base",
				Name = "nighthawk2",
				Angle = 0,
				Pivot = { -0.4, 0 },
				PivotOffset = { 0, 0.0 },
				},
			},
		},
}
