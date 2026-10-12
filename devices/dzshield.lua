ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/battery_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 70.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -45.5 }
Mass = 100.0
HitPoints = 200.0
EnergyProductionRate = -500.0
MetalProductionRate = -5.0
EnergyStorageCapacity = -7000.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true

DeviceSplashDamage = 50
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 100
IncendiaryRadiusHeated = 5
StructureSplashDamage = 50
StructureSplashDamageMaxRadius = 100

dofile("effects/device_smoke.lua")


Sprites =
{
	
	{
		Name = "dzshield-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/dzshield/base.png" }, mipmap = true, }, },
		},
	},
}


Root =
{
	Name = "rg",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0.1 },
	Sprite = "dzshield-base",

	ChildrenBehind =
	{
		{
			Name = "wheel",
			Angle = -90,
			Pivot = { 0.0, -0.25 },
			Scale = 1.4,
			PivotOffset = { 0, 0 },
			Sprite = "dzshield_dome_anim",
		},
	},
}
