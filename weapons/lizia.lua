Scale = 1
SelectionWidth = 50.0
SelectionHeight = 40.0
SelectionOffset = { 0.0, -40.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

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

FireEffect = path.."/effects/lizi.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "lizi"
BarrelLength = 1.0
MinFireClearance = 0
FireClearanceOffsetInner = 0
FireClearanceOffsetOuter = 0
ReloadTime = 120---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 8000.0
MaxFireSpeed = 8000.1
MinFireRadius = 200
MaxFireRadius = 36000
MinFireSpread = 0
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -2
MaxFireAngle = 2
KickbackMean = 0
KickbackStdDev = 0
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.0
FireStdDevAuto = 0.0
FireDelay = 17.0
Recoil = 20000
EnergyFireCost = 8000
MetalFireCost = 1
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled




-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter
Sprites =
{
	{
		Name = "lizia-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/lizi/basea2.png" }, mipmap = true, }, },
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
	Pivot = { 0, -0.45 },
	PivotOffset = { 0, 0.13 },
	Sprite = "lizia-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { -0.4, 0.0 },--zhou
			PivotOffset = { 0, 0 },
			Sprite = "lizi-head",
			UserData = 50,

			ChildrenBehind =
			{
				
						{
						Name = "Hardpoint0",
						Angle = 90,
						Pivot = { -0.4, 0 },
						PivotOffset = { 0, 0 },
						},
						{
						Name = "Chamber",
						Angle = 0,
						Pivot = { -0.8, -0.5 },
						PivotOffset = { 0, 0 },
						},
					
				
			},
		},
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
}