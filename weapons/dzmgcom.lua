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

--FireEffect = "mods/weapon_pack/effects/fire_20mmcannon.lua"
--ShellEffect = "effects/shell_eject_cannon.lua"
--------------------------------------------------------
ConstructEffect = "effects/device_construct.lua"
CompleteEffect = path.."/effects/AAon.lua"
DestroyEffect = path.."/effects/AAoff.lua"
DestroyUnderwaterEffect = path.."/effects/AAoff.lua"
-----------------------------------------------------------
Projectile = "dzmgcom"
BarrelLength = 60.0
MinFireClearance = 500
FireClearanceOffsetInner = 20
FireClearanceOffsetOuter = 40
ReloadTime = 1.8---reload
ReloadTimeIncludesBurst = false

MinFireSpeed = 10000.0
MaxFireSpeed = 10000.1
MinFireRadius = 0.1
MaxFireRadius = 0.2
MinFireSpread = 8
MinVisibility = 0.5
MaxVisibilityHeight = 500
MinFireAngle = -60
MaxFireAngle = 240
KickbackMean = 3
KickbackStdDev = 3
MouseSensitivityFactor = 1.0
PanDuration = 0
ShowAimingGizmo = false
FireStdDev = 0.004
FireStdDevAuto = 0.001
MaxFireClamp = 0.9
Recoil = 20000
EnergyFireCost = 300
MetalFireCost = 20
ShowFireAngle = true
BeamDuration = 1
ReloadFramePeriod = ReloadTime/11
DisruptionBlocksFire = true -- applies when Moonshot enabled

RetriggerFireEffect = true
RoundsEachBurst =1
RoundPeriod = 0.0




-- these values are the defaults for all weapons
-- shown here just to demonstrate how to override them
DoorCloseDelay = 1
AutofireCloseDoorTicks = DoorCloseDelay*25

	

dofile("effects/device_smoke.lua")
SmokeEmitter = StandardDeviceSmokeEmitter

Sprites =
{
	{
		Name = "dzmgcom-base",
		States =
		{
			Normal = { Frames = { { texture =path.. "/weapons/dzmg/leida.tga" }, mipmap = true, }, },
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
	Pivot = { 0, -0.533 },
	PivotOffset = { 0, 0.0 },
	Sprite = "dzmgcom-base",
	UserData = 0,
	
	ChildrenBehind =
	{
		{
			Name = "Head",
			Angle = 0,
			Pivot = { 0.0, -0.1 },--zhou
			PivotOffset = { 0.1, 0 },
			
			UserData = 50,

			ChildrenBehind =
			{
				{
					Name = "Barrel",
					Angle = 0,
					Pivot = { 0.36, 0.1},--x,y
					PivotOffset = { 0.5, 0 },
					
					UserData = 100,
					Visible = false,
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
					
					UserData = 100,
					Visible = false,
					
				},
				
			},
			ChildrenInFront = 
			{
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.61, 0.1 },
					PivotOffset = { 0, 0 },
					
					Visible = false,
				},
				{
					Name = "MuzzleFlash",
					Angle = 0,
					Pivot = { 0.61, -0.1 },
					PivotOffset = { 0, 0 },
					
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
