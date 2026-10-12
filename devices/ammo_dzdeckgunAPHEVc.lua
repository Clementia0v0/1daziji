dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 50.0
HitPoints = 100.0
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
DeviceSplashDamage = 160
DeviceSplashDamageMaxRadius = 160
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 100
IncendiaryRadiusHeated = 100
StructureSplashDamage = 75
StructureSplashDamageMaxRadius = 100
DestroyEffect = "effects/sandbags_explode.lua"

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter



Sprites =
{
	
	
	--[[{
		Name = "ammo-chest",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/ammos/ammochest.png" }, mipmap = true, }, },
		},
	},]]--
	{
		Name = "APHEV",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/media/APHEV406.png" }, mipmap = true, }, },
		},
	},
}


Root =
{
	Name = "DoubleShotAmmo",
	Angle = 0,
	Pivot = { 0, -0.25 },
	PivotOffset = { 0, 0 },
	Sprite = "ammo-chest",

	ChildrenInFront =
	{
		{
			Name = "APHEV",
			Angle = 0,
			Pivot = { 0.1, 0.0 },
			PivotOffset = { 0, 0 },
			Scale = 1.6,
			Sprite = "APHEV"
		},
		{
			Name = "APHEV",
			Angle = 0,
			Pivot = { 0.18, 0.0 },
			PivotOffset = { 0, 0 },
			Scale = 1.6,
			Sprite = "APHEV"
		},
		{
			Name = "APHEV",
			Angle = 0,
			Pivot = { 0.26, 0.0 },
			PivotOffset = { 0, 0 },
			Scale = 1.6,
			Sprite = "APHEV"
		},
		
		
	},
}
