Scale = 1
SelectionWidth = 60.0
SelectionHeight = 50.0
SelectionOffset = { 0.0, -50.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}
CanFireUnderwater = false
WeaponMass = 40.0

HitPoints = 180
EnergyProductionRate = 0.0---
MetalProductionRate = 0.0---
----------------------------------------------------------------
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
----------------------------------------------------------------
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = "mods/weapon_pack/effects/fire_20mmcannon.lua"
ShellEffect = "effects/shell_eject_cannon.lua"
ReloadEffect = "effects/reload_cannon.lua"
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "flakold"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 1.0---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 8400.0
MaxFireSpeed = 8400.1
MinFireRadius = 300.0
MaxFireRadius = 1400.0
MinFireSpread = 8
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -60
MaxFireAngle = 100
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.015
FireStdDevAuto = 0.015
MaxFireClamp = 0.9
Recoil = 20000
EnergyFireCost = 300
MetalFireCost = 20
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled




RetriggerFireEffect = true
RoundsEachBurst = 4
RoundPeriod = 0.2
TriggerProjectileAgeAction = true
MinAgeTrigger = 0.4
MaxAgeTrigger = 3

CanOverheat = true	--是否过热
HeatPeriod = 3.6	--（过热前）过热条增加间隔（数字越大过热越慢）
CoolPeriod = 16		--（过热前）过热条降低间隔（数字越小冷却越快）
CoolPeriodOverheated = 18	--（过热后）过热恢复cd（过热后xx秒回归正常，可以重新开火）


Recoil = 240000
BarrelRecoilLimit = -0.4
BarrelRecoilSpeed = -3.0
BarrelReturnForce = 48.0
-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "old-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/base.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "old-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/head.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "old-barrel",
		States =
		{
			Normal = { Frames = { { texture = path.. "/weapons/dzmg/barrel4.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "flakold-reload",
		States =
		{
			Normal = { Frames = { { texture = path.."/weapons/dzmg/reload.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.."/weapons/head.png", duration = ReloadTime - 0.2 },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture = path.."/weapons/dzmg/reload.png" },
					mipmap = true,
					duration = 0.1,
				},
				NextState = "Normal",
			},
		},
	},
	
}

NodeEffects =
{
	{
		NodeName = "Hardpoint0",
		EffectPath = "effects/weapon_overheated.lua",
		Automatic = false,
	},
}

Root =
{
	Name = "old",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0.0 },
	Sprite = "old-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.13, -0.3 },--zhou
			PivotOffset = { 0.0, 0 },
			Sprite = "old-head",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},--x,y
					PivotOffset = { 0.3, 0.0 },
					Sprite = "old-barrel",
					UserData = 75,
					Visible = true,
					ChildrenInFront =
					{
						{
						Name = "Hardpoint0",
						Angle = 90,
						Pivot = { 0.0, 0.0 },
						PivotOffset = { 0, 0 },
						},
						{
						Name = "Chamber",
						Angle = 0,
						Pivot = { -0.2, -1 },
						PivotOffset = { 0, 0 },
						},
					},
				},
		
				{
					Name = "Reload",
					Angle = 0,
					Pivot = { -0.2, -0.4 },
					PivotOffset = { 0, 0 },
					Sprite = "flakold-reload",
					UserData = 100,
				},
				{
					Name = "Reload",
					Angle = 0,
					Pivot = { -0.2, 0.4 },
					PivotOffset = { 0, 0 },
					Sprite = "flakold-reload",
					UserData = 100,
				},
				
			},
			
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}
