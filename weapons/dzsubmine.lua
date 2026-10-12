Scale = 1
SelectionWidth = 120.0
SelectionHeight = 70.0
SelectionOffset = { 0.0, -70.5 }--x,y
RecessionBox =
{
	Size = { 20, 25 },
	Offset = { -52.5, -40 },
}

WeaponMass = 40.0
CanFireUnderwater = true
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
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = "effects/device_complete.lua"
DestroyEffect = "effects/machinegun_explode.lua"
DestroyUnderwaterEffect = "mods/dlc2/effects/device_explode_submerged_small.lua"
-----------------------------------------------------------
Projectile = "dzsubmine"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 60---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 3000.0
MaxFireSpeed = 3000.1
MinFireRadius = 300.0
MaxFireRadius = 1400.0
MinFireSpread = 8
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -20
MaxFireAngle = -10
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0

FireStdDev = 0.004
FireStdDevAuto = 0.001

Recoil = 20000
EnergyFireCost = 3000
MetalFireCost = 100
ShowFireAngle = true
ShowFireSpeed = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled

RetriggerFireEffect = true
--RoundsEachBurst = 1
--RoundPeriod = 2
TriggerProjectileAgeAction = true
MinAgeTrigger = 5
MaxAgeTrigger =18
ReloadBank =
	{
		Max = 2,
		ReloadTime = 1,
		BaseMult = 0.8,
		IndexMult = 0.2,
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
		Name = "dzsubmine-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzsubmine/baser.png" }, mipmap = true, }, },
			Idle = Normal,
		},
	},
	{
		Name = "dzsubmine-reload",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzsubmine/base.png" }, mipmap = true, }, },
			Idle = Normal,
			Reload =
			{
				Frames =
				{
					{ texture = path.. "/weapons/dzsubmine/baser.png" , duration = 120, },
					mipmap = true,
					duration = 0.1,
				},
			},
			ReloadEnd =
			{
				Frames =
				{
					{ texture =path.. "/weapons/dzsubmine/baser.png"  },
					mipmap = true,
					duration = 0.5,
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
	Name = "dzmg",
	Angle = 0,
	Pivot = { 0, -0.5 },
	PivotOffset = { 0.0, 0.05 },
	Sprite = "dzsubmine-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		
				
						{
						Name = "Hardpoint0",
						Angle = 115,
						Pivot = { 0.3, 0.1 },
						PivotOffset = { 0, 0 },
						},
				
		
				
		
			
		
		{
			Name = "Icon",
			Pivot = { 0, 0.5 },
		},
	
	},
	ChildrenInFront =
			{
				{
					Name = "LoaderBottom",
					Angle = 0,
					Pivot = { 0.0, 0.0 },
					PivotOffset = { 0,0.0 },
					Sprite = "dzsubmine-reload",
					UserData = 100,
				},
			},
}
