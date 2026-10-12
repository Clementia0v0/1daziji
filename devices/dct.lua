ConstructEffect = path.."/effects/repairfieldactive.lua"
CompleteEffect = path.."/effects/dct_complete.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged.lua"
Scale = 1
SelectionWidth = 40.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }
Mass = 40.0
HitPoints = 300
EnergyProductionRate = -10
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 0
MaxWindHeight = 0
MaxRotationalSpeed = 0
IgnitePlatformOnDestruct = false
DisruptClearRadius = 3000
DisruptClearRate = 26
RepairFieldRadius = 3000
RepairFieldPeriod = 4
EMPRepairFieldRate = 5
EnergyProductionRate = -30
RepairEffect = "mods/repair_station/effects/repairfieldactive.lua"
ActivateEffect = "mods/repair_station/effects/repairfieldactive.lua"
DeactivateEffect = path .. "/effects/repairfielddeactivate.lua"
DestroyEffect = path.."/effects/dctoff.lua"
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dct-base",
		States =
		{
			Normal = { Frames = { { texture = path.. "/devices/dct/activate.tga" }, mipmap = true, }, },
			Activate = { Frames = { { texture = path.. "/devices/dct/activate.tga" }, duration = 0.5, mipmap = true, }, NextState = "Active", },
			Active = { Frames = { { texture = path.. "/devices/dct/activate.tga" }, mipmap = true, }, },
			Deactivate = { Frames = { { texture = path.. "/devices/dct/activate.tga" }, duration = 0.5, mipmap = true, }, NextState = "Normal", },
		},
	},
}

NodeEffects =
{
	{
		NodeName = "Idle",
		EffectPath = path .. "/effects/repairfieldidle.lua",
		Automatic = false,
	},
	{
		NodeName = "Active",
		EffectPath = path .. "/effects/repairfieldactive.lua",
		Automatic = false,
	},
	{
		NodeName = "Extinguish",
		EffectPath = path .. "/effects/repairfieldextinguish.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "RepairStation",
	Angle = 0,
	Pivot = { 0, -0.235 },
	PivotOffset = { 0, 0 },
	Sprite = "dct-base",
	
	ChildrenInFront =
	{
		{
			Name = "sign",
			Angle = 0,
			Pivot = { -0.01, -0.15 },
			PivotOffset = { 0, 0 },
			Sprite = "sign_anim",
			UserData = 40,
		},
		{
			Name = "Idle",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Active",
			Angle = 0,
			Pivot = { 0, 0 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Extinguish",
			Angle = 0,
			Pivot = { 0.6, 0 },
			PivotOffset = { 0, 0 },
		},
	},
	
	ChildrenBehind =
	{
		{
			Name = "repair_arm",
			Angle = 0,
			Pivot = { -0.45, 0 },
			PivotOffset = { 0, 0 },
			Sprite = "repair_anim",
			UserData = 60,
		},
		{
			Name = "extinguisher_arm",
			Angle = 0,
			Pivot = { 0.48, 0.02 },
			PivotOffset = { 0, 0 },
			Sprite = "extinguisher_anim",
			UserData = 80,
		},
	},
}