Scale = 1
SelectionWidth = 60.0
SelectionHeight = 50.0
SelectionOffset = { 0.0, -50.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 100.0
CanFireUnderwater = true
HitPoints = 400
EnergyProductionRate = 0.0---
MetalProductionRate = 0.0---
----------------------------------------------------------------
EnergyStorageCapacity = 0.0
MetalStorageCapacity = 0.0
----------------------------------------------------------------
MinWindEfficiency = 1
MaxWindHeight = 0
MaxRotationalSpeed = 0

FireEffect = "mods/dlc2/effects/fire_dome.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "dzdome"
BarrelLength = 60.0
MinFireClearance = 10
FireClearanceOffsetInner = 10
FireClearanceOffsetOuter = 40
ReloadTime = 100---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 3600.0
MaxFireSpeed = 3600.1
MinFireRadius = 50.0
MaxFireRadius = 500.0
MinFireSpread = 20
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -10
MaxFireAngle = 170
KickbackMean = 60
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.001
FireStdDevAuto = 0.001
MaxBursts = 1
Recoil = 200000
FireDelay = 0.6
EnergyFireCost = 300
MetalFireCost = 20
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled
TriggerProjectileAgeAction = true
MinAgeTrigger = 1
MaxAgeTrigger = 1.01
RetriggerFireEffect = true
RoundsEachBurst =84
ProjectilesEachRound = 1
RoundPeriod = 0.08



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
	Name = "tieqiong",
	Angle = 0,
	Pivot = { 0, -0.45 },
	PivotOffset = { 0, 0 },
	Sprite = "tieqiong-base",
	UserData = 0,
	ChildrenInFront = 
	{
		{
			Name = "tieqiong-shell-left",
			Angle = 0,
			Scale = 0.65,
			Pivot = { -0.26, 0.005 },
			PivotOffset = { 0, 0 },
			Sprite = "tieqiong-shell",
			Visible = false,
		},
		{
			Name = "tieqiong-shell-right",
			Angle = 180,
			Scale = 0.65,
			Pivot = { 0.26, -0.071 },
			PivotOffset = { 0, 0 },
			Sprite = "tieqiong-shell",
			Visible = false,
		},
	},
	ChildrenBehind =
	{

		{
			Name = "tieqiong-ring",
			Angle = 180,
			Scale = 1,
			Pivot = { 0.0, 0.0 },
			PivotOffset = { 0, 0 },
			Sprite = "tieqiong-ring",
			Visible = false,
		},
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, 0.0 },--zhou
			PivotOffset = { 0.0, 0 },
			Sprite = "tieqiong-core",
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.0, 0.0},--x,y
					PivotOffset = { 0.5, 0 },
					--Sprite = "dzmg-barrel",
					UserData = 100,
					Visible = true,
					ChildrenInFront =
					{
						{
						Name = "Hardpoint0",
						Angle = 90,
						Pivot = { 0.0, 0.0 },
						PivotOffset = { 0, 0 },
						},
					},
				},
			},
			
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}
