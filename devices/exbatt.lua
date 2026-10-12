ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 40
SelectionHeight = 80
SelectionOffset = { 0.0, -80 }
Mass = 200.0
HitPoints = 300
EnergyProductionRate = 0
MetalProductionRate = 0.0
EnergyStorageCapacity = 7000
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 360
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 200
IncendiaryRadiusHeated = 20

IgnitePlatformOnDestruct = true
StructureSplashDamage = 120
StructureSplashDamageMaxRadius = 300
DestroyEffect = "effects/battery_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "exbatt-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/exbatt/exbatt.png" }, mipmap = true, }, },
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
	Name = "exbatt",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0 },
	Sprite = "exbatt-base",
	
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
