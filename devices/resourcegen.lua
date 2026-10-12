ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = path.."/effects/medium_mushroom_cloud.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 70.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -45.5 }
Mass = 120.0
HitPoints = 120.0
EnergyProductionRate = 50.0
MetalProductionRate = 5.0
EnergyStorageCapacity = 2000.0
MetalStorageCapacity = 200.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DrawBracket = false
DrawBehindTerrain = true
NoReclaim = false
TeamOwned = true

DeviceSplashDamage = 220
DeviceSplashDamageMaxRadius = 200
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 260
IncendiaryRadiusHeated = 10
StructureSplashDamage = 120
StructureSplashDamageMaxRadius = 300

dofile("effects/device_smoke.lua")


Sprites =
{
	
	{
		Name = "rg-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/resourcegen/base.png" }, mipmap = true, }, },
		},
	},
}


Root =
{
	Name = "rg",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0.1 },
	Sprite = "rg-base",

	ChildrenBehind =
	{
		{
			Name = "wheel",
			Angle = 0,
			Pivot = { 0.23, -0.20 },
			Scale = 0.8,
			PivotOffset = { 0, 0 },
			Sprite = "wheel_anim",
		},
	},
}
