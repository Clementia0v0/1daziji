dofile("ui/uihelper.lua")

ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
Scale = 1
SelectionWidth = 120.0
SelectionHeight = 80.0
SelectionOffset = { 0.0, -80.5 }
Mass =160.0
HitPoints = 300.0
EnergyProductionRate = -80.0
MetalProductionRate = -3.0
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
DeviceSplashDamageMaxRadius = 260
DeviceSplashDamageDelay = 0.2
IncendiaryRadius = 400
IncendiaryRadiusHeated = 60
StructureSplashDamage = 140
StructureSplashDamageMaxRadius = 400
DestroyEffect = path.."/effects/he_mushroom_cloud.lua"

--dofile("effects/device_smoke.lua")
--SmokeEmitter = StandardDeviceSmokeEmitter



Sprites =
{
	
	{
		Name = "dzEMP",
		States =
		{
			Normal = { Frames = { { texture = path .. "/weapons/media/EMP406.png" }, mipmap = true, }, },
		},
	},
}

Root =
{
	Name = "DoubleShotAmmo",
	Angle = 0,
	Pivot = { 0, -0.54 },
	PivotOffset = { 0, 0 },
	Sprite = "ammo-base",

	ChildrenBehind =
	{
		{
			Name = "ani1",
			Angle = 0,
			Pivot = { -0.3, 0.08 },
			PivotOffset = { 0, 0 },
			Sprite = "MunitionsWorker",
		},
		{
			Name = "ani2",
			Angle = 0,
			Pivot = { -0.31, 0.38 },
			PivotOffset = { 0, 0 },
			Sprite = "MunitionsShells",
		},
		{
			Name = "EMPshell1",
			Angle = 0,
			Pivot = { 0.11, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell2",
			Angle = 0,
			Pivot = { 0.05, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell3",
			Angle = 0,
			Pivot = { -0.01, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell4",
			Angle = 0,
			Pivot = { -0.07, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell5",
			Angle = 0,
			Pivot = { -0.13, 0.15 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		-------------------------------------------------------
		{
			Name = "EMPshell1",
			Angle = 0,
			Pivot = { 0.14, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell2",
			Angle = 0,
			Pivot = { 0.08, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell3",
			Angle = 0,
			Pivot = { 0.02, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell4",
			Angle = 0,
			Pivot = { -0.04, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		{
			Name = "EMPshell5",
			Angle = 0,
			Pivot = { -0.1, 0.25 },
			PivotOffset = { 0, 0 },
			Sprite = path.."/weapons/media/EMP.png",
		},
		
	},
}