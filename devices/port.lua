ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 90.0
SelectionHeight = 45.0
SelectionOffset = { 0.0, -46.0 }
Mass = 120.0
HitPoints = 400.0
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

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	
	{
		Name = "port-base",
		States =
		{
			Normal = { Frames = { { texture = path .. "/devices/port/base.tga" }, mipmap = true, }, },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "SteamMunitions",
		EffectPath = "effects/reactor_steam.lua",
		Automatic = true,
	},
}

Root =
{
	Name = "port",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0 },
	Sprite = "port-base",

	ChildrenBehind =
	{
		{
			Name = "SteamMunitions",
			Angle = 0,
			Pivot = { 0.15, -0.2 },
			PivotOffset = { 0, 0 },
		},
	},
}
