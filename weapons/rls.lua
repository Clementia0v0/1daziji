Scale = 1
SelectionWidth = 40
SelectionHeight = 90.0
SelectionOffset = { 0.0,60 }
RecessionBox =
{
	Size = { 25, 1000 },
	Offset = { 0, -890 },
	AutoCreateDoor = false,
}
CanFlip = false

WeaponMass = 300.0
HitPoints = 600.0
EnergyProductionRate = -20.0
MetalProductionRate = 0.0
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = "effects/warhead_warmup.lua"
FireRetriggerEffect = "effects/warhead_launch.lua"
RetriggerFireEffect = true
Projectile = "rlsnormal"
ConstructEffect = "effects/device_upgrade.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/missile_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_large.lua"
ReloadEffect = "effects/silo_reload.lua"
ReloadEffectOffset = -2.5
FireDelay = 5
BarrelLength = 0.0
MinFireClearance = 1000
FireClearanceOffsetInner = 40
FireClearanceOffsetOuter = 40
AttractZoomOutDuration = 12
ReloadTime =56
ReloadTimeIncludesBurst = false
MinFireSpeed = 1000.0
MaxFireSpeed = 1000.1
MinFireRadius = 200.0
MaxFireRadius = 20000.0
ShowAimingGizmo = false
MinVisibility = 1
MaxVisibilityHeight = 0
MinFireAngle = 25
MaxFireAngle = 35
ForceFireAngle = 60
KickbackMean = 0
KickbackStdDev = 0
PanDuration = 0
FireStdDev = 0.05
FireStdDevAuto = 0.05
CanFireUnderwater = false
MissileDisruptionMin = 0.5
MissileDisruptionStdDevMin = 400
MissileDisruptionStdDevMax = 600

RoundsEachBurst = 2
RoundPeriod = 0.2
MetalFireCost = 20
EnergyFireCost = 6000

