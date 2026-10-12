Scale = 1
SelectionWidth = 60.0
SelectionHeight = 50.0
SelectionOffset = { 0.0, -50.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0
CanFireUnderwater = false
HitPoints = 300
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
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "ddzmg"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 8---reload
ReloadTimeIncludesBurst = false
FireSpreadMultiplier = 0.012
MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 300.0
MaxFireRadius = 1400.0
MinFireSpread = 8
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -60
MaxFireAngle = 100
KickbackMean = 0.01
KickbackStdDev = 0.01
MouseSensitivityFactor = 1.0
PanDuration = 0
FireSpreadMultiplier = 0.015
FireStdDev = 0.004
FireStdDevAuto = 0.001
MaxFireClamp = 0.9
Recoil = 20000
EnergyFireCost = 400
MetalFireCost = 30
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled
ProjectilesEachRound = 2
RetriggerFireEffect = true
RoundsEachBurst = 8
RoundPeriod = 0.025
TriggerProjectileAgeAction = true
MinAgeTrigger = 0.4
MaxAgeTrigger = 3
ReloadBank =
	{
		Max = 9,
		ReloadTime = 0.2,
		BaseMult = 1.0,
		IndexMult = 0.0,
		EnergyMult = 1,
		MetalMult = 1,
	}


-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzmg-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/base1.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzmg-head",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/head1.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzmg-barrel",
		States =
		{
			Normal = { Frames = { { texture = path.. "/weapons/dzmg/minigun-barrel01.tga" }, mipmap = true, }, },
			Idle = Normal,
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
	Name = "dzmg",
	Angle = 0,
	Pivot = { 0, -0.55 },
	PivotOffset = { 0, 0.0 },
	Sprite = "dzmg-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		
			{
				Name = "Head",
				Angle = 0,
				Pivot = { 0.0, -0.1 },--zhou
				PivotOffset = { 0.1, 0 },
				Sprite = "dzmg-head",
				UserData = 50,
	
				ChildrenBehind =
				{
					{
						Name = "Barrel",
						Angle = 0,
						Pivot = { 0.36, 0.1},--x,y
						PivotOffset = { 0.5, 0 },
						Sprite = "dzmg-barrel",
						UserData = 100,
						Visible = true,
						ChildrenInFront =
						{
							{
							Name = "Hardpoint0",
							Angle = 90,
							Pivot = { 0.1, -0.1 },
							PivotOffset = { 0, 0 },
							},
							{
							Name = "Chamber",
							Angle = 0,
							Pivot = { -1, -1 },
							PivotOffset = { 0, 0 },
							},
						},
					},
					{
						Name = "Barrel",
						Angle = 0,
						Pivot = { 0.36, -0.1},--x,y
						PivotOffset = { 0.5, 0 },
						Sprite = "dzmg-barrel",
						UserData = 100,
						Visible = true,
						
					},
					
				},
				ChildrenInFront = 
				{
					{
						Name = "MuzzleFlash",
						Angle = 0,
						Pivot = { 0.61, 0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "minigun-spinning-barrel",
						Visible = false,
					},
					{
						Name = "MuzzleFlash",
						Angle = 0,
						Pivot = { 0.61, -0.1 },
						PivotOffset = { 0, 0 },
						Sprite = "minigun-spinning-barrel",
						Visible = false,
					},
				},
			},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}
