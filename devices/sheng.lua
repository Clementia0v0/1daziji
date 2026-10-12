ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 80
SelectionHeight = 58
SelectionOffset = { 0.0, -58.5 }
Mass = 300
HitPoints = 800
EnergyProductionRate = 340
MetalProductionRate = -5
EnergyStorageCapacity = 2000
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 550
DeviceSplashDamageMaxRadius = 100
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 200
IncendiaryRadiusHeated = 10

IgnitePlatformOnDestruct = true
StructureSplashDamage = 150
StructureSplashDamageMaxRadius = 240
DestroyEffect = "effects/battery_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "sheng-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/sheng/shengs.png" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "sh1",
		EffectPath = path.."/effects/sheng.lua",
		Automatic = true,
	},
	{
		NodeName = "sh2",
		EffectPath = path.."/effects/sheng.lua",
		Automatic = true,
	},
	{
		NodeName = "sh3",
		EffectPath = path.."/effects/sheng.lua",
		Automatic = true,
	},
}

Root =
{
	Name = "exbatt",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "sheng-base",
	
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
	ChildrenBehind =
	{
		
				{
					Name = "sh1",
					Angle = 0,
					Pivot = { 0.22, -0.1 },
					PivotOffset = { 0, 0 },
					UserData = 25,
				},
				{
					Name = "sh2",
					Angle = 0,
					Pivot = { -0.03, -0.1},
					PivotOffset = { 0, 0 },
					UserData = 50,
				},
				{
					Name = "sh3",
					Angle = 0,
					Pivot = { -0.26, -0.1 },
					PivotOffset = { 0, 0 },
					UserData = 75,
				},
		
	},
			
}
