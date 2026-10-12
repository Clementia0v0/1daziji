Scale = 1
SelectionWidth = 80.0
SelectionHeight = 60.0
SelectionOffset = { 0.0, 70.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0
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
ReloadTime = 7---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 100.0
MaxFireRadius = 1000.0
MinFireSpread = 8
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -90
MaxFireAngle = 10
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.01
FireStdDevAuto = 0.05

Recoil = 20000
EnergyFireCost = 300
MetalFireCost = 20
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled
TriggerProjectileAgeAction = true
RetriggerFireEffect = true
RoundsEachBurst = 24
RoundPeriod = 0.003



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
	Pivot = { 0, 0.16 },
	PivotOffset = { 0.2, 0.0 },
	Sprite = "uwdzmg-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.2, 0.0 },--zhou
			PivotOffset = { 0.14, 0 },
			Sprite = "uwdzmg-head",
			UserData = 50,

			ChildrenInFront =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.1, -0.008},--x,y
					PivotOffset = { 0.0, 0 },
					Sprite = "dzmg-barrel",
					UserData = 100,
					Visible = true,
					
				},
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.08, 0.024},--x,y
					PivotOffset = { 0.0, 0 },
					Sprite = "dzmg-barrel",
					UserData = 75,
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
				
				ChildrenInFront = 
			{
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.08, 0.024 },
					PivotOffset = { 0, 0 },
					Sprite = "minigun-spinning-barrel",
					Visible = false,
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.1, -0.008 },
					PivotOffset = { 0, 0 },
					Sprite = "minigun-spinning-barrel",
					Visible = false,
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
