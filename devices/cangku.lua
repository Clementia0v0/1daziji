ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 80
SelectionHeight = 80
SelectionOffset = { 0.0, -80 }
Mass = 200.0
HitPoints = 600
EnergyProductionRate = 0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0
MetalStorageCapacity = 1500
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 100
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
		Name = "cangku-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/cangku/cangku.png" }, mipmap = true, }, },
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
	PivotOffset = { 0, 0.06 },
	Sprite = "cangku-base",
	
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
