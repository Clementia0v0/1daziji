Scale = 1
SelectionWidth = 80.0
SelectionHeight = 60.0
SelectionOffset = { 0.0, -60.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0

HitPoints = 300
EnergyProductionRate = 0.0---
MetalProductionRate = 0.0---
----------------------------------------------------------------
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
----------------------------------------------------------------
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0.01

FireEffect = "mods/weapon_pack/effects/fire_20mmcannon.lua"
ShellEffect = "effects/shell_eject_cannon.lua"
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "hdzmg"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 12---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 200.0
MaxFireRadius = 1000.0
MinFireSpread = 8
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -60
MaxFireAngle = 135
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.01
FireStdDevAuto = 0.05
FireSpreadMultiplier = 0.01
UniformSpray = false

Recoil = 20000
EnergyFireCost = 3000
MetalFireCost = 60
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled
TriggerProjectileAgeAction = true
RetriggerFireEffect = true
RoundsEachBurst = 24
ProjectilesEachRound = 2
RoundPeriod = 0.004

--UniformSpray = true
--FireSpreadMultiplier = 0.3

-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter



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
	PivotOffset = { 0, 0 },
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
