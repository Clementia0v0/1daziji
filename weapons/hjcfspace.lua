Scale = 1
SelectionWidth = 80
SelectionHeight = 180.0
SelectionOffset = { 0.0, -180 }
RecessionBox =
{
	Size = { 25, 1000 },
	Offset = { 0, -890 },
	AutoCreateDoor = false,
}
CanFlip = false

WeaponMass = 500.0
HitPoints = 600.0
EnergyProductionRate = 0.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

Projectile = "spaceship"
FireRetriggerEffect = "effects/warhead_launch.lua"
FireEffect = path.."/effects/spaceship_warmup.lua"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/missile_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ReloadEffect = "effects/silo_reload.lua"
ReloadEffectOffset = -2.5
FireDelay = 11
BarrelLength = 0.0
MinFireClearance = 1000
FireClearanceOffsetInner = 40
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 12
ReloadTime = 120
ReloadTimeIncludesBurst = false
MinFireSpeed = 3000.0
MaxFireSpeed = 3000.1
MinFireRadius = 200.0
MaxFireRadius = 20000.0
ShowAimingGizmo = true
ForceFireAngle = 90
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 86
MaxFireAngle = 94
KickbackMean = 0
KickbackStdDev = 0
PanDuration = 0
FireStdDev = 0
FireStdDevAuto = 0
MissileDisruptionMin = 0.5
MissileDisruptionStdDevMin = 400
MissileDisruptionStdDevMax = 600
EnergyFireCost = 3000.0
MetalFireCost = 20.0
Sprites =
{
	{
		Name = "hjcfspace-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/hjcf/base5.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "space-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/media/spaceship.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				{ texture = path.."/weapons/hjcf/any.png"}, mipmap = true, 
				duration = 119,	
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/media/spaceship.png" }, mipmap = true, 
				},
				NextState = "Normal",
			},
		},
	},
}

--[[
Trail =
{
	Texture = "objects/projectiles/missile/trail",
	Width = 20,
	Length = 3,
	KeyframePeriod = 0.05,
	RepeatRate = 0.001,
	ScrollRate = 0,
	FattenRate = 25,
}
]]
dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Root =
{
	Name = "Missile",
	Angle = 0,
	Pivot = { -0.07, 0.0 },
	PivotOffset = { 0, -0.48 },
	Sprite = "hjcfspace-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Door",
			Angle = 0,
			Pivot = { -0.15, -0.29 },
			PivotOffset = { 0.05, -0.18 },
			Sprite = path.."/weapons/hjcf/any.png",
			UserData = 100,
		},
		{
			Name = "Hardpoint0",
			Angle = 0,
			Pivot = { 0.07, -0.1 }, -- modify this to adjust height of spawned projectile
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Chamber",
			Angle = 0,
			Pivot = { 0, -0.2 },
			PivotOffset = { 0, 0 },
		},
		{
			Name = "Flightpath",
			Pivot = { 0.0, -0.75 },
			Sprite = "missile-flightpath",
			UserData = 100,
			Visible = false,
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.4 },
		},
	},
	ChildrenBehind =
	{
		{
		Name = "Reload",
		Angle = 0,
		Pivot = { 0.07,0.01 },
		PivotOffset = { 0, 0 },
		UserData = 100,
		Sprite = "space-reload",
		},
	},
}

	