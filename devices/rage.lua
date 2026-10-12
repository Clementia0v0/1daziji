ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 90.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -46.0 }
Mass = 200.0
HitPoints = 200
EnergyProductionRate = -100
MetalProductionRate = 0
EnergyStorageCapacity = 0
MetalStorageCapacity = 0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 50
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 0
IncendiaryRadiusHeated = 0

IgnitePlatformOnDestruct = true
StructureSplashDamage = 100
StructureSplashDamageMaxRadius = 200
DestroyEffect = "effects/battery_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "rage-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/rage/base.png" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Head",
		EffectPath = "effects/battery_ambient.lua",
	},
}

Root =
{
	Name = "rage",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0.06 },
	Sprite = "rage-base",
	
	ChildrenInFront =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
			
			UserData = 50,
		},
				
	},
	--[[ChildrenBehind =
	{
		
				{
					Name = "sh1",
					Angle = 0,
					Pivot = { 0.22, -0.2 },
					PivotOffset = { 0, 0 },
					UserData = 25,
				},
				{
					Name = "sh2",
					Angle = 0,
					Pivot = { -0.03, -0.2 },
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
				{
					Name = "sh3",
					Angle = 0,
					Pivot = { -0.26, -0.2 },
					PivotOffset = { 0, 0 },
					UserData = 75,
				},
		
	},]]--
			
}
