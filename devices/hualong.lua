ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 120
SelectionHeight = 120
SelectionOffset = { 0.0, -120 }
Mass = 200.0
HitPoints = 400
EnergyProductionRate =1000
MetalProductionRate = -7
EnergyStorageCapacity = 10000
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 400
DeviceSplashDamageMaxRadius = 400
DeviceSplashDamageDelay = 0
IncendiaryRadius = 600
IncendiaryRadiusHeated = 600
StructureSplashDamage = 360
StructureSplashDamageMaxRadius = 500

IgnitePlatformOnDestruct = true
DestroyEffect = "effects/mushroom_cloud.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
HurtEffect = path.."/effects/hualonghurt.lua"
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "hualong-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/hualong/hualong.png" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Head",
		EffectPath = "effects/battery_ambient.lua",
	},
	{
		NodeName = "smoke",
		EffectPath = path.."/effects/hualongsmoke.lua",
		--Automatic = true,
	},
}

Root =
{
	Name = "exbatt",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0, 0.03 },
	Sprite = "hualong-base",
	
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
					Name = "smoke",
					Angle = 0,
					Pivot = { -0.23, 0.0 },
					PivotOffset = { 0, 0 },
					UserData = 25,
				},
	},
			
}