Sprites =
{
	{
		Name = "rls-base",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/rls/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "rls-lift",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/rls/lift.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "doorl",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/rls/doorl.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "doorr",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/rls/doorr.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "rls-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/rls/re67.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/rls/re1.png" },
					{ texture = path.."/weapons/rls/re2.png" },
					{ texture = path.."/weapons/rls/re3.png" },
					{ texture = path.."/weapons/rls/re4.png" },
					{ texture = path.."/weapons/rls/re5.png" },
					{ texture = path.."/weapons/rls/re6.png" },
					{ texture = path.."/weapons/rls/re7.png" },
					{ texture = path.."/weapons/rls/re8.png" },
					{ texture = path.."/weapons/rls/re9.png" },
					{ texture = path.."/weapons/rls/re10.png" },
					{ texture = path.."/weapons/rls/re11.png" },
					{ texture = path.."/weapons/rls/re12.png" },
					{ texture = path.."/weapons/rls/re13.png" },
					{ texture = path.."/weapons/rls/re14.png" },
					{ texture = path.."/weapons/rls/re15.png" },
					{ texture = path.."/weapons/rls/re16.png" },
					{ texture = path.."/weapons/rls/re17.png" },
					{ texture = path.."/weapons/rls/re18.png" },
					{ texture = path.."/weapons/rls/re19.png" },
					--{ texture = path.."/weapons/rls/re20.png" },
					{ texture = path.."/weapons/rls/re21.png" },
					{ texture = path.."/weapons/rls/re22.png" },
					{ texture = path.."/weapons/rls/re23.png" },
					{ texture = path.."/weapons/rls/re24.png" },
					{ texture = path.."/weapons/rls/re25.png" },
					{ texture = path.."/weapons/rls/re26.png" },
					{ texture = path.."/weapons/rls/re27.png" },
					{ texture = path.."/weapons/rls/re28.png" },
					{ texture = path.."/weapons/rls/re29.png" },
					{ texture = path.."/weapons/rls/re30.png" },
					{ texture = path.."/weapons/rls/re31.png" },
					{ texture = path.."/weapons/rls/re32.png" },
					{ texture = path.."/weapons/rls/re33.png" },
					{ texture = path.."/weapons/rls/re34.png", duration = ReloadTime - 6.5 },
					mipmap = true,
					duration = 0.1,
				},
				--NextState = "ReloadEnd",
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/rls/re35.png" },
					{ texture = path.."/weapons/rls/re36.png" },
					{ texture = path.."/weapons/rls/re37.png" },
					{ texture = path.."/weapons/rls/re38.png" },
					{ texture = path.."/weapons/rls/re39.png" },
					{ texture = path.."/weapons/rls/re40.png" },
					{ texture = path.."/weapons/rls/re41.png" },
					{ texture = path.."/weapons/rls/re42.png" },
					{ texture = path.."/weapons/rls/re43.png" },
					{ texture = path.."/weapons/rls/re44.png" },
					{ texture = path.."/weapons/rls/re45.png" },
					{ texture = path.."/weapons/rls/re46.png" },
					{ texture = path.."/weapons/rls/re47.png" },
					{ texture = path.."/weapons/rls/re48.png" },
					{ texture = path.."/weapons/rls/re49.png" },
					{ texture = path.."/weapons/rls/re50.png" },
					{ texture = path.."/weapons/rls/re51.png" },
					{ texture = path.."/weapons/rls/re52.png" },
					{ texture = path.."/weapons/rls/re53.png" },
					{ texture = path.."/weapons/rls/re54.png" },
					{ texture = path.."/weapons/rls/re55.png" },
					{ texture = path.."/weapons/rls/re56.png" },
					{ texture = path.."/weapons/rls/re57.png" },
					{ texture = path.."/weapons/rls/re58.png" },
					{ texture = path.."/weapons/rls/re59.png" },
					{ texture = path.."/weapons/rls/re60.png" },
					{ texture = path.."/weapons/rls/re61.png" },
					{ texture = path.."/weapons/rls/re62.png" },
					{ texture = path.."/weapons/rls/re63.png" },
					{ texture = path.."/weapons/rls/re64.png" },
					{ texture = path.."/weapons/rls/re65.png" },
					{ texture = path.."/weapons/rls/re66.png" },
					{ texture = path.."/weapons/rls/re67.png" },
					mipmap = true,
					duration = 0.1,
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
	Pivot = { 0.0, 0.04 },
	PivotOffset = { 0, 0 },
	Sprite = "rls-base",
	UserData = 0,
	
	ChildrenInFront =
	{
		{
			Name = "Hardpoint0",
			Angle = 60,
			Pivot = { 0, -0.20 }, -- modify this to adjust height of spawned projectile
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
			Pivot = { 0.0, -0.20 },
			Angle = 60,
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
			Name = "Lift",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "rls-lift",
			UserData = 100,
		},
		{
			Name = "Reload",
			Angle = 0,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "rls-reload",
			UserData = 100,
		},
		{
			Name = "doorl",
			Angle = -90,
			Pivot = { -0.16, -0.06 },
			PivotOffset = { -0.05, -0.18 },
			Sprite = "doorl",
			UserData = 100,
		},
		{
			Name = "doorr",
			Angle = 90,
			Pivot = { 0.16, -0.06 },
			PivotOffset = { 0.05, -0.18 },
			Sprite = "doorr",
			UserData = 100,
		},

	}

}
dofile("ui/uihelper.lua")
--[[dlc2_Ammunition =
	{
		{
			StringId = "Weapon.hjcfnormal",
			Sprite = "objects/projectiles/missile/missile.tga",
			Projectile = "hjcfnormal",
			FireEffect = path.."/effects/hjcfnormal_warmup.lua",
			RoundsEachBurst = 3,
			RoundPeriod = 2,
			MetalFireCost = 20,
			EnergyFireCost = 8000,

		},
	}]]--

	