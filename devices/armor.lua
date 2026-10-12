ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1.0
SelectionWidth = 20
SelectionHeight = 45
SelectionOffset = { 0.0, -45 }
Mass = 400.0
HitPoints = 1200
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0
DeviceSplashDamage = 30
DeviceSplashDamageMaxRadius = 50
DeviceSplashDamageDelay = 0.2
IgnitePlatformOnDestruct = true
StructureSplashDamage = 30
StructureSplashDamageMaxRadius = 50
DestroyEffect = "effects/armor_destroy.lua"
DestroyUnderwaterEffect = "effects/armor_destroy.lua"




Sprites =
{
	{
		Name = "armor-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/armor/base.tga" }, mipmap = true, }, },
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
	Name = "armor",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0 },
	Sprite = "armor-base",
}
